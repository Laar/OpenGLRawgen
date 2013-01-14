{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PackedDepthStencil
       (gl_UNSIGNED_INT_24_8_EXT, gl_TEXTURE_STENCIL_SIZE_EXT,
        gl_DEPTH_STENCIL_EXT, gl_DEPTH24_STENCIL8_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNSIGNED_INT_24_8_EXT :: GLenum
gl_UNSIGNED_INT_24_8_EXT = 34042
 
gl_TEXTURE_STENCIL_SIZE_EXT :: GLenum
gl_TEXTURE_STENCIL_SIZE_EXT = 35057
 
gl_DEPTH_STENCIL_EXT :: GLenum
gl_DEPTH_STENCIL_EXT = 34041
 
gl_DEPTH24_STENCIL8_EXT :: GLenum
gl_DEPTH24_STENCIL8_EXT = 35056