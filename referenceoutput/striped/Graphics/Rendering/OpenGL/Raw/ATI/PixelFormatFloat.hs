{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.PixelFormatFloat
       (gl_RGBA_FLOAT_MODE, gl_COLOR_CLEAR_UNCLAMPED_VALUE) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_RGBA_FLOAT_MODE :: GLenum
gl_RGBA_FLOAT_MODE = 34848
 
gl_COLOR_CLEAR_UNCLAMPED_VALUE :: GLenum
gl_COLOR_CLEAR_UNCLAMPED_VALUE = 34869