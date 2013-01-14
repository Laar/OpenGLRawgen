{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureEnvDot3
       (gl_DOT3_RGB, gl_DOT3_RGBA) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_DOT3_RGB :: GLenum
gl_DOT3_RGB = 34478
 
gl_DOT3_RGBA :: GLenum
gl_DOT3_RGBA = 34479