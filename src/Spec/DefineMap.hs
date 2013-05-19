{-# LANGUAGE TypeFamilies, FlexibleContexts, RankNTypes #-}
-----------------------------------------------------------------------------
--
-- Module      :  Spec.DefineMap
-- Copyright   :  (c) 2013 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | Defines the `DefineMap`, a mapping of `ValueName` to the location
-- (`Category`) where it is defined.
--
-----------------------------------------------------------------------------

module Spec.DefineMap (
    DefineMap,
    emptyDefineMap,
    getDefLocation,
    addDefLocation,
) where

-----------------------------------------------------------------------------

import qualified Data.Map as M
import Data.Monoid
import Spec.Base

-----------------------------------------------------------------------------

newtype DefMap sv = DefMap { unDefMap :: M.Map (ValueName sv) Category }

instance Newtype (DefMap sv) where
    type Base (DefMap sv) = M.Map (ValueName sv) Category
    unpack  = unDefMap
    pack    = DefMap

instance SpecValue sv => Monoid (DefMap sv) where
    mempty = DefMap mempty
    mappend = under2 mappend

-- | Definition map, which records where each value is used first.
newtype DefineMap = DefineMap { defineMap :: DuoMap DefMap }

instance Newtype DefineMap where
    type Base DefineMap = DuoMap DefMap
    unpack  = defineMap
    pack    = DefineMap

emptyDefineMap :: DefineMap
emptyDefineMap = DefineMap duoMempty

getDefLocation :: SpecValue sv => ValueName sv -> DefineMap -> Maybe Category
getDefLocation n = M.lookup n . unDefMap . extractDuoMap

addDefLocation :: SpecValue sv => ValueName sv -> Category
    -> DefineMap -> DefineMap
addDefLocation n c = under $ modifyDuoMap (under $ M.insert n c)

-----------------------------------------------------------------------------

