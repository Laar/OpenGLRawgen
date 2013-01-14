{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.SpecularVector
       (gl_LIGHT_MODEL_SPECULAR_VECTOR) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_LIGHT_MODEL_SPECULAR_VECTOR :: GLenum
gl_LIGHT_MODEL_SPECULAR_VECTOR = 34224