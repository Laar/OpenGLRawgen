{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.FourTwoTwoPixels
       (gl_422_REV_EXT, gl_422_REV_AVERAGE_EXT, gl_422_EXT,
        gl_422_AVERAGE_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_422_REV_EXT :: GLenum
gl_422_REV_EXT = 32973
 
gl_422_REV_AVERAGE_EXT :: GLenum
gl_422_REV_AVERAGE_EXT = 32975
 
gl_422_EXT :: GLenum
gl_422_EXT = 32972
 
gl_422_AVERAGE_EXT :: GLenum
gl_422_AVERAGE_EXT = 32974