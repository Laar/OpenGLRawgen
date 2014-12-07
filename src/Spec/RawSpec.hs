{-# LANGUAGE TypeFamilies, FlexibleContexts #-}
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
-- | Defines various mappings used for representing the specification files
-- and building the final result.
--
-----------------------------------------------------------------------------

module Spec.RawSpec (

    -- * The `RawSpec` and associates
    Category(..) , -- Convenience
    
    Value(..),
    VName(),
    NameType(..),

    wrapName, unwrapName,

    
    GLName, toGLName,
    -- * ValueMap
    ValueMap,
    lookupValue,
    addValue,
    -- * LocationMap
    LocationMap,
    addLocation,
    categoryValues,
    deleteCategory,
    swapValue,
    allCategories,

    -- * DefineMap
    DefineMap,
    emptyDefineMap,
    getDefLocation,
    addDefLocation,
) where

-----------------------------------------------------------------------------

import Control.Monad(msum)

import Data.List(stripPrefix)
import Data.Monoid
import qualified Data.Map as M
import qualified Data.Set as S
import Data.Maybe

import Language.OpenGLRaw.Base

-----------------------------------------------------------------------------

data Value
    = EValue Integer  ValueType
    | ReUse  VName
    | RawFunc
        FType
        [FType]
        (Maybe VName)
    deriving (Eq, Ord, Show)

data VName = VName NameType String
    deriving (Eq, Ord, Show)

data NameType
    = EnumName
    | FuncName
    deriving (Eq, Ord, Show)

-----------------------------------------------------------------------------

-- | The mapping from Name to details of the definition.
newtype ValueMap = ValMap (M.Map VName Value)

instance Monoid ValueMap where
    mempty = ValMap mempty
    ValMap v1 `mappend` ValMap v2 = ValMap $ v1 <> v2

-- | Adds a value to the `ValueMap`.
addValue :: VName -> Value -> ValueMap -> ValueMap
addValue vn v (ValMap vm) = ValMap $ M.insert vn v vm


-- | Lookup the the `SpecValue` for a given `ValueName`
lookupValue :: VName -> ValueMap -> Maybe Value
lookupValue vn (ValMap vm) = M.lookup vn vm

-- | Swaps a `ReUse` with the reused definition. E.g. with the original
-- @
-- Enum1 = 5
-- Enum2 = Enum1
-- @
-- invoking it on Enum2 it will change the spec to resemble if it were
-- @
-- Enum1 = Enum2
-- Enum2 = 5
-- @
-- Useful for reordering dependencies to prevent circular ones.
swapValue :: VName -> ValueMap -> ValueMap
swapValue n1 spec = case lookupValue n1 spec of
    Just (ReUse n2) -> case lookupValue n2 spec of
        Nothing -> spec
        -- Here we add v2, which could be either a definition or another
        -- reuse indirection.
        Just v2 -> addValue n1 v2 $ addValue n2 (ReUse n1) spec
    _ -> spec

-----------------------------------------------------------------------------

-- | The mapping from `Category` to the values it contains.
newtype LocationMap = LocMap (M.Map Category (S.Set VName))

instance Monoid LocationMap where
    mempty = LocMap mempty
    LocMap l1 `mappend` LocMap l2
        = LocMap $ M.unionWith S.union l1 l2

-- | Listing of all `Category`s
allCategories :: LocationMap -> [Category]
allCategories (LocMap l) = S.toList $ M.keysSet l

-- | Adds the location where a value is used.
addLocation :: Category -> VName -> LocationMap -> LocationMap
addLocation cat vn (LocMap l)
    = LocMap $ M.insertWith S.union cat (S.singleton vn) l

-- | Deletes a `Category` from the `LocationMap`.
deleteCategory :: Category -> LocationMap -> LocationMap
deleteCategory c (LocMap l) = LocMap $ M.delete c l

-- | Set of all value's in a `Category`
categoryValues :: Category -> LocationMap -> S.Set VName
categoryValues c (LocMap l) = fromMaybe S.empty$ M.lookup c l

-----------------------------------------------------------------------------

-- Mapping of a name to the Category in which it is first defined.
newtype DefineMap
    = DefMap (M.Map VName Category)
instance Monoid DefineMap where
    mempty = DefMap mempty
    DefMap d1 `mappend` DefMap d2 = DefMap $ d1 <> d2

getDefLocation :: VName -> DefineMap -> Maybe Category
getDefLocation vn (DefMap d) = M.lookup vn d

addDefLocation :: VName -> Category -> DefineMap -> DefineMap
addDefLocation vn c (DefMap d) = DefMap $ M.insert vn c d

emptyDefineMap :: DefineMap
emptyDefineMap = mempty

-----------------------------------------------------------------------------

wrapName :: NameType -> String -> VName
wrapName = VName

toGLName :: VName -> GLName
toGLName (VName _ n) = GLName n

unwrapName :: VName -> Name
unwrapName (VName nt n) = Ident $ case nt of
    FuncName -> "gl" ++ n
    EnumName -> "gl_"  ++ n

-----------------------------------------------------------------------------

-- | Removes the extension suffix from a function name.
removeFuncExtension :: String -> String
removeFuncExtension = removeExtension extensions

-- | Removes the extension suffix from an enum name.
removeEnumExtension :: String -> String
removeEnumExtension = removeExtension (map ('_':) extensions)

-- | Removes the extension (one from the list) from a name, if it has one.
removeExtension :: [String] -> String -> String
removeExtension exts str =
    let strr = reverse str
        extensionsr = map reverse exts
        stripsr = map (`stripPrefix` strr) extensionsr
        str' = maybe str reverse $ msum stripsr
    in str'

extensions :: [String]
extensions =
    [ "3DFX"
    , "AMD", "APPLE", "ARB", "ATI"
    , "EXT"
    , "GREMEDY"
    , "HP"
    , "IBM", "INGR", "INTEL"
    , "KHR"
    , "MESAX", "MESA"
    , "NV"
    , "OES", "OML"
    , "PGI"
    , "REND"
    , "S3", "SGIS", "SGIX", "SGI", "SUNX", "SUN"
    , "WIN"
    ]

-----------------------------------------------------------------------------
