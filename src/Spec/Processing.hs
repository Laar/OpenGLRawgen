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

import Control.Category((>>>))
import Control.Monad.RWS
import Control.Monad.State

import qualified Data.Map as M
import Data.Maybe
import Data.Traversable as T

import Text.OpenGL.Spec(Category)

--import Spec.Lookup
import Spec.RawSpec

-- | Clean the 'RawSpec' in order to make it useable for codegeneration.
cleanupSpec :: RawSpec -> RawSpec
cleanupSpec = nubEnumSpec >>> filterEmpty >>> sortCategoryImports


-----------------------------------------------------------------------------

importFuncsFromCat :: Category -> Category -> RawSpec -> RawSpec
importFuncsFromCat tc sc sp =
    let addFuncs = M.map (\_ -> RedirectF sc) $  categoryFuncs sc sp
    in modifyPart (M.alter (\cur -> Just $ M.union (fromMaybe M.empty cur) addFuncs) tc) sp

-- | Adds reuses for several 'Category's to the spec
addReuses :: [(Category, [Category])] -> RawSpec -> RawSpec
addReuses reuse sp = foldr addReuse sp reuse
    where
        addReuse (tc, scs) sp' = foldr (importFuncsFromCat tc) sp' scs

-- | Filters all the 'Category's from the 'RawSpec' which don't have a single
-- enum nor any function.
filterEmpty :: RawSpec -> RawSpec
filterEmpty rs =
    let cats = allCategories rs
        emptyCats = filter (\c -> M.null (categoryFuncs c rs)
                                  && M.null (categoryEnums c rs))
                        cats
        enumSpec' :: EnumSpec
        enumSpec' = M.filterWithKey (\c _ -> not $ c `elem` emptyCats) $ getPart rs
        funcSpec' :: FuncSpec
        funcSpec' = M.filterWithKey (\c _ -> not $ c `elem` emptyCats) $ getPart rs
    in modifyPart (const enumSpec') $ modifyPart (const funcSpec') rs

-----------------------------------------------------------------------------

-- the state used
type NubState = State (M.Map ValueName Category)

-- | Remove all duplicate definitions from the 'EnumSpec' part to prevent
-- collisions.
nubEnumSpec :: RawSpec -> RawSpec
nubEnumSpec = modifyPart (\sp -> evalState (nubEnumSpecS sp) M.empty)

nubEnumSpecS :: EnumSpec -> NubState EnumSpec
nubEnumSpecS =  T.sequence . M.mapWithKey processCategory

processCategory :: Category -> ValueMap EnumValue -> NubState (ValueMap EnumValue)
processCategory c vals = T.sequence $ M.mapWithKey (processValue c) vals

processValue :: Category -> ValueName -> EnumValue -> NubState EnumValue
processValue _ _ r@(Redirect _ _) = return r
processValue c n r@(ReUse _ t)   = do
    defed <- gets (M.lookup n)
    case defed of
        Just c' -> return $ Redirect c' t
        Nothing -> modify (M.insert n c) >> return r
processValue c n v@(Value _ t) = do
    defed <- gets (M.lookup n)
    case defed of
        Just c' -> return $ Redirect c' t
        Nothing -> modify (M.insert n c) >> return v

-----------------------------------------------------------------------------

-- | TODO, sort all the imports in order to prevent cycles in the import\/exports
sortCategoryImports :: RawSpec -> RawSpec
sortCategoryImports rs =
    let (_, _, rs') = runRWS sortRWS rs M.empty
    in rs'

sortRWS :: RWS RawSpec RawSpec (M.Map ValueName Category) ()
sortRWS = ask >>= tell

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
