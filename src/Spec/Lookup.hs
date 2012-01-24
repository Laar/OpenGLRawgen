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
    lookupInCat, lookupInCat',
    whereIsDefined, whereIsDefined',
    isInCat,
    isDefinedInCat,
) where

-----------------------------------------------------------------------------

import qualified Data.Map as M
import Data.Maybe

import Spec.RawSpec

-----------------------------------------------------------------------------

-- | Look a `SpecValue` up by it's name in a certain category
lookupInCat :: SpecValue sv => ValueName sv -> Category -> RawSpec -> Maybe sv
lookupInCat n c = lookupInCat' n c . getPart

lookupInCat' :: SpecValue sv => ValueName sv -> Category -> SpecMap sv -> Maybe sv
lookupInCat' n c sm = M.lookup c sm >>= M.lookup n

-- | Look for the defenition of a `SpecValue`  by it's name, and returns
-- the Category in which it is defined and the value it self.
whereIsDefined :: SpecValue sv => ValueName sv -> RawSpec -> Maybe (Category, sv)
whereIsDefined vn = listToMaybe . M.toList
    . M.filter isDefine . M.mapMaybe (M.lookup vn) . getPart

-- | Same as `whereIsDefined` but drop the defined value.
whereIsDefined' :: SpecValue sv => ValueName sv -> RawSpec -> Maybe (Category)
whereIsDefined' vn sm = fst `fmap` whereIsDefined vn sm

-- | Checks if a specific `SpecValue` is in a Category.
isInCat :: SpecValue sv => ValueName sv -> Category -> RawSpec -> Bool
isInCat n c s = isJust $ lookupInCat n c s

-- | Looks up if a `SpecValue` is defined in a specific `Category`.
isDefinedInCat :: SpecValue sv => ValueName sv -> Category -> RawSpec -> Bool
isDefinedInCat n c s = maybe False isDefine $ lookupInCat n c s

-----------------------------------------------------------------------------
