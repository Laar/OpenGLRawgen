-----------------------------------------------------------------------------
--
-- Module      :  Code.ModuleLocation
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

module Code.ModuleLocation (
    categoryModule,

    baseModule,
    typesModule,
    extensionModule,
) where

import Data.Char

import Language.Haskell.Exts.Syntax
import Text.OpenGL.Spec as S

moduleBase :: String
moduleBase = "Graphics.Rendering.OpenGL.Raw"

(<.>) :: String -> String -> String
a <.> b = a ++ '.' : b

baseModule :: ModuleName
baseModule = ModuleName $ moduleBase

typesModule :: ModuleName
typesModule = ModuleName $ moduleBase <.> "TypesInternal"

extensionModule :: ModuleName
extensionModule = ModuleName $ moduleBase <.> "Extensions"

categoryModule :: Category -> ModuleName
categoryModule (Version ma mi d) =
    ModuleName $ (if d then moduleBase <.> "Core" <.> "Deprecated" else moduleBase <.> "Core")
                    <.> ("Core" ++ show ma ++ show mi)
categoryModule (Extension ex n _) =
    ModuleName $ moduleBase <.> capFirst (show ex) <.> capFirst n
categoryModule (S.Name n) = error $ "Category " ++ capFirst (show n)

capFirst :: String -> String
capFirst [] = []
capFirst (c:cs) = toUpper c : cs
