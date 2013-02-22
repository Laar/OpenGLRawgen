{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}
module Interface.Module (
    moduleToRenderedInterface,
    moduleToInterface
) where

import Language.Haskell.Exts.Syntax hiding (QName)
import Code.Generating.Utils
import Data.String
import Text.XML.Light

import Modules.Types

moduleToRenderedInterface :: RawModule -> String
moduleToRenderedInterface = ppTopElement . moduleToInterface

moduleToInterface :: RawModule -> Element
moduleToInterface rawMod =
    node "moduledefinition"
        ([Attr "module" . moduleNameToName $ rawModuleName rawMod
        , Attr "exported" $ if externalRawModule rawMod then "True" else "False"
        ], parts)
    where
        parts = node "parts" 
            . map modulePartToElement $ rawModuleParts rawMod

modulePartToElement :: ModulePart -> Element
modulePartToElement p = case p of
    DefineEnum      n gln t _  -> enumElem n gln t
    ReDefineLEnum   n gln t _  -> enumElem n gln t
    ReDefineIEnum   n gln t _  -> enumElem n gln t
    ReExport        (n, m) gln -> reExportElem n gln m
    DefineFunc      n rt ats gln _  -> functionElem n gln rt ats
    ReExportModule  m          -> moduleReexport m

-- To make constructing xml easier
instance IsString QName where
    fromString = unqual

functionElem :: Name -> GLName -> FType -> [FType] -> Element
functionElem name glname rettype argtypes =
    node "function"
        ([ Attr "glname" glname
        , Attr "name" $ unname name
        ], typeContents)
    where
        typeContents =
            node "return" (toElem rettype)
            : map toArgElem argtypes
        toArgElem = node "argument" . toElem
        toElem :: FType -> Element
        toElem (TCon n)  = node "con" [Attr "type" n]
        toElem TVar      = node "var" ()
        toElem (TPtr ft) = node "ptr" $ toElem ft
        toElem UnitTCon  = node "unit" ()

enumElem :: Name -> GLName -> ValueType -> Element
enumElem name glname vt =
    node "enum"
        [ Attr "glname" glname
        , Attr "name" $ unname name
        , Attr "type" valType
        ]
    where
        valType = case vt of
            EnumValue       -> "enum"
            BitfieldValue   -> "bitfield"

reExportElem :: Name -> GLName -> ModuleName -> Element
reExportElem name glname (ModuleName modName) =
    node "reexported"
        [ Attr "glname" glname
        , Attr "name"   $ unname name
        , Attr "module" modName
        ]

moduleReexport :: ModuleName -> Element
moduleReexport (ModuleName modName) =
    node "exportedmodule"
        [ Attr "module" modName]


