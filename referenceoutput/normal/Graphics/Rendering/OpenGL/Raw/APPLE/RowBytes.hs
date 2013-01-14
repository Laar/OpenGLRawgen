{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.RowBytes
       (gl_UNPACK_ROW_BYTES_APPLE, gl_PACK_ROW_BYTES_APPLE) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNPACK_ROW_BYTES_APPLE :: GLenum
gl_UNPACK_ROW_BYTES_APPLE = 35350
 
gl_PACK_ROW_BYTES_APPLE :: GLenum
gl_PACK_ROW_BYTES_APPLE = 35349