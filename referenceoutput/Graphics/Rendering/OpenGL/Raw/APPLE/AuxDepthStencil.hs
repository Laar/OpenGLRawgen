{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.AuxDepthStencil
       (gl_AUX_DEPTH_STENCIL_APPLE) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_AUX_DEPTH_STENCIL_APPLE :: GLenum
gl_AUX_DEPTH_STENCIL_APPLE = 35348