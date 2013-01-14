{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.Rgb422
       (gl_UNSIGNED_SHORT_8_8_REV, gl_UNSIGNED_SHORT_8_8, gl_RGB_422)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNSIGNED_SHORT_8_8_REV :: GLenum
gl_UNSIGNED_SHORT_8_8_REV = 34235
 
gl_UNSIGNED_SHORT_8_8 :: GLenum
gl_UNSIGNED_SHORT_8_8 = 34234
 
gl_RGB_422 :: GLenum
gl_RGB_422 = 35359