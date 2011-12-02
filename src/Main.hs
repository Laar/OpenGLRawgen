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

--import Control.Monad.Identity
--import Data.List
--import qualified Data.Map as M
--import Text.OpenGL.Spec

import Language.Haskell.Exts.Pretty
import Code.Utils

--import Code.New.ModuleBuilder
import Code.New.Package

--import EnumSpec
--import FuncSpec
--
--import Code.Enum
--import Code.ModuleLocation
--import Code.RawFunc
--import Code.Types

import Spec()
import Spec.Parsing(parseSpecs, parseReuses)

import Code.New.Raw
import Code.New.Module(replaceCallConv)

main :: IO ()
main = procNew

--mainGC :: IO ()
--mainGC = do
--    espec <- enumSpecFromFile "enumext.spec"
--    fspec <- parseFSpecFromFiles "gl.spec" "gl.tm"
--    reuse <- readFile "reusefuncs"
--    case espec of
--        Left e -> print e
--        Right espec' -> case fspec of
--            Left e -> print e
--            Right fspec' -> do
--                proc (processEnums espec') (addReuses reuse fspec')
--
--proc :: EnumSpec -> FSpec -> IO ()
--proc (ESpec es) (FSpec fs) =
--    let ebuilder = sequence_ . map addEnums $ M.toList es
--        fbuilder = sequence_ . map addFunctions $ M.toList fs
--        builder = ebuilder >> fbuilder
--        pack = package . runIdentity . execBuilder emptyBuilder $ builder
--        fs' = M.mapKeys categoryModule fs
--
--        printModule mn m =
--            let msc = prettyPrint m
--                msc' =  case M.lookup mn fs' of
--                    Nothing  -> msc
--                    Just rfs -> postProcessModule rfs msc
--            in safeWriteFile ("output/" ++ moduleNameToPath mn ++ ".hs") msc'
--    in processModules' printModule pack >> safeWriteFile "output/modules.txt" (unlines . map (\n -> "      " ++ moduleNameToName n ++ ","). fst $ listModules pack)

--procEnums :: EnumSpec -> IO ()
--procEnums (ESpec spec) = writeModules "output" . package .
--    runIdentity . execBuilder emptyBuilder . sequence_ . map addEnums $ M.toList spec


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
            _ <- readFile rfuncP >>= return . parseReuses
            let modules = makeRaw rawSpec
                pmodule mn m =
                    let msc = replaceCallConv "CALLCONV" $ prettyPrint m
                    in  safeWriteFile ("output/" ++ moduleNameToPath mn ++ ".hs") msc
            processModules' pmodule modules
                >> safeWriteFile "output/modules.txt" (unlines . map (\n -> "      " ++ moduleNameToName n ++ ","). fst $ listModules modules)
