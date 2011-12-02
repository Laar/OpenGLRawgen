-----------------------------------------------------------------------------
--
-- Module      :  Code.Types
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

module Code.Types (
    Builder,
    emptyBuilder,
) where

import Control.Monad.Identity
import Language.Haskell.Exts.Syntax

import Code.New.Package
import Code.New.ModuleBuilder

import Code.ModuleLocation

type Builder a = PackageBuilder Module Identity a

emptyBuilder :: PackageBuild Module
emptyBuilder = singlePackage . emptyMod $ baseModule
