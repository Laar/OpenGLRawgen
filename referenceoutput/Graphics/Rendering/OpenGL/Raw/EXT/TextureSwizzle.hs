{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureSwizzle
       (gl_TEXTURE_SWIZZLE_RGBA_EXT, gl_TEXTURE_SWIZZLE_A_EXT,
        gl_TEXTURE_SWIZZLE_B_EXT, gl_TEXTURE_SWIZZLE_G_EXT,
        gl_TEXTURE_SWIZZLE_R_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_SWIZZLE_RGBA_EXT :: GLenum
gl_TEXTURE_SWIZZLE_RGBA_EXT = 36422
 
gl_TEXTURE_SWIZZLE_A_EXT :: GLenum
gl_TEXTURE_SWIZZLE_A_EXT = 36421
 
gl_TEXTURE_SWIZZLE_B_EXT :: GLenum
gl_TEXTURE_SWIZZLE_B_EXT = 36420
 
gl_TEXTURE_SWIZZLE_G_EXT :: GLenum
gl_TEXTURE_SWIZZLE_G_EXT = 36419
 
gl_TEXTURE_SWIZZLE_R_EXT :: GLenum
gl_TEXTURE_SWIZZLE_R_EXT = 36418