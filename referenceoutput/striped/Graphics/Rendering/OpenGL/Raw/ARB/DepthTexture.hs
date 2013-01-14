{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.DepthTexture
       (gl_TEXTURE_DEPTH_SIZE, gl_DEPTH_TEXTURE_MODE,
        gl_DEPTH_COMPONENT32, gl_DEPTH_COMPONENT24, gl_DEPTH_COMPONENT16)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_DEPTH_SIZE :: GLenum
gl_TEXTURE_DEPTH_SIZE = 34890
 
gl_DEPTH_TEXTURE_MODE :: GLenum
gl_DEPTH_TEXTURE_MODE = 34891
 
gl_DEPTH_COMPONENT32 :: GLenum
gl_DEPTH_COMPONENT32 = 33191
 
gl_DEPTH_COMPONENT24 :: GLenum
gl_DEPTH_COMPONENT24 = 33190
 
gl_DEPTH_COMPONENT16 :: GLenum
gl_DEPTH_COMPONENT16 = 33189