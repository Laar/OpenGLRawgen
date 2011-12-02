-----------------------------------------------------------------------------
--
-- Module      :  EnumSpec.Parsing
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

module EnumSpec.Parsing (
    enumSpecFromLines,
    enumSpecFromFile,
) where

import Control.Applicative
import Data.List
import qualified Data.Map as M
import Data.Maybe
import Text.OpenGL.Spec
import Text.ParserCombinators.Parsec hiding
  (many, optional, (<|>), token)

import EnumSpec.Types

enumSpecFromFile :: FilePath -> IO (Either ParseError EnumSpec)
enumSpecFromFile f = readFile f >>= \fc -> return $
    case enumLines fc of
        Left e -> Left e
        Right el -> enumSpecFromLines el

enumSpecFromLines :: [EnumLine] -> Either ParseError EnumSpec
enumSpecFromLines ls =
    let ls' = filter keepLine ls
    in parse pEnumSpec "EnumLines" ls'

type P = GenParser EnumLine ()

keepLine :: EnumLine -> Bool
keepLine (Start _ _)  = True
keepLine (Enum _ _ _) = True
keepLine (Use _ _)    = True
keepLine _            = False

pEnumSpec :: P EnumSpec
pEnumSpec = (ESpec . M.fromList) <$> many pCategory'

pCategory' :: P (Category, [EnumValue])
pCategory' = do
    cat <- pCategoryHeader
    vals <- many pGLValue
    return $ (cat, vals)

pCategoryHeader :: P Category
pCategoryHeader =  tokenPrim showValue nextPos testValue
    where showValue = show
          testValue (Start cat _) = Just cat
          testValue _             = Nothing
          nextPos sp  _        _ = incSourceColumn sp 1

pGLValue :: P EnumValue
pGLValue = tokenPrim showValue nextPos testValue
    where
        showValue = show
-- TODO : try to find a better way of determining the valuetype of the enum
        testValue (Enum name value _) = Just $
            EnumValue name (fromValue value) (if "_BIT" `isInfixOf` name then True else False)
        testValue (Use ucat name)     = Just $ Redirect ucat name (error "Unknown yet")
        testValue _                   = Nothing
        nextPos sp  _ _ = incSourceColumn sp 1
        fromValue (Hex v _ _)    = EValue  v
        fromValue (Deci i)       = EValue $ fromIntegral i
        fromValue (Identifier i) = EIdent (fromMaybe i . stripPrefix "GL_" $ i) undefined
