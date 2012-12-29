{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.BlendSubtract
       (gl_FUNC_REVERSE_SUBTRACT_EXT, gl_FUNC_SUBTRACT_EXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_FUNC_REVERSE_SUBTRACT_EXT :: GLenum
gl_FUNC_REVERSE_SUBTRACT_EXT = 32779
 
gl_FUNC_SUBTRACT_EXT :: GLenum
gl_FUNC_SUBTRACT_EXT = 32778