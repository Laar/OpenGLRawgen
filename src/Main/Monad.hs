{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Main.Monad (
    RawGenT(),
    RawGenMonad(..), RawGen,

    runRawGen,
    asksOptions,
    liftEither, liftEitherMsg, liftEitherPrepend,
    liftMaybe,
    logMessage,

    throwError, catchError,
    liftIO,

) where

import Control.Applicative
import Control.Monad.Error
import Control.Monad.Reader
import System.Exit
import System.IO

import Main.Options


class (Applicative m, Monad m) => RawGenMonad m where
    askOptions :: m RawGenOptions
    throwRawError :: String -> m a

type RawGen = RawGenT IO

newtype RawGenT m a
    = RawGen
    { _runRawGen :: ErrorT String
        (ReaderT RawGenOptions m) a
    } deriving (Functor, Applicative, Monad, MonadIO, MonadError String, MonadReader RawGenOptions)

instance (Applicative m, Monad m) => RawGenMonad (RawGenT m) where
    askOptions = ask
    throwRawError = throwError

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

asksOptions :: RawGenMonad rm => (RawGenOptions -> a) -> rm a
asksOptions f = f <$> askOptions

logMessage :: String -> RawGen ()
logMessage m = liftIO $ putStrLn m

liftEither :: (RawGenMonad rm, Show e) => Either e a -> rm a
liftEither = liftEitherMsg show

liftEitherMsg :: RawGenMonad rm => (e -> String) -> Either e a -> rm a
liftEitherMsg f a = case a of
    Left e -> throwRawError $ f e
    Right a' -> return a'

liftEitherPrepend :: (RawGenMonad rm, Show e) => String -> Either e a -> rm a
liftEitherPrepend s = liftEitherMsg (\e -> s ++ show e)

liftMaybe :: RawGenMonad rm => String -> Maybe a -> rm a
liftMaybe m = maybe (throwRawError m) return
