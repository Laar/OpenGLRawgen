{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core15
       (glUnmapBuffer, glMapBuffer, glIsQuery, glIsBuffer, glGetQueryiv,
        glGetQueryObjectuiv, glGetQueryObjectiv, glGetBufferSubData,
        glGetBufferPointerv, glGetBufferParameteriv, glGenQueries,
        glGenBuffers, glEndQuery, glDeleteQueries, glDeleteBuffers,
        glBufferSubData, glBufferData, glBindBuffer, glBeginQuery,
        gl_WRITE_ONLY, gl_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING,
        gl_STREAM_READ, gl_STREAM_DRAW, gl_STREAM_COPY, gl_STATIC_READ,
        gl_STATIC_DRAW, gl_STATIC_COPY, gl_SRC1_ALPHA, gl_SAMPLES_PASSED,
        gl_READ_WRITE, gl_READ_ONLY, gl_QUERY_RESULT_AVAILABLE,
        gl_QUERY_RESULT, gl_QUERY_COUNTER_BITS,
        gl_ELEMENT_ARRAY_BUFFER_BINDING, gl_ELEMENT_ARRAY_BUFFER,
        gl_DYNAMIC_READ, gl_DYNAMIC_DRAW, gl_DYNAMIC_COPY,
        gl_CURRENT_QUERY, gl_BUFFER_USAGE, gl_BUFFER_SIZE,
        gl_BUFFER_MAP_POINTER, gl_BUFFER_MAPPED, gl_BUFFER_ACCESS,
        gl_ARRAY_BUFFER_BINDING, gl_ARRAY_BUFFER)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUnmapBuffer #-}
 
ptr_glUnmapBuffer :: FunPtr a
ptr_glUnmapBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glUnmapBuffer"
 
glUnmapBuffer :: GLenum -> IO GLboolean
glUnmapBuffer = dyn_glUnmapBuffer ptr_glUnmapBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glUnmapBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLboolean)
 
{-# NOINLINE ptr_glMapBuffer #-}
 
ptr_glMapBuffer :: FunPtr a
ptr_glMapBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glMapBuffer"
 
glMapBuffer :: GLenum -> GLenum -> IO (Ptr a)
glMapBuffer = dyn_glMapBuffer ptr_glMapBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO (Ptr a))
 
{-# NOINLINE ptr_glIsQuery #-}
 
ptr_glIsQuery :: FunPtr a
ptr_glIsQuery
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glIsQuery"
 
glIsQuery :: GLuint -> IO GLboolean
glIsQuery = dyn_glIsQuery ptr_glIsQuery
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsQuery ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glIsBuffer #-}
 
ptr_glIsBuffer :: FunPtr a
ptr_glIsBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glIsBuffer"
 
glIsBuffer :: GLuint -> IO GLboolean
glIsBuffer = dyn_glIsBuffer ptr_glIsBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetQueryiv #-}
 
ptr_glGetQueryiv :: FunPtr a
ptr_glGetQueryiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glGetQueryiv"
 
glGetQueryiv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetQueryiv = dyn_glGetQueryiv ptr_glGetQueryiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetQueryObjectuiv #-}
 
ptr_glGetQueryObjectuiv :: FunPtr a
ptr_glGetQueryObjectuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glGetQueryObjectuiv"
 
glGetQueryObjectuiv :: GLuint -> GLenum -> Ptr GLuint -> IO ()
glGetQueryObjectuiv
  = dyn_glGetQueryObjectuiv ptr_glGetQueryObjectuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryObjectuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetQueryObjectiv #-}
 
ptr_glGetQueryObjectiv :: FunPtr a
ptr_glGetQueryObjectiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glGetQueryObjectiv"
 
glGetQueryObjectiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetQueryObjectiv = dyn_glGetQueryObjectiv ptr_glGetQueryObjectiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryObjectiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetBufferSubData #-}
 
ptr_glGetBufferSubData :: FunPtr a
ptr_glGetBufferSubData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glGetBufferSubData"
 
glGetBufferSubData ::
                   GLenum -> GLintptr -> GLsizeiptr -> Ptr a -> IO ()
glGetBufferSubData = dyn_glGetBufferSubData ptr_glGetBufferSubData
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetBufferSubData ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLintptr -> GLsizeiptr -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetBufferPointerv #-}
 
ptr_glGetBufferPointerv :: FunPtr a
ptr_glGetBufferPointerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glGetBufferPointerv"
 
glGetBufferPointerv :: GLenum -> GLenum -> Ptr (Ptr a) -> IO ()
glGetBufferPointerv
  = dyn_glGetBufferPointerv ptr_glGetBufferPointerv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetBufferPointerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glGetBufferParameteriv #-}
 
ptr_glGetBufferParameteriv :: FunPtr a
ptr_glGetBufferParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glGetBufferParameteriv"
 
glGetBufferParameteriv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetBufferParameteriv
  = dyn_glGetBufferParameteriv ptr_glGetBufferParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetBufferParameteriv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGenQueries #-}
 
ptr_glGenQueries :: FunPtr a
ptr_glGenQueries
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glGenQueries"
 
glGenQueries :: GLsizei -> Ptr GLuint -> IO ()
glGenQueries = dyn_glGenQueries ptr_glGenQueries
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenQueries ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGenBuffers #-}
 
ptr_glGenBuffers :: FunPtr a
ptr_glGenBuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glGenBuffers"
 
glGenBuffers :: GLsizei -> Ptr GLuint -> IO ()
glGenBuffers = dyn_glGenBuffers ptr_glGenBuffers
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenBuffers ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glEndQuery #-}
 
ptr_glEndQuery :: FunPtr a
ptr_glEndQuery
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glEndQuery"
 
glEndQuery :: GLenum -> IO ()
glEndQuery = dyn_glEndQuery ptr_glEndQuery
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndQuery ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glDeleteQueries #-}
 
ptr_glDeleteQueries :: FunPtr a
ptr_glDeleteQueries
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glDeleteQueries"
 
glDeleteQueries :: GLsizei -> Ptr GLuint -> IO ()
glDeleteQueries = dyn_glDeleteQueries ptr_glDeleteQueries
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteQueries ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteBuffers #-}
 
ptr_glDeleteBuffers :: FunPtr a
ptr_glDeleteBuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glDeleteBuffers"
 
glDeleteBuffers :: GLsizei -> Ptr GLuint -> IO ()
glDeleteBuffers = dyn_glDeleteBuffers ptr_glDeleteBuffers
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteBuffers ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBufferSubData #-}
 
ptr_glBufferSubData :: FunPtr a
ptr_glBufferSubData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glBufferSubData"
 
glBufferSubData ::
                GLenum -> GLintptr -> GLsizeiptr -> Ptr a -> IO ()
glBufferSubData = dyn_glBufferSubData ptr_glBufferSubData
 
foreign import CALLCONV unsafe "dynamic" dyn_glBufferSubData ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLintptr -> GLsizeiptr -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glBufferData #-}
 
ptr_glBufferData :: FunPtr a
ptr_glBufferData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glBufferData"
 
glBufferData :: GLenum -> GLsizeiptr -> Ptr a -> GLenum -> IO ()
glBufferData = dyn_glBufferData ptr_glBufferData
 
foreign import CALLCONV unsafe "dynamic" dyn_glBufferData ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizeiptr -> Ptr a -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBindBuffer #-}
 
ptr_glBindBuffer :: FunPtr a
ptr_glBindBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glBindBuffer"
 
glBindBuffer :: GLenum -> GLuint -> IO ()
glBindBuffer = dyn_glBindBuffer ptr_glBindBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glBeginQuery #-}
 
ptr_glBeginQuery :: FunPtr a
ptr_glBeginQuery
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_5"
        "glBeginQuery"
 
glBeginQuery :: GLenum -> GLuint -> IO ()
glBeginQuery = dyn_glBeginQuery ptr_glBeginQuery
 
foreign import CALLCONV unsafe "dynamic" dyn_glBeginQuery ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
gl_WRITE_ONLY :: GLenum
gl_WRITE_ONLY = 35001
 
gl_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING :: GLenum
gl_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 34975
 
gl_STREAM_READ :: GLenum
gl_STREAM_READ = 35041
 
gl_STREAM_DRAW :: GLenum
gl_STREAM_DRAW = 35040
 
gl_STREAM_COPY :: GLenum
gl_STREAM_COPY = 35042
 
gl_STATIC_READ :: GLenum
gl_STATIC_READ = 35045
 
gl_STATIC_DRAW :: GLenum
gl_STATIC_DRAW = 35044
 
gl_STATIC_COPY :: GLenum
gl_STATIC_COPY = 35046
 
gl_SRC1_ALPHA :: GLenum
gl_SRC1_ALPHA = 34185
 
gl_SAMPLES_PASSED :: GLenum
gl_SAMPLES_PASSED = 35092
 
gl_READ_WRITE :: GLenum
gl_READ_WRITE = 35002
 
gl_READ_ONLY :: GLenum
gl_READ_ONLY = 35000
 
gl_QUERY_RESULT_AVAILABLE :: GLenum
gl_QUERY_RESULT_AVAILABLE = 34919
 
gl_QUERY_RESULT :: GLenum
gl_QUERY_RESULT = 34918
 
gl_QUERY_COUNTER_BITS :: GLenum
gl_QUERY_COUNTER_BITS = 34916
 
gl_ELEMENT_ARRAY_BUFFER_BINDING :: GLenum
gl_ELEMENT_ARRAY_BUFFER_BINDING = 34965
 
gl_ELEMENT_ARRAY_BUFFER :: GLenum
gl_ELEMENT_ARRAY_BUFFER = 34963
 
gl_DYNAMIC_READ :: GLenum
gl_DYNAMIC_READ = 35049
 
gl_DYNAMIC_DRAW :: GLenum
gl_DYNAMIC_DRAW = 35048
 
gl_DYNAMIC_COPY :: GLenum
gl_DYNAMIC_COPY = 35050
 
gl_CURRENT_QUERY :: GLenum
gl_CURRENT_QUERY = 34917
 
gl_BUFFER_USAGE :: GLenum
gl_BUFFER_USAGE = 34661
 
gl_BUFFER_SIZE :: GLenum
gl_BUFFER_SIZE = 34660
 
gl_BUFFER_MAP_POINTER :: GLenum
gl_BUFFER_MAP_POINTER = 35005
 
gl_BUFFER_MAPPED :: GLenum
gl_BUFFER_MAPPED = 35004
 
gl_BUFFER_ACCESS :: GLenum
gl_BUFFER_ACCESS = 35003
 
gl_ARRAY_BUFFER_BINDING :: GLenum
gl_ARRAY_BUFFER_BINDING = 34964
 
gl_ARRAY_BUFFER :: GLenum
gl_ARRAY_BUFFER = 34962