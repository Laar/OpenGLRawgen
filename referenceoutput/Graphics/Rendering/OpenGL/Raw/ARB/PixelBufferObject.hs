{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.PixelBufferObject
       (gl_PIXEL_UNPACK_BUFFER_BINDING_ARB,
        gl_PIXEL_PACK_BUFFER_BINDING_ARB, gl_PIXEL_UNPACK_BUFFER_ARB,
        gl_PIXEL_PACK_BUFFER_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_PIXEL_UNPACK_BUFFER_BINDING_ARB :: GLenum
gl_PIXEL_UNPACK_BUFFER_BINDING_ARB = 35055
 
gl_PIXEL_PACK_BUFFER_BINDING_ARB :: GLenum
gl_PIXEL_PACK_BUFFER_BINDING_ARB = 35053
 
gl_PIXEL_UNPACK_BUFFER_ARB :: GLenum
gl_PIXEL_UNPACK_BUFFER_ARB = 35052
 
gl_PIXEL_PACK_BUFFER_ARB :: GLenum
gl_PIXEL_PACK_BUFFER_ARB = 35051