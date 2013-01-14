{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.Cmyka
       (gl_UNPACK_CMYK_HINT, gl_PACK_CMYK_HINT, gl_CMYK, gl_CMYKA) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNPACK_CMYK_HINT :: GLenum
gl_UNPACK_CMYK_HINT = 32783
 
gl_PACK_CMYK_HINT :: GLenum
gl_PACK_CMYK_HINT = 32782
 
gl_CMYK :: GLenum
gl_CMYK = 32780
 
gl_CMYKA :: GLenum
gl_CMYKA = 32781