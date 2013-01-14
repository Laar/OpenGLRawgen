{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureSharedExponent
       (gl_UNSIGNED_INT_5_9_9_9_REV_EXT, gl_TEXTURE_SHARED_SIZE_EXT,
        gl_RGB9_E5_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNSIGNED_INT_5_9_9_9_REV_EXT :: GLenum
gl_UNSIGNED_INT_5_9_9_9_REV_EXT = 35902
 
gl_TEXTURE_SHARED_SIZE_EXT :: GLenum
gl_TEXTURE_SHARED_SIZE_EXT = 35903
 
gl_RGB9_E5_EXT :: GLenum
gl_RGB9_E5_EXT = 35901