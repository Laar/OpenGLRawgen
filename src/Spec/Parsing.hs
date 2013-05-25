-----------------------------------------------------------------------------
--
-- Module      :  Spec.Parsing
-- Copyright   :  (c) 2011 Lars Corbijn
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
    parseDeprecations,
) where

-----------------------------------------------------------------------------


import Control.Monad.State
import Control.Monad.Writer

import Data.List(stripPrefix)
import qualified Data.Map as M
import Data.Maybe(fromMaybe)

import Control.Applicative

import Text.Parsec.String(GenParser)
import Text.Parsec hiding
  (many, optional, (<|>), token)

import Text.OpenGL.Api as A
import Text.OpenGL.Spec as S hiding (Value)
import qualified Text.OpenGL.Spec as S

import Main.Options
import Main.Monad
import Spec.RawSpec

-----------------------------------------------------------------------------

-- | Parse the needed OpenGL spec files and generate a 'RawSpec' based on
-- them.
parseSpecs :: RawGenIO (LocationMap, ValueMap)
parseSpecs = do
    especf <- asksOptions enumextFile >>= liftIO . readFile
    fspecf <- asksOptions glFile >>= liftIO . readFile
    tymapf <- asksOptions tmFile >>= liftIO . readFile
    espec <- liftEither $ parseEnumSpec <$> enumLines especf
    tymap <- liftEither $ mkTypeMap <$> tmLines tymapf
    fspec <- liftEither $ extractFunctions <$> funLines fspecf
    return . mappend espec $ parseFSpec fspec tymap

-----------------------------------------------------------------------------


-- | Parse the enumeration spec.
parseEnumSpec :: [EnumLine] -> (LocationMap, ValueMap)
parseEnumSpec eLines =
    let specWriter = evalStateT (parseEnumLines eLines) $ error "No category"
        (endoLMap, endoVMap) = execWriter specWriter
    in (appEndo endoLMap mempty, appEndo endoVMap mempty)

type EP = StateT Category (Writer (Endo LocationMap, Endo ValueMap))

tellLoc :: (LocationMap -> LocationMap) -> EP ()
tellLoc f = tell (Endo f, mempty)

tellVal :: (ValueMap -> ValueMap) -> EP ()
tellVal f = tell (mempty, Endo f)

parseEnumLines :: [EnumLine] -> EP ()
parseEnumLines = mapM_ parseEnumLine

parseEnumLine :: EnumLine -> EP ()
parseEnumLine (Start cat _) = put cat
parseEnumLine (Profile Compatibility) = modify toDeprecatedCat
parseEnumLine (Enum n v _)  = addEnumValue n v >> addEnumLocation n
parseEnumLine (Use _ n)     = addEnumLocation n
parseEnumLine _             = return ()

addEnumLocation :: String -> EP ()
addEnumLocation name = do
    cat <- get
    tellLoc $ addLocation cat (wrapName name :: EnumName)

addEnumValue :: String -> S.Value -> EP ()
addEnumValue name v = addValue' $ case v of
    Hex  i _ _   -> Value i ty
    Deci i       -> Value (fromIntegral i) ty
    Identifier i ->
        let i' = wrapName . fromMaybe i . stripPrefix "GL_" $ i
        in ReUse i' ty
    where
        addValue' :: EnumValue -> EP ()
        addValue' enumVal = tellVal $ addValue (wrapName name) enumVal
        ty :: ValueType
        ty = if isBitfieldName name then BitfieldValue else EnumValue

-----------------------------------------------------------------------------

-- | Parse (or process) the function as the are supplied by the openGL-api
-- package.
parseFSpec :: [Function] -> TypeMap -> (LocationMap, ValueMap)
parseFSpec funcs tm = foldr (add . convertFunc tm) mempty funcs
    where
        add (c, (fn, fv)) (lMap, vMap)
            = (addLocation c fn lMap, addValue fn fv vMap)

convertFunc :: TypeMap -> Function -> (Category, (FuncName, FuncValue))
convertFunc tm rf = (cat, (wrapName name, RawFunc rtype atype alias))
    where
        name = funName rf
        cat = case funProfile rf of
            Nothing -> funCategory rf
            Just Compatibility -> toDeprecatedCat $ funCategory rf
        rtype = convertRetType $ funReturnType rf
        atype = map paramToType $ funParameters rf
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
pReuseLine = (,) <$> (pCategory <* blanks)
    <*> sepBy pCategory (char ',' *> blanks) <* eol

-----------------------------------------------------------------------------

parseDeprecations :: SpecValue sv
    => String -> Either ParseError [(ValueName sv, DeprecationRange)]
parseDeprecations contents = concat
        <$> parse (many pContents <* eof) "deprecations" contents
    where
        pContents = choice
            [ []    <$ pComment
            , (:[]) <$> pDepr
            ]

pComment :: CP ()
pComment = () <$ char '#' <* manyTill anyChar eol

pSpaces :: CP ()
pSpaces = () <$ many1 (oneOf " \t")

pDigit :: CP Int
pDigit = read . (:[]) <$> oneOf ['0'..'9']

pGLVersion :: CP GLVersion
pGLVersion = (,) <$> pDigit <* char '.' <*> pDigit

pDepr :: SpecValue sv => CP (ValueName sv, DeprecationRange)
pDepr = (,) 
    <$> (wrapName <$> many1 (alphaNum <|> char '_') <* pSpaces)
    <*> (DeprRange
        <$> pGLVersion
        <* pSpaces
        <*> pGLVersion)
    <* eol

-----------------------------------------------------------------------------

toDeprecatedCat :: Category -> Category
toDeprecatedCat c = case c of
    Version ma mi _ -> Version ma mi True
    Extension e n _ -> Extension e n True
    Name n          -> Name n

-- | Convert the 'ReturnType' supplied by openGL-api to a type useable for
-- Language.Haskell.Exts
convertRetType :: ReturnType -> FType
convertRetType rt = case rt of
    Boolean      -> TCon "GLboolean"
    BufferOffset -> TCon "GLsizeiptr"
    ErrorCode    -> TCon "GLenum" -- TODO lookup
    Float32      -> TCon "GLfloat"
    FramebufferStatus -> TCon "GLenum" -- lookup
    GLEnum       -> TCon "GLenum"
    HandleARB    -> TCon "GLhandle"
    Int32        -> TCon "GLint"
    Path         -> TCon "GLuint" -- lookup, seems to be an object
    S.List       -> TCon "GLuint" -- lookup
    S.String     -> TPtr $ TCon "GLchar"
    Sync         -> TCon "GLsync"
    UInt32       -> TCon "GLuint"
    UInt64       -> TCon "GLuint64"
    Void         -> UnitTCon
    VoidPointer  -> TPtr TVar
    VdpauSurfaceNV -> TCon "GLintptr" -- lookup

-- | Convert the type supplied by openGL-api to a type useable for
-- Language.Haskell.Exts
lookupType :: String -> Passing -> TypeMap -> FType
lookupType t _ _ | t == "cl_context" = TCon "CLcontext"
                 | t == "cl_event"   = TCon "CLevent"
lookupType t p tm = case M.lookup t tm of
    Just (t', ptr) -> addPointer (p /= S.Value) . addPointer ptr $ convertType t'
    Nothing -> error $ "lookupType: Type not found " ++ show t
    where
        addPointer :: Bool -> FType -> FType
        addPointer addptr = if addptr then TPtr else id
        convertType t' = case t' of
            Star        -> TPtr TVar
            GLbitfield  -> TCon "GLbitfield"
            GLboolean   -> TCon "GLboolean"
            GLbyte      -> TCon "GLbyte"
            GLchar      -> TCon "GLchar"
            GLcharARB   -> TCon "GLchar"
            GLcharStarConst -> TPtr $ TCon "GLchar" -- LOOKUP if it needs a pointer
            GLclampd    -> TCon "GLclampd"
            GLclampf    -> TCon "GLclampf"
            GLdouble    -> TCon "GLdouble"
            GLenum      -> TCon "GLenum"
--            GLenumWithTrailingComma -- removed from the source
            GLfloat     -> TCon "GLfloat"
            UnderscoreGLfuncptr -> error "_GLfuncptr"
            GLhalfNV    -> TCon "GLhalf"
            GLhandleARB -> TCon "GLhandle"
            GLint       -> TCon "GLint"
            GLint64     -> TCon "GLint64"
            GLint64EXT  -> TCon "GLint64"
            GLintptr    -> TCon "GLintptr"
            GLintptrARB -> TCon "GLintptr"
            GLshort     -> TCon "GLshort"
            GLsizei     -> TCon "GLsizei"
            GLsizeiptr  -> TCon "GLsizeiptr"
            GLsizeiptrARB -> TCon "GLsizeiptr"
            GLsync      -> TCon "GLsync"
            GLubyte     -> TCon "GLubyte"
            ConstGLubyte -> error "cubyte"
            GLuint      -> TCon "GLuint"
            GLuint64    -> TCon "GLuint64"
            GLuint64EXT -> TCon "GLuint64"
            GLUnurbs    -> error "Unurbs"
            GLUquadric  -> error "Uquadric"
            GLushort    -> TCon "GLushort"
            GLUtesselator -> error  "tesselator"
            GLvoid      -> TVar
            GLvoidStarConst -> TPtr TVar -- TODO lookup ??, only used in MultiModeDrawElementsIBM
            GLvdpauSurfaceNV -> TCon "GLvdpauSurface" -- lookup
            GLdebugproc    -> TCon "GLdebugproc"
            GLdebugprocARB -> TCon "GLdebugproc"
            GLdebugprocAMD -> TCon "GLdebugproc"

-----------------------------------------------------------------------------
