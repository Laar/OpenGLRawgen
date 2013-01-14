{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexArrayRange
       (glVertexArrayRange, glFlushVertexArrayRange,
        gl_VERTEX_ARRAY_RANGE_VALID, gl_VERTEX_ARRAY_RANGE_POINTER,
        gl_VERTEX_ARRAY_RANGE, gl_VERTEX_ARRAY_RANGE_LENGTH,
        gl_MAX_VERTEX_ARRAY_RANGE_ELEMENT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexArrayRange #-}
 
ptr_glVertexArrayRange :: FunPtr a
ptr_glVertexArrayRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_array_range"
        "glVertexArrayRangeNV"
 
glVertexArrayRange :: GLsizei -> Ptr a -> IO ()
glVertexArrayRange = dyn_glVertexArrayRange ptr_glVertexArrayRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexArrayRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glFlushVertexArrayRange #-}
 
ptr_glFlushVertexArrayRange :: FunPtr a
ptr_glFlushVertexArrayRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_array_range"
        "glFlushVertexArrayRangeNV"
 
glFlushVertexArrayRange :: IO ()
glFlushVertexArrayRange
  = dyn_glFlushVertexArrayRange ptr_glFlushVertexArrayRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glFlushVertexArrayRange
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
gl_VERTEX_ARRAY_RANGE_VALID :: GLenum
gl_VERTEX_ARRAY_RANGE_VALID = 34079
 
gl_VERTEX_ARRAY_RANGE_POINTER :: GLenum
gl_VERTEX_ARRAY_RANGE_POINTER = 34081
 
gl_VERTEX_ARRAY_RANGE :: GLenum
gl_VERTEX_ARRAY_RANGE = 34077
 
gl_VERTEX_ARRAY_RANGE_LENGTH :: GLenum
gl_VERTEX_ARRAY_RANGE_LENGTH = 34078
 
gl_MAX_VERTEX_ARRAY_RANGE_ELEMENT :: GLenum
gl_MAX_VERTEX_ARRAY_RANGE_ELEMENT = 34080