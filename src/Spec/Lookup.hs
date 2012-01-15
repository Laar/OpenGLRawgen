-----------------------------------------------------------------------------
--
-- Module      :  Spec.Lookup
-- Copyright   :  (c) 2012 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | This module contains several functions for looking up information from
-- the 'RawSpec'.
--
-----------------------------------------------------------------------------

module Spec.Lookup (
    -- * Lookup functions

    -- ** Geeralised lookup functions
    lookupInCat, lookupInCat',
    whereIsDefined, whereIsDefined',

    -- ** Enum lookup functions
    isEInCat,
    isEDefinedInCat, whereIsEDefined,

    -- ** Function lookup functions
    isFInCat,
    isFDefinedInCat, whereIsFDefined,
) where

import qualified Data.Map as M
import Data.Maybe

import Text.OpenGL.Spec (Category)

import Spec.RawSpec

-----------------------------------------------------------------------------

-- | Look a `SpecValue` up by it's name in a certain category
lookupInCat :: SpecValue s => ValueName -> Category -> RawSpec -> Maybe s
lookupInCat n c = lookupInCat' n c . getPart

lookupInCat' :: SpecValue sv => ValueName -> Category -> SpecMap sv -> Maybe sv
lookupInCat' n c sm = M.lookup c sm >>= M.lookup n

-- | Look for the defenition of a `SpecValue`  by it's name, and returns
-- the Category in which it is defined and the value it self.
whereIsDefined :: SpecValue s => ValueName -> RawSpec -> Maybe (Category, s)
whereIsDefined vn = whereIsDefined' vn . getPart

whereIsDefined' :: SpecValue sv => ValueName -> SpecMap sv -> Maybe (Category, sv)
whereIsDefined' vn sm = listToMaybe . M.toList . M.filter isDefine . M.mapMaybe (M.lookup vn) $ sm


-----------------------------------------------------------------------------

-- | lookup the value of an enum in a certain 'Category'.
lookupEInCat :: ValueName -> Category -> RawSpec -> Maybe EnumValue
lookupEInCat = lookupInCat

-- | Checks whether or not a certain enum is exported by the 'Category'.
isEInCat :: ValueName -> Category -> RawSpec -> Bool
isEInCat n c s = isJust $ lookupEInCat n c s

-- | Checks whether or not a certain enum is defined by the 'Category'.
isEDefinedInCat :: ValueName -> Category -> RawSpec -> Bool
isEDefinedInCat n c s = maybe False isDefine $ lookupEInCat n c s

-- | lookup the 'Category' of the enum defenition.
whereIsEDefined :: ValueName -> RawSpec -> Maybe Category
whereIsEDefined n s = fst `fmap` (whereIsDefined n s :: Maybe (Category, EnumValue))

-----------------------------------------------------------------------------

-- | As 'lookupEInCat' but for a function
lookupFInCat :: ValueName -> Category -> RawSpec -> Maybe FuncValue
lookupFInCat = lookupInCat

-- | As isEInCat but for a function
isFInCat :: ValueName -> Category -> RawSpec -> Bool
isFInCat n c s = isJust $ lookupFInCat n c s

-- | As isEDefinedInCat but for a function
isFDefinedInCat :: ValueName -> Category -> RawSpec -> Bool
isFDefinedInCat n c s = maybe False isDefine $ lookupFInCat n c s

-- | As whereIsEDefined but for a function
whereIsFDefined :: ValueName -> RawSpec -> Maybe Category
whereIsFDefined n s = fst `fmap` (whereIsDefined n s :: Maybe (Category, FuncValue))

-----------------------------------------------------------------------------
