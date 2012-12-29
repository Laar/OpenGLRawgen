{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.DepthTexture
       (gl_DEPTH_TEXTURE_MODE_ARB, gl_TEXTURE_DEPTH_SIZE_ARB,
        gl_DEPTH_COMPONENT32_ARB, gl_DEPTH_COMPONENT24_ARB,
        gl_DEPTH_COMPONENT16_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_DEPTH_TEXTURE_MODE_ARB :: GLenum
gl_DEPTH_TEXTURE_MODE_ARB = 34891
 
gl_TEXTURE_DEPTH_SIZE_ARB :: GLenum
gl_TEXTURE_DEPTH_SIZE_ARB = 34890
 
gl_DEPTH_COMPONENT32_ARB :: GLenum
gl_DEPTH_COMPONENT32_ARB = 33191
 
gl_DEPTH_COMPONENT24_ARB :: GLenum
gl_DEPTH_COMPONENT24_ARB = 33190
 
gl_DEPTH_COMPONENT16_ARB :: GLenum
gl_DEPTH_COMPONENT16_ARB = 33189