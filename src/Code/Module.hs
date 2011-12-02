-----------------------------------------------------------------------------
--
-- Module      :  Code.New.Module
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

module Code.Module (
    buildModule,
    replaceCallConv,
) where

-----------------------------------------------------------------------------

import Control.Monad
import Control.Monad.Reader
import qualified Data.Map as M
import Data.Maybe(fromMaybe)

import Code.Utils
import Language.Haskell.Exts.Syntax
import Code.Builder
import Code.New.Package
import Code.New.ModuleBuilder

import Text.OpenGL.Spec(Category, showCategory)
import Spec

-----------------------------------------------------------------------------

buildModule :: Category -> Builder ()
buildModule c = do
    funcs <- asks (M.toList . categoryFuncs c)
    enums <- asks (M.toList . categoryEnums c)
    if null funcs && null enums
     then return () -- Don't make a module for a category without contents
     else do
        mn <- askCategoryModule c
        hasMod <- liftPquery hasModule mn
        when (not hasMod) $ do
            liftPadjust $ addExternalModule' mn
        activateModule mn

        sequence_ . map (addEnum c) $ enums
        sequence_ . map (addFunc c) $ funcs
        let funcvals = map snd funcs
        addFunctionConditionals $ funcvals
        addCondEImports $ map snd enums
--        when (any isFDefine funcvals) $ addExtensionNameString c

-----------------------------------------------------------------------------

addEnum :: Category -> (String, EnumValue) -> Builder ()
addEnum c (n, t) = do
    addExport $ (EVar . UnQual) name
    case t of
        Redirect _ _ -> addImport' c n
        Value val ty -> addValue (Lit $ Int val) ty
        ReUse reuseval ty -> do
                    addValue (eVar $ toEnumName reuseval) ty
                    addImport' c reuseval
    where
        name  = toEnumName n
        addValue val ty = do
            askTypesModule >>= ensureImport
            addDecls $ enumDecl name val ty

-- | Adds an import for a value, the category is needed to check it's not in the same
-- category (and therefor preventing imports from the same module)
addImport' :: Category -> String -> Builder ()
addImport' c iname = do
    ic <- askECategory iname >>= return . fromMaybe (error $ "addEnum: Couldn't find: " ++ show iname)
    when (ic /= c) $ askCategoryPImport ic [IVar $ toEnumName iname] >>= addImport

enumDecl :: Name -> Exp -> Type -> [Decl]
enumDecl name valExp vtype =
    [ oneTypeSig name vtype
    , oneLiner name [] valExp]

toEnumName :: String -> Name
toEnumName n = Ident $ "gl_" ++ n

addCondEImports :: [EnumValue] -> Builder ()
addCondEImports evs = when (any isEDefine evs) $ do
    askTypesModule >>= ensureImport

-----------------------------------------------------------------------------

addFunc :: Category -> (String, FuncValue) -> Builder ()
addFunc c (n, v) = do
    addExport $ (EVar . UnQual) name
    case v of
        RawFunc ty -> addFFIDecls ty
        RedirectF guessc -> addReuse guessc
    where
        name = toFuncName n
        addReuse guessc = do
            ic <- askFCategory' n guessc
                >>= return . fromMaybe (error $ "addFunc: Couldn't find : " ++ show n)
            when (ic /= c) $ askCategoryPImport ic [IVar $ name] >>= addImport
        addFFIDecls ty = do
            emod <- askExtensionModule
            let dynEntry = Ident $ "dyn_" ++ toFuncName' n
                ptrEntry = Ident $ "ptr_" ++ toFuncName' n
            addDecls $ [ForImp noSrcLoc callConv PlayRisky "dynamic" dynEntry
                            (TyApp (TyCon . Qual emod $ Ident "Invoker") ty)
                       ]
            addDecls $ [oneTypeSig name ty,
                        oneLiner name [] (eVar dynEntry @@ eVar ptrEntry)
                       ]
            addDecls $ [ InlineSig noSrcLoc False AlwaysActive (UnQual ptrEntry)
                       , oneTypeSig ptrEntry (TyApp (tyCon "FunPtr") (tyVar "a"))
                       , oneLiner ptrEntry []
                            ( expVar "unsafePerformIO" .$. (Var . Qual emod $ Ident "getExtensionEntry")
                            @@ (Lit . String $ "GL_" ++ showCategory c)
                            @@ (Lit . String $ unname name))
                       ]

callConv :: CallConv
callConv = StdCall

replaceCallConv :: String -> String -> String
replaceCallConv r = go
    where
        go []                               = []
        go ('s':'t':'d':'c':'a':'l':'l':xs) = r ++ xs
        go (x                          :xs) = x : go xs

toFuncName :: String -> Name
toFuncName = Ident . toFuncName'

toFuncName' :: String -> String
toFuncName' n = "gl" ++ n

addFunctionConditionals :: [FuncValue] -> Builder ()
addFunctionConditionals fvs = when (any isFDefine fvs) $  do
    askTypesModule >>= ensureImport
    let forPtr = ModuleName "Foreign.Ptr"
    ensureImport forPtr
    let pragma = (LanguagePragma (SrcLoc "" 0 0)  [Ident "ForeignFunctionInterface", Ident "CPP" ])
    hffi <- hasPragma pragma
    askExtensionModule >>= ensureImport
    when (not hffi) $ addPragma pragma
