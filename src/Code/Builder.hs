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
-- includes all sorts of functions to ask the locations, imports, etc. .
--
-----------------------------------------------------------------------------

module Code.Builder (

    -- * The builders
    Builder,
    RawPBuilder,
    GBuilder,

    module Main.Monad,
    -- * Miscellaneous functions for the builders
    emptyBuilder,
    addCategoryAndActivate,
    ensureImport,
    execRawPBuilder,

    -- * Options related helpers
    whenOption, unlessOption, unwrapNameBuilder,

    -- * Ask-ers for module locations
    askBaseModule,
    askTypesInternalModule,
    askTypesExposedModule,
    askExtensionModule,
    askCategoryModule,
    askProfileModule,
    askVendorModule,

    -- * Ask-ers for module imports
    askBaseImport,
    askTypesInternalImport,
    askTypesExposedImport,
    askExtensionImport,
    askCategoryPImport,

    -- * Ask-ers for other (spec related) information
    isExposedCategory,
    askCorePath,
    asksCategories,
    getDefineLoc,
    addDefineLoc,
    asksLocationMap,
    getsValueMap,modifyValueMap,
    enumLookup,
) where

-----------------------------------------------------------------------------

import Control.Applicative
import Control.Monad.Reader
import Control.Monad.State
import Data.Char
import Data.List(partition)

import Language.Haskell.Exts.Syntax
import Code.Generating.Utils
import Code.Generating.Package
import Code.Generating.Builder

import Text.OpenGL.Spec as S
import Spec
import Main.Options
import Main.Monad

-----------------------------------------------------------------------------

type BuilderBase = StateT DefineMap (StateT ValueMap (ReaderT LocationMap RawGen))

-- | Builder for building modules from the spec.
type Builder = SModuleBuilder Module BuilderBase
-- | Builder to build the package from the spec.
type RawPBuilder a = PackageBuilder Module BuilderBase a

-- | Generic Builder, by leavin bm only constraint to `BuildableModule bm`
-- a function can be used in both `Builder` and `RawPBuilder`.
type GBuilder bm a = StateT bm BuilderBase a

-- | The empty Package builder, with only the baseModule.
emptyBuilder :: PackageBuild Module
emptyBuilder = singlePackage . emptyMod $ baseModule

execRawPBuilder :: (LocationMap, ValueMap)
    -> PackageBuild Module -> RawPBuilder a -> RawGen (PackageBuild Module)
execRawPBuilder (lMap, vMap) mods builder =
    flip runReaderT lMap $
    flip evalStateT vMap $
    flip evalStateT emptyDefineMap $
    execStateT builder mods

--liftRawGen :: RawGen a -> GBuilder bm a
--liftRawGen = lift . lift . lift . lift

-----------------------------------------------------------------------------

-- | Lifted version of `when`, to conditionally execute a builder
whenOption :: (RawGenOptions -> Bool) -> GBuilder bm () -> GBuilder bm ()
whenOption f b = asksOptions f >>= \p -> when p b

-- | Lifted version of `unless`, to conditionally execute a builder
unlessOption :: (RawGenOptions -> Bool) -> GBuilder bm () -> GBuilder bm ()
unlessOption f b = asksOptions f >>= \p -> unless p b

unwrapNameBuilder :: SpecValue sv => ValueName sv -> Builder Name
unwrapNameBuilder = asksOptions . unwrapName

-----------------------------------------------------------------------------

-- | Asks the location of several basic modules
askBaseModule, askTypesInternalModule, askTypesExposedModule, askExtensionModule
    :: GBuilder bm ModuleName
askBaseModule = return baseModule
askTypesInternalModule = return typesInternalModule
askTypesExposedModule = return typesExposedModule
askExtensionModule = return extensionModule

-- | Asks the full import of several basic modules
askBaseImport, askTypesInternalImport, askTypesExposedImport, askExtensionImport
    :: GBuilder bm ImportDecl
askBaseImport           = return . importAll $ baseModule
askTypesInternalImport  = return . importAll $ typesInternalModule
askTypesExposedImport   = return . importAll $ typesExposedModule
askExtensionImport      = return . importAll $ extensionModule


-- | Ask the module in which the functions and enums will be defined for
-- that category
askCategoryModule :: Category -> GBuilder bm ModuleName
askCategoryModule c = categoryModule $ c

-- | Asks an importDecl to import the ImportSpec from the module of the
-- category.
askCategoryPImport :: Category -> [ImportSpec] -> Builder ImportDecl
askCategoryPImport c i = flip partialImport i <$> categoryModule c

-- | Asks the categories defined by the Spec files.
asksCategories :: ([Category] -> a) -> GBuilder bm a
asksCategories f = asksLocationMap (f . allCategories)

-----------------------------------------------------------------------------

-- | Ensure a certain module is fully imported.
ensureImport :: ModuleName -> Builder ()
ensureImport m = do
    imp <- getImport m
    when (null imp) $ addImport (importAll m)

-----------------------------------------------------------------------------

-- | Gets the category where a certain `ValueName` is defined, if it's not
-- defined the result will be Nothing
getDefineLoc :: SpecValue sv => ValueName sv -> GBuilder a  (Maybe Category)
getDefineLoc = lift . gets . getDefLocation

-- | Adds the location of a value.
addDefineLoc :: SpecValue sv => ValueName sv -> Category -> Builder ()
addDefineLoc vn cat = lift $ modify (addDefLocation vn cat)

-- | Gets the `ValueMap`.
getsValueMap :: (ValueMap -> a) -> GBuilder m a
getsValueMap = lift . lift . gets

modifyValueMap :: (ValueMap -> ValueMap) -> GBuilder m ()
modifyValueMap = lift . lift . modify

asksLocationMap :: (LocationMap -> a) -> GBuilder m a
asksLocationMap = lift . lift . lift . asks

enumLookup :: EnumName -> GBuilder m (Maybe EnumValue)
enumLookup en = do
    val <- getsValueMap $ lookupValue en
    case val of
        Just (ReUse en1 _) -> do
            loc <- getDefineLoc en1
            case loc of
                Just _ -> return val
                Nothing -> do
                    modifyValueMap $ swapEnumValue en
                    enumLookup en
        _ -> return val

-----------------------------------------------------------------------------

moduleBase :: String
moduleBase = "Graphics.Rendering.OpenGL.Raw"

-- (Temporary) Basemodule (...Raw) modulepath
baseModule :: ModuleName
baseModule = ModuleName $ moduleBase

-- (Temporary) TypesInternal modulepath
typesInternalModule :: ModuleName
typesInternalModule = ModuleName $ moduleBase <.> "Internal" <.> "TypesInternal"

-- (Temporary) TypesExposed modulePath
typesExposedModule :: ModuleName
typesExposedModule = ModuleName $ moduleBase <.> "Types"

-- (Temporary) Extensions modulepath
extensionModule :: ModuleName
extensionModule = ModuleName $ moduleBase <.> "Internal" <.> "Extensions"

-- (Temporary) corePath
corePath :: String
corePath = moduleBase <.>  "Core"

-- | Asks where the path of the Core modules is. Core modules are those who
-- define the enums and functions from the OpenGL spec.
askCorePath :: GBuilder bm String
askCorePath = return corePath

-- (Temporary) category to modulename mapping
categoryModule :: Category -> GBuilder bm ModuleName
categoryModule (Version ma mi d) = return .
    ModuleName $ corePath <.> "Internal"
                    <.> ("Core" ++ show ma ++ show mi ++ if d then "Compatibility" else "")
categoryModule (Extension ex n _) = return .
    ModuleName $ moduleBase <.> upperFirst (show ex) <.> correctName n
categoryModule (S.Name n) = throwError
    $ "categoryModule: Category with only a name "
    ++ upperFirst (show n)

-- | query whether or not the module of a certain category is an exposed
-- module.
isExposedCategory :: Category -> GBuilder bm Bool
--isExposedCategory (Version _ _ _) = return False
isExposedCategory _               = return True

-- | Adds the module for a certain category if it doesn't exist, and
-- activates it.
addCategoryAndActivate :: Category -> RawPBuilder ()
addCategoryAndActivate c = do
    cm <- askCategoryModule c
    isExt <- isExposedCategory c
    addModule cm isExt

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
correctName :: String -> String
correctName [] = []
correctName (n:ns)
    | isAlpha n = toUpper n : recapUnderscores ns
    | otherwise =
         let (start, rest) = partition (\c -> not $ c `elem` legalChars || c == '_') ns
             nameStart = concatMap spellout (n:start)
             legalize c | c `elem` legalChars = [c]
                        | otherwise           = spellout c
             nameEnd = concatMap legalize $ recapUnderscores rest
         in nameStart ++ nameEnd

-- | Removes underscores and capitalizes the letter following an underscore
recapUnderscores :: String -> String
recapUnderscores []             = []
recapUnderscores ('_' : x : xs) = toUpper x : recapUnderscores xs
recapUnderscores (      x : xs) =         x : recapUnderscores xs

-- | List of legal `Char`s in a module name
legalChars :: [Char]
legalChars = ['A'..'z'] ++ "'_"

-- | Spells illegal `Char`s as words, starting with a capital letter.
spellout :: Char -> String
spellout c = case c of
    '0' -> "Zero"
    '1' -> "One"
    '2' -> "Two"
    '3' -> "Three"
    '4' -> "Four"
    '5' -> "Five"
    '6' -> "Six"
    '7' -> "Seven"
    '8' -> "Eight"
    '9' -> "Nine"
    _   -> error $ "spellout: not yet implemented for '" ++ c : "'."

-----------------------------------------------------------------------------
