-----------------------------------------------------------------------------
--
-- Module      :  Spec.Parsing
-- Copyright   :  (c) 2011-12 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | The parser build over the the parsers in openGL-api , and a simple
-- parser to parse the reuse entries.
--
-----------------------------------------------------------------------------

module Spec.Parsing (
    parseSpecs,
    parseReuses,
--    extensions,
) where

-----------------------------------------------------------------------------


import Control.Monad.State
import Control.Monad.Writer

import Data.List(stripPrefix)
import qualified Data.Map as M
import Data.Maybe(fromMaybe)

import Language.Haskell.Exts.Syntax
import Code.Generating.Utils

import Control.Applicative

import Text.Parsec.String(GenParser)
import Text.Parsec hiding
  (many, optional, (<|>), token)

import Text.OpenGL.Api as A
import Text.OpenGL.Spec as S hiding (Value)
import qualified Text.OpenGL.Spec as S

import Spec.RawSpec

-----------------------------------------------------------------------------

-- | Parse the needed OpenGL spec files and generate a 'RawSpec' based on
-- them.
parseSpecs
    :: FilePath         -- ^ The path to \"enumext.spec\"
    -> FilePath         -- ^ The path to \"gl.spec\"
    -> FilePath         -- ^ The path to \"gl.tm\"
    -> IO (Either ParseError RawSpec)
parseSpecs esf gsf tmf = do
    especf <- readFile esf
    fspecf <- readFile gsf
    tymapf <- readFile tmf
    return $ do -- (Either ParseError) monad
        espec  <- enumLines especf >>= return . parseEnumSpec
        tymap  <- tmLines tymapf >>= return . mkTypeMap
        fspec  <- funLines fspecf >>= return . extractFunctions
        let fspec' = parseFSpec fspec tymap
        return $ mappend espec fspec' --mkRawSpec espec fspec'

-----------------------------------------------------------------------------


-- | Parse the enumeration spec.
parseEnumSpec :: [EnumLine] -> RawSpec
parseEnumSpec eLines =
    let specWriter = evalStateT (parseEnumLines eLines)
            (error $ "No category")
        endoSpec = execWriter specWriter
    in appEndo endoSpec mempty

type EP = StateT Category (Writer (Endo RawSpec))

parseEnumLines :: [EnumLine] -> EP ()
parseEnumLines = sequence_ . map parseEnumLine

parseEnumLine :: EnumLine -> EP ()
parseEnumLine (Start cat _) = put cat
parseEnumLine (Enum n v _)  = addEnumValue n v >> addEnumLocation n
parseEnumLine (Use _ n)     = addEnumLocation n
parseEnumLine _             = return ()

addEnumLocation :: String -> EP ()
addEnumLocation name = do
    cat <- get
    tell . Endo $ addLocation cat (wrapName name :: EnumName)

addEnumValue :: String -> S.Value -> EP ()
addEnumValue name v = addValue' $ case v of
    Hex  i _ _   -> Value i ty
    Deci i       -> Value (fromIntegral i) ty
    Identifier i ->
        let i' = wrapName . fromMaybe i . stripPrefix "GL_" $ i
        in ReUse i' ty
    where
        addValue' :: EnumValue -> EP ()
        addValue' enumVal = tell . Endo $ addValue (wrapName name) enumVal
        ty :: Type
        ty = if isBitfieldName name then tyCon' "GLbitfield" else tyCon' "GLenum"

-----------------------------------------------------------------------------

-- | Parse (or process) the function as the are supplied by the openGL-api
-- package.
parseFSpec :: [Function] -> TypeMap -> RawSpec
parseFSpec funcs tm = foldr add mempty $ map (convertFunc tm) funcs
    where
        add (c, (fn, fv)) rs = addValue fn fv . addLocation c fn $ rs

convertFunc :: TypeMap -> Function -> (Category, (FuncName, FuncValue))
convertFunc tm rf = (funCategory rf, (wrapName name, RawFunc name ty alias))
    where
        name = funName rf
        ty   = foldr (-->>)
            (convertRetType $ funReturnType rf)
            (map paramToType $ funParameters rf)
        alias = funAlias rf
        paramToType (Parameter _ t _ p) = lookupType t p tm

-----------------------------------------------------------------------------

-- | Parse the reuses from a string.
parseReuses :: String -> Either ParseError [(Category, [Category])]
parseReuses = parse (many pReuseLine <* eof) "reuse"

type CP = GenParser Char ()

blanks :: CP String
blanks = many (oneOf " \t")
eol :: CP ()
eol = () <$ char '\n'

pReuseLine :: CP (Category, [Category])
pReuseLine = (,) <$> (pCategory <* blanks) <*> (sepBy pCategory (char ',' *> blanks)) <* eol

-----------------------------------------------------------------------------

-- | Convert the 'ReturnType' supplied by openGL-api to a type useable for
-- Language.Haskell.Exts
convertRetType :: ReturnType -> Type
convertRetType rt = addIOType $ case rt of
    Boolean      -> tyCon' "GLboolean"
    BufferOffset -> tyCon' "GLsizeiptr"
    ErrorCode    -> tyCon' "GLenum" -- TODO lookup
    FramebufferStatus -> tyCon' "GLenum" -- lookup
    GLEnum       -> tyCon' "GLenum"
    HandleARB    -> tyCon' "GLuint" -- lookup
    Int32        -> tyCon' "GLint"
    S.List       -> tyCon' "GLuint" -- lookup
    S.String     -> TyApp (tyCon' "Ptr") (tyCon' "GLchar")
    Sync         -> tyCon' "GLsync"
    UInt32       -> tyCon' "GLuint"
    Void         -> unit_tycon
    VoidPointer  -> TyApp (tyCon' "Ptr") (tyVar' "a") -- TODO improve the type variable
    VdpauSurfaceNV -> tyCon' "GLintptr" -- lookup

-- | Convert the type supplied by openGL-api to a type useable for
-- Language.Haskell.Exts
lookupType :: String -> Passing -> TypeMap -> Type
lookupType t _ _ | t == "cl_context" = tyCon' "CLcontext"
                 | t == "cl_event"   = tyCon' "CLevent"
lookupType t p tm = case M.lookup t tm of
    Just (t', ptr) -> addPointer (p /= S.Value) . addPointer ptr $ convertType t'
    Nothing -> error $ "lookupType: Type not found " ++ show t
    where
        addPointer :: Bool -> Type -> Type
        addPointer addptr = if addptr then TyApp (tyCon' "Ptr") else id
        convertType t' = case t' of
            Star        -> TyApp (tyCon' "Ptr") (tyVar' "a")
            GLbitfield  -> tyCon' "GLbitfield"
            GLboolean   -> tyCon' "GLboolean"
            GLbyte      -> tyCon' "GLbyte"
            GLchar      -> tyCon' "GLchar"
            GLcharARB   -> tyCon' "GLchar"
            GLclampd    -> tyCon' "GLclampd"
            GLclampf    -> tyCon' "GLclampf"
            GLdouble    -> tyCon' "GLdouble"
            GLenum      -> tyCon' "GLenum"
--            GLenumWithTrailingComma -- removed from the source
            GLfloat     -> tyCon' "GLfloat"
            UnderscoreGLfuncptr -> error "_GLfuncptr"
            GLhalfNV    -> tyCon' "GLushort" -- lookup
            GLhandleARB -> tyCon' "GLhandle"--tyCon' "GLuint" -- lookup
            GLint       -> tyCon' "GLint"
            GLint64     -> tyCon' "GLint64"
            GLint64EXT  -> tyCon' "GLint64"
            GLintptr    -> tyCon' "GLintptr"
            GLintptrARB -> tyCon' "GLintptr"
            GLshort     -> tyCon' "GLshort"
            GLsizei     -> tyCon' "GLsizei"
            GLsizeiptr  -> tyCon' "GLsizeiptr"
            GLsizeiptrARB -> tyCon' "GLsizeiptr"
            GLsync      -> tyCon' "GLsync"
            GLubyte     -> tyCon' "GLubyte"
            ConstGLubyte -> error "cubyte"
            GLuint      -> tyCon' "GLuint"
            GLuint64    -> tyCon' "GLuint64"
            GLuint64EXT -> tyCon' "GLuint64"
            GLUnurbs    -> error "Unurbs"
            GLUquadric  -> error "Uquadric"
            GLushort    -> tyCon' "GLushort"
            GLUtesselator -> error  "tesselator"
            GLvoid      -> (tyVar' "a")
            GLvoidStarConst -> TyApp (tyCon' "Ptr") (tyVar' "b") -- TODO lookup ??, only used in MultiModeDrawElementsIBM
            GLvdpauSurfaceNV -> tyCon' "GLintptr" -- lookup
            GLdebugprocARB -> tyCon' "GLdebugprocARB" -- lookup
            GLdebugprocAMD -> tyCon' "GLdebugprocAMD" -- lookup

-----------------------------------------------------------------------------
