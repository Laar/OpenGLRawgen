-----------------------------------------------------------------------------
--
-- Module      :  Interface.Module
-- Copyright   :  (c) 2013 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | The interface writing part of the generator.
--
-----------------------------------------------------------------------------

module Interface.Module (
    moduleToInterface, writeModuleInterface,
    writePackageInterface,
    verifyInterface,
) where

-----------------------------------------------------------------------------


import Control.Arrow ((&&&))
import Control.Monad
import Language.Haskell.Exts.Syntax
import Data.List
import qualified Data.Foldable as F
import qualified Data.Map as M
import qualified Data.Set as S

import Language.OpenGLRaw.Interface.Serialize
import Language.OpenGLRaw.Interface.Types

import Main.Monad
import Main.Options
import Modules.Types

-----------------------------------------------------------------------------

-- | Writes the package/index interface file.
writePackageInterface :: [RawModule] -> RawGenIO ()
writePackageInterface modus = do
    let inter = OpenGLRawI . M.fromList 
            $ map (rawModuleName &&& rawModuleType)  modus
    path <- asksOptions interfaceDir
    liftIO $ writePackage path inter

-- | Writes the interface file for a single `RawModule`.
writeModuleInterface :: RawModule -> RawGenIO ()
writeModuleInterface modu = do
    path <- asksOptions interfaceDir
    liftIO . writeModule path $ moduleToInterface modu

-- | Converts a single module to its interface representation.
moduleToInterface :: RawModule -> ModuleI
moduleToInterface rm = 
    let baseModule 
            = ModuleI 
                (rawModuleName rm) (rawModuleType rm)
                S.empty S.empty S.empty
    in foldl' (flip addModulePart) baseModule $ rawModuleParts rm

-- | Adds a `ModulePart` to the interface of a module.
addModulePart :: ModulePart -> ModuleI -> ModuleI
addModulePart p m = case p of
    DefineEnum      hsn gln t _  -> addEnum        $ EnumI gln hsn t
    ReDefineLEnum   hsn gln t _  -> addEnum        $ EnumI gln hsn t
    ReDefineIEnum   hsn gln t _  -> addEnum        $ EnumI gln hsn t
    ReExport        (_,m') gln   -> addReExport    $ SingleExport m' gln
    DefineFunc      hsn rt ats gln _  -> addFunc   $ FuncI gln hsn rt ats
    ReExportModule  m'         -> addReExport      $ ModuleExport m'
    where
        addEnum e = m{modEnums = S.insert e $ modEnums m}
        addFunc f = m{modFuncs = S.insert f $ modFuncs m}
        addReExport r = m{modReExports = S.insert r $ modReExports m}

-----------------------------------------------------------------------------

-- | Performs some simple checks on the interface files.
verifyInterface :: [RawModule] -> RawGenIO ()
verifyInterface rmods = do
    let rmodNames = S.fromList $ map rawModuleName rmods
    logMessage "Verifying interface files"
    iDir <- asksOptions interfaceDir
    mpack <- liftEitherPrepend "Package interface verifying failed"
        =<< liftIO (readPackage iDir)
    let imodNames = M.keysSet $ rawMods mpack
    unless (imodNames == rmodNames) . throwRawError . unlines $
        [ "The modules in the interface and the generated modules are not the same!"
        , "Missing interfaces:"
        ] ++ (map unmodName $ S.toList (rmodNames S.\\ imodNames)) ++
        [ "Excess interfaces:"
        ] ++ (map unmodName $ S.toList (imodNames S.\\ rmodNames))
    F.mapM_ verifyModule . M.keys $ rawMods mpack
    where
        unmodName (ModuleName mn) = mn

-- | Verification of a single module from the interface.
verifyModule :: ModuleName -> RawGenIO ()
verifyModule mn = do
    iDir <- asksOptions interfaceDir
    _ <- liftEitherPrepend errMsg =<< liftIO (readModule iDir mn)
    return ()
    where
        errMsg = "Module interface parsing failed for: " ++ mName
        (ModuleName mName) = mn

-----------------------------------------------------------------------------
