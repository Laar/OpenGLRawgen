{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureSwizzle
       (gl_TEXTURE_SWIZZLE_RGBA, gl_TEXTURE_SWIZZLE_A,
        gl_TEXTURE_SWIZZLE_B, gl_TEXTURE_SWIZZLE_G, gl_TEXTURE_SWIZZLE_R)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core33
       (gl_TEXTURE_SWIZZLE_RGBA, gl_TEXTURE_SWIZZLE_A,
        gl_TEXTURE_SWIZZLE_B, gl_TEXTURE_SWIZZLE_G, gl_TEXTURE_SWIZZLE_R)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions