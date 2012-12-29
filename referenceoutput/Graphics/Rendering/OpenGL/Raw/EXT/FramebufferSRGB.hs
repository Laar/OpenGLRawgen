{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.FramebufferSRGB
       (gl_FRAMEBUFFER_SRGB_CAPABLE_EXT, gl_FRAMEBUFFER_SRGB_EXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_FRAMEBUFFER_SRGB_CAPABLE_EXT :: GLenum
gl_FRAMEBUFFER_SRGB_CAPABLE_EXT = 36282
 
gl_FRAMEBUFFER_SRGB_EXT :: GLenum
gl_FRAMEBUFFER_SRGB_EXT = 36281