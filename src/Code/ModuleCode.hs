-----------------------------------------------------------------------------
--
-- Module      :  Code.ModuleCode
-- Copyright   :  (c) 2013 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | The `ModulePart` data type used for representing the contents of a
-- module. It also contains the translation to a full module.
--
-----------------------------------------------------------------------------
module Code.ModuleCode (
    ModulePart(..), Imported,
    toModule, replaceCallConv
) where

-----------------------------------------------------------------------------

import Control.Applicative
import Data.Maybe
import Data.Traversable(traverse)
import Language.Haskell.Exts.Syntax

import Text.OpenGL.Spec(Category, showCategory)

import Code.Generating.Utils

import Main.Monad
import Code.ModuleNames
import Code.Types
-----------------------------------------------------------------------------


-----------------------------------------------------------------------------

-- | Build a `Module` out of parts and a name for it.
toModule :: RawGenMonad m => RawModule -> m Module
toModule rmodule = do
    let parts = rawModuleParts rmodule
    fimports <- when' (any definesFunc parts) funcImports
    eimports <- when' (any definesEnum parts) enumImports
    let name = rawModuleName rmodule
        exps    = map toExport parts
        -- The imports that are needed when functions/enums are defined
        -- overlap. The current solution probably needs improving. Untill that
        -- has been done addImportDecl is used to clear the duplicates.
        imports = mapMaybe toImport parts ++ foldr addImportDecl fimports eimports
        prags =    if any definesFunc parts then funcPrags else []
                ++ if any definesEnum parts then enumPrags else []
    decls <- concat <$> traverse toDecls parts
    return $ Module noSrcLoc name prags Nothing (Just exps) imports decls
    where
        when' p m = if p then m else return []

-----------------------------------------------------------------------------

toExport :: ModulePart -> ExportSpec
toExport mp = case mp of
    DefineEnum      n _ _   -> nameExport n
    ReDefineLEnum   n _ _   -> nameExport n
    ReDefineIEnum   n _ _   -> nameExport n
    ReExport        (n,_)   -> nameExport n
    DefineFunc      n _ _ _ -> nameExport n
    ReExportModule  mn      -> EModuleContents mn
    where
        nameExport = EVar . UnQual

toImport :: ModulePart -> Maybe ImportDecl
toImport mp = case mp of
    DefineEnum{}        -> Nothing
    ReDefineLEnum{}     -> Nothing
    ReDefineIEnum _ _ i -> Just $ imported i
    ReExport     i      -> Just $ imported i
    DefineFunc{}        -> Nothing
    ReExportModule mn   -> Just $ importAll mn
    where
        imported (n, mn) = partialImport mn [IVar n]

-----------------------------------------------------------------------------

definesFunc :: ModulePart -> Bool
definesFunc DefineFunc{} = True
definesFunc _            = False

-- | Extra imports needed if a function is defined
funcImports :: RawGenMonad m => m [ImportDecl]
funcImports = do
    typesModule <- askTypesModule
    extensionModule <- askExtensionModule
    return
        [ importAll typesModule
        , importAll extensionModule
        , importAll $ ModuleName "Foreign.Ptr"
        , importAll $ ModuleName "Foreign.C.Types"
        ]
-- | Extra `ModulePragma`s needed if a function is defined
funcPrags :: [ModulePragma]
funcPrags =
    [ LanguagePragma noSrcLoc [Ident "CPP"]
    , LanguagePragma noSrcLoc [Ident "ForeignFunctionInterface"]
    ]

definesEnum :: ModulePart -> Bool
definesEnum DefineEnum{}    = True
definesEnum ReDefineIEnum{} = True
definesEnum ReDefineLEnum{} = True
definesEnum _               = False

-- | Extra imports needed when an enum is defined
enumImports :: RawGenMonad m => m [ImportDecl]
enumImports = (\x -> [importAll x]) <$> askTypesModule

-- | Extra `ModulePragma`s needed when an enum is defined.
enumPrags :: [ModulePragma]
enumPrags = []

-----------------------------------------------------------------------------

toDecls :: RawGenMonad m => ModulePart -> m [Decl]
toDecls (DefineEnum    n t v)       = enumTemplate n t (Lit $ Int v)
toDecls (ReDefineLEnum n t n')      = enumTemplate n t (var n')
toDecls (ReDefineIEnum n t (n',_))  = enumTemplate n t (var n')
toDecls (DefineFunc n t gn c)       = funcTemplate n t gn c
toDecls _                           = pure []

-----------------------------------------------------------------------------

enumTemplate :: RawGenMonad m => Name -> Type -> Exp -> m [Decl]
enumTemplate name vType vExp =
    pure [ oneTypeSig name vType
         , oneLiner name [] vExp]

-----------------------------------------------------------------------------

-- | Template for defining a function. It adds three declerations. One for
-- the FFI import, one for the retrieving the 'FuncPtr' to the functions and
-- one for the real invoker used to call the GL-function as it is dynamically
-- imported.
funcTemplate :: RawGenMonad m => Name -> Type -> GLName -> Category -> m [Decl]
funcTemplate name ty glname category = flip fmap askExtensionModule $ \emod ->
        -- Two extra names, the unname function is needed here to keep the
        -- names every where else for type safety, consider this the safe usage of
        -- an unsafe function.
        let dynEntry = Ident $ "dyn_" ++ unname name
            ptrEntry = Ident $ "ptr_" ++ unname name
            -- The FFI import decl of the form
            --
            -- > foreign import stdcall unsafe "dynamic" dyn_funcName ::
            -- >   InvokerModulePath.Invoker (FuncType -> IO FuncResultType)
            fimport = ForImp noSrcLoc callConv PlayRisky "dynamic" dynEntry
                            (TyApp (TyCon . Qual emod $ Ident "Invoker") ty)
            -- The used/exported function.
            --
            -- > funcName :: FuncType -> IO FuncResultType
            -- > funcName = dyn_FuncName ptr_FuncName
            function = [oneTypeSig name ty,
                        oneLiner name [] (var dynEntry @@ var ptrEntry)
                       ]
            -- The function used for the function pointer
            --
            -- > {-# NOINLINE ptr_funcName #-}
            -- > ptr_FuncName :: FuncPtr a
            -- > ptr_FuncName = unsafePerformIO $
            -- >    ExtensionEntryModulePath.getExtensionEntry "GL_FUNC_CATEGORY" "funcName"
            funcPointer = [ InlineSig noSrcLoc False AlwaysActive (UnQual ptrEntry)
                       , oneTypeSig ptrEntry (TyApp (tyCon' "FunPtr") (tyVar' "a"))
                       , oneLiner ptrEntry []
                            ( var' "unsafePerformIO" .$. (Var . Qual emod $ Ident "getExtensionEntry")
                            @@ (Lit . String $ "GL_" ++ showCategory category)
                            @@ (Lit . String $ "gl" ++ glname))
                       ]
    in fimport : function ++ funcPointer



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

-----------------------------------------------------------------------------

