{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureEnvDot3
       (gl_DOT3_RGB_ARB, gl_DOT3_RGBA_ARB) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_DOT3_RGB_ARB :: GLenum
gl_DOT3_RGB_ARB = 34478
 
gl_DOT3_RGBA_ARB :: GLenum
gl_DOT3_RGBA_ARB = 34479