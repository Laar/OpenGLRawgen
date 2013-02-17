{-# LANGUAGE QuasiQuotes #-}
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
import Language.Haskell.Exts.QQ
import Language.Haskell.Exts.Syntax

import Text.OpenGL.Spec(Category, showCategory)

import Code.Generating.Utils

import Main.Monad
import Modules.ModuleNames
import Modules.Types

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
    DefineEnum      n _ _ _   -> nameExport n
    ReDefineLEnum   n _ _ _   -> nameExport n
    ReDefineIEnum   n _ _ _   -> nameExport n
    ReExport        (n,_) _   -> nameExport n
    DefineFunc      n _ _ _ _ -> nameExport n
    ReExportModule  mn        -> EModuleContents mn
    where
        nameExport = EVar . UnQual

toImport :: ModulePart -> Maybe ImportDecl
toImport mp = case mp of
    DefineEnum{}          -> Nothing
    ReDefineLEnum{}       -> Nothing
    ReDefineIEnum _ _ _ i -> Just $ imported i
    ReExport      i _     -> Just $ imported i
    DefineFunc{}          -> Nothing
    ReExportModule mn     -> Just $ importAll mn
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
toDecls (DefineEnum    n _ t v)       = enumTemplate n t (Lit $ Int v)
toDecls (ReDefineLEnum n _ t n')      = enumTemplate n t (var n')
toDecls (ReDefineIEnum n _ t (n',_))  = enumTemplate n t (var n')
toDecls (DefineFunc n rt ats gn c)    = funcTemplate n (fromFType rt ats) gn c
toDecls _                             = pure []

-----------------------------------------------------------------------------

enumTemplate :: RawGenMonad m => Name -> ValueType -> Exp -> m [Decl]
enumTemplate name vType vExp =
    let name' = unname name
        vType' = case vType of
            EnumValue       -> tyCon' "GLenum"
            BitfieldValue   -> tyCon' "GLbitfield"
    in pure $ [decs|
        __name'__ :: ((vType'))
        __name'__ = $vExp
        |]

-----------------------------------------------------------------------------

-- | Forms the `Type` of a function from its return and argument types. The
-- type variables must be all different. Therefore each type variable gets
-- its letter from the position in the argument list. The @a@ for the return
-- type, "b" for the first argument, "c" for the second and so forth.
fromFType :: FType -> [FType] -> Type
fromFType rty atys = foldr TyFun rType $ zipWith toType vars atys
    where
        toType _ (TCon t) = tyCon' t
        toType c TVar     = tyVar' c -- "a"
        toType _ UnitTCon = unit_tycon
        toType c (TPtr t) = TyApp (tyCon' "Ptr") $ toType c t
        rType = TyApp (tyCon' "IO") $ toType "a" rty
        vars = map (:[]) $ ['b'..'z']

-- | Template for defining a function. It adds three declerations. One for
-- the FFI import, one for the retrieving the 'FuncPtr' to the functions and
-- one for the real invoker used to call the GL-function as it is dynamically
-- imported.
funcTemplate :: RawGenMonad m => Name -> Type -> GLName -> Category -> m [Decl]
funcTemplate name fType glname category = flip fmap askExtensionModule $ \emod ->
        -- Two extra names, the unname function is needed here to keep the
        -- names every where else for type safety, consider this the safe usage of
        -- an unsafe function.
        let name' = unname name
            dynEntry = "dyn_" ++ name' -- function ptr invoker
            ptrEntry = "ptr_" ++ name' -- function ptr to the gl function
            -- The FFI import decl using a temporary call convention
            invoker = TyCon . Qual emod $ Ident "Invoker"
            fimport = [dec| foreign import stdcall unsafe "dynamic" __dynEntry__ :: ((invoker)) ((fType))|]
            
            -- The used/exported function.
            function = [decs|
                __name'__ :: ((fType))
                __name'__ = __dynEntry__ __ptrEntry__
                |]
            
            -- The function used for the function pointer
            getExtensionEntry = Var . Qual emod $ Ident "getExtensionEntry"
            glFuncName       = Lit . String $ "gl" ++ glname
            categoryString   = Lit . String $ "GL_" ++ showCategory category
            funcPointer = [decs|
                {-# NOINLINE __ptrEntry__ #-}
                __ptrEntry__ :: FunPtr a
                __ptrEntry__ = unsafePerformIO $ $getExtensionEntry $categoryString $glFuncName
                |]
    in fimport : function ++ funcPointer


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

