{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PackedDepthStencil
       (gl_UNSIGNED_INT_24_8, gl_TEXTURE_STENCIL_SIZE, gl_DEPTH_STENCIL,
        gl_DEPTH24_STENCIL8)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNSIGNED_INT_24_8 :: GLenum
gl_UNSIGNED_INT_24_8 = 34042
 
gl_TEXTURE_STENCIL_SIZE :: GLenum
gl_TEXTURE_STENCIL_SIZE = 35057
 
gl_DEPTH_STENCIL :: GLenum
gl_DEPTH_STENCIL = 34041
 
gl_DEPTH24_STENCIL8 :: GLenum
gl_DEPTH24_STENCIL8 = 35056