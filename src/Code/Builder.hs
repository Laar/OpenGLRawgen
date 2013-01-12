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
    unwrapNameBuilder,

    -- * Ask-ers for other (spec related) information
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

import Language.Haskell.Exts.Syntax
import Code.Generating.Utils
import Code.Generating.Package
import Code.Generating.Builder

import Text.OpenGL.Spec as S
import Spec
import Main.Monad
import Code.ModuleNames

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
emptyBuilder :: RawGenMonad m => m (PackageBuild Module)
emptyBuilder = singlePackage . emptyMod <$> askBaseModule

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

unwrapNameBuilder :: SpecValue sv => ValueName sv -> Builder Name
unwrapNameBuilder = asksOptions . unwrapName

-----------------------------------------------------------------------------

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

-- | Adds the module for a certain category if it doesn't exist, and
-- activates it.
addCategoryAndActivate :: Category -> RawPBuilder ()
addCategoryAndActivate c = do
    cm <- askCategoryModule c
    isExt <- isExposedCategory c
    addModule cm isExt

-----------------------------------------------------------------------------
