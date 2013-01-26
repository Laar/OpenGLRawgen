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

import Modules.Builder
import Modules.Raw
import Code.ModuleCode
import Main.Options
import Spec
import Spec.Parsing(parseSpecs, parseReuses)

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
    lMap' <- processReuses lMap
    opts <- askOptions
    let lMap'' = cleanupSpec opts lMap'
    modules <- liftRawGen $ makeRaw (lMap'', vMap)
    outputModules modules
    -- write out the modules
--    logMessage $ "Writing modules"
--    processModules' outputModule modules
--    logMessage $ "Writing module names"
    -- and a list of exposed and internal modules.
--    liftIO (safeWriteFile (oDir </> "modulesE.txt") (unlines .
--        map (\n -> "      " ++ moduleNameToName n ++ ",") . fst $ listModules modules))
--    liftIO (safeWriteFile (oDir </> "modulesI.txt") (unlines .
--        map (\n -> "      " ++ moduleNameToName n ++ ",") . snd $ listModules modules))

-- | Parse and process the reuse files. It generates no warning if there is
-- no reuse file to parse
processReuses :: LocationMap -> RawGenIO LocationMap
processReuses lMap = do
    o <- askOptions
    let freuseP = freuseFile o
        ereuseP = ereuseFile o
    freuses <- getReuses freuseP
    ereuses <- getReuses ereuseP
    return $ addReuses freuses ereuses lMap
    where
        getReuses :: FilePath -> RawGenIO [(Category, [Category])]
        getReuses fp = liftIO (doesFileExist fp) >>= \exists ->
            if not exists
             then return []
             else liftIO (readFile fp) >>= \reuses ->
                    liftEitherMsg 
                        (\e -> "Parsing reuses failed with: " ++ show e)
                        . parseReuses $ reuses

printVersion :: IO ()
printVersion = putStrLn $ "OpenGLRawgen " ++ showVersion version

-----------------------------------------------------------------------------
-- module writing
outputModules :: [RawModule] -> RawGenIO ()
outputModules modules = do
    logMessage $ "Writing " ++ show (length modules) ++ " modules"
    F.forM_ modules $ outputModule
    let (exts, ints) = partition externalRModule modules
    oDir <- asksOptions outputDir
    logMessage "Writing modulelistings"
    writeModuleListing (oDir </> "modulesE.txt") exts
    writeModuleListing (oDir </> "modulesI.txt") ints

outputModule :: RawModule -> RawGenIO ()
outputModule rmodule = do
    let mname = rawModuleName rmodule
    modu <- toModule rmodule
    oDir <- asksOptions outputDir
    let modu' = replaceCallConv "CALLCONV" $ prettyPrint modu
        path = oDir </> moduleNameToPath mname ++ ".hs"
--    logMessage $ "Writing: " ++ moduleNameToName mname
    liftIO $ safeWriteFile path modu'

writeModuleListing :: FilePath -> [RawModule] -> RawGenIO ()
writeModuleListing fp mods = do
    let transform modu = "      " ++ moduleNameToName (rawModuleName modu) ++ ","
    liftIO $ safeWriteFile fp (unlines . sort . map transform $ mods)
    

safeWriteFile :: FilePath -> String -> IO ()
safeWriteFile fp fc = createDirectoryIfMissing True (dropFileName fp)
    >> writeFile fp fc

-----------------------------------------------------------------------------
