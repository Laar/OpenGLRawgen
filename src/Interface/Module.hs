{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}
module Interface.Module (
    moduleToRenderedInterface,
    moduleToInterface
) where

import Language.Haskell.Exts.Syntax hiding (QName)
import Language.Haskell.Exts.Pretty
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
functionElem = undefined

enumElem :: Name -> GLName -> ValueType -> Element
enumElem = undefined

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


