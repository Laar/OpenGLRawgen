{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.DepthBufferFloat
       (gl_FLOAT_32_UNSIGNED_INT_24_8_REV, gl_DEPTH_COMPONENT32F,
        gl_DEPTH32F_STENCIL8)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core30
       (gl_FLOAT_32_UNSIGNED_INT_24_8_REV, gl_DEPTH_COMPONENT32F,
        gl_DEPTH32F_STENCIL8)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions