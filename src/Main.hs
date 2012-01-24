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

import Language.Haskell.Exts.Pretty
import Code.Generating.Utils
import Code.Generating.Package

import Code.Raw
import Code.Module(replaceCallConv)
import Main.Options
import Spec
import Spec.Parsing(parseSpecs, parseReuses)

-- needed for the version
import Data.Version(showVersion)
import Paths_OpenGLRawgen(version)

-----------------------------------------------------------------------------

main :: IO ()
main = procNew

procNew :: IO ()
procNew = do
    opts <- getOptions
    when (hasFlag Help opts)        $ putStrLn usage >> exitSuccess
    when (hasFlag VersionThis opts) $ printVersion >> exitSuccess

    let especP  = enumextFile   opts
        fspecP  = glFile        opts
        tmspecP = tmFile        opts
    erawSpec <- parseSpecs especP fspecP tmspecP
    case erawSpec of
        Left e -> print e
        Right rawSpec -> do
            rawSpec' <- processReuses opts rawSpec
            let oDir = outputDir opts
                modules = makeRaw opts . cleanupSpec opts $ rawSpec'
                -- | Post processes a module and writes it to file
                pmodule mn m =
                    let msc = replaceCallConv "CALLCONV" $ prettyPrint m
                    in  safeWriteFile (oDir </> moduleNameToPath mn ++ ".hs") msc
            -- write out the modules
            processModules' pmodule modules
            -- and a list of exposed and internal modules.
                >> safeWriteFile (oDir </> "modulesE.txt") (unlines .
                    map (\n -> "      " ++ moduleNameToName n ++ ",") . fst $ listModules modules)
                >> safeWriteFile (oDir </> "modulesI.txt") (unlines .
                    map (\n -> "      " ++ moduleNameToName n ++ ",") . snd $ listModules modules)

-- | Parse and process the reuse files. It generates no warning if there is
-- no reuse file to parse
processReuses :: RawGenOptions -> RawSpec -> IO RawSpec
processReuses o spec = do
    let freuseP = freuseFile o
        ereuseP = ereuseFile o
    freuses <- getReuses freuseP
    ereuses <- getReuses ereuseP
    return $ addReuses freuses ereuses spec
    where
        getReuses :: FilePath -> IO [(Category, [Category])]
        getReuses fp = doesFileExist fp >>= \exists ->
            case exists of
                False -> return []
                True -> readFile fp >>= \reuses ->
                    return
                        -- unwraping the error layer
                        . either (\ e-> error $ "Parsing the reuses faild with" ++ show e) id
                        . parseReuses $ reuses

printVersion :: IO ()
printVersion = putStrLn $ "OpenGLRawgen " ++ showVersion version

-----------------------------------------------------------------------------
