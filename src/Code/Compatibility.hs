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
import Code.Generating.Builder
import Code.Generating.Utils

import Code.Builder
import Code.GroupModule
import Code.ModuleNames

-----------------------------------------------------------------------------

addCompatibilityModules :: RawPBuilder ()
addCompatibilityModules = do
    addOldCoreProfile 3 1
    addOldCoreProfile 3 2
    addARBCompatibility

addOldCoreProfile :: Int -> Int -> RawPBuilder ()
addOldCoreProfile ma mi =
    let modName = ModuleName $ "Graphics.Rendering.OpenGL.Raw.Core" ++ show ma ++ show mi
    in do cp <- askProfileModule ma mi False
          defineModule modName True $ do
                addImport $ importAll cp
                addExport $ EModuleContents cp

addARBCompatibility :: RawPBuilder ()
addARBCompatibility = do
    let modFilter (Version _ _ True) = True
        modFilter _                  = False

        modName = ModuleName $ "Graphics.Rendering.OpenGL.Raw.ARB.Compatibility"
    defineModule modName True $ asksCategories (filter modFilter) >>= mkGroupModule

-----------------------------------------------------------------------------
