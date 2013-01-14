{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureSwizzle
       (gl_TEXTURE_SWIZZLE_R, gl_TEXTURE_SWIZZLE_RGBA,
        gl_TEXTURE_SWIZZLE_G, gl_TEXTURE_SWIZZLE_B, gl_TEXTURE_SWIZZLE_A)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_SWIZZLE_R :: GLenum
gl_TEXTURE_SWIZZLE_R = 36418
 
gl_TEXTURE_SWIZZLE_RGBA :: GLenum
gl_TEXTURE_SWIZZLE_RGBA = 36422
 
gl_TEXTURE_SWIZZLE_G :: GLenum
gl_TEXTURE_SWIZZLE_G = 36419
 
gl_TEXTURE_SWIZZLE_B :: GLenum
gl_TEXTURE_SWIZZLE_B = 36420
 
gl_TEXTURE_SWIZZLE_A :: GLenum
gl_TEXTURE_SWIZZLE_A = 36421