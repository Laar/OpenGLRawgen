{-# LANGUAGE GeneralizedNewtypeDeriving #-}
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
    MBuilder,

    -- * The generated module
    External, RawModule(..), rawModuleName,


    module Main.Monad,
    -- * Miscellaneous functions for the builders
    addCategoryModule,  addCategoryModule',
    addModule, addModule',
    runBuilder,

    -- * ModuleBuilding related
    unwrapNameM,
    tellPart,
    ModulePart(..),

    -- * Ask-ers for other (spec related) information
    asksCategories,
    getDefineLoc,
    addDefineLoc,
    asksLocationMap,
    getsValueMap,modifyValueMap,
    enumLookup,

    lift,
) where

-----------------------------------------------------------------------------

import Control.Applicative
import Control.Monad.Reader
import Control.Monad.State
import Control.Monad.RWS
import Control.Monad.Writer

import Language.Haskell.Exts.Syntax
import Code.Generating.Utils

import Text.OpenGL.Spec as S
import Spec
import Main.Monad
import Code.ModuleCode
import Code.ModuleNames

-----------------------------------------------------------------------------


-- | Executes the Builder producing the `Module`s.
runBuilder :: (LocationMap, ValueMap) -> Builder a -> RawGen (a,[RawModule])
runBuilder (lMap, vMap) builder =
    evalRWST (_runBuilder builder) lMap (emptyDefineMap, vMap)

-- | Extended version of `Builder` used to build the contents of modules.
type MBuilder = WriterT [ModulePart] Builder

-- | The an inner part of `Builder` used for clarity.
type BuilderRWST m = RWST LocationMap [RawModule] (DefineMap, ValueMap) m

-- | Monad that builds the modules for OpenGLRaw.
newtype Builder a
    = Builder
    { _runBuilder
        :: BuilderRWST RawGen a
    } deriving (Functor, Applicative, Monad, RawGenMonad)

-- | Smart constructor
gbuilder :: BuilderRWST RawGen a -> Builder a
gbuilder = Builder

-- | Lifted smart constructor
lgbuilder :: MonadTrans m => BuilderRWST RawGen a -> m Builder a
lgbuilder = lift . gbuilder

-----------------------------------------------------------------------------

-- | Adds a new module
newModule :: Module -> External -> Builder ()
newModule m e = Builder . tell . pure $ RawModule m e

-- | Type indicating if a module is exposed to the outside world or
-- purely for internal use
type External = Bool

-- | A generated module
data RawModule
    = RawModule
    { rawModule       :: Module
    , externalRModule :: External
    } deriving (Eq, Ord, Show)

-- | Utility function for extracting the name of a `RawModule`.
rawModuleName :: RawModule -> ModuleName
rawModuleName = moduleToModuleName . rawModule

-----------------------------------------------------------------------------

-- | Runs a `MBuilder` to create the module.
runMBuilder :: MBuilder a -> ModuleName -> Builder (a,Module)
runMBuilder builder modName = do
    (a,modParts) <- runWriterT builder
    modu <- toModule modParts modName
    return (a,modu)

-- | Outputs a module for a specific category.
addCategoryModule :: Category -> (Category -> MBuilder a) -> Builder a
addCategoryModule cat buildFunc = do
    modName <- askCategoryModule cat
    isExternal <- isExposedCategory cat
    (a,modul) <- runMBuilder (buildFunc cat) modName
    newModule modul isExternal
    return a

-- | See `addCategoryModule`.
addCategoryModule' :: Category -> MBuilder a -> Builder a
addCategoryModule' c = addCategoryModule c . const

-- | Adds a module with a specific name.
addModule :: ModuleName -> External -> (ModuleName -> MBuilder a) -> Builder a
addModule modName isExternal buildFunc = do
    (a,modul) <- runMBuilder (buildFunc modName) modName
    newModule modul isExternal
    return a

-- | See `addModule`.
addModule' :: ModuleName -> External -> MBuilder a -> Builder a
addModule' modulName isExternal = addModule modulName isExternal . const

-----------------------------------------------------------------------------

-- | Lifted version of `unwrapName` supplying the needed options.
unwrapNameM :: (RawGenMonad m, SpecValue sv) => ValueName sv -> m Name
unwrapNameM = asksOptions . unwrapName

-- | Adds a `ModulePart` to the module being build.
tellPart :: ModulePart -> MBuilder ()
tellPart = tell . (\x -> [x])

-----------------------------------------------------------------------------

-- | Asks the categories defined by the Spec files.
asksCategories :: ([Category] -> a) -> Builder a
asksCategories f = asksLocationMap (f . allCategories)

-----------------------------------------------------------------------------

-- | Gets the category where a certain `ValueName` is defined, if it's not
-- defined the result will be Nothing
getDefineLoc :: SpecValue sv => ValueName sv -> MBuilder (Maybe Category)
getDefineLoc vn = lgbuilder $ gets (getDefLocation vn . fst)

-- | Adds the location of a value.
addDefineLoc :: SpecValue sv => ValueName sv -> Category -> MBuilder ()
addDefineLoc vn cat = lgbuilder $ modify (\(dm,vm) -> (addDefLocation vn cat dm, vm))

-- | Gets the `ValueMap`.
getsValueMap :: (ValueMap -> a) -> MBuilder a
getsValueMap f = lgbuilder $ gets (f . snd)

modifyValueMap :: (ValueMap -> ValueMap) -> MBuilder ()
modifyValueMap f = lgbuilder $ modify (\(dm,vm) -> (dm, f vm))

asksLocationMap :: (LocationMap -> a) -> Builder a
asksLocationMap = gbuilder . asks

-- | Looks up the the `EnumValue` associated with a given `EnumName`. It
-- ensures that in case of a `ReUse`, the reused value is defined.
enumLookup :: EnumName -> MBuilder (Maybe EnumValue)
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
