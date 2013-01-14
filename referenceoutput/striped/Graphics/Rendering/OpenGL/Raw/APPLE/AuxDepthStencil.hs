{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.AuxDepthStencil
       (gl_AUX_DEPTH_STENCIL) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_AUX_DEPTH_STENCIL :: GLenum
gl_AUX_DEPTH_STENCIL = 35348