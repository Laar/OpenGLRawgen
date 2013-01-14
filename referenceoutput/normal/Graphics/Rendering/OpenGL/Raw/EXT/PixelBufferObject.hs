{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PixelBufferObject
       (gl_PIXEL_UNPACK_BUFFER_EXT, gl_PIXEL_UNPACK_BUFFER_BINDING_EXT,
        gl_PIXEL_PACK_BUFFER_EXT, gl_PIXEL_PACK_BUFFER_BINDING_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_PIXEL_UNPACK_BUFFER_EXT :: GLenum
gl_PIXEL_UNPACK_BUFFER_EXT = 35052
 
gl_PIXEL_UNPACK_BUFFER_BINDING_EXT :: GLenum
gl_PIXEL_UNPACK_BUFFER_BINDING_EXT = 35055
 
gl_PIXEL_PACK_BUFFER_EXT :: GLenum
gl_PIXEL_PACK_BUFFER_EXT = 35051
 
gl_PIXEL_PACK_BUFFER_BINDING_EXT :: GLenum
gl_PIXEL_PACK_BUFFER_BINDING_EXT = 35053