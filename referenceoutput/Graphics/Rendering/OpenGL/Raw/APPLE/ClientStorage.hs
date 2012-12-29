{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.ClientStorage
       (gl_UNPACK_CLIENT_STORAGE_APPLE) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNPACK_CLIENT_STORAGE_APPLE :: GLenum
gl_UNPACK_CLIENT_STORAGE_APPLE = 34226