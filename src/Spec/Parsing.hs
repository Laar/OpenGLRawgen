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

import Control.Arrow((***))
--import Control.Monad.State as S

--import Data.Function
import Data.List
import qualified Data.Map as M
import Data.Maybe
import Data.Monoid
import Spec.RawSpec

import Language.Haskell.Exts.Syntax
import Code.Generating.Utils

import Control.Applicative
import Text.ParserCombinators.Parsec hiding
  (many, optional, (<|>), token)

import Text.OpenGL.Api as A
import Text.OpenGL.Spec as S hiding (Value)
import qualified Text.OpenGL.Spec as S

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
        espec  <- enumLines especf >>= parseEnumSpec
        tymap  <- tmLines tymapf >>= return . mkTypeMap
        fspec  <- funLines fspecf >>= return . extractFunctions
        let fspec' = parseFSpec fspec tymap
        return $ mappend espec fspec' --mkRawSpec espec fspec'

-----------------------------------------------------------------------------

-- | Parse the enumeration spec.
parseEnumSpec :: [EnumLine] -> Either ParseError RawSpec -- [(Category, [(String, EnumValue)])]
parseEnumSpec ls =
    let ls' = filter inputFilter ls
    in parse pEnumSpec "EnumLines" ls' -- >>= return . nubSpec

type EP = GenParser EnumLine ()

inputFilter :: EnumLine -> Bool
inputFilter (Start _ _)  = True
inputFilter (Enum _ _ _) = True
inputFilter (Use _ _)    = True
inputFilter _            = False

pEnumSpec :: EP RawSpec -- [(Category, [(String, EnumValue)])]
pEnumSpec = mconcat <$> many pCategory'

-- | Parse a category header and the enums that come with it.
pCategory' :: EP RawSpec
pCategory' = do
    cat <- pCategoryHeader
    vals <- many pGLValue
    return $ categoryRawSpec cat vals

pCategoryHeader :: EP Category
pCategoryHeader =  tokenPrim showValue nextPos testValue
    where showValue = show
          testValue (Start cat _) = Just cat
          testValue _             = Nothing
          nextPos sp  _        _ = incSourceColumn sp 1

pGLValue :: EP (EnumName, EnumValue)
pGLValue = tokenPrim showValue nextPos testValue
    where
        showValue = show
-- TODO : try to find a better way of determining the valuetype of the enum
        -- name in the second doesn't need to be extension scrapped
        testValue (Enum name value _) = Just (wrapName name, partialValue value . valueType $ name)
        testValue (Use ucat name)     = Just (wrapName name, Redirect ucat .  valueType $ name)
        testValue _                   = Nothing
        nextPos sp  _ _ = incSourceColumn sp 1
        partialValue (Hex v _ _)    = Value  v
        partialValue (Deci i)       = Value $ fromIntegral i
        partialValue (Identifier i) = ReUse (wrapName . fromMaybe i . stripPrefix "GL_" $ i)
        valueType name = if isBitfieldName name then tyCon "GLbitfield" else tyCon "GLenum"

-----------------------------------------------------------------------------

-- | Parse (or process) the function as the are supplied by the openGL-api
-- package.
parseFSpec :: [Function] -> TypeMap -> RawSpec
parseFSpec funcs tm =
--    map (\x -> (fst $ head x, map snd x)) -- pull out the categories
--    . groupBy ((==) `on` fst) -- group them by category
--    $ map (convertFunc tm) funcs
    mconcat . map (uncurry categoryRawSpec . (id *** pure))
    $ map (convertFunc tm) funcs

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
    Boolean      -> tyCon "GLboolean"
    BufferOffset -> tyCon "GLsizeiptr"
    ErrorCode    -> tyCon "GLenum" -- TODO lookup
    FramebufferStatus -> tyCon "GLenum" -- lookup
    GLEnum       -> tyCon "GLenum"
    HandleARB    -> tyCon "GLuint" -- lookup
    Int32        -> tyCon "GLint"
    S.List       -> tyCon "GLuint" -- lookup
    S.String     -> TyApp (tyCon "Ptr") (tyCon "GLchar")
    Sync         -> tyCon "GLsync"
    UInt32       -> tyCon "GLuint"
    Void         -> unit_tycon
    VoidPointer  -> TyApp (tyCon "Ptr") (tyVar "a") -- TODO improve the type variable
    VdpauSurfaceNV -> tyCon "GLintptr" -- lookup

-- | Convert the type supplied by openGL-api to a type useable for
-- Language.Haskell.Exts
lookupType :: String -> Passing -> TypeMap -> Type
lookupType t _ _ | t == "cl_context" = tyCon "CLcontext"
                 | t == "cl_event"   = tyCon "CLevent"
lookupType t p tm = case M.lookup t tm of
    Just (t', ptr) -> addPointer (p /= S.Value) . addPointer ptr $ convertType t'
    Nothing -> error $ "lookupType: Type not found " ++ show t
    where
        addPointer :: Bool -> Type -> Type
        addPointer addptr = if addptr then TyApp (tyCon "Ptr") else id
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
            GLhalfNV    -> tyCon "GLushort" -- lookup
            GLhandleARB -> tyCon "GLhandle"--tyCon "GLuint" -- lookup
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
            GLvoid      -> (tyVar "a")
            GLvoidStarConst -> TyApp (tyCon "Ptr") (tyVar "b") -- TODO lookup ??, only used in MultiModeDrawElementsIBM
            GLvdpauSurfaceNV -> tyCon "GLintptr" -- lookup
            GLdebugprocARB -> tyCon "GLdebugprocARB" -- lookup
            GLdebugprocAMD -> tyCon "GLdebugprocAMD" -- lookup

-----------------------------------------------------------------------------
