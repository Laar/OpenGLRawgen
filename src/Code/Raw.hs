-----------------------------------------------------------------------------
--
-- Module      :  Code.Raw
-- Copyright   :  (c) 2011 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | This module groups all the builders into a single one to build the
-- OpenGLRaw package.
--
-----------------------------------------------------------------------------

module Code.Raw (
    makeRaw,
) where

-----------------------------------------------------------------------------

import Control.Applicative ((<$>))
import Data.Function(on)
import Data.List(sortBy)


import Language.Haskell.Exts.Syntax
import Code.Generating.Builder

import Main.Options
import Spec
import Text.OpenGL.Spec(Category(..))

import Code.Builder
import Code.Compatibility
import Code.GroupModule
import Code.Module
import Code.ModuleNames

-----------------------------------------------------------------------------

-- | Build the OpenGLRaw Package from the specification.
makeRaw :: (LocationMap, ValueMap) -> RawGen [RawModule]
makeRaw spec = snd <$> execRawPBuilder spec buildRaw

-- | The builder that really builds the Raw package by combining other
-- builders.
buildRaw :: Builder ()
buildRaw = do
    buildRawImports
    addCoreProfiles
    whenOption mkExtensionGroups addVendorModules
    addLatestProfileToRaw

    whenFlag RawCompatibility addCompatibilityModules

-----------------------------------------------------------------------------

-- | Builder for the ffi import modules.
buildRawImports :: Builder ()
buildRawImports = do
    cats <- asksLocationMap allCategories
    sequence_ $ map (flip addCategoryModule buildModule) cats

-- | Adds the latest CoreProfile to the base (...Raw) package
addLatestProfileToRaw :: Builder ()
addLatestProfileToRaw = do
    -- head is used as there ought to be at least a single CoreProfile available
    Version ma mi _ <- asksCategories id >>= return . head . sortBy (compare `on` catRanking)
    latestProf <- askProfileModule ma mi False
    bm <- askBaseModule
    addModule' bm True $ do
        ensureImport latestProf
        addExport $ EModuleContents latestProf
    return ()
    where
        catRanking (Version ma mi False) = (-ma, -mi)
        catRanking _                     = (1, 1)

-----------------------------------------------------------------------------
