module Interface.Module (
    moduleToRenderedInterface,
    moduleToInterface
) where

import Language.Haskell.Exts.Syntax
import Language.Haskell.Exts.Pretty
import Code.Generating.Utils
import Text.XML.Light

import Modules.Types

moduleToRenderedInterface :: RawModule -> String
moduleToRenderedInterface = ppTopElement . moduleToInterface

moduleToInterface :: RawModule -> Element
moduleToInterface rawMod =
    node (unqual "moduledefinition")
        ([Attr (unqual "module") . moduleNameToName $ rawModuleName rawMod
        , Attr (unqual "exported") $ if externalRawModule rawMod then "True" else "False"
        ], parts)
    where
        parts = node (unqual "parts") 
            . map modulePartToElement $ rawModuleParts rawMod

modulePartToElement :: ModulePart -> Element
modulePartToElement p = case p of
    DefineEnum      n gln t _  -> valueElem n gln t EnumDef
    ReDefineLEnum   n gln t _  -> valueElem n gln t EnumDef
    ReDefineIEnum   n gln t _  -> valueElem n gln t EnumDef
    ReExport        (n, m) gln -> reExportElem n gln m
    DefineFunc      n t gln _  -> valueElem n gln t FuncDef
    ReExportModule  m          -> moduleReexport m

data DefType
    = EnumDef
    | FuncDef

valueElem :: Name -> GLName -> Type -> DefType -> Element
valueElem name glname ty def = 
    node (unqual "define")
        ([ Attr (unqual "glname") glname
        , Attr (unqual "name")   $ unname name
        , Attr (unqual "type")   defString
        ], prettyPrint ty)
    where 
        defString = case def of
            EnumDef -> "enum"
            FuncDef -> "function"

reExportElem :: Name -> GLName -> ModuleName -> Element
reExportElem name glname (ModuleName modName) =
    node (unqual "reexported")
        [ Attr (unqual "glname") glname
        , Attr (unqual "name")   $ unname name
        , Attr (unqual "module") modName
        ]

moduleReexport :: ModuleName -> Element
moduleReexport (ModuleName modName) =
    node (unqual "exportedmodule")
        [ Attr (unqual "module") modName]
