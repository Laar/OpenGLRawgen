-----------------------------------------------------------------------------
--
-- Module      :  Code.Builder
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

module Code.Builder (
    Builder,
    RawPBuilder,
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
    isExternalCategory, addCategoryAndActivate, addModuleAndActivate,
    askCorePath,

    ensureImport,

    askECategory, askECategory',

    askFCategory, askFCategory',

    importAll,
) where

-----------------------------------------------------------------------------

import Control.Monad.Reader
import Data.Char
import Data.Maybe

import Language.Haskell.Exts.Syntax
import Code.Generating.Utils
import Code.Generating.Package
import Code.Generating.ModuleBuilder

import Text.OpenGL.Spec as S
import Spec

-----------------------------------------------------------------------------

type Builder = ModuleBuilder Module (Reader RawSpec)
type RawPBuilder a = PackageBuilder Module (Reader RawSpec) a

-- | Generic Builder, by leavin bm only constraint to `BuildableModule bm`
-- a function can be used in both `Builder` and `RawPBuilder`.
type GBuilder bm a = ModuleBuilder bm (Reader RawSpec) a

emptyBuilder :: PackageBuild Module
emptyBuilder = singlePackage . emptyMod $ baseModule

-----------------------------------------------------------------------------

askBaseModule, askTypesModule, askExtensionModule :: BuildableModule bm
     => GBuilder bm ModuleName
askBaseModule = return baseModule
askTypesModule = return typesModule
askExtensionModule = return extensionModule

askBaseImport, askTypesImport, askExtensionImport :: BuildableModule bm
    => GBuilder bm ImportDecl
askBaseImport       = return . importAll $ baseModule
askTypesImport      = return . importAll $ typesModule
askExtensionImport  = return . importAll $ extensionModule

askCategoryModule :: BuildableModule bm
    => Category -> GBuilder bm ModuleName
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

askFCategory :: String -> Builder (Maybe Category)
askFCategory n = asks (whereIsFDefined n)

askFCategory' :: String -> Category -> Builder (Maybe Category)
askFCategory' n guess = do
    isInCat <- asks (isFInCat n guess)
    if isInCat then return $ Just guess else askFCategory n

-----------------------------------------------------------------------------

moduleBase :: String
moduleBase = "Graphics.Rendering.OpenGL.Raw"

baseModule :: ModuleName
baseModule = ModuleName $ moduleBase

typesModule :: ModuleName
typesModule = ModuleName $ moduleBase <.> "TypesInternal"

extensionModule :: ModuleName
extensionModule = ModuleName $ moduleBase <.> "Extensions"

corePath :: String
corePath = moduleBase <.>  "Core"

askCorePath :: BuildableModule bm => GBuilder bm String
askCorePath = return corePath

categoryModule :: Category -> ModuleName
categoryModule (Version ma mi d) =
    ModuleName $ corePath <.> "Internal"
                    <.> ("Core" ++ show ma ++ show mi ++ if d then "Compatibility" else "")
categoryModule (Extension ex n _) =
    ModuleName $ moduleBase <.> capFirst (show ex) <.> capFirst n
categoryModule (S.Name n) = error $ "Category " ++ capFirst (show n)

isExternalCategory :: BuildableModule bm => Category -> GBuilder bm Bool
isExternalCategory (Version _ _ _) = return False
isExternalCategory _               = return True

addCategoryAndActivate :: Category -> RawPBuilder ()
addCategoryAndActivate c = do
    cm <- askCategoryModule c
    isExt <- isExternalCategory c
    addModuleAndActivate cm isExt

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
