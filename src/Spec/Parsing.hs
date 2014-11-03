{-# LANGUAGE TypeFamilies, FlexibleContexts #-}
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
-- | The conversion of the `P.Registry` from opengl-xmlspec to the used
-- datatypes of OpenGLRawgen.
--
-----------------------------------------------------------------------------

module Spec.Parsing (
    parseSpecs,
) where

-----------------------------------------------------------------------------

import qualified Data.Foldable as F
import Data.Function
import Data.List
import qualified Data.Map as M
import Data.Maybe(fromMaybe, isNothing)
import Data.Monoid
import qualified Data.Set as S

import qualified Text.OpenGL as P

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

-----------------------------------------------------------------------------
-- ValueMap generating
-- 
-- The creation of the valuemap is straight forward. Each defined enumeration
-- constant and each command (function) is converted to an EnumValue or
-- FuncValue for the ValueMap.

-- | Create the total `ValueMap` from the registry
createValMap :: P.Registry -> ValueMap
createValMap reg =
    F.foldMap enumsMap (P.regEnums reg)
    `mappend`
    F.foldMap commandsMap (P.regCommands reg)
  where
    commandsMap = F.foldMap funcVal . P.commands

-- | The `ValueMap` for the enumeration constants.
enumsMap :: P.Enums -> ValueMap
enumsMap ens = F.foldMap mkEnum $ P.enums ens
  where
    ty = case P.enumsType ens of
        Just "bitfield" -> BitfieldValue
        _               -> EnumValue
    mkEnum (Right _) = mempty
    mkEnum (Left  e) = enumVal ty e

-- | The `ValueMap` for a single enumeration constant. This needs the type of
-- it, as it is stored per enum set.
enumVal :: ValueType -> P.GLEnum -> ValueMap
enumVal ty e
    = addValue 
        (mkEnumName $ P.enumName e) 
        (Value (P.enumValue e) ty)
        mempty

-- | The `ValueMap` for a single command.
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

-----------------------------------------------------------------------------
-- LocationMap generating
--
-- The conversion from the P.Registry format is not that straight forward.
-- There are two points that make the conversion difficult
-- 
--  - The profiles, a feature or extension is described by a set of enums and
--    functions, where some additions or removals depend on the profile. The
--    tricky part comes from the posibility to remove functionality. If the
--    processing is not done right the enum or function to remove might not
--    yet be added. Thus the processing needs to first handle the profile
--    independent parts and then the profile dependent parts.
--  - The second difficulty stems from the incremental definition of the
--    OpenGL versions especially in combination with the profiles. Version
--    1.1 is defined as 1.0 with some additions (and later also removals).
--    But again, the additions and removals could depend on the used profile.

createLocMap :: P.Registry -> LocationMap
createLocMap reg =
    F.foldMap extensionLocs (P.regExtensions reg)
    `mappend`
    versionLocs (P.regFeatures reg)

extensionLocs :: P.Extension -> LocationMap
extensionLocs ext = case P.extensionSupported ext of
    Nothing -> mempty
    Just s ->
        if s `P.supports` P.GL
         then snd $ apiPartLocMap ext mempty
         else mempty

-- | Creates the `LocationMap` for all OpenGL versions.
versionLocs :: S.Set P.Feature -> LocationMap
versionLocs featureSet =
    let features
            = partitionBy P.featureApi $ S.toList featureSet
        partitionBy :: Ord a => (b -> a) -> [b] -> [[b]]
        partitionBy f = groupBy ((==) `on` f) . sortBy (compare `on` f)
        -- | Subprocessor for a specific `P.ApiReference` (e.g. OpenGL or
        --  OpenGL ES).
        versionApi :: [P.Feature] -> LocationMap
        versionApi feats@(f:_) | P.featureApi f == P.GL =
            let feats' = sortBy (compare `on` P.featureNumber) $ feats
                (_, locs) = mapAccumL (flip apiPartLocMap) mempty feats'
            in mconcat locs
        versionApi _ = mempty
    in F.foldMap versionApi features

-- Two short hands to keep the type signatures readable
type IE = P.InterfaceElement
type Prof = P.ProfileName
-- And the building type,
type ProfileBuild =
    ( S.Set IE -- The Interface elements whitout a specific profile
    , M.Map Prof (S.Set IE)) -- The Interface elements for a specific profile


-- | Builds the `LocationMap` for an `ApiPart`. This supports both the one
-- shot building of `P.Extension`s as the incremental building of 
-- `P.Feature`s. For the latter the `ProfileBuild`s are used to keep track of
-- the enums and functions that are defined so far.
apiPartLocMap :: (ApiPart p, Ord (ElemContainer p)) -- The ord is needed for travis' ghc
    => p -> ProfileBuild -> (ProfileBuild, LocationMap)
apiPartLocMap feat profBuild =
    let (reqGeneric, reqProfile) = S.partition (isNothing . profileName)
            . S.filter (`isOfApi` P.GL)
            $ requires feat
        (remGeneric, remProfile) = S.partition (isNothing . profileName)
            . S.filter (`isOfApi` P.GL)
            $ removes feat
        flipFoldr f = flip (F.foldr' f)
        profBuild'
            -- See the note on the difficulties of building the LocationMap.
            = addCore
            . flipFoldr (addProf False)    remProfile
            . flipFoldr (addProf True)     reqProfile
            . flipFoldr (addGeneric False) remGeneric
            . flipFoldr (addGeneric True)  reqGeneric
            $ profBuild
        -- | Sometimes a non default profile is added without any changes to
        -- the core profile. Yet when there are profiles the core profile acts
        -- as the default one. Thus it needs to be added when there are other
        -- profiles and it has not yet been created.
        addCore pb@(gen, profs) = if M.null profs || M.member (P.ProfileName "core") profs
            then pb
            else (gen, M.insert (P.ProfileName "core") gen profs)
        locMap = defineLocations (category feat) profBuild'
    in (profBuild', locMap)

-- Helper functions to update the `ProfileBuild`

addGeneric :: ElementContainer c => Bool -> c -> ProfileBuild -> ProfileBuild
addGeneric addRem element p = F.foldr' (updateNonProfile addRem) p
                            $ elements element
addProf :: ElementContainer c => Bool -> c -> ProfileBuild -> ProfileBuild
addProf addRem element p = F.foldr' (updateProfile addRem prof) p
                         $ elements element
    where prof = fromMaybe (error "No profile") $ profileName element

-- | Adds or removes an `IE` which has no profile. To keep all the profiles
-- consistent it needs to update both the generic interface elements as the
-- ones for each profile.
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

-- | Make the `LocationMap` from the `ProfileBuild`.
defineLocations :: (Profile -> Category) -> ProfileBuild -> LocationMap
defineLocations f (gen, profs) =
    if M.null profs
     then mkLocMap (f DefaultProfile) gen
     else F.fold $ M.mapWithKey (\p ies -> mkLocMap (mkCat p) ies) profs
  where
    mkCat :: Prof -> Category
    mkCat (P.ProfileName pn) = f $ case pn of
        "core"  -> DefaultProfile
        _       -> ProfileName pn
    mkLocMap :: Category -> S.Set IE -> LocationMap
    mkLocMap c = F.foldMap (ieMap c . P.ieElementType)
    ieMap :: Category -> P.ElementType -> LocationMap
    ieMap c ie = case ie of
        P.IEnum     eName -> addLocation c (mkEnumName eName) mempty
        P.ICommand  cName -> addLocation c (mkFuncName cName) mempty
        _                 -> mempty

-- Helper classes to generalize P.Feature and P.Extension, as they are in
-- essence a group of remove and require sets.

class ElementContainer (ElemContainer p) => ApiPart p where
    type ElemContainer p :: *
    -- The required elements
    requires :: p -> S.Set (ElemContainer p)
    -- The removed elements
    removes  :: p -> S.Set (ElemContainer p)
    -- The category this `ApiPart` represents
    category  :: p -> Profile -> Category
instance ApiPart P.Feature where
    type ElemContainer P.Feature = P.FeatureElement
    requires = P.featureRequires
    removes  = P.featureRemoves
    category f = case P.featureNumber f of
        (ma, mi) -> Version ma mi
instance ApiPart P.Extension where
    type ElemContainer P.Extension = P.ExtensionElement
    requires = P.extensionRequires
    removes = P.extensionRemoves
    category e = case P.decomposeExtensionToken $ P.extensionName e of
        Nothing -> error $ "Non decomposible extension token" ++ show (P.extensionName e)
        Just (vn,name) ->
            Extension vend name
          where vend = case vn of P.VendorName n -> Vendor n

class ElementContainer e where
    -- | The set of `P.InterfaceElement`s that this container holds
    elements    :: e -> S.Set P.InterfaceElement
    -- | The `P.ProfileName` for which this `ElemContainer` is relevant.
    profileName :: e -> Maybe P.ProfileName
    -- Check if the element container supports the api, as some elements might
    -- not be applicable for all api-s.
    isOfApi     :: e -> P.ApiReference -> Bool
instance ElementContainer P.FeatureElement where
    elements    = P.feElements
    profileName = P.feProfileName
    isOfApi _ _ = True
instance ElementContainer P.ExtensionElement where
    elements    = P.eeElements
    profileName = P.eeProfileName
    isOfApi ee api = case P.eeApi ee of
        Nothing -> True
        Just a  -> a == api

-----------------------------------------------------------------------------
-- Type Conversion

convertType :: P.CType -> FType
convertType ct = case ct of
    P.Struct n      -> convertStruct n
    P.CConst t      -> convertType t
    P.Ptr    t      -> case convertType t of
        UnitTCon    -> TPtr TVar
        t'          -> TPtr t'
    P.BaseType bt   -> convertBaseType bt
    P.AliasType n   -> convertAliasType n
    P.ArrayOf t _   -> TPtr $ convertType t

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
    _                   -> error $ unlines
        [ "Unknown alias type " ++ n
        , "Currently the translation of alias types is hardcoded,"
        , "please add the alias type to 'convertAliasType'"
        ]

-----------------------------------------------------------------------------
