{-# LANGUAGE TypeFamilies, FlexibleContexts, RankNTypes #-}
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

    SpecValue(wrapName, unwrapName),
    ValueName(),

    EnumValue(..), EnumName,
    FuncValue(..), FuncName,
    
    GLName, toGLName,

    -- * Internals
    Newtype(..), under, under2,
    DuoMap(..), duoMempty, duoMappend, modifyDuoMap, extractDuoMap, duoMap,
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

data DuoMap f
    = DuoMap
    { enumMap :: f EnumValue
    , funcMap :: f FuncValue
    }

duoMempty :: (Monoid (f EnumValue), Monoid (f FuncValue)) => DuoMap f
duoMempty = DuoMap mempty mempty

duoMappend :: (Monoid (f EnumValue), Monoid (f FuncValue))
    => DuoMap f -> DuoMap f -> DuoMap f
duoMappend (DuoMap e1 f1) (DuoMap e2 f2)
    = DuoMap (e1 `mappend` e2) (f1 `mappend` f2)

duoMap :: (forall sv. SpecValue sv => f sv -> f sv) -> DuoMap f -> DuoMap f
duoMap g (DuoMap e f) = DuoMap (g e) (g f)

-- | Unwrap a newtype layer and get the appropriate duomap
extractDuoMap :: (Newtype a, Base a ~ DuoMap f, SpecValue sv) => a -> f sv
extractDuoMap = getDuoMap . unpack

-----------------------------------------------------------------------------

class Newtype n where
    type Base n
    unpack :: n      -> Base n
    pack   :: Base n -> n

under :: Newtype n => (Base n -> Base n) -> n -> n
under f = pack . f . unpack

under2 :: (Newtype n) => (Base n -> Base n -> Base n) -> n -> n -> n
under2 f n1 n2 = pack $ f (unpack n1) (unpack n2)

-----------------------------------------------------------------------------

-- | A class to generalize over the value types (EnumValue and FuncValue) in
-- the Mappings to reduce boilerplate code
class (Ord (ValueName sv), Show (ValueName sv)) => SpecValue sv where
    data ValueName sv
    wrapName    :: String -> ValueName sv
    -- | Return the original OpenGLName (as in the specification).
    toGLName    :: ValueName sv -> GLName
    unwrapName  :: ValueName sv -> RawGenOptions -> Name
    
--    getValMap         :: ValueMap -> ValMap sv
--    modifyValMap      :: (ValMap sv -> ValMap sv)
--                                -> ValueMap -> ValueMap

    getDuoMap :: DuoMap f -> f sv
    setDuoMap :: f sv -> DuoMap f -> DuoMap f

modifyDuoMap :: SpecValue sv => (f sv -> f sv) -> DuoMap f -> DuoMap f
modifyDuoMap f d = setDuoMap (f $ getDuoMap d) $ d

type EnumName = ValueName EnumValue

instance SpecValue EnumValue where
    newtype ValueName EnumValue = EN{ unEN :: String }
        deriving (Eq, Ord, Show)
    wrapName = EN
    toGLName = GLName . unEN
    unwrapName n o =
        let name = unEN n
            name' = if stripNames o then removeEnumExtension name else name
        in Ident $ "gl_" ++ name'
--    getValMap             = enumVMap
--    modifyValMap    f r   = r{enumVMap = f $ enumVMap r}
    getDuoMap = enumMap
    setDuoMap v d = d{enumMap = v}

type FuncName = ValueName FuncValue

instance SpecValue FuncValue where
    newtype ValueName FuncValue = FN{ unFN :: String }
        deriving (Eq, Ord, Show)
    wrapName = FN
    toGLName = GLName . unFN
    unwrapName n o =
        let name = unFN n
            name' = if stripNames o then removeFuncExtension name else name
        in Ident $ "gl" ++ name'
--    getValMap     = funcVMap
--    modifyValMap    f r   = r{funcVMap = f $ funcVMap r}
    getDuoMap = funcMap
    setDuoMap v d = d{funcMap = v}

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
