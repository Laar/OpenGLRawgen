{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.PackedDepthStencil
       (gl_UNSIGNED_INT_24_8, gl_DEPTH_STENCIL) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNSIGNED_INT_24_8 :: GLenum
gl_UNSIGNED_INT_24_8 = 34042
 
gl_DEPTH_STENCIL :: GLenum
gl_DEPTH_STENCIL = 34041