{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexArrayRange2
       (gl_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH :: GLenum
gl_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH = 34099