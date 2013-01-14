{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.Bgra (gl_BGR, gl_BGRA)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_BGR :: GLenum
gl_BGR = 32992
 
gl_BGRA :: GLenum
gl_BGRA = 32993