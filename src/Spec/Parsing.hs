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


import Control.Monad.Writer

import qualified Data.Foldable as F
import Data.Function
import Data.List(stripPrefix, groupBy, sortBy)
import qualified Data.Map as M
import Data.Maybe(fromMaybe, isNothing)
import qualified Data.Set as S

import qualified Text.OpenGL as P

import Text.Parsec hiding
  (many, optional, (<|>), token)

import Main.Options
import Main.Monad
import Spec.RawSpec

import Language.OpenGLRaw.Base

-----------------------------------------------------------------------------

-- | Parse the needed OpenGL spec files and generate a 'RawSpec' based on
-- them.
parseSpecs :: RawGenIO (LocationMap, ValueMap)
parseSpecs = do
    specLocation <- asksOptions specFile
    registry <- liftEither =<< (liftIO $ P.readRegistry specLocation True)
    let lm = createLocMap registry
        vm = createValMap registry
    return (lm, vm)

createLocMap :: P.Registry -> LocationMap
createLocMap reg =
    F.foldMap extensionLocs (P.regExtensions reg)
    `mappend`
--    addLocation (CompVersion 1 0 False) (mkEnumName $ P.EnumName "GL_ZERO") mempty
    featureLocs (P.regFeatures reg)

createValMap :: P.Registry -> ValueMap
createValMap reg =
    F.foldMap enumsMap (P.regEnums reg)
    `mappend`
    F.foldMap commandsMap (P.regCommands reg)
  where
    commandsMap = F.foldMap funcVal . P.commands

enumsMap :: P.Enums -> ValueMap
enumsMap ens = F.foldMap mkEnum $ P.enums ens
  where
    ty = case P.enumsType ens of
        Just "bitfield" -> BitfieldValue
        _               -> EnumValue
    mkEnum (Right _) = mempty
    mkEnum (Left  e) = enumVal ty e

enumVal :: ValueType -> P.GLEnum -> ValueMap
enumVal ty e
    = addValue 
        (mkEnumName $ P.enumName e) 
        (Value (P.enumValue e) ty)
        mempty

funcVal :: P.Command -> ValueMap
funcVal com 
    = addValue 
        (mkFuncName $ P.commandName com)
        (RawFunc retType argTypes alias)
        mempty
  where
    retType = convertType . P.returnType $ P.commandReturnType com
    argTypes = map (convertType . P.paramType) $ P.commandParams com
    alias = mkFuncName `fmap` P.commandAlias com

mkEnumName :: P.EnumName -> EnumName
mkEnumName = wrapName . tryStrip "GL_" . (\(P.EnumName n') -> n')

mkFuncName :: P.CommandName -> FuncName
mkFuncName = wrapName . tryStrip "gl" . (\(P.CommandName n) -> n)

tryStrip :: String -> String -> String
tryStrip pre n = fromMaybe n $ pre `stripPrefix` n

convertType :: P.CType -> FType
convertType ct = case ct of
    P.Struct n      -> convertStruct n
    P.CConst t      -> convertType t
    P.Ptr    t      -> case convertType t of
        UnitTCon    -> TPtr TVar
        t'          -> TPtr t'
    P.BaseType bt   -> convertBaseType bt
    P.AliasType n   -> convertAliasType n

convertStruct :: String -> FType
convertStruct n = case n of
    "_cl_context"   -> TCon "CLcontext"
    "_cl_event"     -> TCon "CLevent"
    _               -> error $ "struct " ++ n
convertBaseType :: P.BaseType -> FType
convertBaseType bt = case bt of
    P.Void  -> UnitTCon
    _       -> error $ show bt
convertAliasType :: String -> FType
convertAliasType n = case n of
    "GLboolean"         -> TCon "GLboolean"
    "GLbyte"            -> TCon "GLbyte"
    "GLubyte"           -> TCon "GLubyte"
    "GLchar"            -> TCon "GLchar"
    "GLcharARB"         -> TCon "GLchar"
    "GLshort"           -> TCon "GLshort"
    "GLushort"          -> TCon "GLushort"
    "GLint"             -> TCon "GLint"
    "GLuint"            -> TCon "GLuint"
    "GLfixed"           -> TCon "GLfixed"
    "GLint64"           -> TCon "GLint64"
    "GLint64EXT"        -> TCon "GLint64"
    "GLuint64"          -> TCon "GLuint64"
    "GLuint64EXT"       -> TCon "GLuint64"
    "GLsizei"           -> TCon "GLsizei"
    "GLenum"            -> TCon "GLenum"
    "GLintptr"          -> TCon "GLintptr"
    "GLintptrARB"       -> TCon "GLintptr"
    "GLsizeiptr"        -> TCon "GLsizeiptr"
    "GLsizeiptrARB"     -> TCon "GLsizeiptr"
    "GLbitfield"        -> TCon "GLbitfield"
    "GLsync"            -> TCon "GLsync"
    "GLhalf"            -> TCon "GLhalf"
    "GLhalfNV"          -> TCon "GLhalf"
    "GLfloat"           -> TCon "GLfloat"
    "GLclampf"          -> TCon "GLclampf"
    "GLclampx"          -> TCon "GLclampx"
    "GLdouble"          -> TCon "GLdouble"
    "GLclampd"          -> TCon "GLclampd"
    "GLvoid"            -> UnitTCon
    "GLDEBUGPROC"       -> TCon "GLdebugproc"
    "GLDEBUGPROCAMD"    -> TCon "GLdebugproc"
    "GLDEBUGPROCARB"    -> TCon "GLdebugproc"
    "GLDEBUGPROCKHR"    -> TCon "GLdebugproc"
    "GLhandleARB"       -> TCon "GLhandle"
    "GLvdpauSurfaceNV"  -> TCon "GLvdpauSurface"
    _                   -> error $ "alias type " ++ n
-- TODO: filter OpenGL ES

extensionLocs :: P.Extension -> LocationMap
extensionLocs ext = case P.decomposeExtensionToken $ P.extensionName ext of
    Nothing -> mempty
    Just (vn, name) ->
        F.foldMap addExtensionElem $ P.extensionRequires ext
      where
        cat = CompExtension (CE vn) name False --TODO: just to get it working
        addExtensionElem = F.foldMap addInterfaceElem . P.eeElements
        addInterfaceElem ie = case P.ieElementType ie of
            P.IEnum    eName -> addLocation cat (mkEnumName eName) mempty
            P.ICommand cName -> addLocation cat (mkFuncName cName) mempty
            _       -> mempty --TODO

featureLocs :: S.Set P.Feature -> LocationMap
featureLocs featureSet =
    let features
            = partitionBy P.featureApi $ S.toList featureSet
    in F.foldMap featureApi features

partitionBy :: Ord a => (b -> a) -> [b] -> [[b]]
partitionBy f = groupBy ((==) `on` f) . sortBy (compare `on` f)

type IE = P.InterfaceElement
type Prof = P.ProfileName
type ProfileBuild = (S.Set IE, M.Map Prof (S.Set IE))

type W = Writer LocationMap

featureApi :: [P.Feature] -> LocationMap
featureApi features@(f:_) | P.featureApi f == P.GL = -- TODO: the generator can only handle OpenGL
    let features' = sortBy (compare `on` P.featureNumber) $ features
    in execWriter (F.foldlM (flip featureVersion) mempty features')
featureApi _ = mempty

featureVersion :: P.Feature -> ProfileBuild -> W ProfileBuild
featureVersion feat profBuild = do
    let (reqGeneric, reqProfile) = S.partition (isNothing . P.feProfileName)
            $ P.featureRequires feat
        (remGeneric, remProfile) = S.partition (isNothing . P.feProfileName)
            $ P.featureRemoves feat
        addGeneric :: Bool -> P.FeatureElement -> ProfileBuild -> ProfileBuild
        addGeneric addRem element p = F.foldr' (updateNonProfile addRem) p
                                    $ P.feElements element
        addProf :: Bool -> P.FeatureElement -> ProfileBuild -> ProfileBuild
        addProf addRem element p = F.foldr' (updateProfile addRem prof) p
                                 $ P.feElements element
            where prof = fromMaybe (error "No profile") $ P.feProfileName element
        flipFoldr f = flip (F.foldr' f)
        profBuild'
            = addCore
            . flipFoldr (addProf False)    remProfile
            . flipFoldr (addProf True)     reqProfile
            . flipFoldr (addGeneric False) remGeneric
            . flipFoldr (addGeneric True)  reqGeneric
            $ profBuild
        -- | This function introduces the core profile for OpenGL 3.0, this is
        -- needed as the compatibility profile is introduced at this version.
        -- But the first require or remove for core is only at 3.2 thus to get
        -- the core profile at version 3.0 it needs to be created explicitly.
        addCore pb@(gen, profs) = if P.featureNumber feat /= (3,0)
            then pb
            else (gen, M.insert (P.ProfileName "core") gen profs)
    defineLocations (P.featureNumber feat) profBuild'
    return profBuild'

updateNonProfile :: Bool -> IE -> ProfileBuild -> ProfileBuild
updateNonProfile addRem ie (gen, profs) =
    let update = (if addRem then S.insert else S.delete) ie
    in (update gen, fmap update profs)

updateProfile :: Bool -> Prof -> IE -> ProfileBuild -> ProfileBuild
updateProfile addRem prof ie (gen, profs) =
    let updateVal :: S.Set IE -> S.Set IE
        updateVal = (if addRem then S.insert else S.delete) ie
        update :: Maybe (S.Set IE) -> Maybe (S.Set IE)
        update = Just . updateVal . fromMaybe gen
    in (gen, M.alter update prof profs)

defineLocations :: (Int, Int) -> ProfileBuild -> W ()
defineLocations (ma, mi) (gen, profs) =
    if M.null profs
     then mkLocMap (CompVersion ma mi False) gen
     else F.sequence_ $ M.mapWithKey (\p ies -> mkLocMap (mkCat p) ies) profs
  where
    mkCat :: Prof -> Category
    mkCat (P.ProfileName pn) = CompVersion ma mi $ pn == "compatibility"
    mkLocMap :: Category -> S.Set IE -> W ()
    mkLocMap c = tell . F.foldMap (ieMap c . P.ieElementType)
    ieMap :: Category -> P.ElementType -> LocationMap
    ieMap c ie = case ie of
        P.IEnum     eName -> addLocation c (mkEnumName eName) mempty
        P.ICommand  cName -> addLocation c (mkFuncName cName) mempty
        _                 -> mempty
{-
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
-}
-- | Parse the reuses from a string.
parseReuses :: String -> Either ParseError [(Category, [Category])]
parseReuses _ = return []
{-
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

-}
parseDeprecations :: SpecValue sv
    => String -> Either ParseError [(ValueName sv, DeprecationRange)]
parseDeprecations _ = return []
{-
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
-}
-----------------------------------------------------------------------------
