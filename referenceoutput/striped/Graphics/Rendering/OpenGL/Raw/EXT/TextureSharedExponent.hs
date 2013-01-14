{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureSharedExponent
       (gl_UNSIGNED_INT_5_9_9_9_REV, gl_TEXTURE_SHARED_SIZE, gl_RGB9_E5)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNSIGNED_INT_5_9_9_9_REV :: GLenum
gl_UNSIGNED_INT_5_9_9_9_REV = 35902
 
gl_TEXTURE_SHARED_SIZE :: GLenum
gl_TEXTURE_SHARED_SIZE = 35903
 
gl_RGB9_E5 :: GLenum
gl_RGB9_E5 = 35901