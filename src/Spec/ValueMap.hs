{-# LANGUAGE TypeFamilies, FlexibleContexts, RankNTypes #-}
-----------------------------------------------------------------------------
--
-- Module      :  Spec.ValueMap
-- Copyright   :  (c) 2013 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | Defines the `ValueMap`, a mapping from name to the value to its
-- definition. 
--
-----------------------------------------------------------------------------

module Spec.ValueMap (
    ValueMap(..),
    lookupValue,
    addValue,
    swapEnumValue,
) where

-----------------------------------------------------------------------------

import qualified Data.Map as M
import Data.Monoid
import Spec.RawSpec

-----------------------------------------------------------------------------

newtype ValMap sv = ValMap { unValMap :: M.Map (ValueName sv) sv }

instance Newtype (ValMap sv) where
    type Base (ValMap sv) = M.Map (ValueName sv) sv
    unpack = unValMap
    pack   = ValMap

instance SpecValue sv => Monoid (ValMap sv) where
    mempty  = pack mempty
    mappend = under2 mappend

-- | Mapping from `ValueName`s to `SpecValue`s for looking up their values.
newtype ValueMap = ValueMap { valueMap :: DuoMap ValMap }

instance Newtype ValueMap where
    type Base ValueMap = DuoMap ValMap
    unpack  = valueMap
    pack    = ValueMap

instance Monoid ValueMap where
    mempty  = pack duoMempty
    mappend = under2 duoMappend

-- | Adds a value to the `ValueMap`.
addValue :: SpecValue sv => ValueName sv -> sv -> ValueMap -> ValueMap
addValue vn val = under $ modifyDuoMap $ under (M.insert vn val)

-- | Lookup the the `SpecValue` for a given `ValueName`
lookupValue :: SpecValue sv => ValueName sv -> ValueMap -> Maybe sv
lookupValue sv = M.lookup sv . unpack . extractDuoMap

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
