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

import Control.Monad.Reader
import Data.Function(on)
import Data.List(sortBy)


import Language.Haskell.Exts.Syntax
import Code.Generating.Builder
import Code.Generating.Package

import Main.Options
import Spec
import Text.OpenGL.Spec(Category(..))

import Code.Builder
import Code.Compatibility
import Code.GroupModule
import Code.Module

-----------------------------------------------------------------------------

-- | Build the OpenGLRaw Package from the 'RawSpec'.
makeRaw :: RawGenOptions -> RawSpec -> Package Module
makeRaw opts spec =
    let packbuild = execRawPBuilder opts spec emptyBuilder buildRaw
    in packages packbuild

-- | The builder that really builds the Raw package by combining other
-- builders.
buildRaw :: RawPBuilder ()
buildRaw = do
    buildRawImports
    addCoreProfiles
    whenOption mkExtensionGroups addVendorModules
    addLatestProfileToRaw

    whenOption (hasFlag RawCompatibility) addCompatibilityModules

-----------------------------------------------------------------------------

-- | Builder for the ffi import modules.
buildRawImports :: RawPBuilder ()
buildRawImports = do
    cats <- asks allCategories
    sequence_ $ map defineRawImport cats

-- | Builds a single ffi import module, by executing 'buildModule'.
defineRawImport :: Category -> RawPBuilder ()
defineRawImport c = do
    mn <- askCategoryModule c
    ex <- isExposedCategory c
    defineModule mn ex $ buildModule c

-- | Adds the latest CoreProfile to the base (...Raw) package
addLatestProfileToRaw :: RawPBuilder ()
addLatestProfileToRaw = do
    -- head is used as there ought to be at least a single CoreProfile available
    Version ma mi _ <- asksCategories id >>= return . head . sortBy (compare `on` catRanking)
    latestProf <- askProfileModule ma mi False
    bm <- askBaseModule
    _ <- liftModBuilder bm $ do
        ensureImport latestProf
        addExport $ EModuleContents latestProf
    return ()
    where
        catRanking (Version ma mi False) = (-ma, -mi)
        catRanking _                     = (1, 1)

-----------------------------------------------------------------------------
