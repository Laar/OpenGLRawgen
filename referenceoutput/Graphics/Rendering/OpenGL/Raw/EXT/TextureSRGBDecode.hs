{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureSRGBDecode
       (gl_SKIP_DECODE_EXT, gl_DECODE_EXT, gl_TEXTURE_SRGB_DECODE_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_SKIP_DECODE_EXT :: GLenum
gl_SKIP_DECODE_EXT = 35402
 
gl_DECODE_EXT :: GLenum
gl_DECODE_EXT = 35401
 
gl_TEXTURE_SRGB_DECODE_EXT :: GLenum
gl_TEXTURE_SRGB_DECODE_EXT = 35400