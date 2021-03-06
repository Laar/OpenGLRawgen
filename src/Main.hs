-----------------------------------------------------------------------------
--
-- Module      :  Main
-- Copyright   :  (c) 2011-2012 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | The main file for the OpenGLRaw-generator.
--
-----------------------------------------------------------------------------

module Main (
    main
) where

-----------------------------------------------------------------------------

import Control.Monad(when)
import qualified Data.Foldable as F
import Data.List(partition, sort)
import System.Directory
import System.Exit(exitSuccess)
import System.FilePath((</>), dropFileName)

import Language.Haskell.Exts.Pretty
import Code.Generating.Utils

import Modules.Raw
import Modules.Types
import Code.ModuleCode
import Code.PostProcessing

import Main.Monad
import Main.Options

import Spec
import Spec.Parsing(parseSpecs)


import Interface.Module
-- needed for the version
import Data.Version(showVersion)
import Paths_OpenGLRawgen(version)

-----------------------------------------------------------------------------

main :: IO ()
main = do
    opts <- getOptions
    when (hasFlag Help opts)        $ putStrLn usage >> exitSuccess
    when (hasFlag VersionThis opts) $ printVersion >> exitSuccess
    runRawGenIO rmain

-- | The 'real' main function, the generator.
rmain :: RawGenIO ()
rmain = do
    (lMap, vMap) <- parseSpecs
    opts <- askOptions
    let lMap' = cleanupSpec opts lMap
    modules <- liftRawGen $ makeRaw (lMap', vMap)
    outputModules modules
    verifyInterface modules

printVersion :: IO ()
printVersion = putStrLn $ "OpenGLRawgen " ++ showVersion version

-----------------------------------------------------------------------------
-- module writing
outputModules :: [RawModule] -> RawGenIO ()
outputModules modules = do
    logMessage $ "Writing " ++ show (length modules) ++ " modules"
    F.forM_ modules $ outputModule
    let (exts, ints) = partition isExternal modules
    oDir <- asksOptions outputDir
    logMessage "Writing modulelistings"
    writeModuleListing (oDir </> "modulesE.txt") exts
    writeModuleListing (oDir </> "modulesI.txt") ints
    -- writing the interface listing
    writePackageInterface modules

outputModule :: RawModule -> RawGenIO ()
outputModule rmodule = do
    let mname = rawModuleName rmodule
    modu <- toModule rmodule
    oDir <- asksOptions outputDir
    modu' <- liftRawGen $ postProcessModule $ prettyPrint modu
    let -- modu' = replaceCallConv "CALLCONV" $ prettyPrint modu
        path = oDir </> moduleNameToPath mname ++ ".hs"
    liftIO $ safeWriteFile path modu'
    writeModuleInterface rmodule

writeModuleListing :: FilePath -> [RawModule] -> RawGenIO ()
writeModuleListing fp mods = do
    let transform modu = "      " ++ moduleNameToName (rawModuleName modu) ++ ","
    liftIO $ safeWriteFile fp (unlines . sort . map transform $ mods)
    

safeWriteFile :: FilePath -> String -> IO ()
safeWriteFile fp fc = createDirectoryIfMissing True (dropFileName fp)
    >> writeFile fp fc

-----------------------------------------------------------------------------
