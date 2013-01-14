{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureCompressionRgtc
       (gl_COMPRESSED_SIGNED_RED_RGTC1,
        gl_COMPRESSED_SIGNED_RED_GREEN_RGTC2, gl_COMPRESSED_RED_RGTC1,
        gl_COMPRESSED_RED_GREEN_RGTC2)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_COMPRESSED_SIGNED_RED_RGTC1 :: GLenum
gl_COMPRESSED_SIGNED_RED_RGTC1 = 36284
 
gl_COMPRESSED_SIGNED_RED_GREEN_RGTC2 :: GLenum
gl_COMPRESSED_SIGNED_RED_GREEN_RGTC2 = 36286
 
gl_COMPRESSED_RED_RGTC1 :: GLenum
gl_COMPRESSED_RED_RGTC1 = 36283
 
gl_COMPRESSED_RED_GREEN_RGTC2 :: GLenum
gl_COMPRESSED_RED_GREEN_RGTC2 = 36285