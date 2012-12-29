{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.Rgb422
       (gl_UNSIGNED_SHORT_8_8_REV_APPLE, gl_UNSIGNED_SHORT_8_8_APPLE,
        gl_RGB_422_APPLE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNSIGNED_SHORT_8_8_REV_APPLE :: GLenum
gl_UNSIGNED_SHORT_8_8_REV_APPLE = 34235
 
gl_UNSIGNED_SHORT_8_8_APPLE :: GLenum
gl_UNSIGNED_SHORT_8_8_APPLE = 34234
 
gl_RGB_422_APPLE :: GLenum
gl_RGB_422_APPLE = 35359