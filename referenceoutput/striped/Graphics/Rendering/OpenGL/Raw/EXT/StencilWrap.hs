{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.StencilWrap
       (gl_INCR_WRAP, gl_DECR_WRAP) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_INCR_WRAP :: GLenum
gl_INCR_WRAP = 34055
 
gl_DECR_WRAP :: GLenum
gl_DECR_WRAP = 34056