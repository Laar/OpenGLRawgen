{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances, MultiParamTypeClasses, UndecidableInstances #-}
-- needed for the instances of the other mtl typeclasses
module Main.Monad (
    RawGenT(),
    RawGenMonad(..), RawGen, RawGenIO,

    runRawGenIO,
    liftRawGen,
    asksOptions,
    liftEither, liftEitherMsg, liftEitherPrepend,
    liftMaybe,
    logMessage,

    throwError, catchError,
    liftIO,

) where

import Control.Applicative
import Control.Monad.Error
import Control.Monad.Identity
import Control.Monad.Reader
import Control.Monad.State
import Control.Monad.Writer
import System.Exit
import System.IO

import Main.Options


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

asksOptions :: RawGenMonad rm => (RawGenOptions -> a) -> rm a
asksOptions f = f <$> askOptions

logMessage :: (MonadIO m, RawGenMonad m) => String -> m ()
logMessage m = liftIO $ putStrLn m

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

--
-- Instances for mtl
--

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
instance RawGenMonad m => RawGenMonad (StateT s m) where
    askOptions = lift askOptions
    throwRawError = lift . throwRawError
instance (RawGenMonad m, Monoid w) => RawGenMonad (WriterT w m) where
    askOptions = lift askOptions
    throwRawError = lift . throwRawError
