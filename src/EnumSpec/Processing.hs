-----------------------------------------------------------------------------
--
-- Module      :  EnumSpec.Processing
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

module EnumSpec.Processing (
    processEnums,
    getCats,

    removeCategory,

    findRedirect,
) where

import Control.Monad

import Data.List
import qualified Data.Map as M
import Data.Maybe
import Text.OpenGL.Spec

import EnumSpec.Types

-- TODO, global check if the Identifiers are correctly changed

getCats :: EnumSpec -> [Category]
getCats = M.keys . getMapping

-- | Does all the post-processing over the parsed EnumSpec to make it usable
processEnums :: EnumSpec -> EnumSpec
processEnums = resolveBits . resolveCats

-- | Remove a category
removeCategory :: Category -> EnumSpec -> EnumSpec
removeCategory cat spec =
    let spec' = resolveRedirect (== cat) spec
    in ESpec . M.delete cat $ getMapping spec'

-- | Find a redirection
findRedirect :: Category -> String -> EnumSpec -> Maybe EnumValue
findRedirect c e (ESpec spec) = M.lookup c spec >>= \vals -> find ((==) e . getEName) vals

-- | Find a value and look in both the non deprecated and the deprecated category
findDRedirect :: Category -> String -> EnumSpec -> Maybe EnumValue
findDRedirect (Version ma mi _) n s =
    findRedirect (Version ma mi False) n s  `mplus` findRedirect (Version ma mi True) n s
findDRedirect (Extension x xn _) n s =
    findRedirect (Extension x xn True) n s  `mplus` findRedirect (Extension x xn False) n s
findDRedirect c n s = findRedirect c n s

-- | Step through all the redirections to find the base value
findBaseRedirect :: Category -> String -> EnumSpec -> Maybe EnumValue
findBaseRedirect c n s = case findDRedirect c n s of
    Just (Redirect c' n' _) -> findBaseRedirect c' n' s
    Just e                  -> Just e
    Nothing                 -> Nothing

-- TODO improve this, it looks like a tangled spaghetti
-- | Resolve the undetermined categories, that is the \"GetPName\" and other
-- wrong categories, and resolve those of identifiers
resolveCats :: EnumSpec -> EnumSpec
resolveCats s = ESpec . M.mapWithKey (\k -> map (resolve k)) . getMapping $ s
    where
        resolve _ (Redirect c n b)
            | c `elem` replaces = Redirect (Version 1 1 (isIn11 n)) n b
            | otherwise =  Redirect c n b
        resolve c (EnumValue n (EIdent v _) b)
            = case findRedirect c v s of
                Just _ -> EnumValue n (EIdent v Nothing) b
                Nothing -> case lookupGlobal v s of
                    Just (c',_) -> EnumValue n (EIdent v $ Just c') b
                    Nothing -> error $ "replaceCats: Couldn't resolve " ++ show n
        resolve _ e@_              = e
        replaces = map Name ["GetPName", "DrawBufferMode",
            "BlendingFactorDest", "TextureGenParameter"]
                  ++ [Version 1 1 False] -- the normal 1 is sometimes used where the deprecated should have
        isIn11 n = isJust $ findRedirect (Version 1 1 True) n s

-- | Resolve the undetermined GLbitfield\/GLenum of redirections
resolveBits :: EnumSpec -> EnumSpec
resolveBits s@(ESpec spec) = ESpec $ M.map (map resolve) spec
    where
        resolve (Redirect c n _) = case findBaseRedirect c n s of
            Just (EnumValue _ _ b) -> Redirect c n b
            Just _                 -> error $ "Not an Enumvalue"
            Nothing -> error $ "resolveBits: Couldn't find an enum named " ++ n
                                        ++ ", In category " ++ show c
        resolve e@_              = e

-- | resolve indirections for every redirection enum to a category c
-- for which the predicate holds
resolveRedirect :: (Category -> Bool) -> EnumSpec -> EnumSpec
resolveRedirect rep s@(ESpec spec) =
    ESpec $ M.map (map resolve) spec
    where
        resolve v@(EnumValue _ _ _) = v
        resolve r@(Redirect c e _)
            | not $ rep c = r
            | otherwise = case findDRedirect c e s of
                    Just e' -> e' -- We've found the replacement
                    Nothing -> error $ "resolveRedirect: Couldn't find an enum named " ++ e
                                        ++ ", In category " ++ show c

-- | Lookup the defining category and enum value
lookupGlobal :: String -> EnumSpec -> Maybe (Category, EnumValue)
lookupGlobal n (ESpec spec) =
    let lis = M.toList spec
        cat = find (\c -> n `elem` (map getEName . filter isValue $ snd c)) lis
    in cat >>= \(c, es) ->
        find (\e -> getEName e == n) es >>= \e -> -- find the one in the category
        Just (c, e) -- and wrap it up
