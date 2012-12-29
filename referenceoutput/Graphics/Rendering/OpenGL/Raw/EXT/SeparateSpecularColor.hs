{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.SeparateSpecularColor
       (gl_SEPARATE_SPECULAR_COLOR_EXT, gl_SINGLE_COLOR_EXT,
        gl_LIGHT_MODEL_COLOR_CONTROL_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_SEPARATE_SPECULAR_COLOR_EXT :: GLenum
gl_SEPARATE_SPECULAR_COLOR_EXT = 33274
 
gl_SINGLE_COLOR_EXT :: GLenum
gl_SINGLE_COLOR_EXT = 33273
 
gl_LIGHT_MODEL_COLOR_CONTROL_EXT :: GLenum
gl_LIGHT_MODEL_COLOR_CONTROL_EXT = 33272