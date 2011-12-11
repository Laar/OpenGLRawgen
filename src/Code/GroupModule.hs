-----------------------------------------------------------------------------
--
-- Module      :  Code.GroupModule
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

module Code.GroupModule (
    mkGroupModule,
    addCoreProfiles,
    askExtensionGroups,
    addExtensionGroups,
) where

import Control.Monad.Reader
import Data.Maybe(mapMaybe)
import Data.List(nub)

import Language.Haskell.Exts.Syntax
import Code.Generating.Utils
import Code.Generating.ModuleBuilder
import Code.Builder

import Text.OpenGL.Spec(Category(..), Extension)

-----------------------------------------------------------------------------

mkGroupModule :: [Category] -> Builder ()
mkGroupModule cats = do
    sequence_ $ map addCat cats
    where
        addCat c = do
            cm <- askCategoryModule c
            addImport $ importAll cm
            addExport $ EModuleContents cm


addCoreProfiles :: RawPBuilder ()
addCoreProfiles = do
    let addCat (Version ma mi False) = Just $ addCoreProfile ma mi False
                                          >> when (ma >= 3) (addCoreProfile ma mi True)
        addCat _                    = Nothing
    (asksCategories $ mapMaybe addCat) >>= sequence_

addCoreProfile :: Int -> Int -> Bool -> RawPBuilder ()
addCoreProfile ma mi comp = do
     let catFilter (Version ma' mi' comp') =
            (ma' < ma || (ma' == ma && mi' <= mi)) -- version check
            && (comp  || ma' < 3 || (ma' == 3 && mi == 0) || not comp') -- only import deprecated modules when needed
         catFilter _                 = False
     cats <- asksCategories (filter catFilter)
     mn <- askProfileModule ma mi comp
     defineModule mn True $ mkGroupModule cats

askExtensionGroups :: RawPBuilder [Extension]
askExtensionGroups =
    let getExtension (Extension e _ _) = Just e
        getExtension _                 = Nothing
    in asksCategories (mapMaybe getExtension) >>= return . nub

addExtensionGroups :: RawPBuilder ()
addExtensionGroups = do
    askExtensionGroups >>= sequence_ . map addExtensionModule


addExtensionModule :: Extension -> RawPBuilder ()
addExtensionModule e = do
    let catFilter (Extension e' _ _) = e' == e
        catFilter _                 = False
    mn <- askExtensionModuleName e
    cats <- asksCategories (filter catFilter)
    defineModule mn True $ mkGroupModule cats
