-----------------------------------------------------------------------------
--
-- Module      :  FuncSpec.Types
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

module FuncSpec.Types (
    FSpec(..),
    RawFunc(..),
    isRawFunc, funcName,
) where

import qualified Data.Map as M

import Text.OpenGL.Spec
import Language.Haskell.Exts.Syntax

data FSpec = FSpec {getFMapping :: M.Map Category [RawFunc] }

data RawFunc
    = RawFunc String Type
    | ReuseFunc Category String

isRawFunc :: RawFunc -> Bool
isRawFunc (RawFunc _ _) = True
isRawFunc _             = False

funcName :: RawFunc -> String
funcName (RawFunc   n _) = n
funcName (ReuseFunc _ n) = n
