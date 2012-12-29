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
-- | This Modul contains the functions needed to process the 'RawSpec' from
-- the way it is after reading it from the spec filter to the one needed,
-- thus clean enough, to generate the code.
--
-- Processing the SpecFiles as they are supplied on the website
-- <http://www.opengl.org/registry/> is quite a task as they are not very
-- well formated for this (not to mention the 'errors').
--
-- The spec that is processed should be ready for generating code. The code
-- generating is done by mapping the spec parts to code and im\/exports.
-- Therefor the processed `RawSpec` should be ready for this proces. The
-- steps that are needed to make it ready for this are
--
-- * Removing of duplicate definitions
--
-- * Merging\/Renaming values where needed
--
-- * Straighting out the imports (to prevent cycles)
--
-- * Filtering away `Category`s that are empty (otherwise there would be
-- empty and usused modules)
--
-- These tasks are all quite straight forward in idea, but are quite tricky
-- with the spec. Some notes to the programmer on the used methods and
-- the pitfalls.
--
-- * The order of the total processing is quite important, especially for
--   `sortCategoryImports` as it should be the last action. Otherwise later
--   changes to the spec could mess up the import order.
-- * All processing is done on the full name of the values which has not been
--   stripped of any `Extension` name. This is needed as the versions of the
--   different `Extensions` could have different values (see
--   PrimitiveRestart(NV) enums and functions)
-- * There are some cases where an enum is used as the value of another Enum
--   through the `ReUse` constructor. Accounting for this when sorting the
--   definitions for imports and keeping this in mind for other places is
--   not particularly easy (very hard). As most of these ReUse are reusing
--   some value from inside the module, the sorting code (and some other
--   processors) don't actually track this or account for it. Thus if there
--   are problems with these reuses this COULD be the problem.
-- * The spec is not perfect. There are cases where it should be edited
--   manually to correct it. But there are also parts where the spec is just
--   a bit different from what is expected from otherparts.
--   Some examples, the Core12 enums are followed by sections from
--   ARB_imaging contating enums that are part of Core12, but don't show up
--   that way. There are quite a few comments about functions\/enums that are
--   reused, but as they are comments they are ignored by the parsing.
--   There NV_geometry_program4 defines NV-Enums as well as Enums in the EXT
--   range. The last of those are also reused a lot.
--
-- So keep in Mind that althoug the Spec is a well organized document it is
-- used as a registry and a way of generating C-code (probably all in one
-- header). So don't be surprised if it's not completly the way you expect it
-- to be.
--
-----------------------------------------------------------------------------

module Spec.Processing (
    cleanupSpec,
    addReuses,
) where

-----------------------------------------------------------------------------

import Data.Monoid
import qualified Data.Set as S

import Text.OpenGL.Spec(Category(Extension), Extension)

import Main.Options

import Spec.RawSpec

-----------------------------------------------------------------------------

-- | Clean the 'RawSpec' in order to make it useable for codegeneration.
cleanupSpec :: RawGenOptions -> RawSpec -> RawSpec
cleanupSpec opts =
   filterExtensions (flip dropExtension opts)

-----------------------------------------------------------------------------
-- | Adds reuses for several `Category`s to the spec
addReuses 
    :: [(Category, [Category])] -- ^ Function reuses
    -> [(Category, [Category])] -- ^ Enum reuses
    -> RawSpec -> RawSpec
addReuses reuseF reuseE spec = foldr ($) spec $ enumAdds ++ funcAdds
   where
        enumAdds = map (uncurry
            $ addReuse (undefined :: EnumValue)) reuseE
        funcAdds = map (uncurry
            $ addReuse (undefined :: FuncValue)) reuseF

addReuse
    :: SpecValue sv
    => sv -> Category -> [Category] 
    -> RawSpec -> RawSpec
addReuse dummyValue cat addFrom rawSpec =
    let vals = (mconcat $ map (flip categoryValues rawSpec) addFrom)
                    `asSetTypeOf` dummyValue
        asSetTypeOf :: SpecValue sv
            => S.Set (ValueName sv) -> sv -> S.Set (ValueName sv)
        asSetTypeOf = const
    in S.foldr (addLocation cat) rawSpec vals
-----------------------------------------------------------------------------

filterExtensions :: (Extension -> Bool) -> RawSpec -> RawSpec
filterExtensions predicate rawspec
	= foldr deleteCategory rawspec filterCats
    where
        eFilter (Extension e _ _) = predicate e
        eFilter _                 = False
        filterCats = filter eFilter $ allCategories rawspec

-----------------------------------------------------------------------------
