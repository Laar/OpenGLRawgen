{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureRg
       (gl_RG32UI, gl_RG32I, gl_RG16UI, gl_RG16I, gl_RG8UI, gl_RG8I,
        gl_R32UI, gl_R32I, gl_R16UI, gl_R16I, gl_R8UI, gl_R8I, gl_RG32F,
        gl_RG16F, gl_R32F, gl_R16F, gl_RG16, gl_RG8, gl_R16, gl_R8,
        gl_RG_INTEGER, gl_RG)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core30
       (gl_RG32UI, gl_RG32I, gl_RG16UI, gl_RG16I, gl_RG8UI, gl_RG8I,
        gl_R32UI, gl_R32I, gl_R16UI, gl_R16I, gl_R8UI, gl_R8I, gl_RG32F,
        gl_RG16F, gl_R32F, gl_R16F, gl_RG16, gl_RG8, gl_R16, gl_R8,
        gl_RG_INTEGER, gl_RG)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions