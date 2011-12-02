-----------------------------------------------------------------------------
--
-- Module      :  FuncSpec.Parsing
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

module FuncSpec.Parsing (
    parseFSpec, parseFSpecFromFiles,
    addReuses,
) where

import Data.Function
import qualified Data.Map as M
import Data.List
import FuncSpec.Types

import Language.Haskell.Exts.Syntax
import Code.Utils

import Control.Applicative
import Text.ParserCombinators.Parsec hiding
  (many, optional, (<|>), token)

import Text.OpenGL.Api as A
import Text.OpenGL.Spec as S

-----------------------------------------------------------------------------

parseFSpecFromFiles :: FilePath -> FilePath -> IO (Either ParseError FSpec)
parseFSpecFromFiles fspath tmpath = do
    tm <- readFile tmpath
    fs <- readFile fspath
    return $ tmLines tm >>= \tml -> funLines fs >>= \fl -> -- Yeah, the Either e monad
                Right $ parseFSpec (extractFunctions fl) (mkTypeMap tml)

parseFSpec :: [Function] -> TypeMap -> FSpec
parseFSpec funcs tm = FSpec . M.fromList
    . map (\x -> (fst $ head x, map snd x)) -- pull out the categories
    . groupBy ((==) `on` fst) -- group em by category
    $ map (convertFunc tm) funcs

convertFunc :: TypeMap -> Function -> (Category, RawFunc)
convertFunc tm rf = (funCategory rf, RawFunc name ty)
    where
        name = funName rf
        ty   = foldr (-->>)
            (convertRetType $ funReturnType rf)
            (map paramToType $ funParameters rf)
        paramToType (Parameter _ t _ _) = lookupType t tm

-----------------------------------------------------------------------------

addReuses :: String -> FSpec -> FSpec
addReuses r s = case pReuse r of
    Left e -> error $ "addReuses: parsing reuses failed with: " ++ show e
    Right reuses -> foldr addReuse s reuses
    where
        addReuse :: (Category, [Category]) -> FSpec -> FSpec
        addReuse (tc, scs) (FSpec spec') =
            let funcs = concat . M.elems
                    . M.mapWithKey (\c f -> map (ReuseFunc c . funcName) f)
                    . M.filterWithKey (\k _ -> k `elem` scs)
                    $ spec'
            in FSpec $ M.adjust (funcs ++) tc spec'

-----------------------------------------------------------------------------

pReuse :: String -> Either ParseError [(Category, [Category])]
pReuse = parse (many pReuseLine <* eof) "reuse"

type P = GenParser Char ()

blanks :: P String
blanks = many (oneOf " \t")
eol :: P ()
eol = () <$ char '\n'

pReuseLine :: P (Category, [Category])
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
