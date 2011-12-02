-----------------------------------------------------------------------------
--
-- Module      :  Spec.RawSpec
-- Copyright   :
-- License     :  AllRightsReserved
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- |
--
-----------------------------------------------------------------------------

module Spec.RawSpec (
    RawSpec(),

    mkRawSpec, allCategories,
    categoryFuncs, categoryEnums,

    EnumValue(..),
    FuncValue(..),

    EnumSpec, FuncSpec,
    modifyEnumSpec, modifyFuncSpec,

    lookupEInCat, isEInCat,
    isEDefinedInCat, whereIsEDefined,

    lookupFInCat, isFInCat,
    isFDefinedInCat, whereIsFDefined,

    isEDefine,
    isFDefine,

    filterEmpty,
    addReuses,
) where

import Data.List(union)
import qualified Data.Map as M
import Data.Maybe

import Language.Haskell.Exts.Syntax(Type)
import Text.OpenGL.Spec (Category)

type EnumSpec = M.Map Category EnumMap
type FuncSpec = M.Map Category FuncMap

data RawSpec
    = RawSpec
    { enumSpec :: EnumSpec
    , funcSpec :: FuncSpec
    }

modifyEnumSpec :: (EnumSpec -> EnumSpec) -> RawSpec -> RawSpec
modifyEnumSpec f r = r{enumSpec = f $ enumSpec r}

modifyFuncSpec :: (FuncSpec -> FuncSpec) -> RawSpec -> RawSpec
modifyFuncSpec f r = r{funcSpec = f $ funcSpec r}

mkRawSpec
    :: [(Category, [(String, EnumValue)])] -> [(Category, [(String, FuncValue)])]
    -> RawSpec
mkRawSpec es fs =
    let especs = M.fromList es
        fspecs = M.fromList fs
    in RawSpec (M.map M.fromList especs) (M.map M.fromList fspecs)

-----------------------------------------------------------------------------

allCategories :: RawSpec -> [Category]
allCategories rs =
    let ecats = M.keys . enumSpec $ rs
        fcats = M.keys . funcSpec $ rs
    in union ecats fcats

categoryFuncs :: Category -> RawSpec -> FuncMap
categoryFuncs c s = fromMaybe M.empty . M.lookup c $ funcSpec s

categoryEnums :: Category -> RawSpec -> EnumMap
categoryEnums c s = fromMaybe M.empty . M.lookup c $ enumSpec s

-----------------------------------------------------------------------------

type EnumMap = M.Map String EnumValue

data EnumValue
    = Value     Integer  Type
    | Redirect  Category Type -- the category is only a hint to where it should be ....
    | ReUse     String   Type
    deriving(Eq, Ord, Show)

isEDefine :: EnumValue -> Bool
isEDefine (Value _ _) = True
isEDefine (ReUse _ _) = True
isEDefine _           = False

type FuncMap = M.Map String FuncValue

data FuncValue
    = RawFunc   Type
    | RedirectF Category -- the category is again purely a hint
    deriving (Eq, Ord, Show)

isFDefine :: FuncValue -> Bool
isFDefine (RawFunc _) = True
isFDefine _           = False

-----------------------------------------------------------------------------

lookupEInCat :: String -> Category -> RawSpec -> Maybe EnumValue
lookupEInCat n c s = M.lookup c (enumSpec s) >>= M.lookup n

isEInCat :: String -> Category -> RawSpec -> Bool
isEInCat n c s = isJust $ lookupEInCat n c s

isEDefinedInCat :: String -> Category -> RawSpec -> Bool
isEDefinedInCat n c s = maybe False isEDefine $ lookupEInCat n c s

whereIsEDefined :: String -> RawSpec -> Maybe Category
whereIsEDefined n s =
    let cats = M.keys $ enumSpec s
    in listToMaybe $ filter (\c -> isEDefinedInCat n c s) cats

-----------------------------------------------------------------------------

lookupFInCat :: String -> Category -> RawSpec -> Maybe FuncValue
lookupFInCat n c s = M.lookup c (funcSpec s) >>= M.lookup n

isFInCat :: String -> Category -> RawSpec -> Bool
isFInCat n c s = isJust $ lookupFInCat n c s

isFDefinedInCat :: String -> Category -> RawSpec -> Bool
isFDefinedInCat n c s = maybe False isFDefine $ lookupFInCat n c s

whereIsFDefined :: String -> RawSpec -> Maybe Category
whereIsFDefined n s =
    let cats = M.keys $ funcSpec s
    in listToMaybe $ filter (\c -> isFDefinedInCat n c s) cats

-----------------------------------------------------------------------------

filterEmpty :: RawSpec -> RawSpec
filterEmpty rs =
    let cats = allCategories rs
        emptyCats = filter (\c -> M.null (categoryFuncs c rs)
                                  && M.null (categoryEnums c rs))
                        cats
        enumSpec' = M.filterWithKey (\c _ -> not $ c `elem` emptyCats) $ enumSpec rs
        funcSpec' = M.filterWithKey (\c _ -> not $ c `elem` emptyCats) $ funcSpec rs
    in rs{enumSpec = enumSpec', funcSpec = funcSpec'}

-----------------------------------------------------------------------------

importFuncsFromCat :: Category -> Category -> RawSpec -> RawSpec
importFuncsFromCat tc sc sp =
    let addFuncs = M.map (\_ -> RedirectF sc) $  categoryFuncs sc sp
    in sp{funcSpec = M.alter (\cur -> Just $ M.union (fromMaybe M.empty cur) addFuncs) tc $ funcSpec sp}

addReuses :: [(Category, [Category])] -> RawSpec -> RawSpec
addReuses reuse sp = foldr addReuse sp reuse
    where
        addReuse (tc, scs) sp' = foldr (importFuncsFromCat tc) sp' scs
