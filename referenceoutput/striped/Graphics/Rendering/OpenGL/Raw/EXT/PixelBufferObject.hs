{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PixelBufferObject
       (gl_PIXEL_UNPACK_BUFFER, gl_PIXEL_UNPACK_BUFFER_BINDING,
        gl_PIXEL_PACK_BUFFER, gl_PIXEL_PACK_BUFFER_BINDING)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_PIXEL_UNPACK_BUFFER :: GLenum
gl_PIXEL_UNPACK_BUFFER = 35052
 
gl_PIXEL_UNPACK_BUFFER_BINDING :: GLenum
gl_PIXEL_UNPACK_BUFFER_BINDING = 35055
 
gl_PIXEL_PACK_BUFFER :: GLenum
gl_PIXEL_PACK_BUFFER = 35051
 
gl_PIXEL_PACK_BUFFER_BINDING :: GLenum
gl_PIXEL_PACK_BUFFER_BINDING = 35053