-----------------------------------------------------------------------------
--
-- Module      :  Modules.Compatibility
-- Copyright   :  (c) 2011 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | A small module adding some extra modules for compatibility with the
-- older layout of OpenGLRaw.
-----------------------------------------------------------------------------

module Modules.Compatibility (
    addCompatibilityModules,
) where

-----------------------------------------------------------------------------

import Language.Haskell.Exts.Syntax
import Language.OpenGLRaw.Base

import Modules.Builder
import Modules.GroupModule
import Modules.ModuleNames

-----------------------------------------------------------------------------

addCompatibilityModules :: Builder ()
addCompatibilityModules = do
    addOldCoreProfile 3 1
    addOldCoreProfile 3 2
    addOldCoreTypes
    addARBCompatibility

addOldCoreProfile :: Int -> Int -> Builder ()
addOldCoreProfile ma mi =
    let modName = ModuleName $ "Graphics.Rendering.OpenGL.Raw.Core" ++ show ma ++ show mi
        warning = DeprText "\"The core modules are moved to Graphics.Rendering.OpenGL.Raw.Core.CoreXY\""
    in do cp <- askProfileModule ma mi False
          addModuleWithWarning modName 
                Compatibility warning $ tellReExportModule cp

addOldCoreTypes :: Builder ()
addOldCoreTypes = do
    let modName = ModuleName "Graphics.Rendering.OpenGL.Raw.Core31.Types"
        warning = DeprText "\"The OpenGL types are moved to Graphics.Rendering.OpenGL.Raw.Types .\""
    typesModule <- askTypesModule
    addModuleWithWarning modName
        Compatibility warning $ tellReExportModule typesModule

addARBCompatibility :: Builder ()
addARBCompatibility = do
    let modFilter (Version _ _ True) = True
        modFilter _                  = False

        modName = ModuleName "Graphics.Rendering.OpenGL.Raw.ARB.Compatibility"
        warning = DeprText "\"The ARB.Compatibility is combined with the profiles.\""
    addModuleWithWarning modName Compatibility warning $
        (lift . asksCategories $ filter modFilter) >>= mkGroupModule

-----------------------------------------------------------------------------
