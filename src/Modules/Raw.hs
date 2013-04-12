-----------------------------------------------------------------------------
--
-- Module      :  Modules.Raw
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

module Modules.Raw (
    makeRaw,
) where

-----------------------------------------------------------------------------

import Control.Applicative ((<$>))
import Control.Monad
import Data.Function(on)
import Data.List(minimumBy)

import Main.Options
import Spec
import Language.OpenGLRaw.Base

import Modules.Builder
import Modules.Compatibility
import Modules.GroupModule
import Modules.Module
import Modules.ModuleNames

-----------------------------------------------------------------------------

-- | Build the OpenGLRaw Package from the specification.
makeRaw :: (LocationMap, ValueMap) -> DeprecationMap -> RawGen [RawModule]
makeRaw spec depMap = snd <$> runBuilder spec (buildRaw depMap)

-- | The builder that really builds the Raw package by combining other
-- builders.
buildRaw :: DeprecationMap -> Builder ()
buildRaw depMap = do
    buildRawImports
    addCoreProfiles
    addLatestProfileToRaw
    
    whenOption mkExtensionGroups addVendorModules
    whenFlag RawCompatibility $ addCompatibilityModules depMap

-----------------------------------------------------------------------------

-- | Builder for the ffi import modules.
buildRawImports :: Builder ()
buildRawImports = do
    cats <- asksLocationMap allCategories
    forM_ cats $ flip addCategoryModule buildModule

-- | Adds the latest CoreProfile to the base (...Raw) package
addLatestProfileToRaw :: Builder ()
addLatestProfileToRaw = do
    -- head is used as there ought to be at least a single CoreProfile available
    Version ma mi _ <- asksCategories $ minimumBy (compare `on` catRanking)
    latestProf <- askProfileModule ma mi False
    bm <- askBaseModule
    addModule' bm TopLevelGroup $ tellReExportModule latestProf
    where
        catRanking (Version ma mi False) = (-ma, -mi)
        catRanking _                     = (1, 1)

-----------------------------------------------------------------------------
