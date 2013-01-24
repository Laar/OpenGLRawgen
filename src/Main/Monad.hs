{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses, UndecidableInstances #-}
-- needed for the instances of the other mtl typeclasses
-----------------------------------------------------------------------------
--
-- Module      :  Main.Monad
-- Copyright   :  (c) 2013 Lars Corbijn
-- License     :  BSD-style (see the file /LICENSE)
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- | The general MonadTransformer `RawGenMonad` and its basic implementation
-- are defined here.
--
-----------------------------------------------------------------------------
module Main.Monad (
    -- MonadTransformer and implementing types.
    RawGenMonad(..),
    RawGenT(),
    RawGen, RawGenIO,

    runRawGenIO,
    liftRawGen,
    -- * `RawGenOptions` related functions
    asksOptions,
    unlessOption,
    whenOption,
    whenFlag,
    -- * Error handling functions
    liftEither,
    liftEitherMsg, 
    liftEitherPrepend,
    liftMaybe,
    
    -- * Other functions and reexports
    logMessage,

    throwError, catchError,
    liftIO,

) where

-----------------------------------------------------------------------------

import Control.Applicative
import Control.Monad.Error
import Control.Monad.Identity
import Control.Monad.Reader
import Control.Monad.RWS(RWST)
import Control.Monad.State(MonadState(..), StateT)
import Control.Monad.Writer(MonadWriter(..), WriterT, Monoid)
import System.Exit
import System.IO

import Main.Options

-----------------------------------------------------------------------------

-- MonadTransformer class for the Generator providing options and
-- exception handling.
class (Applicative m, Monad m) => RawGenMonad m where
    -- | Retrieves the options
    askOptions :: m RawGenOptions
    -- | Throws an error message.
    throwRawError :: String -> m a

-- | Basic pure version of `RawGenT`.
type RawGen = RawGenT Identity
-- | Basic IO version of `RawGenT`.
type RawGenIO = RawGenT IO

-- | The basic transformer implementation of `RawGenMonad`.
newtype RawGenT m a
    = RawGen
    { _runRawGenT :: ErrorT String
        (ReaderT RawGenOptions m) a
    } deriving (Functor, Applicative, Monad, MonadIO
               , MonadError String, MonadReader RawGenOptions)

instance (Applicative m, Monad m) => RawGenMonad (RawGenT m) where
    askOptions = ask
    throwRawError = throwError
instance MonadTrans RawGenT where
    lift    = RawGen . lift . lift

-----------------------------------------------------------------------------

-- | Runs a `RawGenIO`.
runRawGenIO :: RawGenIO a -> IO a
runRawGenIO rg = do
    opts <- getOptions
    e <- flip runReaderT opts .
        runErrorT $ _runRawGenT rg
    case e of
        Right a -> return a
        Left errMsg -> do
            hPutStr stderr errMsg
            exitWith $ ExitFailure 1

-- | Lifts a pure `RawGen` into a monad.
liftRawGen :: (Applicative m, Monad m) => RawGen a -> RawGenT m a
liftRawGen rg = do
    opts <- askOptions
    let e = runIdentity .
            flip runReaderT opts .
            runErrorT $ _runRawGenT rg
    case e of
        Right a -> return a
        Left em -> throwRawError em

-----------------------------------------------------------------------------
-- option related

asksOptions :: RawGenMonad rm => (RawGenOptions -> a) -> rm a
asksOptions f = f <$> askOptions


-- | Executes the action only when the predicate holds (lifted `when`).
whenOption :: RawGenMonad m => (RawGenOptions -> Bool) -> m () -> m ()
whenOption f b = asksOptions f >>= \p -> when p b

-- | Executes an action only when the specific flag is present.
whenFlag :: RawGenMonad m => RawGenFlag -> m () -> m ()
whenFlag = whenOption . hasFlag

-- | Execute the action only when the predicate fails (lifted `unless`).
unlessOption :: RawGenMonad m => (RawGenOptions -> Bool) -> m () -> m ()
unlessOption f b = asksOptions f >>= \p -> unless p b

-----------------------------------------------------------------------------

logMessage :: (MonadIO m, RawGenMonad m) => String -> m ()
logMessage m = liftIO $ putStrLn m

-----------------------------------------------------------------------------
-- error handling

-- | Specialization of `liftEitherMsg` using show.
liftEither :: (RawGenMonad rm, Show e) => Either e a -> rm a
liftEither = liftEitherMsg show

-- | Lifts an `Either` into a `RawGenMonad`. As usual treating `Left`
-- as a failure and `Right` as a correct result
liftEitherMsg :: RawGenMonad rm => (e -> String) -> Either e a -> rm a
liftEitherMsg f a = case a of
    Left e -> throwRawError $ f e
    Right a' -> return a'

-- | Specialization of `liftEitherMsg` prepending a string before
-- showing the error.
liftEitherPrepend :: (RawGenMonad rm, Show e) => String -> Either e a -> rm a
liftEitherPrepend s = liftEitherMsg (\e -> s ++ show e)

-- | Lifts a Maybe into a `RawGenMonad` result, throwing an error with
-- the given message on `Nothing`.
liftMaybe :: RawGenMonad rm => String -> Maybe a -> rm a
liftMaybe m = maybe (throwRawError m) return

-----------------------------------------------------------------------------
-- Instances for mtl

-- need UndecidableInstances as the Coverage Condition fails.
instance MonadState s m => MonadState s (RawGenT m) where
    get     = lift get
    put     = lift . put
    state   = lift . state
instance MonadWriter w m => MonadWriter w (RawGenT m) where
    writer  = lift . writer
    tell    = lift . tell
    listen  = RawGen . listen . _runRawGenT
    pass    = RawGen . pass   . _runRawGenT

-- instances for specific transformers
instance RawGenMonad m => RawGenMonad (ReaderT r m) where
    askOptions = lift askOptions
    throwRawError = lift . throwRawError
instance (RawGenMonad m, Monoid w) => RawGenMonad (RWST r w s m) where
    askOptions = lift askOptions
    throwRawError = lift . throwRawError
instance RawGenMonad m => RawGenMonad (StateT s m) where
    askOptions = lift askOptions
    throwRawError = lift . throwRawError
instance (RawGenMonad m, Monoid w) => RawGenMonad (WriterT w m) where
    askOptions = lift askOptions
    throwRawError = lift . throwRawError

-----------------------------------------------------------------------------
