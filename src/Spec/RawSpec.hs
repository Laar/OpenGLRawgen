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
    SpecValue(wrapName, unwrapName),

    -- ** TODO sort
    lookupValue, categoryValues, addValue, addLocation,

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

import Data.List(union, stripPrefix, isPrefixOf, isInfixOf, isSuffixOf)
import Data.Monoid
import qualified Data.Map as M
import Data.Maybe

import Language.Haskell.Exts.Syntax(Type, Name(Ident))
import Text.OpenGL.Spec (Category)

import Main.Options

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
        RawSpec (ev1 <> ev2) (M.unionWith union el1 el2)
                (fv1 <> fv2) (M.unionWith union fl1 fl2)

type ValueMap sv    = M.Map (ValueName sv) sv
type LocationMap sv = M.Map Category [ValueName sv]


-----------------------------------------------------------------------------

-----------------------------------------------------------------------------

-- | The real values of an enum
data EnumValue
    -- | A localy defined enumvalue
    = Value     Integer   Type
    deriving(Eq, Ord, Show)


-- | The specification of how the function is defined
data FuncValue
    -- | FFI import of the given type, with the alias and the GLfunction
    -- name for which the pointer should be used.
    = RawFunc  String Type (Maybe String)
    deriving (Eq, Ord, Show)

-----------------------------------------------------------------------------

addValue :: SpecValue sv => ValueName sv -> sv -> RawSpec -> RawSpec
addValue vn val = modifyValueMap (M.insert vn val)

addLocation :: SpecValue sv
    => Category -> ValueName sv -> RawSpec -> RawSpec
addLocation cat vn = modifyLocationMap (M.insertWith union cat [vn])

-----------------------------------------------------------------------------

allCategories :: RawSpec -> [Category]
allCategories rs = union ecats fcats
    where
        ecats = M.keys . enumLMap $ rs
        fcats = M.keys . funcLMap $ rs

lookupValue :: SpecValue sv => ValueName sv -> RawSpec -> Maybe sv
lookupValue sv rs = M.lookup sv $ getValueMap rs

categoryValues :: SpecValue sv => Category -> RawSpec -> [ValueName sv]
categoryValues c rs = fromMaybe [] . M.lookup c $ getLocationMap rs

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
