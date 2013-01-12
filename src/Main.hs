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
-- |
--
-----------------------------------------------------------------------------

module Main (
    main
) where

-----------------------------------------------------------------------------

import Control.Monad(when)
import System.Directory
import System.Exit(exitSuccess)
import System.FilePath((</>))

import Language.Haskell.Exts.Syntax
import Language.Haskell.Exts.Pretty
import Code.Generating.Utils
import Code.Generating.Package

import Code.Raw
import Code.Module(replaceCallConv)
import Main.Options
import Main.Monad
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
    oDir <- asksOptions outputDir
    opts <- askOptions
    let lMap'' = cleanupSpec opts lMap'
    modules <- liftRawGen $ makeRaw (lMap'', vMap)
    -- write out the modules
    logMessage $ "Writing modules"
    processModules' outputModule modules
    logMessage $ "Writing module names"
    -- and a list of exposed and internal modules.
    liftIO (safeWriteFile (oDir </> "modulesE.txt") (unlines .
        map (\n -> "      " ++ moduleNameToName n ++ ",") . fst $ listModules modules))
    liftIO (safeWriteFile (oDir </> "modulesI.txt") (unlines .
        map (\n -> "      " ++ moduleNameToName n ++ ",") . snd $ listModules modules))

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
            case exists of
                False -> return []
                True -> liftIO (readFile fp) >>= \reuses ->
                    liftEitherMsg 
                        (\e -> "Parsing reuses failed with: " ++ show e)
                        . parseReuses $ reuses

printVersion :: IO ()
printVersion = putStrLn $ "OpenGLRawgen " ++ showVersion version

-----------------------------------------------------------------------------

outputModule :: ModuleName -> Module -> RawGenIO ()
outputModule mname modu = do
    oDir <- asksOptions outputDir
    let modu' = replaceCallConv "CALLCONV" $ prettyPrint modu
        path = oDir </> moduleNameToPath mname ++ ".hs"
    logMessage $ "Writing: " ++ moduleNameToName mname
    liftIO $ safeWriteFile path modu'

-----------------------------------------------------------------------------
