{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.FramebufferMultisampleBlitScaled
       (gl_SCALED_RESOLVE_NICEST_EXT, gl_SCALED_RESOLVE_FASTEST_EXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_SCALED_RESOLVE_NICEST_EXT :: GLenum
gl_SCALED_RESOLVE_NICEST_EXT = 37051
 
gl_SCALED_RESOLVE_FASTEST_EXT :: GLenum
gl_SCALED_RESOLVE_FASTEST_EXT = 37050