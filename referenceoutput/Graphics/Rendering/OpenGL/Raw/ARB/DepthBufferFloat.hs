{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.DepthBufferFloat
       (gl_FLOAT_32_UNSIGNED_INT_24_8_REV, gl_DEPTH32F_STENCIL8,
        gl_DEPTH_COMPONENT32F)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core30
       (gl_FLOAT_32_UNSIGNED_INT_24_8_REV, gl_DEPTH32F_STENCIL8,
        gl_DEPTH_COMPONENT32F)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions