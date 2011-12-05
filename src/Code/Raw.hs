-----------------------------------------------------------------------------
--
-- Module      :  Code.New.Raw
-- Copyright   :
-- License     :  AllRightsReserved
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

import Spec

import Language.Haskell.Exts.Syntax
import Code.New.ModuleBuilder
import Code.New.Package

import Code.Builder
import Code.GroupModule
import Code.Module

import Text.OpenGL.Spec(Category)

makeRaw :: RawSpec -> Package Module
makeRaw s =
    let packbuild = runReader (execBuilder emptyBuilder buildRaw) s
    in package packbuild

buildRaw :: RawPBuilder ()
buildRaw = do
    buildRawImports
    addCoreProfiles

buildRawImports :: RawPBuilder ()
buildRawImports = do
    cats <- asks allCategories
    sequence_ $ map defineRawImport cats


defineRawImport :: Category -> RawPBuilder ()
defineRawImport c = do
    mn <- askCategoryModule c
    ex <- isExternalCategory c
    defineModule mn ex $ buildModule c
