{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.SeparateSpecularColor
       (gl_SINGLE_COLOR, gl_SEPARATE_SPECULAR_COLOR,
        gl_LIGHT_MODEL_COLOR_CONTROL)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_SINGLE_COLOR :: GLenum
gl_SINGLE_COLOR = 33273
 
gl_SEPARATE_SPECULAR_COLOR :: GLenum
gl_SEPARATE_SPECULAR_COLOR = 33274
 
gl_LIGHT_MODEL_COLOR_CONTROL :: GLenum
gl_LIGHT_MODEL_COLOR_CONTROL = 33272