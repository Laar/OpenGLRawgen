{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Main.Monad (
    RawGen(),

    runRawGen,
    askOptions,
    asksOptions,
    liftEither, liftEitherMsg, liftEitherPrepend,
    logMessage,

    liftIO,

) where

import Control.Applicative
import Control.Monad.Error
import Control.Monad.Reader
import System.Exit
import System.IO

import Main.Options

newtype RawGen a 
    = RawGen
    { _runRawGen :: ErrorT String 
        (ReaderT RawGenOptions IO ) a 
    } deriving (Functor, Applicative, Monad, MonadIO)

runRawGen :: RawGen a -> IO a
runRawGen rg = do
    opts <- getOptions
    e <- flip runReaderT opts .
        runErrorT $ _runRawGen rg
    case e of
        Right a -> return a
        Left errMsg -> do
            hPutStr stderr errMsg 
            exitWith $ ExitFailure 1

askOptions :: RawGen RawGenOptions
askOptions = RawGen $ ask

asksOptions :: (RawGenOptions -> a) -> RawGen a
asksOptions = RawGen . asks

logMessage :: String -> RawGen ()
logMessage m = liftIO $ putStrLn m

liftEither :: Show e => Either e a -> RawGen a
liftEither = liftEitherMsg show

liftEitherMsg :: (e -> String) -> Either e a -> RawGen a
liftEitherMsg f a = RawGen . ErrorT . return $ case a of
    Left e   -> Left $ f e
    Right a' -> Right a'

liftEitherPrepend :: Show e => String -> Either e a -> RawGen a
liftEitherPrepend s = liftEitherMsg (\e -> s ++ show e)
