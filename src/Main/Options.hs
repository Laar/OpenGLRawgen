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

    -- * Retrieving the options
    getOptions,
) where

import Data.Either(lefts, rights)
import Data.Maybe(mapMaybe)
import Data.Monoid

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

options :: [OptDescr (Either RawGenFlag RawGenOpt)]
options =
    [ Option ['o'] ["old-comp"]
        (NoArg $ Left RawCompatibility)    "Create backward compatiblity modules"
    , Option [] ["no-vendor"]
        (ReqArg (Right . NoExtension . read) "VENDOR")  "No vendor modules for the specified vendor"
    , Option [] ["no-vendorf"]
        (ReqArg (Right . NoExtensionf ) "FILE")   "No vendor modules from file"
    ]

-- | Config flags used by the generator
data RawGenFlag
    = RawCompatibility -- ^ Create modules for backward compatibility with
    -- previous versions of OpenGLRaw
    deriving (Eq, Ord, Show)

-- | Options that can be parsed
data RawGenOpt
    = NoExtension Extension -- ^ create no modules for the given `Extension`
    | NoExtensionf FilePath -- ^ As `NoExtension` but the `Extension`s are read from file

-- | Parse the options from the commandline into `RawGenOptions`
mkOptions :: ([Either RawGenFlag RawGenOpt], [String]) -> IO RawGenOptions
mkOptions (opts, _) = do
    let flags = lefts  opts
        opts' = rights opts
        nExts = mapMaybe nExt opts'
        nExt (NoExtension e) = Just e
        nExt _               = Nothing

        nExtf (NoExtensionf f) = readFile f >>=
            return . map read . concatMap words . lines
        nExtf _  = return []
    nExtfs <- sequence $ map nExtf opts'
    return $ RawGenOptions flags (nExts ++ concat nExtfs)

-- | Represents the options given to the generator
data RawGenOptions
    = RawGenOptions
    { rgFlags :: [RawGenFlag] -- ^ The given flags.
    , rgNoExtension :: [Extension] -- ^ The `Extension`s that should be dropped
    }

instance Monoid RawGenOptions where
    mappend (RawGenOptions f1 e1) (RawGenOptions f2 e2) = RawGenOptions (f1 ++ f2) (e1 ++ e2)
    mempty = RawGenOptions [] []

-- | Query whether a flag has been given on the commandline.
hasFlag :: RawGenFlag -> RawGenOptions -> Bool
hasFlag f o = f `elem` rgFlags o

-- | Check wheter an `Extension` should be removed
dropExtension :: Extension -> RawGenOptions -> Bool
dropExtension e o = e `elem` rgNoExtension o
