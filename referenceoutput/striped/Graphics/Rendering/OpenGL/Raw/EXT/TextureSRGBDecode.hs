{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureSRGBDecode
       (gl_TEXTURE_SRGB_DECODE, gl_SKIP_DECODE, gl_DECODE) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_SRGB_DECODE :: GLenum
gl_TEXTURE_SRGB_DECODE = 35400
 
gl_SKIP_DECODE :: GLenum
gl_SKIP_DECODE = 35402
 
gl_DECODE :: GLenum
gl_DECODE = 35401