-----------------------------------------------------------------------------
--
-- Module      :  Spec.Processing
-- Copyright   :  (c) 2012 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | Further processing of the `LocationMap` from the raw specification file.
--
-----------------------------------------------------------------------------

module Spec.Processing (
    cleanupSpec,
    addReuses,
) where

-----------------------------------------------------------------------------

import Data.Monoid
import qualified Data.Set as S

import Language.OpenGLRaw.Base

import Main.Options

import Spec.LocationMap
import Spec.RawSpec

-----------------------------------------------------------------------------

-- | Clean the 'LocationMap' in order to make it useable for codegeneration.
cleanupSpec :: RawGenOptions -> LocationMap -> LocationMap
cleanupSpec opts =
   filterExtensions (`dropExtension` opts)

-----------------------------------------------------------------------------
-- | Adds reuses for several `Category`s to the spec
addReuses
    :: [(Category, [Category])] -- ^ Function reuses
    -> [(Category, [Category])] -- ^ Enum reuses
    -> LocationMap -> LocationMap
addReuses reuseF reuseE spec = foldr ($) spec $ enumAdds ++ funcAdds
   where
        enumAdds = map (uncurry
            $ addReuse (undefined :: EnumValue)) reuseE
        funcAdds = map (uncurry
            $ addReuse (undefined :: FuncValue)) reuseF

-- | Adds the Reuses for a specific `SpecValue` (only as a hint)
-- to a Category from a list of Categorys
addReuse
    :: SpecValue sv
    => sv -> Category -> [Category]
    -> LocationMap -> LocationMap
addReuse dummyValue cat addFrom rawSpec =
    let vals = mconcat (map (`categoryValues` rawSpec) addFrom)
                    `asSetTypeOf` dummyValue
        asSetTypeOf :: SpecValue sv
            => S.Set (ValueName sv) -> sv -> S.Set (ValueName sv)
        asSetTypeOf = const
    in S.foldr (addLocation cat) rawSpec vals
-----------------------------------------------------------------------------

-- | Removes `Category`s based on their `Extension` or keeps them if they
-- aren't an extension category.
filterExtensions :: (Extension -> Bool) -> LocationMap -> LocationMap
filterExtensions predicate rawspec
	= foldr deleteCategory rawspec filterCats
    where
        eFilter (Extension e _ _) = predicate e
        eFilter _                 = False
        filterCats = filter eFilter $ allCategories rawspec

-----------------------------------------------------------------------------
