{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.PixelFormatFloat
       (gl_RGBA_FLOAT_MODE_ATI, gl_COLOR_CLEAR_UNCLAMPED_VALUE_ATI) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_RGBA_FLOAT_MODE_ATI :: GLenum
gl_RGBA_FLOAT_MODE_ATI = 34848
 
gl_COLOR_CLEAR_UNCLAMPED_VALUE_ATI :: GLenum
gl_COLOR_CLEAR_UNCLAMPED_VALUE_ATI = 34869