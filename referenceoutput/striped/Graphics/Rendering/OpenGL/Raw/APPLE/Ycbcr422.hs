{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.Ycbcr422
       (gl_YCBCR_422, gl_UNSIGNED_SHORT_8_8_REV, gl_UNSIGNED_SHORT_8_8)
       where
import Graphics.Rendering.OpenGL.Raw.APPLE.Rgb422
       (gl_UNSIGNED_SHORT_8_8_REV, gl_UNSIGNED_SHORT_8_8)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_YCBCR_422 :: GLenum
gl_YCBCR_422 = 34233