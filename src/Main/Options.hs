-----------------------------------------------------------------------------
--
-- Module      :  Main.Options
-- Copyright   :  (c) 2012 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | There are several options that can be used to change the way the spec
-- is generated. These Commandline options are defined here.
--
-----------------------------------------------------------------------------

module Main.Options (
    -- * The options, and the possible flags
    RawGenOptions,
    RawGenFlag(..),
    -- ** Queries the set of options for certain values.
    hasFlag,
    dropExtension,

    enumextFile, glFile, tmFile,
    freuseFile, ereuseFile,
    stripNames, mkExtensionGroups,
    -- * Retrieving the options
    getOptions,
) where

import Data.Maybe
import System.FilePath((</>))

import Text.OpenGL.Spec(Extension)

import System.Console.GetOpt
import System.Environment(getArgs)


-----------------------------------------------------------------------------

-- | `getOptions` reads and parses the commandline options, it raises an
-- IOError when the options are not correct.
getOptions :: IO RawGenOptions
getOptions = do
    argv <- getArgs
    case getOpt Permute options argv of
          (o,n,[]  ) -> mkOptions (o,n)
          (_,_,errs) -> ioError (userError $ concat errs ++ usageInfo header options)
      where header = "Usage: OpenGLRawgen [OPTION...]"

options :: [OptDescr (RawGenOptions -> IO RawGenOptions)]
options =
    [ Option ['o'] ["old-comp"]
        (flag RawCompatibility)    "Create backward compatiblity modules"
    , Option [] ["no-vendor"]
        (ReqArg ((\v r -> return r{rgNoExtension = v : rgNoExtension r}) . read) "VENDOR")  "No modules for the specified vendor"
    , Option [] ["no-vendorf"]
        (ReqArg extensionFile "FILE")   "No vendor modules from file"
    , Option ['e'] ["enumext"]
        (ReqArg (\f r -> return r{rgEnum = Just f}) "FILE") "The enumext.spec file to use"
    , Option ['g'] ["gl"]
        (ReqArg (\f r -> return r{rgGL = Just f}) "FILE") "The gl.spec file to use"
    , Option ['t'] ["tm"]
        (ReqArg (\f r -> return r{rgTM = Just f}) "FILE") "The gl.tm file to use"
    , Option []    ["freuses"]
        (ReqArg (\f r -> return r{rgFReuse = Just f}) "FILE") "The function reuse file"
    , Option []    ["ereuses"]
        (ReqArg (\f r -> return r{rgFReuse = Just f}) "FILE") "The enum reuse file"
    , Option ['d'] ["dir"]
        (ReqArg (\d r -> return r{rgFilesDir = Just d}) "DIR") "The directory to find the files"
    , Option ['s'] ["strip"]
        (NoArg $ \r -> return r{rgStripName = True, rgEGrouping = False}) "Enables striping of the extension suffixes from names, implies -G"
    , Option ['S'] ["no-strip"]
        (NoArg $ \r -> return r{rgStripName = False}) "Disables striping of the extension suffixes from names"
    , Option ['g'] ["groups"]
        (NoArg $ \r -> return r{rgEGrouping = True}) "Disables the generation of Extension group modules"
    , Option ['G'] ["no-groups"]
        (NoArg $ \r -> return r{rgEGrouping = False}) "Disables the generation of Extension group modules"
    ]
    where
        flag :: RawGenFlag -> ArgDescr (RawGenOptions -> IO RawGenOptions)
        flag f = NoArg $ \rgo -> return rgo{rgFlags = f : rgFlags rgo }
        extensionFile f = \r -> readFile f >>=
            (\es -> return $ r{rgNoExtension = es ++ rgNoExtension r}) . map read . concatMap words . lines

-- | Config flags used by the generator
data RawGenFlag
    = RawCompatibility -- ^ Create modules for backward compatibility with
    -- previous versions of OpenGLRaw
    deriving (Eq, Ord, Show)

-- | Parse the options from the commandline into `RawGenOptions`
mkOptions :: ([RawGenOptions -> IO RawGenOptions], [String]) -> IO RawGenOptions
mkOptions (opts, _) = foldl (>>=) (return defaultOptions) opts

-- | Represents the options given to the generator
data RawGenOptions
    = RawGenOptions
    { rgFlags       :: [RawGenFlag]     -- ^ The given flags.
    , rgNoExtension :: [Extension]      -- ^ The `Extension`s that should be dropped
    , rgEnum        :: Maybe FilePath   -- ^ The location of the enumext.spec file.
    , rgGL          :: Maybe FilePath   -- ^ The location of the gl.spec file.
    , rgTM          :: Maybe FilePath   -- ^ The location of the gl.tm file.
    , rgEReuse      :: Maybe FilePath   -- ^ The location of the enum reuse file.
    , rgFReuse      :: Maybe FilePath   -- ^ The location of the function reuse file.
    , rgFilesDir    :: Maybe FilePath   -- ^ The location to search for files
    , rgStripName   :: Bool             -- ^ Strip the names of extensions
    , rgEGrouping   :: Bool             -- ^ Adds all the grouping modules for extensions
    }

defaultOptions :: RawGenOptions
defaultOptions
    = RawGenOptions
    { rgFlags       = []
    , rgNoExtension = []
    , rgEnum        = Nothing
    , rgGL          = Nothing
    , rgTM          = Nothing
    , rgEReuse      = Nothing
    , rgFReuse      = Nothing
    , rgFilesDir    = Nothing
    , rgStripName   = False
    , rgEGrouping   = True
    }

-- | Query whether a flag has been given on the commandline.
hasFlag :: RawGenFlag -> RawGenOptions -> Bool
hasFlag f o = f `elem` rgFlags o

-- | Check wheter an `Extension` should be removed
dropExtension :: Extension -> RawGenOptions -> Bool
dropExtension e o = e `elem` rgNoExtension o

enumextFile, glFile, tmFile, freuseFile, ereuseFile :: RawGenOptions -> FilePath
enumextFile = getFile rgEnum "enumext.spec"
glFile      = getFile rgGL   "gl.spec"
tmFile      = getFile rgTM   "gl.tm"

freuseFile = getFile rgEReuse "reuseenums"
ereuseFile = getFile rgFReuse "reusefuncs"

getFile :: (RawGenOptions -> Maybe FilePath) -> FilePath -> RawGenOptions -> FilePath
getFile directGet name rgo =
    fromMaybe (maybe id (</>) (rgFilesDir rgo) $ name) $ directGet rgo

stripNames :: RawGenOptions -> Bool
stripNames = rgStripName

mkExtensionGroups :: RawGenOptions -> Bool
mkExtensionGroups = rgEGrouping
