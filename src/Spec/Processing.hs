-----------------------------------------------------------------------------
--
-- Module      :  Spec.Processing
-- Copyright   :  (c) 2012 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | This Modul contains the functions needed to process the 'RawSpec' from
-- the way it is after reading it from the spec filte to the one needed,
-- thus clean enough, to generate the code.
--
-----------------------------------------------------------------------------

module Spec.Processing (
    cleanupSpec,
    addReuses,
) where

import Control.Arrow((>>>))
import Control.Monad.Reader
import Control.Monad.State.Strict

import qualified Data.Map as M
import Data.Maybe
import Data.Monoid
import Data.Traversable as T

import Text.OpenGL.Spec(Category)

import Spec.Lookup
import Spec.Parsing(removeEnumExtension, removeFuncExtension)
import Spec.RawSpec

-----------------------------------------------------------------------------

-- | Clean the 'RawSpec' in order to make it useable for codegeneration.
cleanupSpec :: RawSpec -> RawSpec
cleanupSpec = -- modifyPart stripEnumExtensions >>> modifyPart stripFuncExtensions >>>
    nubSpec >>> filterEmpty >>> sortCategoryImports


-----------------------------------------------------------------------------

-- | Adds reuses for several 'Category's to the spec
addReuses :: [(Category, [Category])] -> [(Category, [Category])] -> RawSpec -> RawSpec
addReuses reuseF reuseE spec =
    let spec' = foldr (addReuse categoryFuncs) spec reuseF
    in foldr (addReuse categoryEnums) spec' reuseE
    where
        addReuse f (tc, scs) sp' = foldr (importFuncsFromCat f tc) sp' scs

        importFuncsFromCat :: SpecValue sv => (Category -> RawSpec -> ValueMap sv) -> Category -> Category -> RawSpec -> RawSpec
        importFuncsFromCat f tarC srcC spec' =
            let addFuncs = M.map (flip toRedirect srcC) $ f srcC spec'
                addSpec  = valueMapSpec tarC addFuncs
            in mappend spec' addSpec

-- | Filters all the 'Category's from the 'RawSpec' which don't have a single
-- enum nor any function.
filterEmpty :: RawSpec -> RawSpec
filterEmpty spec =
    let cats = allCategories spec
        emptyCats = filter (\c -> M.null (categoryFuncs c spec)
                                  && M.null (categoryEnums c spec))
                        cats
        enumSpec' :: EnumSpec
        enumSpec' = M.filterWithKey (\c _ -> not $ c `elem` emptyCats) $ getPart spec
        funcSpec' :: FuncSpec
        funcSpec' = M.filterWithKey (\c _ -> not $ c `elem` emptyCats) $ getPart spec
    in setPart enumSpec' $ setPart funcSpec' spec

-----------------------------------------------------------------------------

-- | The 'transformSpecMap' function is used to transform the 'SpecMap' based
-- on 'SpecValue' basis. It will apply the function to all the 'SpecValue's
-- in it using 'Traversable'. In order to pass information between the
-- application of the function on the several values the 'Monad' can be used
-- (e.g. a 'State').
transformSpecMap :: (Monad m, SpecValue sv)
    => (Category -> ValueName -> sv -> m sv) -- the function to use
    -> SpecMap sv -- the SpecMap from which to get it
    -> m (SpecMap sv)
transformSpecMap f = T.sequence . M.mapWithKey processCategory
    where processCategory c = T.sequence . M.mapWithKey (f c)

-- | Lifting 'transformSpecMap' to the 'RawSpec' level
_transformRawSpec :: (Monad m, SpecValue sv)
    => (Category -> ValueName -> sv -> m sv) -- the function to use
    -> RawSpec -> m RawSpec
_transformRawSpec f spec =
    transformSpecMap f (getPart spec) >>= \p' -> return $ setPart p' spec

-----------------------------------------------------------------------------

-- the state used
type NubState = State (M.Map ValueName Category)

-- | Remove all duplicate definitions from the 'RawSpec' to prevent
-- collisions.
nubSpec :: RawSpec -> RawSpec
nubSpec spec =
    let nubedSpec :: SpecValue sv => SpecMap sv
        nubedSpec = evalState (transformSpecMap nubValue $ getPart spec) M.empty
    in setPart (nubedSpec :: FuncSpec) . setPart (nubedSpec :: EnumSpec) $ spec

nubValue :: SpecValue sv => Category -> ValueName -> sv -> NubState sv
nubValue c n val | isRedirect val = return val
                 | otherwise  = do
    defed <- gets (M.lookup n)
    case defed of
        Just c' -> return $ toRedirect val c'
        Nothing -> (when (isDefine val) $ modify (M.insert n c)) >> return val

-----------------------------------------------------------------------------

-- | This changes the location of definition for all the Values in the spec
-- to the one that is first passed in traversale over the spec. This is done
-- to prevent import cycles.
-- TODO import cylces may still ocure in aliases.
sortCategoryImports :: RawSpec -> RawSpec
sortCategoryImports spec =
    let ms' :: SpecValue sv => SpecMap sv
        ms' = runReader (evalStateT (transformSpecMap sortValue $ getPart spec) M.empty) spec
    in setPart (ms' :: FuncSpec) . setPart (ms' :: EnumSpec) $ spec

type SortState = StateT (M.Map ValueName Category) (Reader RawSpec)

sortValue :: SpecValue sv => Category -> ValueName -> sv -> SortState sv
sortValue curCat vn sv = do
    deflocM <- gets (M.lookup vn)
    case deflocM of
        Just defloc -> return $ toRedirect sv defloc
        Nothing -> do
            defVal <-
                if isDefine sv then return sv
                    else asks (whereIsDefined vn) >>= return . snd . fromMaybe
                                (error $ "SpecValue " ++ vn ++ " is nowhere defined")
            modify (M.insert vn curCat)
            return defVal


-----------------------------------------------------------------------------


-- | Renames all the names for a type of `SpecValue`. This is done in three
-- steps, first the names are selected that should be renamed (fst arg) then
-- a new name is chosen (snd arg). If there is a value with this name the
-- decision to rename comes from (trd arg), if there is no value the rename
-- takes place automatically. To update the rest of the `SpecValue`s the
-- (fth arg) is applied to all values with the old and new name.
renameValues
    :: SpecValue sv
    => (ValueName -> Bool) -- can it be renamed
    -> (ValueName -> sv -> ValueName) -- which name should it get
    -> (sv -> sv -> Bool) -- can it be merged? fst the original, snd the target.
    -> (ValueName -> ValueName -> sv -> sv) -- updater for the rest of the specification
    -> SpecMap sv -> SpecMap sv
renameValues nPred strip mPred updt = execState stripState
    where

--        type SEEState sv = State (SpecMap sv)
--        stripState :: SEEState sv ()
        stripState = do
            -- all names that end with an extension
            names <- gets (filter nPred
                            . M.keys . M.fold mappend M.empty) -- all the enum names
            sequence_ . flip map names $ (\n -> tryStrip n >>= \n' ->
                maybe (return ()) (renameAll n) n')

--        tryStrip :: ValueName -> SEEState sv Bool
        tryStrip name = do
            Just (_, def) <- gets (whereIsDefined' name) -- look this value up
            let name' = strip name def
            if name' == name
             then return Nothing
             else do
                def' <- gets (whereIsDefined' name') -- lookup the value it could be changed into
                return $ case def' of
                    Nothing -> Just name' -- there is none, so change it
                    Just (_, vdef) -> if mPred def vdef then Just name' else Nothing
--        renameAll :: ValueName -> ValueName -> sv SEEState ()
        renameAll oldN newN =
            modify
                (M.map (M.map (updt oldN newN)) -- update the rest
                . M.map (\vs -> fromMaybe vs $ -- update the values with the correct name
                        (M.lookup oldN vs >>= -- lookup the old value, ensuring there is one that can be renamed
                        \value -> return . M.alter (Just . fromMaybe value) newN -- add/keep the new one
                                         . M.delete oldN -- remove the old one
                                         $ vs
                )))

-- TODO look at reuses
-- | Strips all the extension from Enums, if the name is already in use the
-- values should match to merge.
stripEnumExtensions :: EnumSpec -> EnumSpec
stripEnumExtensions = renameValues nPred stripN mPred updateReUse
    where
        nPred n    = n /= removeEnumExtension n
        stripN n _ = removeEnumExtension n
        mPred = (==)
        updateReUse oldN newN (ReUse n t) | n == oldN = ReUse newN t
        updateReUse _    _    v           = v

-- | Strips the extensions from Functions, this is done if the alias exists
-- for the function (then strip to the alias), or if it has no alias and the
-- stripped function doesn't exist (stripped to the extensionless one).
stripFuncExtensions :: FuncSpec -> FuncSpec
stripFuncExtensions = renameValues nPred stripN mPred updateAliases
    where
        nPred n    = n /= removeFuncExtension n -- It should have an extension to have an alias, as core functions aren't aliased
        stripN n (RawFunc _ _ a) = fromMaybe (removeFuncExtension n) a -- select the alias if possible
        stripN n _ = error $ "stripFuncExtensions: No definition for: " ++ n
        -- In case the name is already in use, only merge when it's the alias.
        mPred (RawFunc _ _ a) _ = isJust a
        mPred _ _  = error $ "stripFuncExtensions: No definition"
        updateAliases oldN newN f@(RawFunc n t a) =
            maybe f (\a' -> if a' == oldN then RawFunc n t (Just newN) else f) a
        updateAliases _    _    f               = f

-----------------------------------------------------------------------------

--
---- | Insert a `SpecValue` in a Category with a name. If it's already in that
---- Category then the old value is deleted
--insertInCat :: SpecValue s => s -> ValueName -> Category -> RawSpec -> RawSpec
--insertInCat v n c = modifyPart $ M.alter f c
--    where
--        f  Nothing  = Just $ M.singleton n v
--        f (Just vs) = Just $ M.insert    n v vs
--
---- | Modify a specific `SpecValue` identified by it's name and Category.
--modifyInCat :: SpecValue s => (s -> s) -> ValueName -> Category -> RawSpec -> RawSpec
--modifyInCat f n c s = maybe s (\v -> insertInCat (f v) n c s ) $ lookupInCat n c s
