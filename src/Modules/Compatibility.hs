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
import Data.Monoid
import qualified Data.Set as S

import Language.Haskell.Exts.Syntax
import Language.OpenGLRaw.Base

import Spec

import Modules.Builder
import Modules.ModuleNames

-----------------------------------------------------------------------------

addCompatibilityModules :: Builder ()
addCompatibilityModules = do
    addOldCoreProfile 3 1
    addOldCoreProfile 3 2
    addOldCoreTypes
    addARBCompatibility

addOldCoreProfile :: Int -> Int -> Builder ()
addOldCoreProfile ma mi =
    let modName = ModuleName $ "Graphics.Rendering.OpenGL.Raw.Core" ++ show ma ++ show mi
        warning = DeprText "\"The core modules are moved to Graphics.Rendering.OpenGL.Raw.Core.CoreXY\""
    in do cp <- askProfileModule ma mi DefaultProfile
          addModuleWithWarning modName 
                Compatibility warning $ tellReExportModule cp

addOldCoreTypes :: Builder ()
addOldCoreTypes = do
    let modName = ModuleName "Graphics.Rendering.OpenGL.Raw.Core31.Types"
        warning = DeprText "\"The OpenGL types are moved to Graphics.Rendering.OpenGL.Raw.Types .\""
    typesModule <- askTypesModule
    addModuleWithWarning modName
        Compatibility warning $ tellReExportModule typesModule

addARBCompatibility :: Builder ()
addARBCompatibility = do
    let modFilter1 cat = case cat of
            (Version _ _ (ProfileName "compatibility")) -> True
            _ -> False
    cats <- asksCategories $ filter modFilter1
    (enums, funcs) <- fmap mconcat $ forM cats $ \cat -> do
        let coreCat = case cat of
                (Version ma mi _) -> Version ma mi DefaultProfile
                _                 -> error "addARBCompatibility: Impossible"
        catEnums  <- asksLocationMap $ categoryValues cat
        coreEnums <- asksLocationMap $ categoryValues coreCat
        catFuncs  <- asksLocationMap $ categoryValues cat
        coreFuncs <- asksLocationMap $ categoryValues coreCat
        let enums' :: S.Set EnumName
            enums' = catEnums `S.difference` coreEnums
            funcs' :: S.Set FuncName
            funcs' = catFuncs `S.difference` coreFuncs 
        return (enums', funcs')

    let modName = ModuleName "Graphics.Rendering.OpenGL.Raw.ARB.Compatibility"
        warning = DeprText "\"The ARB.Compatibility is combined with the profiles.\""
        mkReExport sv = do
            mloc <- getDefineLoc sv
            case mloc of
                Nothing  -> error $ "addARBCompatibility: Yet undefined enum" ++ show sv
                Just cat -> do
                    n <- unwrapNameM sv
                    rmodName <- askCategoryModule cat
                    return $ ReExport (n, rmodName) $ toGLName sv
    addModuleWithWarning modName Compatibility warning $ do
        mapM_ (mkReExport >=> tellPart) $ S.toList enums
        mapM_ (mkReExport >=> tellPart) $ S.toList funcs
        -- Somehow the forgot to mention that ARB_imaging is part of the
        -- compatibility profile of OpenGL.
        askCategoryModule (Extension (Vendor "ARB") "imaging" (ProfileName "compatibility"))
            >>= tellReExportModule

-----------------------------------------------------------------------------
