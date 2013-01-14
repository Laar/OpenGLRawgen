{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.IndexArrayFormats
       (gl_T2F_IUI_V3F, gl_T2F_IUI_V2F, gl_T2F_IUI_N3F_V3F,
        gl_T2F_IUI_N3F_V2F, gl_IUI_V3F, gl_IUI_V2F, gl_IUI_N3F_V3F,
        gl_IUI_N3F_V2F)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_T2F_IUI_V3F :: GLenum
gl_T2F_IUI_V3F = 33202
 
gl_T2F_IUI_V2F :: GLenum
gl_T2F_IUI_V2F = 33201
 
gl_T2F_IUI_N3F_V3F :: GLenum
gl_T2F_IUI_N3F_V3F = 33204
 
gl_T2F_IUI_N3F_V2F :: GLenum
gl_T2F_IUI_N3F_V2F = 33203
 
gl_IUI_V3F :: GLenum
gl_IUI_V3F = 33198
 
gl_IUI_V2F :: GLenum
gl_IUI_V2F = 33197
 
gl_IUI_N3F_V3F :: GLenum
gl_IUI_N3F_V3F = 33200
 
gl_IUI_N3F_V2F :: GLenum
gl_IUI_N3F_V2F = 33199