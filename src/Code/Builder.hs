-----------------------------------------------------------------------------
--
-- Module      :  Code.New.Builder
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

module Code.Builder (
    Builder,
    emptyBuilder,

    categoryModule,

    askBaseModule,
    askTypesModule,
    askExtensionModule,
    askBaseImport,
    askTypesImport,
    askExtensionImport,
    askCategoryModule,
    askCategoryPImport,

    ensureImport,

    askECategory, askECategory',
) where

-----------------------------------------------------------------------------

import Control.Monad.Reader
import Data.Char
import Data.Maybe

import Language.Haskell.Exts.Syntax
import Code.Utils
import Code.New.Package
import Code.New.ModuleBuilder

import Text.OpenGL.Spec as S
import Spec

-----------------------------------------------------------------------------

type Builder a = PackageBuilder Module (Reader RawSpec) a

emptyBuilder :: PackageBuild Module
emptyBuilder = singlePackage . emptyMod $ baseModule

-----------------------------------------------------------------------------

askBaseModule, askTypesModule, askExtensionModule :: Builder ModuleName
askBaseModule = return baseModule
askTypesModule = return typesModule
askExtensionModule = return extensionModule

askBaseImport, askTypesImport, askExtensionImport :: Builder ImportDecl
askBaseImport       = return . importAll $ baseModule
askTypesImport      = return . importAll $ typesModule
askExtensionImport  = return . importAll $ extensionModule

askCategoryModule :: Category -> Builder ModuleName
askCategoryModule c = return . categoryModule $ c

askCategoryPImport :: Category -> [ImportSpec] -> Builder ImportDecl
askCategoryPImport c i = return $ partialImport (categoryModule c) i

-----------------------------------------------------------------------------

ensureImport :: ModuleName -> Builder ()
ensureImport m = do
    imp <- getImport m
    when (isNothing imp) $ addImport (importAll m)

-----------------------------------------------------------------------------

askECategory :: String -> Builder (Maybe Category)
askECategory n = asks (whereIsEDefined n)

askECategory' :: String -> Category -> Builder (Maybe Category)
askECategory' n guess = do
    isInCat <- asks (isEInCat n guess)
    if isInCat then return $ Just guess else askECategory n

-----------------------------------------------------------------------------

moduleBase :: String
moduleBase = "Graphics.Rendering.OpenGL.Raw"

baseModule :: ModuleName
baseModule = ModuleName $ moduleBase

typesModule :: ModuleName
typesModule = ModuleName $ moduleBase <.> "TypesInternal"

extensionModule :: ModuleName
extensionModule = ModuleName $ moduleBase <.> "Extensions"

categoryModule :: Category -> ModuleName
categoryModule (Version ma mi d) =
    ModuleName $ (if d then moduleBase <.> "Core" <.> "Deprecated" else moduleBase <.> "Core")
                    <.> ("Core" ++ show ma ++ show mi)
categoryModule (Extension ex n _) =
    ModuleName $ moduleBase <.> capFirst (show ex) <.> capFirst n
categoryModule (S.Name n) = error $ "Category " ++ capFirst (show n)

-----------------------------------------------------------------------------

(<.>) :: String -> String -> String
a <.> b = a ++ '.' : b

capFirst :: String -> String
capFirst [] = []
capFirst (c:cs) = toUpper c : cs

importAll :: ModuleName -> ImportDecl
importAll name = ImportDecl noSrcLoc name False False Nothing Nothing Nothing

partialImport :: ModuleName -> [ImportSpec] -> ImportDecl
partialImport name imports =
    ImportDecl noSrcLoc name False False Nothing Nothing (Just (False, imports))
