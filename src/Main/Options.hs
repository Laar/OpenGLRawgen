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
    usage,
    hasFlag,
    dropExtension,

    specFile,
    enumDeprecationsFile, funcDeprecationsFile,
    stripNames, mkExtensionGroups,
    moduleHeader, moduleWarnings,
    outputDir, interfaceDir,
    -- * Retrieving the options
    getOptions,
) where

-----------------------------------------------------------------------------

import Data.Maybe
import System.FilePath((</>))

import System.Console.GetOpt
import System.Environment(getArgs)

import Language.OpenGLRaw.Base

-----------------------------------------------------------------------------

-- | `getOptions` reads and parses the commandline options, it raises an
-- IOError when the options are not correct.
getOptions :: IO RawGenOptions
getOptions = do
    argv <- getArgs
    case getOpt Permute options argv of
          (o,n,[]  ) -> mkOptions (o,n)
          (_,_,errs) -> ioError (userError $ concat errs ++ usage)

usage :: String
usage = usageInfo header options
    where header = "Usage: OpenGLRawgen [OPTION...]"

options :: [OptDescr (RawGenOptions -> IO RawGenOptions)]
options =
    [ Option ['h'] ["help"]
        (flag Help)                "Prints the usage"
    , Option ['v'] ["version"]
        (flag VersionThis)          "Prints the version"
    , Option ['c'] ["old-comp"]
        (flag RawCompatibility)    "Create backward compatiblity modules"
    , Option [] ["no-vendor"]
        (ReqArg ((\v r -> return r{rgNoExtension = v : rgNoExtension r}) . eread) "VENDOR")  "No modules for the specified vendor"
    , Option [] ["no-vendorf"]
        (ReqArg extensionFile "FILE")   "No vendor modules from file"
    , Option ['f'] ["spec"]
        (ReqArg (\f r -> return r{rgSpecFile = Just f}) "FILE") "The gl.spec file to use"
    , Option []    ["edeprs"]
        (ReqArg (\f r -> return r{rgEDeprs = Just f}) "FILE") "The enum deprecation file"
    , Option []    ["fdeprs"]
        (ReqArg (\f r -> return r{rgFDeprs = Just f}) "FILE") "The function deprecation file"
    , Option ['d'] ["dir"]
        (ReqArg (\d r -> return r{rgFilesDir = Just d}) "DIR") "The directory to find the files"
    , Option ['s'] ["strip"]
        (NoArg $ \r -> return r{rgStripName = True, rgEGrouping = False}) "Enables striping of the extension suffixes from names, implies -G"
    , Option ['S'] ["no-strip"]
        (NoArg $ \r -> return r{rgStripName = False}) "Disables striping of the extension suffixes from names"
    , Option ['g'] ["groups"]
        (NoArg $ \r -> return r{rgEGrouping = True}) "Enables the generation of Extension group modules"
    , Option ['G'] ["no-groups"]
        (NoArg $ \r -> return r{rgEGrouping = False}) "Disables the generation of Extension group modules"
    , Option ['o'] ["output"]
        (ReqArg (\d r -> return r{rgOutputDir = d}) "DIR") "The output directory"
    , Option ['w'] ["warning"]
        (ReqArg (\w r -> return r{rgModHeader = Just w}) "MSG") "Module header message"
    , Option [] ["warning-file"]
        (ReqArg (\wf r -> do
            fc <- readFile wf -- TODO: add check that it is present?
            return $ r{rgModHeader = Just fc}) "FILE") "File with the module header message"
    , Option [] ["no-module-warnings"]
        (NoArg $ \r -> return r{rgModWarns = False}) "Disables haskell module warnings"
    ]
    where
        flag :: RawGenFlag -> ArgDescr (RawGenOptions -> IO RawGenOptions)
        flag f = NoArg $ \rgo -> return rgo{rgFlags = f : rgFlags rgo }
        extensionFile f r = readFile f >>=
            (\es -> return $ r{rgNoExtension = es ++ rgNoExtension r}) . map eread . concatMap words . lines
        eread = CE . VendorName
-- | Config flags used by the generator
data RawGenFlag
    = RawCompatibility -- ^ Create modules for backward compatibility with
    -- previous versions of OpenGLRaw
    | VersionThis -- ^ Print the version of the program and exits
    | Help    -- ^ Prints the help and exits
    deriving (Eq, Ord, Show)

-- | Parse the options from the commandline into `RawGenOptions`
mkOptions :: ([RawGenOptions -> IO RawGenOptions], [String]) -> IO RawGenOptions
mkOptions (opts, _) = foldl (>>=) (return defaultOptions) opts

-----------------------------------------------------------------------------

-- | Represents the options given to the generator
data RawGenOptions
    = RawGenOptions
    { rgFlags       :: [RawGenFlag]     -- ^ The given flags.
    , rgNoExtension :: [CompExtension]  -- ^ The `CompExtension`s that should be dropped
    , rgSpecFile    :: Maybe FilePath   -- ^ The location of the spec file.
    , rgEDeprs      :: Maybe FilePath   -- ^ The location of the file with undeprecated enums.
    , rgFDeprs      :: Maybe FilePath   -- ^ The location of the file with undeprecated functions.
    , rgFilesDir    :: Maybe FilePath   -- ^ The location to search for files
    , rgStripName   :: Bool             -- ^ Strip the names of extensions
    , rgEGrouping   :: Bool             -- ^ Adds all the grouping modules for extensions
    , rgModHeader   :: Maybe String     -- ^ An optional header above the module
    , rgModWarns    :: Bool             -- ^ Warning and deprecation texts on modules
    , rgOutputDir   :: FilePath
    }

defaultOptions :: RawGenOptions
defaultOptions
    = RawGenOptions
    { rgFlags       = []
    , rgNoExtension = []
    , rgSpecFile    = Nothing
    , rgEDeprs      = Nothing
    , rgFDeprs      = Nothing
    , rgFilesDir    = Nothing
    , rgStripName   = False
    , rgEGrouping   = True
    , rgModHeader   = Nothing
    , rgModWarns    = True
    , rgOutputDir   = ""
    }

-----------------------------------------------------------------------------

-- | Query whether a flag has been given on the commandline.
hasFlag :: RawGenFlag -> RawGenOptions -> Bool
hasFlag f o = f `elem` rgFlags o

-- | Check wheter an `Extension` should be removed
dropExtension :: CompExtension -> RawGenOptions -> Bool
dropExtension e o = e `elem` rgNoExtension o

specFile,
    enumDeprecationsFile, funcDeprecationsFile :: RawGenOptions -> FilePath
specFile      = getFile rgSpecFile   "gl.xml"

enumDeprecationsFile = getFile rgEDeprs "enumDeprecations"
funcDeprecationsFile = getFile rgFDeprs "functionDeprecations"

getFile :: (RawGenOptions -> Maybe FilePath) -> FilePath -> RawGenOptions -> FilePath
getFile directGet name rgo =
    fromMaybe (maybe id (</>) (rgFilesDir rgo) $ name) $ directGet rgo

stripNames :: RawGenOptions -> Bool
stripNames = rgStripName

mkExtensionGroups :: RawGenOptions -> Bool
mkExtensionGroups = rgEGrouping

moduleHeader :: RawGenOptions -> Maybe String
moduleHeader = rgModHeader

moduleWarnings :: RawGenOptions -> Bool
moduleWarnings = rgModWarns

outputDir :: RawGenOptions -> FilePath
outputDir = rgOutputDir

interfaceDir :: RawGenOptions -> FilePath
interfaceDir rgo =  outputDir rgo </> "interface"

-----------------------------------------------------------------------------
