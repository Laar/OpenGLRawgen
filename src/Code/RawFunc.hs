-----------------------------------------------------------------------------
--
-- Module      :  Code.RawFunc
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

module Code.RawFunc (
    addFunctions,
    postProcessModule,
) where

import Control.Monad(when)
import Data.Maybe(isNothing, mapMaybe)

import FuncSpec.Types
import Language.Haskell.Exts.Pretty
import Language.Haskell.Exts.Syntax as H
import Code.Mangler
import Code.Module
import Code.Utils
import Text.OpenGL.Spec

import Code.New.Package
import Code.New.ModuleBuilder

import Code.ModuleLocation
import Code.Types

-----------------------------------------------------------------------------

extensionMacro :: String -> Type -> String
extensionMacro n t = "EXTENSION_ENTRY(" ++ name ++ ',' : args ++ ")"
    where name = toFuncName' n
          args = prettyPrint t

genMacros :: [RawFunc] -> [String]
genMacros = mapMaybe genMacro
    where
        genMacro (RawFunc n t) = Just $ extensionMacro n t
        genMacro _             = Nothing

postProcessModule :: [RawFunc] -> ModuleSource -> ModuleSource
postProcessModule rf =
    let macs = genMacros rf
    in if null macs
        then id
        else addafterImport $ ["#include \"HsOpenGLRaw.h\""] ++ "": macs

-----------------------------------------------------------------------------

addFunctions :: (Category, [RawFunc]) -> Builder ()
addFunctions (c, fs) = do
    hasMod <- liftPquery hasModule mn
    when (not hasMod) $ do
        liftPadjust $ addExternalModule' mn
    activateModule mn
    when (any isRawFunc fs) . addDecls $ extensionNameString
    sequence_ $ map addFunc fs
    where
        mn = categoryModule c
        extensionNameString = [oneTypeSig ens (tyCon "String"), oneLiner ens [] (Lit . H.String $ "GL_" ++ showCategory c)]
        ens = Ident "extensionNameString"

addFunc :: RawFunc -> Builder ()
addFunc (RawFunc n _) = do
    addExport $ funcExport n
    ensureImports
    hCPP <- hasPragma pragma
    when (not hCPP) $ addPragma pragma
    where
        pragma = (LanguagePragma (SrcLoc "" 0 0)  [Ident "ForeignFunctionInterface", Ident "CPP" ])
addFunc (ReuseFunc c n) = do
    addExport $ funcExport n
    addImport $ funcImport c n

funcExport :: String -> ExportSpec
funcExport = EVar . UnQual . toFuncName

ensureImports :: Builder ()
ensureImports = do
    imp <- getImport typesModule
    when (isNothing imp) $ addImport (ImportDecl noSrcLoc typesModule False False Nothing Nothing (Nothing))
    let forPtr = ModuleName "Foreign.Ptr"
    imp' <- getImport forPtr
    when (isNothing imp') $ addImport (ImportDecl noSrcLoc forPtr False False Nothing Nothing (Nothing))
    imp'' <- getImport extensionModule
    when (isNothing imp'') $ addImport (ImportDecl noSrcLoc extensionModule False False Nothing Nothing (Nothing))

funcImport :: Category -> String -> ImportDecl
funcImport c n =
    ImportDecl noSrcLoc mn False False Nothing Nothing (Just (False, [IVar $ name]))
        where
            mn = categoryModule c
            name = toFuncName n
--
toFuncName :: String -> Name
toFuncName = Ident . toFuncName'
toFuncName' :: String -> String
toFuncName' n = "gl" ++ n

-----------------------------------------------------------------------------
