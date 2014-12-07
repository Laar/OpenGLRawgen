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
    toModule
) where

-----------------------------------------------------------------------------

import Control.Applicative
import Data.Foldable(foldMap)
import qualified Data.Map as M
import Data.Monoid
import qualified Data.Set as S
import Data.Traversable(traverse)
import Language.Haskell.Exts.Syntax

import Language.OpenGLRaw.Base

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
    rimports <- when' (any redefines   parts) redefineImports
    let name = rawModuleName rmodule
        warning = rawModuleWarning rmodule
        exps    = map toExport parts
        imports = toImportDecls $ 
            foldMap toImport parts `mappend` fimports `mappend` eimports
                                   `mappend` rimports
        prags =    if any definesFunc parts then funcPrags else []
                ++ if any definesEnum parts then enumPrags else []
    decls <- concat <$> traverse toDecls parts
    return $ Module noSrcLoc name prags warning (Just exps) imports decls
    where
        when' p m = if p then m else return mempty

-----------------------------------------------------------------------------

toExport :: ModulePart -> ExportSpec
toExport mp = case mp of
    DefineEnum     n _ _ _   -> nameExport n
    ReDefineEnum   n _ _ _   -> nameExport n
    ReDefineFunc   n _ _ _ _ -> nameExport n
    ReExport       (n,_) _   -> nameExport n
    DefineFunc     n _ _ _ _ -> nameExport n
    ReExportModule mn        -> EModuleContents mn
    where
        nameExport = eVar

toImport :: ModulePart -> Imports
toImport mp = case mp of
    DefineEnum{}                -> mempty
    ReDefineEnum _ _ _ (n, i)   -> maybe mempty (singletonImport . (,) n) i
    ReDefineFunc _ _ _ _ (n, i) -> maybe mempty (singletonImport . (,) n) i
    ReExport     i _            -> singletonImport i
    DefineFunc{}                -> mempty
    ReExportModule mn           -> importMod mn

-----------------------------------------------------------------------------

-- | Listing of imports from multiple modules. Using a different type from
-- the list of `ImportDecl` has a simple reason, `ImportDecl` and `ImportSpec`
-- are far more complex than what is needed here.
-- OpenGLRaw uses only two forms of imports, either the import everything or
-- importing some specific things (see `Import`).
newtype Imports = Imports { importMap :: M.Map ModuleName Import }

instance Monoid Imports where
    mempty = Imports mempty
    Imports i1 `mappend` Imports i2
        = Imports $ M.unionWith combineImport i1 i2
        where
            combineImport :: Import -> Import -> Import
            combineImport IAll  _       = IAll
            combineImport _     IAll    = IAll
            combineImport (IThings is1)  (IThings is2)
                = IThings $ is1 `mappend` is2

-- | Import type for an import from a single module.
data Import
    = IAll                 -- ^ Import the full module.
    | IThings (S.Set Name) -- ^ Import a specific set of items form the module.

-- | Convert the `Imports` to the haskell-src-exts syntax type.
toImportDecls :: Imports -> [ImportDecl]
toImportDecls = map (uncurry toImportDecl) . M.toList . importMap
    where
        toImportDecl :: ModuleName -> Import -> ImportDecl
        toImportDecl mn IAll         = importAll mn
        toImportDecl mn (IThings is) = partialImport mn . map iVar $ S.toList is

-- | Import a single item.
singletonImport :: Imported -> Imports
singletonImport (n,mn) = Imports . M.singleton mn . IThings $ S.singleton n

-- | Import a full module.
importMod :: ModuleName -> Imports
importMod mn = Imports $ M.singleton mn IAll

-----------------------------------------------------------------------------

definesFunc :: ModulePart -> Bool
definesFunc DefineFunc{} = True
definesFunc _            = False

-- | Extra imports needed if a function is defined
funcImports :: RawGenMonad m => m Imports
funcImports = do
    typesModule <- askTypesModule
    extensionModule <- askExtensionModule
    return $ foldMap importMod
        [ typesModule
        , extensionModule
        , ModuleName "Foreign.Ptr"
        , ModuleName "Foreign.C.Types"
        ]
-- | Extra `ModulePragma`s needed if a function is defined
funcPrags :: [ModulePragma]
funcPrags =
    [ LanguagePragma noSrcLoc [Ident "CPP"]
    , LanguagePragma noSrcLoc [Ident "ForeignFunctionInterface"]
    ]

definesEnum :: ModulePart -> Bool
definesEnum DefineEnum{}    = True
definesEnum _               = False

-- | Extra imports needed when an enum is defined
enumImports :: RawGenMonad m => m Imports
enumImports = importMod <$> askTypesModule

-- | Extra `ModulePragma`s needed when an enum is defined.
enumPrags :: [ModulePragma]
enumPrags = []

redefines :: ModulePart -> Bool
redefines ReDefineEnum{} = True
redefines ReDefineFunc{} = True
redefines _              = False

redefineImports :: RawGenMonad m => m Imports
redefineImports = importMod <$> askTypesModule

-----------------------------------------------------------------------------

toDecls :: RawGenMonad m => ModulePart -> m [Decl]
toDecls (DefineEnum   n _ t v)
    = enumTemplate n t (Lit $ Int v)
toDecls (ReDefineEnum n _ t (n', _))
    = reuseTemplate n (fromEType t) (var n')
toDecls (ReDefineFunc n _ rt ats (n',_))
    = reuseTemplate n (fromFType rt ats) (var n')
toDecls (DefineFunc   n rt ats gn c)
    = funcTemplate n (fromFType rt ats) gn c
toDecls _
    = pure []

-----------------------------------------------------------------------------

enumTemplate :: RawGenMonad m => Name -> ValueType -> Exp -> m [Decl]
enumTemplate name vType vExp =
    pure [ oneTypeSig name $ fromEType vType
         , oneLiner name [] vExp]

fromEType :: ValueType -> Type
fromEType vType = case vType of
    EnumValue       -> tyCon' "GLenum"
    BitfieldValue   -> tyCon' "GLbitfield"


-----------------------------------------------------------------------------

-- TODO: replace Exp?
reuseTemplate :: RawGenMonad m => Name -> Type -> Exp -> m [Decl]
reuseTemplate name ty rexp =
    pure [ oneTypeSig name ty
         , oneLiner name [] rexp
         ]

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
funcTemplate name ty glname category = flip fmap askExtensionModule $ \emod ->
        -- Two extra names, the unname function is needed here to keep the
        -- names every where else for type safety, consider this the safe usage of
        -- an unsafe function.
        let dynEntry = Ident $ "dyn_" ++ unHSName name
            ptrEntry = Ident $ "ptr_" ++ unHSName name
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
                            @@ (Lit . String $ "gl" ++ unGLName glname))
                       ]
    in fimport : function ++ funcPointer



-- | The temporary 'CallConv' used.
callConv :: CallConv
callConv = StdCall

-----------------------------------------------------------------------------

