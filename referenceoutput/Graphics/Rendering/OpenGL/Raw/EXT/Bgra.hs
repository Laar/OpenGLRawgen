{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.Bgra
       (gl_BGRA_EXT, gl_BGR_EXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_BGRA_EXT :: GLenum
gl_BGRA_EXT = 32993
 
gl_BGR_EXT :: GLenum
gl_BGR_EXT = 32992