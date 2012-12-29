{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.StencilWrap
       (gl_DECR_WRAP_EXT, gl_INCR_WRAP_EXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_DECR_WRAP_EXT :: GLenum
gl_DECR_WRAP_EXT = 34056
 
gl_INCR_WRAP_EXT :: GLenum
gl_INCR_WRAP_EXT = 34055