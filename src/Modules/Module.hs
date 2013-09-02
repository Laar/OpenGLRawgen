-----------------------------------------------------------------------------
--
-- Module      :  Modules.Module
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

module Modules.Module (
    buildModule,
) where

-----------------------------------------------------------------------------

import qualified Data.Set as S

import Spec

import Modules.Builder
import Modules.ModuleNames

import Debug.Trace

-----------------------------------------------------------------------------

-- | Builds a single module by adding the nessacery FFI imports and
-- enumeration values for the category
buildModule :: Category -> MBuilder ()
buildModule c = do
    funcs <- lift . asksLocationMap $ categoryValues c
    enums <- lift . asksLocationMap $ categoryValues c

    mapM_  (addEnum c) $ S.toList enums
    mapM_ (addFunc c) $ S.toList funcs
    
-----------------------------------------------------------------------------

-- | Adds the enum value pair to the current module, the category is the
-- current category. Needed to determine if it can be redefined locally.
addEnum :: Category -> EnumName -> MBuilder ()
addEnum c n = do
    let glname = toGLName n
    name <- unwrapNameM n
    loc <- getDefineLoc n
    case loc of
        Just c' -> do c'Module <- askCategoryModule c'
                      tellPart $ ReExport (name, c'Module) glname
        Nothing -> do
            mk <- enumLookup n
            case mk of
                -- This should not happen, but with the spec it is
                -- always the question.
                Nothing -> trace (show n ++ " not found") $ return ()
                Just x -> do
                    addDefineLoc n c
                    case x of
                        Value val ty -> tellPart $ DefineEnum name glname ty val
                        ReUse reuseName ty -> do
                            reuseName' <- unwrapNameM reuseName
                            ic <- getDefineLoc reuseName
                                >>= liftMaybe ("Couldn't find " ++ show reuseName)
                            if ic == c
                             then tellPart $ ReDefineLEnum name glname ty reuseName'
                             else do
                                icmod <- askCategoryModule ic
                                tellPart $ ReDefineIEnum name glname ty (reuseName', icmod)

-----------------------------------------------------------------------------

-- Adds the function to the module.
addFunc :: Category -> FuncName -> MBuilder ()
addFunc c n = do
    let glname = toGLName n
    Just (RawFunc rty atys _) <- getsValueMap $ lookupValue n
    name <- unwrapNameM n
    loc <- getDefineLoc n
    case loc of
        Nothing -> do
            addDefineLoc n c
            tellPart $ DefineFunc name rty atys glname c
        Just c' -> do
            c'Module <- askCategoryModule c'
            tellPart $ ReExport (name, c'Module) glname

-----------------------------------------------------------------------------
