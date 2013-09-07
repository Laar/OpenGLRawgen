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
    askExtensionVendors,
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

-- | Asks a list of all 'Vendor' that are used in the spec. This is
-- essentially a list of all Vendors (ATI, NV, etc.), EXT and ARB
askExtensionVendors :: Builder [Vendor]
askExtensionVendors =
    let getExtension (Extension e _ _) = Just e
        getExtension _                 = Nothing
    in fmap nub $ asksCategories (mapMaybe getExtension)

-- | Add all vendor modules. These are the modules for each vendor that
-- reexport the content of all modules of the specific vendor.
addVendorModules :: Builder ()
addVendorModules = askExtensionVendors >>= mapM_ addVendorModule

-- | Adds a module for a certain vendor, specified by the 'Extension', which
-- reexports all the extensions defined by that vendor

addVendorModule :: Vendor -> Builder ()
addVendorModule vn = do
    let catFilter (Extension n _ _) = vn == n
        catFilter _                 = False
    mn <- askVendorModule vn
    cats <- asksCategories (filter catFilter)
    addModule' mn (VendorGroup vn)  $ mkGroupModule cats

-----------------------------------------------------------------------------
