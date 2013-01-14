{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexProgram3
       (gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS) where
import Graphics.Rendering.OpenGL.Raw.ARB.VertexShader
       (gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions