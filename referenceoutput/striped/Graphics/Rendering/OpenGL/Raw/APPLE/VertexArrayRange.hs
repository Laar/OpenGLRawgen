{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.VertexArrayRange
       (glVertexArrayRange, glVertexArrayParameteri,
        glFlushVertexArrayRange, gl_VERTEX_ARRAY_STORAGE_HINT,
        gl_VERTEX_ARRAY_RANGE_POINTER, gl_VERTEX_ARRAY_RANGE_LENGTH,
        gl_VERTEX_ARRAY_RANGE, gl_STORAGE_SHARED, gl_STORAGE_CLIENT,
        gl_STORAGE_CACHED)
       where
import Graphics.Rendering.OpenGL.Raw.APPLE.TextureRange
       (gl_STORAGE_SHARED, gl_STORAGE_CACHED)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexArrayRange #-}
 
ptr_glVertexArrayRange :: FunPtr a
ptr_glVertexArrayRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_array_range"
        "glVertexArrayRangeAPPLE"
 
glVertexArrayRange :: GLsizei -> Ptr a -> IO ()
glVertexArrayRange = dyn_glVertexArrayRange ptr_glVertexArrayRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexArrayRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glVertexArrayParameteri #-}
 
ptr_glVertexArrayParameteri :: FunPtr a
ptr_glVertexArrayParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_array_range"
        "glVertexArrayParameteriAPPLE"
 
glVertexArrayParameteri :: GLenum -> GLint -> IO ()
glVertexArrayParameteri
  = dyn_glVertexArrayParameteri ptr_glVertexArrayParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexArrayParameteri
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glFlushVertexArrayRange #-}
 
ptr_glFlushVertexArrayRange :: FunPtr a
ptr_glFlushVertexArrayRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_array_range"
        "glFlushVertexArrayRangeAPPLE"
 
glFlushVertexArrayRange :: GLsizei -> Ptr a -> IO ()
glFlushVertexArrayRange
  = dyn_glFlushVertexArrayRange ptr_glFlushVertexArrayRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glFlushVertexArrayRange
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr a -> IO ())
 
gl_VERTEX_ARRAY_STORAGE_HINT :: GLenum
gl_VERTEX_ARRAY_STORAGE_HINT = 34079
 
gl_VERTEX_ARRAY_RANGE_POINTER :: GLenum
gl_VERTEX_ARRAY_RANGE_POINTER = 34081
 
gl_VERTEX_ARRAY_RANGE_LENGTH :: GLenum
gl_VERTEX_ARRAY_RANGE_LENGTH = 34078
 
gl_VERTEX_ARRAY_RANGE :: GLenum
gl_VERTEX_ARRAY_RANGE = 34077
 
gl_STORAGE_CLIENT :: GLenum
gl_STORAGE_CLIENT = 34228