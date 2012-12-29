{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.CopyDepthToColor
       (gl_DEPTH_STENCIL_TO_BGRA_NV, gl_DEPTH_STENCIL_TO_RGBA_NV) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_DEPTH_STENCIL_TO_BGRA_NV :: GLenum
gl_DEPTH_STENCIL_TO_BGRA_NV = 34927
 
gl_DEPTH_STENCIL_TO_RGBA_NV :: GLenum
gl_DEPTH_STENCIL_TO_RGBA_NV = 34926