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

    lift,
) where

-----------------------------------------------------------------------------

import Control.Applicative
import Control.Monad.Reader
import Control.Monad.State
import Control.Monad.RWS

import Language.Haskell.Exts.Syntax
import Code.Generating.Utils
import Code.Generating.Builder hiding (addModule)

import Text.OpenGL.Spec as S
import Spec
import Main.Monad
import Code.ModuleNames

-----------------------------------------------------------------------------



execRawPBuilder :: (LocationMap, ValueMap) -> Builder a -> RawGen (a,[RawModule])
execRawPBuilder (lMap, vMap) builder =
    evalRWST (runBuilder builder) lMap (emptyDefineMap, vMap)

type MBuilder = SModuleBuilder Module Builder

--liftRawGen :: RawGen a -> GBuilder bm a
--liftRawGen = lift . lift . lift . lift

type BuilderRWST m = RWST LocationMap [RawModule] (DefineMap, ValueMap) m

newtype Builder a
    = Builder
    { runBuilder
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

-- | Outputs a module for a specific category
addCategoryModule :: Category -> (Category -> MBuilder a) -> Builder a
addCategoryModule cat buildFunc = do
    modName <- askCategoryModule cat
    isExternal <- isExposedCategory cat
    (a,modul) <- runStateT (buildFunc cat) (emptyModule modName)
    newModule modul isExternal
    return a

addCategoryModule' :: Category -> MBuilder a -> Builder a
addCategoryModule' c = addCategoryModule c . const

-- | Adds a module with a specific name.
addModule :: ModuleName -> External -> (ModuleName -> MBuilder a) -> Builder a
addModule modName isExternal buildFunc = do
    (a,modul) <- runStateT (buildFunc modName) (emptyModule modName)
    newModule modul isExternal
    return a

addModule' :: ModuleName -> External -> MBuilder a -> Builder a
addModule' modulName isExternal = addModule modulName isExternal . const

-----------------------------------------------------------------------------

unwrapNameBuilder :: (RawGenMonad m, SpecValue sv) => ValueName sv -> m Name
unwrapNameBuilder = asksOptions . unwrapName

-----------------------------------------------------------------------------

-- | Asks the categories defined by the Spec files.
asksCategories :: ([Category] -> a) -> Builder a
asksCategories f = asksLocationMap (f . allCategories)

-----------------------------------------------------------------------------

-- | Ensure a certain module is fully imported.
ensureImport :: ModuleName -> MBuilder ()
ensureImport m = do
    imp <- getImport m
    when (null imp) $ addImport (importAll m)

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
