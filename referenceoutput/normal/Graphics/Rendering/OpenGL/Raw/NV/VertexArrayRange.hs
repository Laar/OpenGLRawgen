{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexArrayRange
       (glVertexArrayRangeNV, glFlushVertexArrayRangeNV,
        gl_VERTEX_ARRAY_RANGE_VALID_NV, gl_VERTEX_ARRAY_RANGE_POINTER_NV,
        gl_VERTEX_ARRAY_RANGE_NV, gl_VERTEX_ARRAY_RANGE_LENGTH_NV,
        gl_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexArrayRangeNV #-}
 
ptr_glVertexArrayRangeNV :: FunPtr a
ptr_glVertexArrayRangeNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_array_range"
        "glVertexArrayRangeNV"
 
glVertexArrayRangeNV :: GLsizei -> Ptr a -> IO ()
glVertexArrayRangeNV
  = dyn_glVertexArrayRangeNV ptr_glVertexArrayRangeNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexArrayRangeNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glFlushVertexArrayRangeNV #-}
 
ptr_glFlushVertexArrayRangeNV :: FunPtr a
ptr_glFlushVertexArrayRangeNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_array_range"
        "glFlushVertexArrayRangeNV"
 
glFlushVertexArrayRangeNV :: IO ()
glFlushVertexArrayRangeNV
  = dyn_glFlushVertexArrayRangeNV ptr_glFlushVertexArrayRangeNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFlushVertexArrayRangeNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
gl_VERTEX_ARRAY_RANGE_VALID_NV :: GLenum
gl_VERTEX_ARRAY_RANGE_VALID_NV = 34079
 
gl_VERTEX_ARRAY_RANGE_POINTER_NV :: GLenum
gl_VERTEX_ARRAY_RANGE_POINTER_NV = 34081
 
gl_VERTEX_ARRAY_RANGE_NV :: GLenum
gl_VERTEX_ARRAY_RANGE_NV = 34077
 
gl_VERTEX_ARRAY_RANGE_LENGTH_NV :: GLenum
gl_VERTEX_ARRAY_RANGE_LENGTH_NV = 34078
 
gl_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV :: GLenum
gl_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV = 34080