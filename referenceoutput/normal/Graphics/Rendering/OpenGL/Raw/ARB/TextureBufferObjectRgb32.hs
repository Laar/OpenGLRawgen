{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureBufferObjectRgb32
       (gl_RGB32UI, gl_RGB32I, gl_RGB32F) where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core30
       (gl_RGB32UI, gl_RGB32I, gl_RGB32F)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions