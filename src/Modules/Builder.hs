{-# LANGUAGE GeneralizedNewtypeDeriving #-}
-----------------------------------------------------------------------------
--
-- Module      :  Modules.Builder
-- Copyright   :  (c) 2011 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | This module defines two monads. The `Builder` is used as main monad for
-- building several modules. The `MBuilder` is an extended version that is
-- used to generate module contents.
--
-----------------------------------------------------------------------------

module Modules.Builder (

    -- * The builders
    Builder,
    MBuilder,

    -- * The generated module
    ModuleType(..), RawModule(..),

    module Main.Monad,
    -- * Miscellaneous functions for the builders
    addCategoryModule,  addCategoryModule',
    addModule, addModule',
    runBuilder,

    -- * ModuleBuilding related
    unwrapNameM,
    tellPart,
    tellReExportModule,
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

import Control.Arrow
import Control.Applicative
import Control.Monad.Reader
import Control.Monad.State
import Control.Monad.RWS
import Control.Monad.Writer

import Language.Haskell.Exts.Syntax

import Spec
import Main.Monad

import Modules.ModuleNames
import Modules.Types

-----------------------------------------------------------------------------


-- | Executes the Builder producing the `Module`s.
runBuilder :: (LocationMap, ValueMap) -> Builder a -> RawGen (a,[RawModule])
runBuilder (lMap, vMap) builder =
    evalRWST (_runBuilder builder) lMap (emptyDefineMap, vMap)

-- | Extended version of `Builder` used to build the contents of modules.
type MBuilder = WriterT [ModulePart] Builder

-- | The an inner part of `Builder` used for clarity.
type BuilderRWST m = RWST LocationMap [RawModule] (DefineMap, ValueMap) m

-- | Monad that builds the modules for OpenGLRaw. It contains several parts
-- used in generating. Apart from the `RawModule`s created it contains the
-- `LocationMap`ping, the values associated in a `ValueMap` and a listing
-- of defined values in a `DefineMap`.
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
newModule :: ModuleName -> ModuleType -> [ModulePart] -> Builder ()
newModule m t parts = Builder . tell . pure $ RawModule m t parts

-----------------------------------------------------------------------------

-- | Runs a `MBuilder` to create the module.
runMBuilder :: MBuilder a -> Builder (a,[ModulePart])
runMBuilder builder = runWriterT builder

-- | Outputs a module for a specific category.
addCategoryModule :: Category -> (Category -> MBuilder a) -> Builder a
addCategoryModule cat buildFunc = do
    modName <- askCategoryModule cat
    moduType <- askCategoryModuleType cat
    (a,parts) <- runMBuilder (buildFunc cat)
    newModule modName moduType parts
    return a

-- | See `addCategoryModule`.
addCategoryModule' :: Category -> MBuilder a -> Builder a
addCategoryModule' c = addCategoryModule c . const

-- | Adds a module with a specific name.
addModule :: ModuleName -> ModuleType -> (ModuleName -> MBuilder a) -> Builder a
addModule modName modType buildFunc = do
    (a,parts) <- runMBuilder (buildFunc modName)
    newModule modName modType parts
    return a

-- | See `addModule`.
addModule' :: ModuleName -> ModuleType -> MBuilder a -> Builder a
addModule' modulName modulType = addModule modulName modulType . const

-----------------------------------------------------------------------------

-- | Lifted version of `unwrapName` supplying the needed options.
unwrapNameM :: (RawGenMonad m, SpecValue sv) => ValueName sv -> m Name
unwrapNameM = asksOptions . unwrapName

-- | Adds a `ModulePart` to the module being build.
tellPart :: ModulePart -> MBuilder ()
tellPart = tell . (\x -> [x])

tellReExportModule :: ModuleName -> MBuilder ()
tellReExportModule = tellPart . ReExportModule

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
addDefineLoc vn cat = lgbuilder $ modify (first $ addDefLocation vn cat)

-- | Gets the `ValueMap`.
getsValueMap :: (ValueMap -> a) -> MBuilder a
getsValueMap f = lgbuilder $ gets (f . snd)

modifyValueMap :: (ValueMap -> ValueMap) -> MBuilder ()
modifyValueMap f = lgbuilder $ modify (second f)

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
