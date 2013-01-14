{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureGather
       (gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET,
        gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET,
        gl_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET :: GLenum
gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET = 36446
 
gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET :: GLenum
gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET = 36447
 
gl_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS :: GLenum
gl_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS = 36767