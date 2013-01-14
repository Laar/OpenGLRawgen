{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.ClientStorage
       (gl_UNPACK_CLIENT_STORAGE) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNPACK_CLIENT_STORAGE :: GLenum
gl_UNPACK_CLIENT_STORAGE = 34226