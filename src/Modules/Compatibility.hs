-----------------------------------------------------------------------------
--
-- Module      :  Modules.Compatibility
-- Copyright   :  (c) 2011 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | A small module adding some extra modules for compatibility with the
-- older layout of OpenGLRaw.
-----------------------------------------------------------------------------

module Modules.Compatibility (
    addCompatibilityModules,
) where

-----------------------------------------------------------------------------

import Control.Monad
import qualified Data.Set as S

import Language.Haskell.Exts.Syntax
import Language.OpenGLRaw.Base

import Spec

import Modules.Builder
import Modules.GroupModule
import Modules.ModuleNames

-----------------------------------------------------------------------------

addCompatibilityModules :: DeprecationMap -> Builder ()
addCompatibilityModules depMap = do
    addOldCoreProfile 3 1
    addOldCoreProfile 3 2
    addOldCoreTypes
    addARBCompatibility depMap

addOldCoreProfile :: Int -> Int -> Builder ()
addOldCoreProfile ma mi =
    let modName = ModuleName $ "Graphics.Rendering.OpenGL.Raw.Core" ++ show ma ++ show mi
        warning = DeprText "\"The core modules are moved to Graphics.Rendering.OpenGL.Raw.Core.CoreXY\""
    in do cp <- askProfileModule ma mi False
          addModuleWithWarning modName 
                Compatibility warning $ tellReExportModule cp

addOldCoreTypes :: Builder ()
addOldCoreTypes = do
    let modName = ModuleName "Graphics.Rendering.OpenGL.Raw.Core31.Types"
        warning = DeprText "\"The OpenGL types are moved to Graphics.Rendering.OpenGL.Raw.Types .\""
    typesModule <- askTypesModule
    addModuleWithWarning modName
        Compatibility warning $ tellReExportModule typesModule

addARBCompatibility :: DeprecationMap -> Builder ()
addARBCompatibility depMap = do
    return ()
{-
    let modFilter (Version _ _ True) = True
        modFilter _                  = False

        modName = ModuleName "Graphics.Rendering.OpenGL.Raw.ARB.Compatibility"
        warning = DeprText "\"The ARB.Compatibility is combined with the profiles.\""

        edeps = S.fromList $ getDeprecations (3,1) depMap :: S.Set EnumName
        fdeps = S.fromList $ getDeprecations (3,1) depMap :: S.Set FuncName
        pre31 (CompVersion 3  0 False) = True
        pre31 (CompVersion ma _ False) = ma < 3
        pre31 _                        = False
        importLookup :: Category -> MBuilder ()
        importLookup c = do
            funcs <- lift . asksLocationMap $ categoryValues c
            enums <- lift . asksLocationMap $ categoryValues c
            cModName <- askCategoryModule c
            let funcs' = fdeps `S.intersection` funcs
                enums' = edeps `S.intersection` enums
                mkReExport :: SpecValue s => ValueName s -> MBuilder ModulePart
                mkReExport e = do
                    n <- unwrapNameM e
                    return . ReExport (n, cModName) $ toGLName e
            mapM_ (mkReExport >=> tellPart) $ S.toList funcs'
            mapM_ (mkReExport >=> tellPart) $ S.toList enums'
            
            return ()
    pre31Cats <- asksCategories $ filter pre31
    addModuleWithWarning modName Compatibility warning $ do
        (lift . asksCategories $ filter modFilter) >>= mkGroupModule
        mapM_ importLookup pre31Cats
-}
-----------------------------------------------------------------------------
