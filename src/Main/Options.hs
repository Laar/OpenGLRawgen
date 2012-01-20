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
        (ReqArg ((\v r -> return r{rgNoExtension = v : rgNoExtension r}) . read) "VENDOR")  "No vendor modules for the specified vendor"
    , Option [] ["no-vendorf"]
        (ReqArg extensionFile "FILE")   "No vendor modules from file"
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
    { rgFlags :: [RawGenFlag] -- ^ The given flags.
    , rgNoExtension :: [Extension] -- ^ The `Extension`s that should be dropped
    }

defaultOptions :: RawGenOptions
defaultOptions
    = RawGenOptions
    { rgFlags = []
    , rgNoExtension = []
    }

-- | Query whether a flag has been given on the commandline.
hasFlag :: RawGenFlag -> RawGenOptions -> Bool
hasFlag f o = f `elem` rgFlags o

-- | Check wheter an `Extension` should be removed
dropExtension :: Extension -> RawGenOptions -> Bool
dropExtension e o = e `elem` rgNoExtension o
