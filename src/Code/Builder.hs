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
-- | This module defines the Builders used to generate the OpenGLRaw. This
-- includes all sorts of functions to ask the location of things.
--
-----------------------------------------------------------------------------

module Code.Builder (

    -- * The builders
    Builder,
    RawPBuilder,
    GBuilder,

    -- * Miscellaneous functions for the builders
    emptyBuilder,
    addCategoryAndActivate,
    ensureImport,

    -- * Ask-ers for module locations
    askBaseModule,
    askTypesModule,
    askExtensionModule,
    askCategoryModule,
    askProfileModule,
    askVendorModule,

    -- * Ask-ers for module imports
    askBaseImport,
    askTypesImport,
    askExtensionImport,
    askCategoryPImport,

    -- * Ask-ers for other (spec related) information
    isExposedCategory,
    askCorePath,
    asksCategories,
    askECategory, askECategory',
    askFCategory, askFCategory',

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

-- | Builder for building modules from the spec.
type Builder = ModuleBuilder Module (Reader RawSpec)
-- | Builder to build the package from the spec.
type RawPBuilder a = PackageBuilder Module (Reader RawSpec) a

-- | Generic Builder, by leavin bm only constraint to `BuildableModule bm`
-- a function can be used in both `Builder` and `RawPBuilder`.
type GBuilder bm a = ModuleBuilder bm (Reader RawSpec) a

-- | The empty Package builder, with only the baseModule.
emptyBuilder :: PackageBuild Module
emptyBuilder = singlePackage . emptyMod $ baseModule

-----------------------------------------------------------------------------

-- | Asks the location of several basic modules
askBaseModule, askTypesModule, askExtensionModule :: BuildableModule bm
     => GBuilder bm ModuleName
askBaseModule = return baseModule
askTypesModule = return typesModule
askExtensionModule = return extensionModule

-- | Asks the full import of several basic modules
askBaseImport, askTypesImport, askExtensionImport :: BuildableModule bm
    => GBuilder bm ImportDecl
askBaseImport       = return . importAll $ baseModule
askTypesImport      = return . importAll $ typesModule
askExtensionImport  = return . importAll $ extensionModule

-- | Ask the module in which the functions and enums will be defined for
-- that category
askCategoryModule :: BuildableModule bm
    => Category -> GBuilder bm ModuleName
askCategoryModule c = return . categoryModule $ c

-- | Asks an importDecl to import the ImportSpec from the module of the
-- category.
askCategoryPImport :: Category -> [ImportSpec] -> Builder ImportDecl
askCategoryPImport c i = return $ partialImport (categoryModule c) i

-- | Asks the categories defined by the Spec files.
asksCategories :: (BuildableModule bm) => ([Category] -> a) -> GBuilder bm a
asksCategories f = asks (f . allCategories)

-----------------------------------------------------------------------------

-- | Ensure a certain module is fully imported.
ensureImport :: ModuleName -> Builder ()
ensureImport m = do
    imp <- getImport m
    when (isNothing imp) $ addImport (importAll m)

-----------------------------------------------------------------------------

-- | Asks the category where a certain enum is defined, if it's not defined
-- the result will be Nothing
askECategory :: String -> Builder (Maybe Category)
askECategory n = asks (whereIsEDefined n)

-- | Same as 'askECategory' but  with a guess that the given category also
-- exports the enum. If this guess is correct then that category will be
-- returned.
askECategory' :: String -> Category -> Builder (Maybe Category)
askECategory' n guess = do
    isInCat <- asks (isEInCat n guess)
    if isInCat then return $ Just guess else askECategory n

-- | Asks the category where a certain function is defined, if it's not
-- defined the result will be Nothing
askFCategory :: String -> Builder (Maybe Category)
askFCategory n = asks (whereIsFDefined n)

-- | Same as 'askFCategory' but  with a guess that the given category also
-- exports the function. If this guess is correct then that category will be
-- returned.
askFCategory' :: String -> Category -> Builder (Maybe Category)
askFCategory' n guess = do
    isInCat <- asks (isFInCat n guess)
    if isInCat then return $ Just guess else askFCategory n

-----------------------------------------------------------------------------

moduleBase :: String
moduleBase = "Graphics.Rendering.OpenGL.Raw"

-- (Temporary) Basemodule (...Raw) modulepath
baseModule :: ModuleName
baseModule = ModuleName $ moduleBase

-- (Temporary) TypesInternal modulepath
typesModule :: ModuleName
typesModule = ModuleName $ moduleBase <.> "TypesInternal"

-- (Temporary) Extensions modulepath
extensionModule :: ModuleName
extensionModule = ModuleName $ moduleBase <.> "Extensions"

-- (Temporary) corePath
corePath :: String
corePath = moduleBase <.>  "Core"

-- | Asks where the path of the Core modules is. Core modules are those who
-- define the enums and functions from the OpenGL spec.
askCorePath :: BuildableModule bm => GBuilder bm String
askCorePath = return corePath

-- (Temporary) category to modulename mapping
categoryModule :: Category -> ModuleName
categoryModule (Version ma mi d) =
    ModuleName $ corePath <.> "Internal"
                    <.> ("Core" ++ show ma ++ show mi ++ if d then "Compatibility" else "")
categoryModule (Extension ex n _) =
    ModuleName $ moduleBase <.> upperFirst (show ex) <.> correctName ex n
categoryModule (S.Name n) = error $ "Category " ++ upperFirst (show n)

-- | query whether or not the module of a certain category is an exposed
-- module.
isExposedCategory :: BuildableModule bm => Category -> GBuilder bm Bool
--isExposedCategory (Version _ _ _) = return False
isExposedCategory _               = return True

-- | Adds the module for a certain category if it doesn't exist, and
-- activates it.
addCategoryAndActivate :: Category -> RawPBuilder ()
addCategoryAndActivate c = do
    cm <- askCategoryModule c
    isExt <- isExposedCategory c
    addModuleAndActivate cm isExt

-- | Asks the 'ModuleName' of a specific core profile
askProfileModule
    :: Int -- ^ Major version
    -> Int -- ^ Minor version
    -> Bool -- ^ Compatibility module?
    -> RawPBuilder ModuleName
askProfileModule ma mi comp = do
    cp <- askCorePath
    return . ModuleName $ cp ++ ".Core" ++ show ma ++ show mi
                ++ (if comp then "Compatibility" else "")

-- | Asks the 'ModuleName' of the grouping module for a certain vendor
askVendorModule :: Extension -> RawPBuilder ModuleName
askVendorModule e = return . ModuleName $ moduleBase <.> show e

-----------------------------------------------------------------------------

-- | Infix operator for seperating modulename parts
(<.>) :: String -> String -> String
a <.> b = a ++ '.' : b

-- | Makes the first character of the string upper case
upperFirst :: String -> String
upperFirst [] = []
upperFirst (c:cs) = toUpper c : cs

-- | Some module names don't start with a letter, this is corrected by adding
-- the name of the extension which, at least with the current spec, does
-- start with a letter.
correctName :: Extension -> String -> String
correctName ex n | isAlpha $ head n = upperFirst n
                 | otherwise        = upperFirst $ show ex ++ n
