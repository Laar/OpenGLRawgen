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
-- the way it is after reading it from the spec filter to the one needed,
-- thus clean enough, to generate the code.
--
-- Processing the SpecFiles as they are supplied on the website
-- <http://www.opengl.org/registry/> is quite a task as they are not very
-- well formated for this (not to mention the 'errors').
--
-- The spec that is processed should be ready for generating code. The code
-- generating is done by mapping the spec parts to code and im\/exports.
-- Therefor the processed `RawSpec` should be ready for this proces. The
-- steps that are needed to make it ready for this are
--
-- * Removing of duplicate definitions
--
-- * Merging\/Renaming values where needed
--
-- * Straighting out the imports (to prevent cycles)
--
-- * Filtering away `Category`s that are empty (otherwise there would be
-- empty and usused modules)
--
-- These tasks are all quite straight forward in idea, but are quite tricky
-- with the spec. Some notes to the programmer on the used methods and
-- the pitfalls.
--
-- * The order of the total processing is quite important, especially for
--   `sortCategoryImports` as it should be the last action. Otherwise later
--   changes to the spec could mess up the import order.
-- * All processing is done on the full name of the values which has not been
--   stripped of any `Extension` name. This is needed as the versions of the
--   different `Extensions` could have different values (see
--   PrimitiveRestart(NV) enums and functions)
-- * There are some cases where an enum is used as the value of another Enum
--   through the `ReUse` constructor. Accounting for this when sorting the
--   definitions for imports and keeping this in mind for other places is
--   not particularly easy (very hard). As most of these ReUse are reusing
--   some value from inside the module, the sorting code (and some other
--   processors) don't actually track this or account for it. Thus if there
--   are problems with these reuses this COULD be the problem.
-- * The spec is not perfect. There are cases where it should be edited
--   manually to correct it. But there are also parts where the spec is just
--   a bit different from what is expected from otherparts.
--   Some examples, the Core12 enums are followed by sections from
--   ARB_imaging contating enums that are part of Core12, but don't show up
--   that way. There are quite a few comments about functions\/enums that are
--   reused, but as they are comments they are ignored by the parsing.
--   There NV_geometry_program4 defines NV-Enums as well as Enums in the EXT
--   range. The last of those are also reused a lot.
--
-- So keep in Mind that althoug the Spec is a well organized document it is
-- used as a registry and a way of generating C-code (probably all in one
-- header). So don't be surprised if it's not completly the way you expect it
-- to be.
--
-----------------------------------------------------------------------------

module Spec.Processing (
    cleanupSpec,
    addReuses,
) where

import Control.Arrow((>>>))
import Control.Monad.Reader
import Control.Monad.State

import qualified Data.Map as M
import Data.Monoid
import Data.Traversable as T

import Text.OpenGL.Spec(Category(Extension), Extension)

import Spec.Lookup
--import Spec.Parsing(removeEnumExtension, removeFuncExtension)
import Spec.RawSpec

import Main.Options

-----------------------------------------------------------------------------

-- | Clean the 'RawSpec' in order to make it useable for codegeneration.
cleanupSpec :: RawGenOptions -> RawSpec -> RawSpec
cleanupSpec opts =
   filterExtensions (not . flip dropExtension opts) >>>
   \(spec, delSpec) -> -- delSpec is a specification of all deleted values.
    -- modifyPart stripEnumExtensions >>> modifyPart stripFuncExtensions >>>
    (nubSpec >>> filterEmpty >>> sortCategoryImports delSpec) spec

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
    => (Category -> ValueName sv -> sv -> m sv) -- the function to use
    -> SpecMap sv -- the SpecMap from which to get it
    -> m (SpecMap sv)
transformSpecMap f = T.sequence . M.mapWithKey processCategory
    where processCategory c = T.sequence . M.mapWithKey (f c)

-- | Lifting 'transformSpecMap' to the 'RawSpec' level
_transformRawSpec :: (Monad m, SpecValue sv)
    => (Category -> ValueName sv -> sv -> m sv) -- the function to use
    -> RawSpec -> m RawSpec
_transformRawSpec f spec =
    transformSpecMap f (getPart spec) >>= \p' -> return $ setPart p' spec

-----------------------------------------------------------------------------

-- the state used
type NubState sv= State (M.Map (ValueName sv) Category)

-- | Remove all duplicate definitions from the 'RawSpec' to prevent
-- collisions.
nubSpec :: RawSpec -> RawSpec
nubSpec spec =
    let nubedSpec :: SpecValue sv => SpecMap sv
        nubedSpec = evalState (transformSpecMap nubValue $ getPart spec) M.empty
    in setPart (nubedSpec :: FuncSpec) . setPart (nubedSpec :: EnumSpec) $ spec

nubValue :: SpecValue sv => Category -> ValueName sv -> sv -> NubState sv sv
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
sortCategoryImports :: DeletedSpec -> RawSpec -> RawSpec
sortCategoryImports filtSpec spec =
    let stateLess :: SpecValue sv => ReaderT RawSpec (Reader DeletedSpec) (SpecMap sv)
        stateLess = evalStateT (transformSpecMap sortValue $ getPart spec) M.empty
        ms' :: SpecValue sv => SpecMap sv
        ms' = runReader (runReaderT stateLess  spec) filtSpec
    in setPart (ms' :: FuncSpec) . setPart (ms' :: EnumSpec) $ spec

type SortState sv = StateT (M.Map (ValueName sv) Category) (ReaderT RawSpec (Reader DeletedSpec))

sortValue :: SpecValue sv => Category -> ValueName sv -> sv -> SortState sv sv
sortValue curCat vn sv = do
    deflocM <- gets (M.lookup vn)
    case deflocM of
        Just defloc -> return $ toRedirect sv defloc
        Nothing -> do
            defVal <-
                if isDefine sv then return sv
                    else asks (whereIsDefined vn) >>=
                        maybe (getDelDef vn)
                              (return . snd)
            modify (M.insert vn curCat)
            return defVal
    where
--        getDelDef :: SpecValue sv => ValueName -> SortState sv
        getDelDef vn' = lift . lift $
            asks (whereIsDefined vn') >>=
                maybe (error $ "SpecValue " ++ show vn ++ " is nowhere defined")
                      (return . snd)

-----------------------------------------------------------------------------

-- | A spec containing all the deleted values
type DeletedSpec = RawSpec

filterExtensions :: (Extension -> Bool) -> RawSpec -> (RawSpec, DeletedSpec)
filterExtensions p = filterCategories eFilter
    where
        eFilter (Extension e _ _) = p e
        eFilter _                 = True

filterCategories :: (Category -> Bool) -> RawSpec -> (RawSpec, DeletedSpec)
filterCategories p spec =
    let (fspec, filtFspec) = splitPart $ getPart spec
        (espec, filtEspec) = splitPart $ getPart spec
        spec' = setPart (fspec :: FuncSpec) . setPart (espec :: EnumSpec) $ spec
        filtSpec = filtFspec `mappend` filtEspec
    in (spec', filtSpec)
--      modifyPart (M.filterWithKey (\c _ -> p c) :: FuncSpec -> FuncSpec)
--    . modifyPart (M.filterWithKey (\c _ -> p c) :: EnumSpec -> EnumSpec)
    where
        splitPart specP =
            let (specP', others) = M.partitionWithKey (\c _ -> p c) specP
                others' = specMapSpec $ fmap (M.filter isDefine) others
            in (specP', others')

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
