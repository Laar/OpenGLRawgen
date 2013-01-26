-----------------------------------------------------------------------------
--
-- Module      :  Code.Compatibility
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

module Code.Compatibility (
    addCompatibilityModules,
) where

-----------------------------------------------------------------------------

import Text.OpenGL.Spec(Category(Version))

import Language.Haskell.Exts.Syntax

import Code.Builder
import Code.GroupModule
import Code.ModuleNames

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
