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

-----------------------------------------------------------------------------

-- | Builds a single module by adding the nessacery FFI imports and
-- enumeration values for the category
buildModule :: Category -> MBuilder ()
buildModule c = do
  --  funcs <- lift . asksLocationMap $ categoryValues c
  --  enums <- lift . asksLocationMap $ categoryValues c
    values <- lift . asksLocationMap $ categoryValues c
    case c of
        Version _ _ _ -> askTypesModule >>= tellReExportModule
        _             -> return ()
    mapM_ (addDef c) $ S.toList values
  --  mapM_  (addEnum c) $ S.toList enums
  --  mapM_ (addFunc c) $ S.toList funcs
    
-----------------------------------------------------------------------------

addDef :: Category -> VName -> MBuilder ()
addDef c n = do
    loc <- getDefineLoc n
    case loc of
        -- It is already defined, so we can reexport it.
        Just c' -> reexport c'
        Nothing -> do
            -- Lookup the value, this also ensures that we only get a ReUse
            -- when it would point to an already defined value.
            val <- valueLookup n
            case val of
                Nothing -> throwRawError $ "addDef: " ++ show n ++ " not found"
                Just (EValue intval ty) ->
                    tellDefinition $ DefineEnum name glname ty intval
                Just (RawFunc ret args _) ->
                    tellDefinition $ DefineFunc name ret args glname c
                Just (ReUse rname) -> do
                    -- If not defined it would have been swapped by the
                    -- previous call to `valueLookup`.
                    Just ic <- getDefineLoc rname
                    let rname' = unwrapName rname
                    -- Check if it is local, or that it needs to be imported.
                    origin <- if ic == c
                                then return Nothing
                                else Just `fmap` askCategoryModule ic
                    -- Lookup the definition to get the type of value (Enum or
                    -- Func) and the corresponding value type.
                    def     <- resolveValue rname
                    case def of
                        Nothing -> throwRawError $ "addDef: " ++ show n
                                                    ++ "could not be resolved"
                        Just (EValue _ ty) -> tellDefinition
                            $ ReDefineEnum name glname ty (rname', origin)
                        Just (RawFunc ret args _) -> tellDefinition
                            $ ReDefineFunc name glname ret args (rname', origin)
                        Just (ReUse _) -> error "addDef: impossible"
  where
    name   = unwrapName n
    glname = toGLName n
    tellDefinition def = do
        addDefineLoc n c
        tellPart def
    reexport cat = do
        modName <- askCategoryModule cat
        tellPart $ ReExport (name, modName) glname


-----------------------------------------------------------------------------
