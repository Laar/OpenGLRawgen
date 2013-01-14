{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PackedPixels
       (gl_UNSIGNED_SHORT_5_5_5_1, gl_UNSIGNED_SHORT_4_4_4_4,
        gl_UNSIGNED_INT_8_8_8_8, gl_UNSIGNED_INT_10_10_10_2,
        gl_UNSIGNED_BYTE_3_3_2)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNSIGNED_SHORT_5_5_5_1 :: GLenum
gl_UNSIGNED_SHORT_5_5_5_1 = 32820
 
gl_UNSIGNED_SHORT_4_4_4_4 :: GLenum
gl_UNSIGNED_SHORT_4_4_4_4 = 32819
 
gl_UNSIGNED_INT_8_8_8_8 :: GLenum
gl_UNSIGNED_INT_8_8_8_8 = 32821
 
gl_UNSIGNED_INT_10_10_10_2 :: GLenum
gl_UNSIGNED_INT_10_10_10_2 = 32822
 
gl_UNSIGNED_BYTE_3_3_2 :: GLenum
gl_UNSIGNED_BYTE_3_3_2 = 32818