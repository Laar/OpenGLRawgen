-----------------------------------------------------------------------------
--
-- Module      :  Spec.RawSpec
-- Copyright   :  (c) 2011 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | Defines the 'RawSpec' type which represents the specification from the
-- files.
--
-----------------------------------------------------------------------------

module Spec.RawSpec (

    -- * The 'RawSpec' and associated types
    RawSpec(),
    SpecValue(..),

    EnumSpec, FuncSpec,

    EnumValue(..),
    FuncValue(..),

    enumType,

    -- * General functions on 'RawSpec'
    mkRawSpec, allCategories,
    categoryFuncs, categoryEnums,

    modifyEnumSpec, modifyFuncSpec,

    -- * Lookup functions
    -- ** Enum lookup functions
    isEInCat,
    isEDefinedInCat, whereIsEDefined,

    -- ** Function lookup functions
    isFInCat,
    isFDefinedInCat, whereIsFDefined,

    -- * 'RawSpec' processors
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

-----------------------------------------------------------------------------

data RawSpec
    = RawSpec
    { enumSpec :: SpecMap EnumValue -- EnumSpec
    , funcSpec :: SpecMap FuncValue -- FuncSpec
    }

-- | Lift a change in 'EnumSpec' to one in the enumSpec of the 'RawSpec'
modifyEnumSpec :: (EnumSpec -> EnumSpec) -> RawSpec -> RawSpec
modifyEnumSpec f r = r{enumSpec = f $ enumSpec r}

-- | Lift a change in 'FuncSpec' to one in the funcSpec of the 'RawSpec'
modifyFuncSpec :: (FuncSpec -> FuncSpec) -> RawSpec -> RawSpec
modifyFuncSpec f r = r{funcSpec = f $ funcSpec r}

-- | Make a 'RawSpec' from it's components
mkRawSpec
    :: [(Category, [(String, EnumValue)])] -- ^ A listing of all enums per category
    -> [(Category, [(String, FuncValue)])] -- ^ A listing of all functionns per category
    -> RawSpec
mkRawSpec es fs =
    let especs = M.fromList es
        fspecs = M.fromList fs
    in RawSpec (M.map M.fromList especs) (M.map M.fromList fspecs)

-----------------------------------------------------------------------------

-- | List all categories in the 'RawSpec'
allCategories :: RawSpec -> [Category]
allCategories rs =
    let ecats = M.keys . enumSpec $ rs
        fcats = M.keys . funcSpec $ rs
    in union ecats fcats

-- | Find the 'FuncMap' of a certain 'Category'.
categoryFuncs :: Category -> RawSpec -> FuncMap
categoryFuncs c s = fromMaybe M.empty . M.lookup c $ funcSpec s

-- | Find the 'EnumMap' of a certain 'Category'.
categoryEnums :: Category -> RawSpec -> EnumMap
categoryEnums c s = fromMaybe M.empty . M.lookup c $ enumSpec s

-----------------------------------------------------------------------------

type ValueMap a = M.Map String a
type SpecMap  a = M.Map Category (ValueMap a)


class SpecValue a where
    getPart     :: RawSpec -> SpecMap a
    setPart     :: SpecMap a -> RawSpec -> RawSpec
    modifyPart  :: (SpecMap a -> SpecMap a) -> RawSpec -> RawSpec
    modifyPart f s = setPart (f $ getPart s) s

    isDefine    :: a -> Bool

instance SpecValue EnumValue where
    getPart   = enumSpec
    setPart e = \s -> s{enumSpec = e}
    isDefine  = isEDefine

instance SpecValue FuncValue where
    getPart   = funcSpec
    setPart f = \s -> s{funcSpec = f}
    isDefine  = isFDefine

-----------------------------------------------------------------------------

lookupInCat :: SpecValue s => String -> Category -> RawSpec -> Maybe s
lookupInCat n c s = M.lookup c (getPart s) >>= M.lookup n

whereIsDefined :: SpecValue s => String -> RawSpec -> Maybe (Category, s)
whereIsDefined n s =
    let cats = M.keys $ enumSpec s
    in listToMaybe $ mapMaybe
            (\c -> lookupInCat n c s >>= \v -> if isDefine v then Just (c, v) else Nothing)
                 cats

-----------------------------------------------------------------------------

-- | The representation of the enum values in a category
type EnumMap = M.Map String EnumValue

-- | The real values of an enum
data EnumValue
    -- | A localy defined enumvalue
    = Value     Integer  Type
    -- | An imported enum. The 'Category' is only a hint to where it should be.
    | Redirect  Category Type
    -- | An enum that is the same as another one
    -- > gl_FRAMEBUFFER_BINDING = gl_DRAW_BUFFER_BINDING
    | ReUse     String   Type
    deriving(Eq, Ord, Show)

isEDefine :: EnumValue -> Bool
isEDefine (Value _ _) = True
isEDefine (ReUse _ _) = True
isEDefine _           = False

enumType :: EnumValue -> Type
enumType (Value    _ t) = t
enumType (Redirect _ t) = t
enumType (ReUse    _ t) = t

type FuncMap = M.Map String FuncValue

-- | The specification of how the function is defined
data FuncValue
    -- | FFI import of the given type
    = RawFunc   Type
    -- The function is imported. The 'Category' is again purely a hint
    | RedirectF Category
    deriving (Eq, Ord, Show)

isFDefine :: FuncValue -> Bool
isFDefine (RawFunc _) = True
isFDefine _           = False

-----------------------------------------------------------------------------

-- | lookup the value of an enum in a certain 'Category'.
lookupEInCat :: String -> Category -> RawSpec -> Maybe EnumValue
lookupEInCat = lookupInCat

-- | Checks whether or not a certain enum is exported by the 'Category'.
isEInCat :: String -> Category -> RawSpec -> Bool
isEInCat n c s = isJust $ lookupEInCat n c s

-- | Checks whether or not a certain enum is defined by the 'Category'.
isEDefinedInCat :: String -> Category -> RawSpec -> Bool
isEDefinedInCat n c s = maybe False isDefine $ lookupEInCat n c s

-- | lookup the 'Category' of the enum defenition.
whereIsEDefined :: String -> RawSpec -> Maybe Category
whereIsEDefined n s = fst `fmap` (whereIsDefined n s :: Maybe (Category, EnumValue))

-----------------------------------------------------------------------------

-- | As 'lookupEInCat' but for a function
lookupFInCat :: String -> Category -> RawSpec -> Maybe FuncValue
lookupFInCat = lookupInCat

-- | As isEInCat but for a function
isFInCat :: String -> Category -> RawSpec -> Bool
isFInCat n c s = isJust $ lookupFInCat n c s

-- | As isEDefinedInCat but for a function
isFDefinedInCat :: String -> Category -> RawSpec -> Bool
isFDefinedInCat n c s = maybe False isDefine $ lookupFInCat n c s

-- | As whereIsEDefined but for a function
whereIsFDefined :: String -> RawSpec -> Maybe Category
whereIsFDefined n s = fst `fmap` (whereIsDefined n s :: Maybe (Category, FuncValue))

-----------------------------------------------------------------------------

-- | Filters all the 'Category's from the 'RawSpec' which don't have a single
-- enum nor any function.
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

-- | Adds reuses for several 'Category's to the spec
addReuses :: [(Category, [Category])] -> RawSpec -> RawSpec
addReuses reuse sp = foldr addReuse sp reuse
    where
        addReuse (tc, scs) sp' = foldr (importFuncsFromCat tc) sp' scs
