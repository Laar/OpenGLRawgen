{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.PixelFormatFloat
       (gl_COLOR_CLEAR_UNCLAMPED_VALUE_ATI, gl_TYPE_RGBA_FLOAT_ATI) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_COLOR_CLEAR_UNCLAMPED_VALUE_ATI :: GLenum
gl_COLOR_CLEAR_UNCLAMPED_VALUE_ATI = 34869
 
gl_TYPE_RGBA_FLOAT_ATI :: GLenum
gl_TYPE_RGBA_FLOAT_ATI = 34848