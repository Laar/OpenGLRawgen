-----------------------------------------------------------------------------
--
-- Module      :  Code.Enum
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

module Code.Enum (
    addEnums,
) where

import Control.Monad
import Data.Maybe(isNothing)

import EnumSpec.Types
import Language.Haskell.Exts.Syntax
import Code.Utils
import Text.OpenGL.Spec

import Code.New.Package
import Code.New.ModuleBuilder

import Code.ModuleLocation
import Code.Types

-----------------------------------------------------------------------------

addEnums :: (Category, [EnumValue]) -> Builder ()
addEnums (c, es) = do
    hasMod <- liftPquery hasModule mn
    when (not hasMod) $ do
        liftPadjust $ addExternalModule' mn
    activateModule mn
    sequence_ $ map addEnum es
    where
        mn = categoryModule c

-----------------------------------------------------------------------------

addEnum :: EnumValue -> Builder ()
addEnum (EnumValue n v b) = do
    addDecls $ enumValueDecl n v b
    addExport $ enumValueExport n
    valueImport v
    imp <- getImport typesModule
    when (isNothing imp) $ addImport (ImportDecl noSrcLoc typesModule False False Nothing Nothing (Nothing))
addEnum (Redirect c n _) = do
    addImport $ enumImport c n
    addExport $ enumValueExport n

enumValueDecl :: String -> EValue -> Bool -> [Decl]
enumValueDecl n v b =
    let name = toEnumName n
        valueExp = case v of
            EValue x -> Lit $ Int x
            EIdent i _ -> eVar $ toEnumName i
    in [oneTypeSig name (if b then tyCon "GLbitfield" else tyCon "GLenum")
       , oneLiner name [] valueExp]

valueImport :: EValue -> Builder ()
valueImport (EValue _) = return ()
valueImport (EIdent _ Nothing) = return ()
valueImport (EIdent n (Just c)) = addImport (enumImport c n)

enumImport :: Category -> String -> ImportDecl
enumImport c n =
    ImportDecl noSrcLoc mn False False Nothing Nothing (Just (False, [IVar $ name]))
        where
            mn = categoryModule c
            name = toEnumName n

enumValueExport :: String -> ExportSpec
enumValueExport = EVar . UnQual . toEnumName

toEnumName :: String -> Name
toEnumName n = Ident $ "gl_" ++ n
