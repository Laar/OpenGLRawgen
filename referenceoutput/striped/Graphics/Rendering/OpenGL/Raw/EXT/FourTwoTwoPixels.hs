{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.FourTwoTwoPixels
       (gl_422_REV, gl_422_REV_AVERAGE, gl_422, gl_422_AVERAGE) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_422_REV :: GLenum
gl_422_REV = 32973
 
gl_422_REV_AVERAGE :: GLenum
gl_422_REV_AVERAGE = 32975
 
gl_422 :: GLenum
gl_422 = 32972
 
gl_422_AVERAGE :: GLenum
gl_422_AVERAGE = 32974