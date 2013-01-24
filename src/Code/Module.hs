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

import qualified Data.Set as S

import Spec

import Code.Builder
import Code.ModuleNames
import Code.ModuleCode

-----------------------------------------------------------------------------

-- | Builds a single module by adding the nessacery FFI imports and
-- enumeration values for the category
buildModule :: Category -> MBuilder ()
buildModule c = do
    funcs <- lift . asksLocationMap $ categoryValues c
    enums <- lift . asksLocationMap $ categoryValues c

    sequence_ . map (addEnum c) $ S.toList enums
    sequence_ . map (addFunc c) $ S.toList funcs
    
-----------------------------------------------------------------------------

-- | Adds the enum value pair to the current module, the category is the
-- current category. Needed to determine if it can be redefined locally.
addEnum :: Category -> EnumName -> MBuilder ()
addEnum c n = do
    name <- unwrapNameBuilder n
    loc <- getDefineLoc n
    case loc of
        Just c' -> do c'Module <- askCategoryModule c'
                      tellPart $ ReExport (name, c'Module)
        Nothing -> do
            -- it does exist so this shouldn't fail.
            Just x <- enumLookup n
            addDefineLoc n c
            case x of
                Value val ty -> tellPart $ DefineEnum name ty val
                ReUse reuseName ty -> do
                    reuseName' <- unwrapNameBuilder reuseName
                    ic <- getDefineLoc reuseName
                        >>= liftMaybe ("Couldn't find " ++ show reuseName)
                    if ic == c
                     then tellPart $ ReDefineLEnum name ty reuseName'
                     else do
                        icmod <- askCategoryModule ic
                        tellPart $ ReDefineIEnum name ty (reuseName', icmod)

-----------------------------------------------------------------------------

-- Adds the function to the module.
addFunc :: Category -> FuncName -> MBuilder ()
addFunc c n = do
    Just (RawFunc gln ty _) <- getsValueMap $ lookupValue n
    name <- unwrapNameBuilder n
    loc <- getDefineLoc n
    case loc of
        Nothing -> do
            addDefineLoc n c
            tellPart $ DefineFunc name ty gln c
        Just c' -> do
            c'Module <- askCategoryModule c'
            tellPart $ ReExport (name, c'Module)

-----------------------------------------------------------------------------
