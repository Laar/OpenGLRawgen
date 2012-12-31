{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureEnvDot3
       (gl_DOT3_RGB_EXT, gl_DOT3_RGBA_EXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_DOT3_RGB_EXT :: GLenum
gl_DOT3_RGB_EXT = 34624
 
gl_DOT3_RGBA_EXT :: GLenum
gl_DOT3_RGBA_EXT = 34625