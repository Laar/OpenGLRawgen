{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.ShaderBufferStore
       (gl_WRITE_ONLY, gl_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV,
        gl_READ_WRITE)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core15
       (gl_WRITE_ONLY, gl_READ_WRITE)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV :: GLbitfield
gl_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV = 16