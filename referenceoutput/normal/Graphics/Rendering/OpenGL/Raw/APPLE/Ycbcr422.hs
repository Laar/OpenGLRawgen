{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.Ycbcr422
       (gl_YCBCR_422_APPLE, gl_UNSIGNED_SHORT_8_8_REV_APPLE,
        gl_UNSIGNED_SHORT_8_8_APPLE)
       where
import Graphics.Rendering.OpenGL.Raw.APPLE.Rgb422
       (gl_UNSIGNED_SHORT_8_8_REV_APPLE, gl_UNSIGNED_SHORT_8_8_APPLE)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_YCBCR_422_APPLE :: GLenum
gl_YCBCR_422_APPLE = 34233