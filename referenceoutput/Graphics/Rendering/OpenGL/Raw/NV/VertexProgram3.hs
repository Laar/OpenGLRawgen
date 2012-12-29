{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexProgram3
       (gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB) where
import Graphics.Rendering.OpenGL.Raw.ARB.VertexShader
       (gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions