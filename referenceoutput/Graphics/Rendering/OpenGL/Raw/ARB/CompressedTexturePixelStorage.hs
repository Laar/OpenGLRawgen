{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.CompressedTexturePixelStorage
       (gl_UNPACK_COMPRESSED_BLOCK_WIDTH, gl_UNPACK_COMPRESSED_BLOCK_SIZE,
        gl_UNPACK_COMPRESSED_BLOCK_HEIGHT,
        gl_UNPACK_COMPRESSED_BLOCK_DEPTH, gl_PACK_COMPRESSED_BLOCK_WIDTH,
        gl_PACK_COMPRESSED_BLOCK_SIZE, gl_PACK_COMPRESSED_BLOCK_HEIGHT,
        gl_PACK_COMPRESSED_BLOCK_DEPTH)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core42
       (gl_UNPACK_COMPRESSED_BLOCK_WIDTH, gl_UNPACK_COMPRESSED_BLOCK_SIZE,
        gl_UNPACK_COMPRESSED_BLOCK_HEIGHT,
        gl_UNPACK_COMPRESSED_BLOCK_DEPTH, gl_PACK_COMPRESSED_BLOCK_WIDTH,
        gl_PACK_COMPRESSED_BLOCK_SIZE, gl_PACK_COMPRESSED_BLOCK_HEIGHT,
        gl_PACK_COMPRESSED_BLOCK_DEPTH)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions