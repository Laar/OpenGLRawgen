-----------------------------------------------------------------------------
--
-- Module      :  Modules.GroupModule
-- Copyright   :  (c) 2011 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | This module defines several grouping modules that can be made. A
-- grouping module is a module used to group the exports of a module by
-- importing them and then exporting the modules.
--
-----------------------------------------------------------------------------

module Modules.GroupModule (
    addCoreProfiles,
    askExtensionGroups,
    addVendorModules,
    mkGroupModule,
) where

-----------------------------------------------------------------------------

import Control.Monad.Reader
import Data.Maybe(mapMaybe)
import Data.List(nub)

import Language.OpenGLRaw.Base

import Modules.Builder
import Modules.ModuleNames

-----------------------------------------------------------------------------


-- | Internal function which adds imports and exports for all the categories.
mkGroupModule :: [Category] -> MBuilder ()
mkGroupModule cats = forM_ cats $ askCategoryModule >=> tellReExportModule

-----------------------------------------------------------------------------

-- | Add all the core profiles. See also 'addCoreProfile'.
addCoreProfiles :: Builder ()
addCoreProfiles = do
    let addCat (Version ma mi False)
            = Just $ do
                addCoreProfile ma mi False
                let makeCompatibilityModule = ma > 3 || (ma == 3 && mi /= 0)
                when makeCompatibilityModule $ addCoreProfile ma mi True
        addCat _
            = Nothing
    asksCategories (mapMaybe addCat) >>= sequence_

-- | Adds a coreprofile for a certain version. This is a module which
-- reexports all functions and enumeration values that are part of the
-- specification of OpenGL.
addCoreProfile
    :: Int  -- ^ Major version
    -> Int  -- ^ Minor version
    -> Bool -- ^ Compatibility Profile?
    -> Builder ()
addCoreProfile ma mi comp = do
     let catFilter (Version ma' mi' comp') =
            (ma' < ma || (ma' == ma && mi' <= mi)) -- version check
            && (comp  || ma > 3 || (ma == 3 && mi == 0) || not comp') -- only import deprecated modules when needed
         catFilter _                 = False
     cats <- asksCategories (filter catFilter)
     mn <- askProfileModule ma mi comp
     addModule' mn True $ do
        mkGroupModule cats
        -- let the core modules also expose the types
        askTypesModule >>= tellReExportModule

-----------------------------------------------------------------------------

-- | Asks a list of all 'Extensions' that are used in the spec. This is
-- essentially a list of all Vendors (ATI, NV, etc.), EXT and ARB
askExtensionGroups :: Builder [Extension]
askExtensionGroups =
    let getExtension (Extension e _ _) = Just e
        getExtension _                 = Nothing
    in fmap nub $ asksCategories (mapMaybe getExtension)

-- | Add all vendor modules. These are the modules for each vendor that
-- reexport the content of all modules of the specific vendor.
addVendorModules :: Builder ()
addVendorModules = askExtensionGroups >>= mapM_ addVendorModule

-- | Adds a module for a certain vendor, specified by the 'Extension', which
-- reexports all the extensions defined by that vendor

addVendorModule :: Extension -> Builder ()
addVendorModule e = do
    let catFilter (Extension e' _ _) = e' == e
        catFilter _                 = False
    mn <- askVendorModule e
    cats <- asksCategories (filter catFilter)
    addModule' mn True $ mkGroupModule cats

-----------------------------------------------------------------------------
