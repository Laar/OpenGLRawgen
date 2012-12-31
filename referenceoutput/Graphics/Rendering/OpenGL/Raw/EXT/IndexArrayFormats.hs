{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.IndexArrayFormats
       (gl_T2F_IUI_V3F_EXT, gl_T2F_IUI_V2F_EXT, gl_T2F_IUI_N3F_V3F_EXT,
        gl_T2F_IUI_N3F_V2F_EXT, gl_IUI_V3F_EXT, gl_IUI_V2F_EXT,
        gl_IUI_N3F_V3F_EXT, gl_IUI_N3F_V2F_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_T2F_IUI_V3F_EXT :: GLenum
gl_T2F_IUI_V3F_EXT = 33202
 
gl_T2F_IUI_V2F_EXT :: GLenum
gl_T2F_IUI_V2F_EXT = 33201
 
gl_T2F_IUI_N3F_V3F_EXT :: GLenum
gl_T2F_IUI_N3F_V3F_EXT = 33204
 
gl_T2F_IUI_N3F_V2F_EXT :: GLenum
gl_T2F_IUI_N3F_V2F_EXT = 33203
 
gl_IUI_V3F_EXT :: GLenum
gl_IUI_V3F_EXT = 33198
 
gl_IUI_V2F_EXT :: GLenum
gl_IUI_V2F_EXT = 33197
 
gl_IUI_N3F_V3F_EXT :: GLenum
gl_IUI_N3F_V3F_EXT = 33200
 
gl_IUI_N3F_V2F_EXT :: GLenum
gl_IUI_N3F_V2F_EXT = 33199