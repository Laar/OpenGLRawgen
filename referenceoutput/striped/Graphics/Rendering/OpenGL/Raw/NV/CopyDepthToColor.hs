{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.CopyDepthToColor
       (gl_DEPTH_STENCIL_TO_RGBA, gl_DEPTH_STENCIL_TO_BGRA) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_DEPTH_STENCIL_TO_RGBA :: GLenum
gl_DEPTH_STENCIL_TO_RGBA = 34926
 
gl_DEPTH_STENCIL_TO_BGRA :: GLenum
gl_DEPTH_STENCIL_TO_BGRA = 34927