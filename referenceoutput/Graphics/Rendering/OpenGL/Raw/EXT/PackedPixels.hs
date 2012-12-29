{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PackedPixels
       (gl_UNSIGNED_INT_10_10_10_2_EXT, gl_UNSIGNED_INT_8_8_8_8_EXT,
        gl_UNSIGNED_SHORT_5_5_5_1_EXT, gl_UNSIGNED_SHORT_4_4_4_4_EXT,
        gl_UNSIGNED_BYTE_3_3_2_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNSIGNED_INT_10_10_10_2_EXT :: GLenum
gl_UNSIGNED_INT_10_10_10_2_EXT = 32822
 
gl_UNSIGNED_INT_8_8_8_8_EXT :: GLenum
gl_UNSIGNED_INT_8_8_8_8_EXT = 32821
 
gl_UNSIGNED_SHORT_5_5_5_1_EXT :: GLenum
gl_UNSIGNED_SHORT_5_5_5_1_EXT = 32820
 
gl_UNSIGNED_SHORT_4_4_4_4_EXT :: GLenum
gl_UNSIGNED_SHORT_4_4_4_4_EXT = 32819
 
gl_UNSIGNED_BYTE_3_3_2_EXT :: GLenum
gl_UNSIGNED_BYTE_3_3_2_EXT = 32818