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
    Category() , -- Convenience
    
    ValueType(..), FType(..),

    SpecValue(wrapName, unwrapName, getDefLocation, addDefLocation),
    ValueName(),

    EnumValue(..), EnumName,
    FuncValue(..), FuncName,
    
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
    swapEnumValue,
    allCategories,

    -- * DefineMap
    DefineMap,
    emptyDefineMap,


    -- * Exported for parsing
    isBitfieldName,
) where

-----------------------------------------------------------------------------

import Control.Monad(msum)

import Data.List(stripPrefix, isPrefixOf, isInfixOf, isSuffixOf)
import Data.Monoid
import qualified Data.Map as M
import qualified Data.Set as S
import Data.Maybe

import Language.Haskell.Exts.Syntax(Name(Ident))
import Language.OpenGLRaw.Base

import Main.Options

-----------------------------------------------------------------------------

-- | The real values of an enum
data EnumValue
    -- | A localy defined enumvalue
    = Value     Integer   ValueType
    | ReUse     EnumName  ValueType
    deriving (Eq, Ord, Show)

-- | The specification of how the function is defined
data FuncValue
    = RawFunc
        FType   -- ^ Return type without IO
        [FType] -- ^ Types of the arguments
        (Maybe String) -- ^ The possible alias.
    deriving (Eq, Ord, Show)

-----------------------------------------------------------------------------


type ValMap sv = M.Map (ValueName sv) sv

-- | Mapping from `ValueName`s to `SpecValue`s for looking up their values.
data ValueMap
    = ValMap
    { enumVMap :: ValMap EnumValue
    , funcVMap :: ValMap FuncValue
    }

instance Monoid ValueMap where
    mempty = ValMap M.empty M.empty
    ValMap e1 f1 `mappend` ValMap e2 f2 = ValMap (e1 <> e2) (f1 <> f2)

-- | Adds a value to the `ValueMap`.
addValue :: SpecValue sv => ValueName sv -> sv -> ValueMap -> ValueMap
addValue vn val = modifyValMap (M.insert vn val)

-- | Lookup the the `SpecValue` for a given `ValueName`
lookupValue :: SpecValue sv => ValueName sv -> ValueMap -> Maybe sv
lookupValue sv rs = M.lookup sv $ getValMap rs

-- | Swaps an `EnumValue` if it's an ReUse directive with the reused
-- definition. Thus if it was originally
-- @
-- Enum1 = 5
-- Enum2 = Enum1
-- @
-- invoking it on Enum2 it will change the spec to resemble if it were
-- @
-- Enum1 = Enum2
-- Enum2 = 5
-- @
-- Useful for reordering dependencies.
swapEnumValue :: EnumName -> ValueMap -> ValueMap
swapEnumValue e1 rawSpec = case lookupValue e1 rawSpec of
    Just (ReUse e2 ty) ->
        let mv2@(Just v2) = lookupValue e2 rawSpec
            rawSpec' = addValue e1 v2
                     . addValue e2 (ReUse e1 ty)
                     $ rawSpec
        in maybe rawSpec (const rawSpec') mv2
    _ -> rawSpec

-----------------------------------------------------------------------------

type LocMap sv = M.Map Category (S.Set (ValueName sv))

-- | Mapping of `Category`s to the `ValueName`s it contains.
data LocationMap
    = LocMap
    { enumLMap :: LocMap EnumValue
    , funcLMap :: LocMap FuncValue
    }

instance Monoid LocationMap where
    mempty = LocMap M.empty M.empty
    LocMap e1 f1 `mappend` LocMap e2 f2
        = LocMap (M.unionWith S.union e1 e2) (M.unionWith S.union f1 f2)

-- | Listing of all `Category`s
allCategories :: LocationMap -> [Category]
allCategories rs = S.toList $ S.union ecats fcats
    where
        ecats = M.keysSet . enumLMap $ rs
        fcats = M.keysSet . funcLMap $ rs

-- | Adds the location where a value is used.
addLocation :: SpecValue sv
    => Category -> ValueName sv -> LocationMap -> LocationMap
addLocation cat vn
    = modifyLocMap (M.insertWith S.union cat $ S.singleton vn)

-- | Deletes a `Category` from the `LocationMap`.
deleteCategory :: Category -> LocationMap -> LocationMap
deleteCategory c
	= modifyLocMap (M.delete c :: LocMap EnumValue -> LocMap EnumValue)
	. modifyLocMap (M.delete c :: LocMap FuncValue -> LocMap FuncValue)

-- | Set of all value's in a `Category`
categoryValues :: SpecValue sv
    => Category -> LocationMap -> S.Set (ValueName sv)
categoryValues c rs = fromMaybe S.empty . M.lookup c $ getLocMap rs

-----------------------------------------------------------------------------

type DefMap sv = M.Map (ValueName sv) Category

-- | Definition map, which records where each value is used first.
data DefineMap
    = DefMap
    { enumDMap :: DefMap EnumValue
    , funcDMap :: DefMap FuncValue
    }

instance Monoid DefineMap where
    mempty = emptyDefineMap
    DefMap e1 f1 `mappend` DefMap e2 f2 = DefMap (e1 <> e2) (f1 <> f2)

emptyDefineMap :: DefineMap
emptyDefineMap = DefMap M.empty M.empty


-----------------------------------------------------------------------------

-- | A class to generalize over the value types (EnumValue and FuncValue) in
-- the Mappings to reduce boilerplate code
class (Ord (ValueName sv), Show (ValueName sv)) => SpecValue sv where
    data ValueName sv
    wrapName    :: String -> ValueName sv
    -- | Return the original OpenGLName (as in the specification).
    toGLName    :: ValueName sv -> GLName
    unwrapName  :: ValueName sv -> RawGenOptions -> Name
    
    getValMap         :: ValueMap -> ValMap sv
    modifyValMap      :: (ValMap sv -> ValMap sv)
                                -> ValueMap -> ValueMap
    getLocMap      :: LocationMap -> LocMap sv
    modifyLocMap   :: (LocMap sv -> LocMap sv)
                                -> LocationMap -> LocationMap

    getDefLocation      :: ValueName sv -> DefineMap -> Maybe Category
    addDefLocation      :: ValueName sv -> Category
                                -> DefineMap -> DefineMap

type EnumName = ValueName EnumValue

instance SpecValue EnumValue where
    newtype ValueName EnumValue = EN{ unEN :: String }
        deriving (Eq, Ord, Show)
    wrapName = EN
    toGLName = unEN
    unwrapName n o =
        let name = unEN n
            name' = if stripNames o then removeEnumExtension name else name
        in Ident $ "gl_" ++ name'
    getValMap             = enumVMap
    modifyValMap    f r   = r{enumVMap = f $ enumVMap r}
    getLocMap          = enumLMap
    modifyLocMap f r   = r{enumLMap = f $ enumLMap r}
    getDefLocation    n d   = M.lookup n $ enumDMap d
    addDefLocation    n c d = d{enumDMap = M.insert n c $ enumDMap d}

type FuncName = ValueName FuncValue

instance SpecValue FuncValue where
    newtype ValueName FuncValue = FN{ unFN :: String }
        deriving (Eq, Ord, Show)
    wrapName = FN
    toGLName = unFN
    unwrapName n o =
        let name = unFN n
            name' = if stripNames o then removeFuncExtension name else name
        in Ident $ "gl" ++ name'
    getValMap     = funcVMap
    modifyValMap    f r   = r{funcVMap = f $ funcVMap r}
    getLocMap  = funcLMap
    modifyLocMap f r   = r{funcLMap = f $ funcLMap r}
    getDefLocation    n d   = M.lookup n $ funcDMap d
    addDefLocation    n c d = d{funcDMap = M.insert n c $ funcDMap d}

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

-- | Check wheter the name for an enum is a bitfield or an enum.
isBitfieldName :: String -> Bool
isBitfieldName name =
    let name' = removeEnumExtension name
    in     "_BIT" `isSuffixOf` name'
        || (("_ALL_" `isInfixOf` name' || "ALL_" `isPrefixOf` name') 
                && "_BITS" `isSuffixOf` name')

-----------------------------------------------------------------------------
