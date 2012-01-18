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

    -- * The 'RawSpec' and associated types and functions
    RawSpec(),
    SpecValue(..),
    ValueName, ValueMap, SpecMap,

    EnumSpec, FuncSpec,

    EnumValue(..),
    FuncValue(..),

    enumType,

    singletonSpec, categoryRawSpec, valueMapSpec, specMapSpec,

    -- * General functions on 'RawSpec'
    allCategories,
    categoryFuncs, categoryEnums,

) where

import Data.List(union)
import Data.Monoid
import qualified Data.Map as M
import Data.Maybe

import Language.Haskell.Exts.Syntax(Type)
import Text.OpenGL.Spec (Category)

type EnumSpec = M.Map Category EnumMap
type FuncSpec = M.Map Category FuncMap

-----------------------------------------------------------------------------


-- | The full representation of the specification needed to build OpenGLRaw
data RawSpec
    = RawSpec
    { enumSpec :: SpecMap EnumValue
    , funcSpec :: SpecMap FuncValue
    }

instance Monoid RawSpec where
    mempty = RawSpec M.empty M.empty
    mappend (RawSpec em1 fm1) (RawSpec em2 fm2)
        = RawSpec (M.unionWith mappend em1 em2) (M.unionWith mappend fm1 fm2)

-----------------------------------------------------------------------------

-- | Create a 'RawSpec' with only a single 'SpecValue'.
singletonSpec :: SpecValue sv => Category -> ValueName -> sv -> RawSpec
singletonSpec c vn sv = valueMapSpec c $ M.singleton vn sv

-- | Create a 'RawSpec' from all the values in a specific 'Category'.
categoryRawSpec :: SpecValue sv => Category->  [(ValueName, sv)] -> RawSpec
categoryRawSpec c vals = specMapSpec . M.singleton c $ M.fromList vals

valueMapSpec :: SpecValue sv => Category -> ValueMap sv -> RawSpec
valueMapSpec c sv = setPart (M.singleton c sv) mempty

specMapSpec :: SpecValue sv => SpecMap sv -> RawSpec
specMapSpec sm = setPart sm mempty

-----------------------------------------------------------------------------

-- | The representation of the enum values in a category
type EnumMap = ValueMap EnumValue

-- | The real values of an enum
data EnumValue
    -- | A localy defined enumvalue
    = Value     Integer   Type
    -- | An imported enum. The 'Category' is only a hint to where it should be.
    | Redirect  Category  Type
    -- | An enum that is the same as another one
    -- > gl_FRAMEBUFFER_BINDING = gl_DRAW_BUFFER_BINDING
    | ReUse     ValueName Type
    deriving(Eq, Ord, Show)

isEDefine :: EnumValue -> Bool
isEDefine (Value _ _) = True
isEDefine (ReUse _ _) = True
isEDefine _           = False

enumType :: EnumValue -> Type
enumType (Value    _ t) = t
enumType (Redirect _ t) = t
enumType (ReUse    _ t) = t

type FuncMap = ValueMap FuncValue

-- | The specification of how the function is defined
data FuncValue
    -- | FFI import of the given type, with the alias and the GLfunction
    -- name for which the pointer should be used.
    = RawFunc  String Type (Maybe String)
    -- The function is imported. The 'Category' is again purely a hint
    | RedirectF Category
    deriving (Eq, Ord, Show)

isFDefine :: FuncValue -> Bool
isFDefine (RawFunc _ _ _ ) = True
isFDefine _                = False

-----------------------------------------------------------------------------

-- | List all categories in the 'RawSpec'
allCategories :: RawSpec -> [Category]
allCategories rs =
    let ecats = M.keys . enumSpec $ rs
        fcats = M.keys . funcSpec $ rs
    in union ecats fcats

-- | Find the 'FuncMap' of a certain 'Category'.
categoryFuncs :: Category -> RawSpec -> FuncMap
categoryFuncs = categoryValues

-- | Find the 'EnumMap' of a certain 'Category'.
categoryEnums :: Category -> RawSpec -> EnumMap
categoryEnums = categoryValues

-- | Find a 'ValueMap' of a 'Category'.
categoryValues :: SpecValue sv => Category -> RawSpec -> ValueMap sv
categoryValues c s = fromMaybe M.empty . M.lookup c $ getPart s

-----------------------------------------------------------------------------

type ValueName = String

-- | A map of names to values of certain type
type ValueMap a = M.Map ValueName a
-- | A map of categories to a `ValueMap a`
type SpecMap  a = M.Map Category (ValueMap a)

-- | A class to generalize over the value types in the RawSpec to reduce
-- boilerplate code
class SpecValue sv where
    getPart     :: RawSpec -> SpecMap sv
    setPart     :: SpecMap sv -> RawSpec -> RawSpec
    isDefine    :: sv -> Bool
    toRedirect  :: sv -> Category -> sv -- with the new category
    isRedirect  :: sv -> Bool

    modifyPart  :: (SpecMap sv -> SpecMap sv) -> RawSpec -> RawSpec
    modifyPart f s = setPart (f $ getPart s) s

instance SpecValue EnumValue where
    getPart   = enumSpec
    setPart e = \s -> s{enumSpec = e}
    isDefine  = isEDefine
    toRedirect ev c = Redirect c $ enumType ev
    isRedirect (Redirect _ _) = True
    isRedirect _              = False

instance SpecValue FuncValue where
    getPart   = funcSpec
    setPart f = \s -> s{funcSpec = f}
    isDefine  = isFDefine
    toRedirect _ c = RedirectF c
    isRedirect (RedirectF _) = True
    isRedirect _             = False

-----------------------------------------------------------------------------
