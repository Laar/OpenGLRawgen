{-# LANGUAGE TypeFamilies, FlexibleContexts, RankNTypes #-}
-----------------------------------------------------------------------------
--
-- Module      :  Spec.LocationMap
-- Copyright   :  (c) 2013 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | Defines the `LocationMap`, a mapping of locations (`Category`) to the
-- `ValueName`s it contains.
--
-----------------------------------------------------------------------------

module Spec.LocationMap (
    LocationMap,
    addLocation,
    categoryValues,
    deleteCategory,
    allCategories,
) where

-----------------------------------------------------------------------------

import Data.Maybe
import qualified Data.Map as M
import Data.Monoid
import qualified Data.Set as S
import Spec.Base

-----------------------------------------------------------------------------

newtype LocMap sv
    = LocMap { unLocMap :: M.Map Category (S.Set (ValueName sv)) }
instance Newtype (LocMap sv) where
    type Base (LocMap sv) = M.Map Category (S.Set (ValueName sv))
    unpack = unLocMap
    pack = LocMap
instance Monoid (LocMap sv) where
    mempty = pack mempty
    mappend = under2 mappend

-- | Mapping of `Category`s to the `ValueName`s it contains.

newtype LocationMap = LocationMap { locationMap :: DuoMap LocMap }

instance Newtype LocationMap where
    type (Base LocationMap) = DuoMap LocMap
    unpack  = locationMap
    pack    = LocationMap

instance Monoid LocationMap where
    mempty = pack duoMempty
    mappend = under2 duoMappend

-- | Listing of all `Category`s
allCategories :: LocationMap -> [Category]
allCategories lm = S.toList $ S.union ecats fcats
    where
        ecats = M.keysSet . unpack $ (extractDuoMap lm :: LocMap EnumValue)
        fcats = M.keysSet . unpack $ (extractDuoMap lm :: LocMap FuncValue)

-- | Adds the location where a value is used.
addLocation :: SpecValue sv
    => Category -> ValueName sv -> LocationMap -> LocationMap
addLocation cat vn
    = under $ modifyDuoMap (under $ M.insertWith S.union cat $ S.singleton vn)

-- | Deletes a `Category` from the `LocationMap`.
deleteCategory :: Category -> LocationMap -> LocationMap
deleteCategory c
	= under $ duoMap (under $ M.delete c)

-- | Set of all value's in a `Category`
categoryValues :: SpecValue sv
    => Category -> LocationMap -> S.Set (ValueName sv)
categoryValues c = fromMaybe S.empty . M.lookup c . unpack . extractDuoMap

-----------------------------------------------------------------------------
