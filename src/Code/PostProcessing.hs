-----------------------------------------------------------------------------
--
-- Module      :  Code.PostProcessing
-- Copyright   :  (c) 2013 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | Post processing of generated sources.
--
-----------------------------------------------------------------------------
module Code.PostProcessing (
    postProcessModule
) where

-----------------------------------------------------------------------------

import Main.Monad
import Main.Options

-----------------------------------------------------------------------------

postProcessModule :: String -> RawGen String
postProcessModule = addModuleHeader . replaceCallConv "CALLCONV"

-----------------------------------------------------------------------------

-- | Replace every occurence of a certain calling convention by the given
-- string.
replaceCallConv
    :: String -- The replacing calling convention
    -> String -- The source of the module
    -> String
replaceCallConv r = go
    where
        go []                               = []
        go ('s':'t':'d':'c':'a':'l':'l':xs) = r ++ go xs
        go (x                          :xs) = x : go xs

-- | Adds a header to all modules.
addModuleHeader :: String -> RawGen String
addModuleHeader src = do
    hdr <- asksOptions moduleHeader
    return $ maybe src addHeader hdr
    where
        addHeader hdr = go src
          where go [] = hdr
                go ('m':'o':'d':'u':'l':'e':' ':xs) = hdr ++ "module " ++ xs
                go (x                          :xs) = x : go xs

-----------------------------------------------------------------------------
