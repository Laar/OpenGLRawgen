{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.PackedDepthStencil
       (gl_UNSIGNED_INT_24_8_NV, gl_DEPTH_STENCIL_NV) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNSIGNED_INT_24_8_NV :: GLenum
gl_UNSIGNED_INT_24_8_NV = 34042
 
gl_DEPTH_STENCIL_NV :: GLenum
gl_DEPTH_STENCIL_NV = 34041