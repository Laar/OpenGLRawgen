-----------------------------------------------------------------------------
--
-- Module      :  Main
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

module Main (
    main
) where


import Language.Haskell.Exts.Pretty
import Code.Utils

import Code.New.Package

import Spec
import Spec.Parsing(parseSpecs, parseReuses)

import Code.Raw
import Code.Module(replaceCallConv)

main :: IO ()
main = procNew



procNew :: IO ()
procNew = do
    let especP  = "enumext.spec"
        fspecP  = "gl.spec"
        tmspecP = "gl.tm"
        rfuncP  = "reusefuncs"
    erawSpec <- parseSpecs especP fspecP tmspecP
    case erawSpec of
        Left e -> print e
        Right rawSpec -> do
            reuses <- readFile rfuncP >>= return . parseReuses
            writeFile "temp.output" $ show reuses
            let reuses' = either (\ e-> error $ "Parsing the reuses faild with" ++ show e) id reuses
                modules = makeRaw $ filterEmpty . addReuses reuses' $ rawSpec
                pmodule mn m =
                    let msc = replaceCallConv "CALLCONV" $ prettyPrint m
                    in  safeWriteFile ("output/" ++ moduleNameToPath mn ++ ".hs") msc
            processModules' pmodule modules
                >> safeWriteFile "output/modules.txt" (unlines .
                    map (\n -> "      " ++ moduleNameToName n ++ ",") . fst $ listModules modules)
