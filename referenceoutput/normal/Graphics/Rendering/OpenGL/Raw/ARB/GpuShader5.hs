{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.GpuShader5
       (gl_MIN_FRAGMENT_INTERPOLATION_OFFSET, gl_MAX_VERTEX_STREAMS,
        gl_MAX_GEOMETRY_SHADER_INVOCATIONS,
        gl_MAX_FRAGMENT_INTERPOLATION_OFFSET,
        gl_GEOMETRY_SHADER_INVOCATIONS,
        gl_FRAGMENT_INTERPOLATION_OFFSET_BITS)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core40
       (gl_MIN_FRAGMENT_INTERPOLATION_OFFSET, gl_MAX_VERTEX_STREAMS,
        gl_MAX_GEOMETRY_SHADER_INVOCATIONS,
        gl_MAX_FRAGMENT_INTERPOLATION_OFFSET,
        gl_GEOMETRY_SHADER_INVOCATIONS,
        gl_FRAGMENT_INTERPOLATION_OFFSET_BITS)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions