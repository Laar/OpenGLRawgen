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
    addARBCompatibility

addOldCoreProfile :: Int -> Int -> Builder ()
addOldCoreProfile ma mi =
    let modName = ModuleName $ "Graphics.Rendering.OpenGL.Raw.Core" ++ show ma ++ show mi
    in do cp <- askProfileModule ma mi False
          addModule' modName True $ tellReExportModule cp

addARBCompatibility :: Builder ()
addARBCompatibility = do
    let modFilter (Version _ _ True) = True
        modFilter _                  = False

        modName = ModuleName "Graphics.Rendering.OpenGL.Raw.ARB.Compatibility"
    addModule' modName True $ (lift . asksCategories $ filter modFilter) >>= mkGroupModule

-----------------------------------------------------------------------------
