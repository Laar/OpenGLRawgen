{-# LANGUAGE TypeFamilies, FlexibleContexts #-}
-----------------------------------------------------------------------------
--
-- Module      :  Spec.RawSpec
-- Copyright   :  (c) 2011-12 Lars Corbijn
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

    -- * The `RawSpec` and associated types and functions
    -- ** The `RawSpec` and associates
    RawSpec(),
    Category() , -- Convenience
    SpecValue(wrapName, unwrapName, getDefLocation, addDefLocation),
    ValueName(),

    -- ** TODO sort
    lookupValue, categoryValues, addValue, addLocation, deleteCategory,
    DefineMap, emptyDefineMap, swapEnumValue,

    -- ** The contents of the spec
    EnumValue(..), EnumName,
    FuncValue(..), FuncName,

    -- * General functions on 'RawSpec'
    allCategories,

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

import Language.Haskell.Exts.Syntax(Type, Name(Ident))
import Text.OpenGL.Spec (Category)

import Main.Options

-----------------------------------------------------------------------------

-- | The real values of an enum
data EnumValue
    -- | A localy defined enumvalue
    = Value     Integer   Type
    | ReUse     EnumName  Type
    deriving(Eq, Ord, Show)


-- | The specification of how the function is defined
data FuncValue
    -- | FFI import of the given type, with the alias and the GLfunction
    -- name for which the pointer should be used.
    = RawFunc  String Type (Maybe String)
    deriving (Eq, Ord, Show)

-----------------------------------------------------------------------------


-- | The full representation of the specification needed to build OpenGLRaw
data RawSpec
    = RawSpec
    { enumVMap :: ValueMap      EnumValue
    , enumLMap :: LocationMap   EnumValue
    , funcVMap :: ValueMap      FuncValue
    , funcLMap :: LocationMap   FuncValue
    }

instance Monoid RawSpec where
    mempty = RawSpec mempty mempty mempty mempty
    RawSpec ev1 el1 fv1 fl1 `mappend` RawSpec ev2 el2 fv2 fl2 =
        RawSpec (ev1 <> ev2) (M.unionWith S.union el1 el2)
                (fv1 <> fv2) (M.unionWith S.union fl1 fl2)

type ValueMap sv    = M.Map (ValueName sv) sv
type LocationMap sv = M.Map Category (S.Set (ValueName sv))
type ELocationMap 	= LocationMap EnumValue
type FLocationMap 	= LocationMap FuncValue


-----------------------------------------------------------------------------

type DefMap sv = M.Map (ValueName sv) Category

-- | Definition map, which records where each value is used first.
data DefineMap
    = DefMap
    { enumDMap :: DefMap EnumValue
    , funcDMap :: DefMap FuncValue
    }

emptyDefineMap :: DefineMap
emptyDefineMap = DefMap M.empty M.empty

-----------------------------------------------------------------------------

-- | Adds a value to the `RawSpec`.
addValue :: SpecValue sv => ValueName sv -> sv -> RawSpec -> RawSpec
addValue vn val = modifyValueMap (M.insert vn val)

-- | Adds the location where a value is used.
addLocation :: SpecValue sv
    => Category -> ValueName sv -> RawSpec -> RawSpec
addLocation cat vn = modifyLocationMap (M.insertWith S.union cat $ S.singleton vn)

-- | Deletes a `Category` from the `RawSpec`.
deleteCategory :: Category -> RawSpec -> RawSpec
deleteCategory c
	= modifyLocationMap (M.delete c :: ELocationMap -> ELocationMap)
	. modifyLocationMap (M.delete c :: FLocationMap -> FLocationMap)

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
swapEnumValue :: EnumName -> RawSpec -> RawSpec
swapEnumValue e1 rawSpec = case lookupValue e1 rawSpec of
    Just (ReUse e2 ty) ->
        let mv2@(Just v2) = lookupValue e2 rawSpec
            rawSpec' = addValue e1 v2
                     . addValue e2 (ReUse e1 ty)
                     $ rawSpec
        in maybe rawSpec (const rawSpec') mv2
    _ -> rawSpec

-----------------------------------------------------------------------------

allCategories :: RawSpec -> [Category]
allCategories rs = S.toList $ S.union ecats fcats
    where
        ecats = M.keysSet . enumLMap $ rs
        fcats = M.keysSet . funcLMap $ rs

lookupValue :: SpecValue sv => ValueName sv -> RawSpec -> Maybe sv
lookupValue sv rs = M.lookup sv $ getValueMap rs

categoryValues :: SpecValue sv
    => Category -> RawSpec -> S.Set (ValueName sv)
categoryValues c rs = fromMaybe S.empty . M.lookup c $ getLocationMap rs

-----------------------------------------------------------------------------

-- | A class to generalize over the value types in the RawSpec to reduce
-- boilerplate code
class (Ord (ValueName sv), Show (ValueName sv)) => SpecValue sv where
    data ValueName sv
    wrapName    :: String -> ValueName sv
    unwrapName  :: ValueName sv -> RawGenOptions -> Name
    
    getValueMap         :: RawSpec -> ValueMap sv
    modifyValueMap      :: (ValueMap sv -> ValueMap sv) -> RawSpec -> RawSpec
    getLocationMap      :: RawSpec -> LocationMap sv
    modifyLocationMap   :: (LocationMap sv -> LocationMap sv)
                                -> RawSpec -> RawSpec

    getDefLocation      :: (ValueName sv) -> DefineMap -> Maybe Category
    addDefLocation      :: (ValueName sv) -> Category
                                -> DefineMap -> DefineMap

type EnumName = ValueName EnumValue

instance SpecValue EnumValue where
    newtype ValueName EnumValue = EN{ unEN :: String }
        deriving (Eq, Ord, Show)
    wrapName = EN
    unwrapName n o =
        let name = unEN n
            name' = if stripNames o then removeEnumExtension name else name
        in Ident $ "gl_" ++ name'
    getValueMap             = enumVMap
    modifyValueMap    f r   = r{enumVMap = f $ enumVMap r}
    getLocationMap          = enumLMap
    modifyLocationMap f r   = r{enumLMap = f $ enumLMap r}
    getDefLocation    n d   = M.lookup n $ enumDMap d
    addDefLocation    n c d = d{enumDMap = M.insert n c $ enumDMap d}

type FuncName = ValueName FuncValue

instance SpecValue FuncValue where
    newtype ValueName FuncValue = FN{ unFN :: String }
        deriving (Eq, Ord, Show)
    wrapName = FN
    unwrapName n o =
        let name = unFN n
            name' = if stripNames o then removeFuncExtension name else name
        in Ident $ "gl" ++ name'
    getValueMap     = funcVMap
    modifyValueMap    f r   = r{funcVMap = f $ funcVMap r}
    getLocationMap  = funcLMap
    modifyLocationMap f r   = r{funcLMap = f $ funcLMap r}
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
        stripsr = map (flip stripPrefix strr) extensionsr
        str' = fromMaybe str . fmap reverse $ msum stripsr
    in str'

extensions :: [String]
extensions =
    [ "3DFX"
    , "AMD", "APPLE", "ARB", "ATI"
    , "EXT"
    , "GREMEDY"
    , "HP"
    , "IBM", "INGR", "INTEL"
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
    in or
        [ "_BIT" `isSuffixOf` name'
        , ("_ALL_" `isInfixOf` name' || "ALL_" `isPrefixOf` name') && "_BITS" `isSuffixOf` name'
        ]

-----------------------------------------------------------------------------
