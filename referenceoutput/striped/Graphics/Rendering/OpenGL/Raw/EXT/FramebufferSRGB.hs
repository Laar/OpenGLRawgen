{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.FramebufferSRGB
       (gl_FRAMEBUFFER_SRGB, gl_FRAMEBUFFER_SRGB_CAPABLE) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_FRAMEBUFFER_SRGB :: GLenum
gl_FRAMEBUFFER_SRGB = 36281
 
gl_FRAMEBUFFER_SRGB_CAPABLE :: GLenum
gl_FRAMEBUFFER_SRGB_CAPABLE = 36282