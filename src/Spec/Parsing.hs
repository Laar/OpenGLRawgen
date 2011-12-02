-----------------------------------------------------------------------------
--
-- Module      :  Spec.Parsing
-- Copyright   :
-- License     :  AllRightsReserved
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- |
--
-----------------------------------------------------------------------------

module Spec.Parsing (
    parseSpecs,
    parseReuses,
) where

import Data.Function
import Data.List
import qualified Data.Map as M
import Data.Maybe
import Spec.RawSpec

import Language.Haskell.Exts.Syntax
import Code.Utils

import Control.Applicative
import Text.ParserCombinators.Parsec hiding
  (many, optional, (<|>), token)

import Text.OpenGL.Api as A
import Text.OpenGL.Spec as S hiding (Value)

-----------------------------------------------------------------------------

parseSpecs
    :: FilePath         -- ^ The path to \"enumext.spec\"
    -> FilePath         -- ^ The path to \"gl.spec\"
    -> FilePath         -- ^ The path to \"gl.tm\"
    -> IO (Either ParseError RawSpec)
parseSpecs esf gsf tmf = do
    especf <- readFile esf
    fspecf <- readFile gsf
    tymapf <- readFile tmf
    -- hFlush stdout
    return $ do -- Either ParseError monad
        espec  <- enumLines especf >>= parseEnumSpec
        tymap  <- tmLines tymapf >>= return . mkTypeMap
        fspec  <- funLines fspecf >>= return . extractFunctions
        let fspec' = parseFSpec fspec tymap
        return $ mkRawSpec espec fspec'

-----------------------------------------------------------------------------

parseEnumSpec :: [EnumLine] -> Either ParseError [(Category, [(String, EnumValue)])]
parseEnumSpec ls =
    let ls' = filter inputFilter ls
    in parse pEnumSpec "EnumLines" ls'

type EP = GenParser EnumLine ()

inputFilter :: EnumLine -> Bool
inputFilter (Start _ _)  = True
inputFilter (Enum _ _ _) = True
inputFilter (Use _ _)    = True
inputFilter _            = False

pEnumSpec :: EP [(Category, [(String, EnumValue)])]
pEnumSpec = many pCategory'

pCategory' :: EP (Category, [(String, EnumValue)])
pCategory' = do
    cat <- pCategoryHeader
    vals <- many pGLValue
    return $ (cat, vals)

pCategoryHeader :: EP Category
pCategoryHeader =  tokenPrim showValue nextPos testValue
    where showValue = show
          testValue (Start cat _) = Just cat
          testValue _             = Nothing
          nextPos sp  _        _ = incSourceColumn sp 1

pGLValue :: EP (String, EnumValue)
pGLValue = tokenPrim showValue nextPos testValue
    where
        showValue = show
-- TODO : try to find a better way of determining the valuetype of the enum
        testValue (Enum name value _) = Just (name, partialValue value $ valueType name)
        testValue (Use ucat name)     = Just (name, Redirect ucat $ valueType name)
        testValue _                   = Nothing
        nextPos sp  _ _ = incSourceColumn sp 1
        partialValue (Hex v _ _)    = Value  v
        partialValue (Deci i)       = Value $ fromIntegral i
        partialValue (Identifier i) = ReUse (fromMaybe i . stripPrefix "GL_" $ i)
        valueType name = if "_BIT" `isInfixOf` name then tyCon "GLbitfield" else tyCon "GLenum"

-----------------------------------------------------------------------------

parseFSpec :: [Function] -> TypeMap -> [(Category, [(String, FuncValue)])]
parseFSpec funcs tm =
    map (\x -> (fst $ head x, map snd x)) -- pull out the categories
    . groupBy ((==) `on` fst) -- group em by category
    $ map (convertFunc tm) funcs

convertFunc :: TypeMap -> Function -> (Category, (String, FuncValue))
convertFunc tm rf = (funCategory rf, (name, RawFunc ty))
    where
        name = funName rf
        ty   = foldr (-->>)
            (convertRetType $ funReturnType rf)
            (map paramToType $ funParameters rf)
        paramToType (Parameter _ t _ _) = lookupType t tm

-----------------------------------------------------------------------------

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

convertRetType :: ReturnType -> Type
convertRetType rt = addIOType $ case rt of
    Boolean      -> tyCon "GLboolean"
    BufferOffset -> tyCon "GLsizeiptr"
    ErrorCode    -> tyCon "GLenum" -- TODO lookup
    FramebufferStatus -> tyCon "GLenum" -- TODO lookup
    GLEnum       -> tyCon "GLenum"
    HandleARB    -> tyCon "GLuint" -- TODO lookup
    Int32        -> tyCon "GLint"
    S.List       -> tyCon "GLuint" -- TODO lookup
    S.String     -> TyApp (tyCon "Ptr") (tyCon "GLchar")
    Sync         -> tyCon "GLsync"
    UInt32       -> tyCon "GLuint"
    Void         -> unit_tycon
    VoidPointer  -> TyApp (tyCon "Ptr") (tyVar "a") -- TODO improve the type variable
    VdpauSurfaceNV -> tyCon "GLuint" -- TODO lookup

lookupType :: String -> TypeMap -> Type
lookupType t _ | t == "cl_context" = tyCon "CLcontext"
               | t == "cl_event"   = tyCon "CLevent"
lookupType t tm = case M.lookup t tm of
    Just (t', ptr) -> (if ptr then TyApp (tyCon "Ptr") else id) $ convertType t'
    Nothing -> error $ "lookupType: Type not found " ++ show t
    where
        convertType t' = case t' of
            Star        -> TyApp (tyCon "Ptr") (tyVar "a")
            GLbitfield  -> tyCon "GLbitfield"
            GLboolean   -> tyCon "GLboolean"
            GLbyte      -> tyCon "GLbyte"
            GLchar      -> tyCon "GLchar"
            GLcharARB   -> tyCon "GLchar"
            GLclampd    -> tyCon "GLclampd"
            GLclampf    -> tyCon "GLclampf"
            GLdouble    -> tyCon "GLdouble"
            GLenum      -> tyCon "GLenum"
--            GLenumWithTrailingComma -- removed from the source
            GLfloat     -> tyCon "GLfloat"
            UnderscoreGLfuncptr -> error "_GLfuncptr"
            GLhalfNV    -> tyCon "GLushort" -- TODO lookup
            GLhandleARB -> tyCon "GLuint" -- TODO lookup
            GLint       -> tyCon "GLint"
            GLint64     -> tyCon "GLint64"
            GLint64EXT  -> tyCon "GLint64"
            GLintptr    -> tyCon "GLintptr"
            GLintptrARB -> tyCon "GLintptr"
            GLshort     -> tyCon "GLshort"
            GLsizei     -> tyCon "GLsizei"
            GLsizeiptr  -> tyCon "GLsizeiptr"
            GLsizeiptrARB -> tyCon "GLsizeiptr"
            GLsync      -> tyCon "GLsync"
            GLubyte     -> tyCon "GLubyte"
            ConstGLubyte -> error "cubyte"
            GLuint      -> tyCon "GLuint"
            GLuint64    -> tyCon "GLuint64"
            GLuint64EXT -> tyCon "GLuint64"
            GLUnurbs    -> error "Unurbs"
            GLUquadric  -> error "Uquadric"
            GLushort    -> tyCon "GLushort"
            GLUtesselator -> error  "tesselator"
            GLvoid      -> TyApp (tyCon "Ptr") (tyVar "a")
            GLvoidStarConst -> tyCon "GLuint" -- TODO lookup ??
            GLvdpauSurfaceNV -> tyCon "GLuint" -- TODO lookup
            GLdebugprocARB -> tyCon "GLuint" -- TODO lookup error "Debug ARB"
            GLdebugprocAMD -> tyCon "GLuint" -- TODO lookup error  "DebugAMD"

-----------------------------------------------------------------------------
