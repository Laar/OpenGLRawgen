-----------------------------------------------------------------------------
--
-- Module      :  EnumSpec.Types
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

module EnumSpec.Types (
    EnumValue(..),
    EValue(..),
    getEName,
    isBitField,
    isValue,
    EnumSpec(..),
) where

import qualified Data.Map as M
import Text.OpenGL.Spec

data EnumValue
    = EnumValue String   EValue  Bool
    | Redirect  Category String  Bool
    deriving(Eq, Ord, Show)

data EValue
    = EValue Integer
    | EIdent String (Maybe Category)
    deriving(Eq, Ord, Show)

getEName :: EnumValue -> String
getEName (EnumValue n _ _) = n
getEName (Redirect  _ n _) = n

--isRedirect :: EnumValue -> Bool
--isRedirect (Redirect _ _ _) = True
--isRedirect _                = False

isValue :: EnumValue -> Bool
isValue (EnumValue _ _ _) = True
isValue _                 = False

isBitField :: EnumValue -> Bool
isBitField (EnumValue _ _ b) = b
isBitField (Redirect  _ _ b) = b

newtype EnumSpec = ESpec {getMapping :: M.Map Category [EnumValue]}
