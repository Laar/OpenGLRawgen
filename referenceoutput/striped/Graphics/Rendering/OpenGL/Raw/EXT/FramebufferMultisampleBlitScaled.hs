{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.FramebufferMultisampleBlitScaled
       (gl_SCALED_RESOLVE_NICEST, gl_SCALED_RESOLVE_FASTEST) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_SCALED_RESOLVE_NICEST :: GLenum
gl_SCALED_RESOLVE_NICEST = 37051
 
gl_SCALED_RESOLVE_FASTEST :: GLenum
gl_SCALED_RESOLVE_FASTEST = 37050