-----------------------------------------------------------------------------

-- Module      :  Modules.Types
-- Copyright   :  (c) 2013 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | The types used to represent a module in the OpenGLRaw.
--
-----------------------------------------------------------------------------

module Modules.Types (
    RawModule(..), External,
    
    ModulePart(..), Imported, GLName,
) where

-----------------------------------------------------------------------------

import Language.Haskell.Exts.Syntax

import Text.OpenGL.Spec (Category)

-----------------------------------------------------------------------------

-- | Type indicating if a module is exposed to the outside world or
-- purely for internal use
type External = Bool

-- | A generated module
data RawModule
    = RawModule
    { rawModuleName     :: ModuleName
    , externalRawModule :: External
    , rawModuleParts    :: [ModulePart]
    } deriving (Show)

-----------------------------------------------------------------------------

-- | The parts in a module for OpenGLRaw.
data ModulePart
    -- | Define an enumeration value with a specific value
    = DefineEnum        Name Type Integer
    -- | Define an enumeration value as an alias for another value in the
    -- same module.
    | ReDefineLEnum     Name Type Name
    -- | Define an enumeration value as an alias for another value, imported
    -- from another module.
    | ReDefineIEnum     Name Type Imported
    -- | Reexport something (enum or function)
    | ReExport          Imported
    -- | Define a function.
    | DefineFunc        Name Type
        GLName    -- | The original name
        Category  -- | The category this function was part of.
    -- | Reexport a module
    | ReExportModule    ModuleName
    deriving (Show)

-- | An imported name with specific module.
type Imported = (Name, ModuleName)
-- | The original name of something from OpenGL (thus the name as used in the
-- specification).
type GLName = String

-----------------------------------------------------------------------------
