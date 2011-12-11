-----------------------------------------------------------------------------
--
-- Module      :  Code.GroupModule
-- Copyright   :  (c) 2011 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | This module defines several grouping modules that can be made. A
-- grouping is a module used to group the exports of a module by importing
-- them and then exporting the modules.
--
-----------------------------------------------------------------------------

module Code.GroupModule (
    addCoreProfiles,
    askExtensionGroups,
    addVendorModules,
) where

import Control.Monad.Reader
import Data.Maybe(mapMaybe)
import Data.List(nub)

import Language.Haskell.Exts.Syntax
import Code.Generating.Utils
import Code.Generating.ModuleBuilder
import Code.Builder

import Text.OpenGL.Spec(Category(..), Extension)

-----------------------------------------------------------------------------


-- | Internal function which adds imports and exports for all the categories.
mkGroupModule :: [Category] -> Builder ()
mkGroupModule cats = do
    sequence_ $ map addCat cats
    where
        addCat c = do
            cm <- askCategoryModule c
            addImport $ importAll cm
            addExport $ EModuleContents cm

-- | Add all the core profiles. See also 'addCoreProfile'.
addCoreProfiles :: RawPBuilder ()
addCoreProfiles = do
    let addCat (Version ma mi False) = Just $ addCoreProfile ma mi False
                                          >> when (ma >= 3) (addCoreProfile ma mi True)
        addCat _                    = Nothing
    (asksCategories $ mapMaybe addCat) >>= sequence_

-- | Adds a coreprofile for a certain version. This is a module which
-- reexports all functions and enumeration values that are part of the
-- specification of OpenGL.
addCoreProfile
    :: Int  -- ^ Major version
    -> Int  -- ^ Minor version
    -> Bool -- ^ Compatibility Profile?
    -> RawPBuilder ()
addCoreProfile ma mi comp = do
     let catFilter (Version ma' mi' comp') =
            (ma' < ma || (ma' == ma && mi' <= mi)) -- version check
            && (comp  || ma' < 3 || (ma' == 3 && mi == 0) || not comp') -- only import deprecated modules when needed
         catFilter _                 = False
     cats <- asksCategories (filter catFilter)
     mn <- askProfileModule ma mi comp
     defineModule mn True $ mkGroupModule cats

-- | Asks a list of all 'Extensions' that are used in the spec. This is
-- essentially a list of all Vendors (ATI, NV, etc.), EXT and ARB
askExtensionGroups :: RawPBuilder [Extension]
askExtensionGroups =
    let getExtension (Extension e _ _) = Just e
        getExtension _                 = Nothing
    in asksCategories (mapMaybe getExtension) >>= return . nub

-- | Add all vendor modules. These are the modules for each vendor that
-- reexport the content of all modules of the specific vendor.
addVendorModules :: RawPBuilder ()
addVendorModules = do
    askExtensionGroups >>= sequence_ . map addVendorModule

-- | Adds a module for a certain vendor, specified by the 'Extension', which
-- reexports all the extensions defined by that vendor

addVendorModule :: Extension -> RawPBuilder ()
addVendorModule e = do
    let catFilter (Extension e' _ _) = e' == e
        catFilter _                 = False
    mn <- askVendorModule e
    cats <- asksCategories (filter catFilter)
    defineModule mn True $ mkGroupModule cats
