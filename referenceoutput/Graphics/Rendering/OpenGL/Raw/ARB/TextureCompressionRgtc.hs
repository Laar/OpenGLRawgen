{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureCompressionRgtc
       (gl_COMPRESSED_SIGNED_RG_RGTC2, gl_COMPRESSED_RG_RGTC2,
        gl_COMPRESSED_SIGNED_RED_RGTC1, gl_COMPRESSED_RED_RGTC1)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core30
       (gl_COMPRESSED_SIGNED_RG_RGTC2, gl_COMPRESSED_RG_RGTC2,
        gl_COMPRESSED_SIGNED_RED_RGTC1, gl_COMPRESSED_RED_RGTC1)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions