{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.RowBytes
       (gl_UNPACK_ROW_BYTES, gl_PACK_ROW_BYTES) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNPACK_ROW_BYTES :: GLenum
gl_UNPACK_ROW_BYTES = 35350
 
gl_PACK_ROW_BYTES :: GLenum
gl_PACK_ROW_BYTES = 35349