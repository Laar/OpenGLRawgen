{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureGather
       (gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB,
        gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB :: GLenum
gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB = 36447
 
gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB :: GLenum
gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB = 36446