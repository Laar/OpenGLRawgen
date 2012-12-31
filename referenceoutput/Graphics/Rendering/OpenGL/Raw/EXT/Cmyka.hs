{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.Cmyka
       (gl_UNPACK_CMYK_HINT_EXT, gl_PACK_CMYK_HINT_EXT, gl_CMYK_EXT,
        gl_CMYKA_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNPACK_CMYK_HINT_EXT :: GLenum
gl_UNPACK_CMYK_HINT_EXT = 32783
 
gl_PACK_CMYK_HINT_EXT :: GLenum
gl_PACK_CMYK_HINT_EXT = 32782
 
gl_CMYK_EXT :: GLenum
gl_CMYK_EXT = 32780
 
gl_CMYKA_EXT :: GLenum
gl_CMYKA_EXT = 32781