{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.VertexArrayRange
       (glVertexArrayRangeAPPLE, glVertexArrayParameteriAPPLE,
        glFlushVertexArrayRangeAPPLE, gl_VERTEX_ARRAY_STORAGE_HINT_APPLE,
        gl_VERTEX_ARRAY_RANGE_POINTER_APPLE,
        gl_VERTEX_ARRAY_RANGE_LENGTH_APPLE, gl_VERTEX_ARRAY_RANGE_APPLE,
        gl_STORAGE_SHARED_APPLE, gl_STORAGE_CLIENT_APPLE,
        gl_STORAGE_CACHED_APPLE)
       where
import Graphics.Rendering.OpenGL.Raw.APPLE.TextureRange
       (gl_STORAGE_SHARED_APPLE, gl_STORAGE_CACHED_APPLE)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexArrayRangeAPPLE #-}
 
ptr_glVertexArrayRangeAPPLE :: FunPtr a
ptr_glVertexArrayRangeAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_array_range"
        "glVertexArrayRangeAPPLE"
 
glVertexArrayRangeAPPLE :: GLsizei -> Ptr a -> IO ()
glVertexArrayRangeAPPLE
  = dyn_glVertexArrayRangeAPPLE ptr_glVertexArrayRangeAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexArrayRangeAPPLE
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glVertexArrayParameteriAPPLE #-}
 
ptr_glVertexArrayParameteriAPPLE :: FunPtr a
ptr_glVertexArrayParameteriAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_array_range"
        "glVertexArrayParameteriAPPLE"
 
glVertexArrayParameteriAPPLE :: GLenum -> GLint -> IO ()
glVertexArrayParameteriAPPLE
  = dyn_glVertexArrayParameteriAPPLE ptr_glVertexArrayParameteriAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexArrayParameteriAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glFlushVertexArrayRangeAPPLE #-}
 
ptr_glFlushVertexArrayRangeAPPLE :: FunPtr a
ptr_glFlushVertexArrayRangeAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_array_range"
        "glFlushVertexArrayRangeAPPLE"
 
glFlushVertexArrayRangeAPPLE :: GLsizei -> Ptr a -> IO ()
glFlushVertexArrayRangeAPPLE
  = dyn_glFlushVertexArrayRangeAPPLE ptr_glFlushVertexArrayRangeAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFlushVertexArrayRangeAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr a -> IO ())
 
gl_VERTEX_ARRAY_STORAGE_HINT_APPLE :: GLenum
gl_VERTEX_ARRAY_STORAGE_HINT_APPLE = 34079
 
gl_VERTEX_ARRAY_RANGE_POINTER_APPLE :: GLenum
gl_VERTEX_ARRAY_RANGE_POINTER_APPLE = 34081
 
gl_VERTEX_ARRAY_RANGE_LENGTH_APPLE :: GLenum
gl_VERTEX_ARRAY_RANGE_LENGTH_APPLE = 34078
 
gl_VERTEX_ARRAY_RANGE_APPLE :: GLenum
gl_VERTEX_ARRAY_RANGE_APPLE = 34077
 
gl_STORAGE_CLIENT_APPLE :: GLenum
gl_STORAGE_CLIENT_APPLE = 34228