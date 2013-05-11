-----------------------------------------------------------------------------
--
-- Module      :  Spec
-- Copyright   :  (c) 2011 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | Aggregation module for Spec.
--
-----------------------------------------------------------------------------

module Spec (
    module Spec.DefineMap,
    module Spec.LocationMap,
    module Spec.Processing,
    module Spec.RawSpec,
    module Spec.ValueMap,
) where

-----------------------------------------------------------------------------

import Spec.DefineMap
import Spec.LocationMap
import Spec.Processing
import Spec.RawSpec hiding (DuoMap, Newtype) -- Hide part of the internals.
import Spec.ValueMap

-----------------------------------------------------------------------------
