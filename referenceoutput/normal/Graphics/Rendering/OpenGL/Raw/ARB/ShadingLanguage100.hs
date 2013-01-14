{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.ShadingLanguage100
       (gl_SHADING_LANGUAGE_VERSION_ARB) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_SHADING_LANGUAGE_VERSION_ARB :: GLenum
gl_SHADING_LANGUAGE_VERSION_ARB = 35724