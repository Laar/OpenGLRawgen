module Interface.Module (
    moduleToInterface, writeModuleInterface,
    writePackageInterface,
    verifyInterface,
) where

import Control.Monad
import Language.Haskell.Exts.Syntax
import Data.List
import qualified Data.Foldable as F
import qualified Data.Set as S

import Language.OpenGLRaw.Interface.Serialize
import Language.OpenGLRaw.Interface.Types

import Main.Monad
import Main.Options
import Modules.Types

writePackageInterface :: [RawModule] -> RawGenIO ()
writePackageInterface modus = do
    let inter = OpenGLRawI . S.fromList $ map rawModuleName modus
    path <- asksOptions interfaceDir
    liftIO $ writePackage path inter

writeModuleInterface :: RawModule -> RawGenIO ()
writeModuleInterface modu = do
    path <- asksOptions interfaceDir
    liftIO . writeModule path $ moduleToInterface modu

moduleToInterface :: RawModule -> ModuleI
moduleToInterface rm = 
    let baseModule 
            = ModuleI 
                (rawModuleName rm) (rawModuleType rm)
                S.empty S.empty S.empty
    in foldl' (flip addModulePart) baseModule $ rawModuleParts rm

addModulePart :: ModulePart -> ModuleI -> ModuleI
addModulePart p m = case p of
    DefineEnum      n gln t _ -> addEnum        $ EnumI gln (unName n) t
    ReDefineLEnum   n gln t _ -> addEnum        $ EnumI gln (unName n) t
    ReDefineIEnum   n gln t _ -> addEnum        $ EnumI gln (unName n) t
    ReExport        (n,m') _  -> addReExport    $ SingleExport m' (unName n)
    DefineFunc      n rt ats gln _  -> addFunc  $ FuncI gln (unName n) rt ats
    ReExportModule  m'        -> addReExport    $ ModuleExport m'
    where
        addEnum e = m{modEnums = S.insert e $ modEnums m}
        addFunc f = m{modFuncs = S.insert f $ modFuncs m}
        addReExport r = m{modReExports = S.insert r $ modReExports m}
        unName (Ident  i) = i
        unName (Symbol s) = s

verifyInterface :: [RawModule] -> RawGenIO ()
verifyInterface rmods = do
    let rmodNames = S.fromList $ map rawModuleName rmods
    logMessage "Verifying interface files"
    iDir <- asksOptions interfaceDir
    mpack <- liftEitherPrepend "Package interface verifying failed"
        =<< liftIO (readPackage iDir)
    let imodNames = rawMods mpack
    unless (imodNames == rmodNames) . throwRawError . unlines $
        [ "The modules in the interface and the generated modules are not the same!"
        , "Missing interfaces:"
        ] ++ (map unmodName $ S.toList (rmodNames S.\\ imodNames)) ++
        [ "Excess interfaces:"
        ] ++ (map unmodName $ S.toList (imodNames S.\\ rmodNames))
    F.mapM_ verifyModule $ rawMods mpack
    where
        unmodName (ModuleName mn) = mn

verifyModule :: ModuleName -> RawGenIO ()
verifyModule mn = do
    iDir <- asksOptions interfaceDir
    _ <- liftEitherPrepend errMsg =<< liftIO (readModule iDir mn)
    return ()
    where
        errMsg = "Module interface parsing failed for: " ++ mName
        (ModuleName mName) = mn
