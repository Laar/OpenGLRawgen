-----------------------------------------------------------------------------
--
-- Module      :  Code.Module
-- Copyright   :  (c) 2011 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | Defines the builder for a single FFI import module that imports the
-- functions and defines enumeration values of a single category. Furthermore
-- it defines a single modulesource post-processor to change the used
-- callingconvention into the preprocessor directive that is used.
--
-----------------------------------------------------------------------------

module Code.Module (
    buildModule,
    replaceCallConv,
) where

-----------------------------------------------------------------------------

import Control.Monad
import Data.Maybe(fromMaybe)

import Text.OpenGL.Spec(showCategory)
import Spec

import Code.Generating.Utils
import Language.Haskell.Exts.Syntax
import Code.Builder
import Code.Generating.Builder

-----------------------------------------------------------------------------

-- | Builds a single module by adding the nessacery FFI imports and
-- enumeration values for the category
buildModule :: Category -> Builder ()
buildModule c = do
    funcs <- getsRawSpec $ categoryValues c
    enums <- getsRawSpec $ categoryValues c

    enumDefs <- fmap and . sequence . map (addEnum c) $ enums
    funcDefs <- fmap and . sequence . map (addFunc c) $ funcs
    
    when funcDefs addFunctionConditionals
    when enumDefs addCondEImports

-----------------------------------------------------------------------------

-- | Adds the enum value pair to the current module, the category is the
-- current category. This information is needed to prevent import loops.
addEnum :: Category -> EnumName -> Builder Bool
addEnum c n = do
    name <- unwrapNameBuilder n
    addExport $ (EVar . UnQual) name
    loc <- getDefineLoc n
    case loc of
        Just c' -> askCategoryPImport c' [IVar name] >>= addImport >> return False
        Nothing -> do
            Just x <- enumLookup n --getsRawSpec $ lookupValue n
            case x of
                Value val ty -> do
                    addEnumValue (Lit $ Int val) ty name
                    addDefineLoc n c
                    return True
                ReUse reuseName ty -> do
                    reuseName' <- unwrapNameBuilder reuseName
                    addEnumValue (var $ reuseName') ty name
                    addImport' reuseName reuseName'
                    addDefineLoc n c
                    return True
{-    case t of
        Redirect _ _ -> addImport' c n
        Value val ty -> addValue (Lit $ Int val) ty name
        ReUse reuseval ty -> do
                    reuseName <- unwrapNameBuilder reuseval
                    addValue (var $ reuseName) ty name
                    addImport' c reuseval
-}
    where
        addEnumValue val ty name = do
            addDecls $ enumDecl name val ty
        addImport' :: EnumName -> Name -> Builder ()
        addImport' ename iname = do
            ic <- getDefineLoc ename >>= return . fromMaybe (error $ "Couldn't find " ++ show iname)
            when (ic /= c) $ askCategoryPImport ic [IVar iname] >>= addImport

-- | Adds an import for a value, the category is needed to check it's not in
-- the same category (and therefor preventing imports from the same module)
{-addImport' :: Category -> EnumName -> Builder ()
addImport' c iname = do
    ic <- askCategory iname >>= return . fromMaybe (error $ "addEnum: Couldn't find: " ++ show iname)
    when (ic /= c) $ do
        -- only here translate it as the category lookup should be done on the original name
        iname' <- unwrapNameBuilder iname
        askCategoryPImport ic [IVar iname'] >>= addImport
-}

-- | The declerations to define the enum, which will look like
-- > enumName :: enumType
-- > enumName = enumExp
enumDecl :: Name -> Exp -> Type -> [Decl]
enumDecl name valExp vtype =
    [ oneTypeSig name vtype
    , oneLiner name [] valExp]

-- | Adds the imports needed when there is at least a single enumvalue
-- defined in this module, the 'EnumValue's are needed to check if this
-- is nessacery
addCondEImports :: Builder ()
addCondEImports = askTypesInternalModule >>= ensureImport

-----------------------------------------------------------------------------

-- Adds the function to the module. The category is needed to prevent an
-- import of the local category.
addFunc :: Category -> FuncName -> Builder Bool
addFunc c n = do
    Just (RawFunc gln ty _) <- getsRawSpec $ lookupValue n
    name <- unwrapNameBuilder n
    addExport . EVar . UnQual $  name
    loc <- getDefineLoc n
    case loc of
        Nothing -> addFFIDecls gln ty name >> addDefineLoc n c >> return True
        Just c' -> askCategoryPImport c' [IVar $ name] >>= addImport >> return False
--    case v of
--        RawFunc gln ty _ -> addFFIDecls gln ty name
--        RedirectF guessc -> addReuse guessc name
    where
        -- Adds an import, if it's nessacery, for the function
{-        addReuse guessc name = do
            ic <- askCategory' n guessc
                >>= return . fromMaybe (error $ "addFunc: Couldn't find : " ++ show n)
            when (ic /= c) $ askCategoryPImport ic [IVar $ name] >>= addImport
-}
        -- Adds the declaration used to import this function, there are three
        -- declerations for each function. One for the FFI import, one for the
        -- retrieving the 'FuncPtr' to the functions and one for the real
        -- invoker used to call the GL-function.
        addFFIDecls gln ty name = do
            emod <- askExtensionModule
            -- Two name extra names, the unname function is needed here to keep the
            -- names every where else for type safety, consider this the safe usage of
            -- an unsafe function.
            let dynEntry = Ident $ "dyn_" ++ unname name
                ptrEntry = Ident $ "ptr_" ++ unname name
            -- Adds the FFI import decl of the form
            --
            -- > foreign import stdcall unsafe "dynamic" dyn_funcName ::
            -- >   InvokerModulePath.Invoker (FuncType -> IO FuncResultType)
            addDecl $  ForImp noSrcLoc callConv PlayRisky "dynamic" dynEntry
                            (TyApp (TyCon . Qual emod $ Ident "Invoker") ty)
            -- Adds the used/exported function.
            --
            -- > funcName :: FuncType -> IO FuncResultType
            -- > funcName = dyn_FuncName ptr_FuncName
            addDecls $ [oneTypeSig name ty,
                        oneLiner name [] (var dynEntry @@ var ptrEntry)
                       ]
            -- Adds the function used for the function pointer
            --
            -- > {-# NOINLINE ptr_funcName #-}
            -- > ptr_FuncName :: FuncPtr a
            -- > ptr_FuncName = unsafePerformIO $
            -- >    ExtensionEntryModulePath.getExtensionEntry "GL_FUNC_CATEGORY" "funcName"
            addDecls $ [ InlineSig noSrcLoc False AlwaysActive (UnQual ptrEntry)
                       , oneTypeSig ptrEntry (TyApp (tyCon' "FunPtr") (tyVar' "a"))
                       , oneLiner ptrEntry []
                            ( var' "unsafePerformIO" .$. (Var . Qual emod $ Ident "getExtensionEntry")
                            @@ (Lit . String $ "GL_" ++ showCategory c)
                            @@ (Lit . String $ "gl" ++ gln))
                       ]

-- | The temporary 'CallConv' used.
callConv :: CallConv
callConv = StdCall

-- | Replace every occurence of a certain calling convention by the given
-- string.
replaceCallConv
    :: String -- The replacing calling convention
    -> String -- The source of the module
    -> String
replaceCallConv r = go
    where
        go []                               = []
        go ('s':'t':'d':'c':'a':'l':'l':xs) = r ++ go xs
        go (x                          :xs) = x : go xs

-- | Adds the imports, etc. needed when there is a FFI function import. The
-- 'FuncValue's are needed to check if there is any such function.
addFunctionConditionals :: Builder ()
addFunctionConditionals = do
    askTypesInternalModule >>= ensureImport
    let forPtr = ModuleName "Foreign.Ptr"
    ensureImport forPtr
    askExtensionModule >>= ensureImport
    let cppPragma = LanguageP $ Ident "CPP"
        ffiPragma = LanguageP $ Ident "ForeignFunctionInterface"
    hcpp <- hasPragma cppPragma
    when (not hcpp) $ addPragma cppPragma
    hffi <- hasPragma ffiPragma
    when (not hffi) $ addPragma ffiPragma
