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
-- |
--
-----------------------------------------------------------------------------

module Code.Raw (
    makeRaw,
) where

import Control.Monad.Reader
import Data.Function(on)
import Data.List(sortBy)

import Spec

import Language.Haskell.Exts.Syntax
import Code.Generating.ModuleBuilder
import Code.Generating.Package

import Code.Builder
import Code.GroupModule
import Code.Module

import Text.OpenGL.Spec(Category(..))

makeRaw :: RawSpec -> Package Module
makeRaw s =
    let packbuild = runReader (execBuilder emptyBuilder buildRaw) s
    in package packbuild

buildRaw :: RawPBuilder ()
buildRaw = do
    buildRawImports
    addCoreProfiles
    addExtensionGroups
    addLatestProfileToRaw

buildRawImports :: RawPBuilder ()
buildRawImports = do
    cats <- asks allCategories
    sequence_ $ map defineRawImport cats


defineRawImport :: Category -> RawPBuilder ()
defineRawImport c = do
    mn <- askCategoryModule c
    ex <- isExternalCategory c
    defineModule mn ex $ buildModule c

addLatestProfileToRaw :: RawPBuilder ()
addLatestProfileToRaw = do
    latest <- asksCategories id >>= return . head . sortBy (compare `on` catRanking)
    latestProf <- askCategoryModule latest
    bm <- askBaseModule
    liftModBuilder' bm $ do
        ensureImport latestProf
        addExport $ EModuleContents latestProf
    where
        catRanking (Version ma mi False) = (-ma, -mi)
        catRanking _                     = (1, 1)
