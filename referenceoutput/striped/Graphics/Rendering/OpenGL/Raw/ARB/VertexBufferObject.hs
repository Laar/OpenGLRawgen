{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.VertexBufferObject
       (glUnmapBuffer, glMapBuffer, glIsBuffer, glGetBufferSubData,
        glGetBufferPointerv, glGetBufferParameteriv, glGenBuffers,
        glDeleteBuffers, glBufferSubData, glBufferData, glBindBuffer,
        gl_WRITE_ONLY, gl_WEIGHT_ARRAY_BUFFER_BINDING,
        gl_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING,
        gl_VERTEX_ARRAY_BUFFER_BINDING,
        gl_TEXTURE_COORD_ARRAY_BUFFER_BINDING, gl_STREAM_READ,
        gl_STREAM_DRAW, gl_STREAM_COPY, gl_STATIC_READ, gl_STATIC_DRAW,
        gl_STATIC_COPY, gl_SECONDARY_COLOR_ARRAY_BUFFER_BINDING,
        gl_READ_WRITE, gl_READ_ONLY, gl_NORMAL_ARRAY_BUFFER_BINDING,
        gl_INDEX_ARRAY_BUFFER_BINDING,
        gl_FOG_COORDINATE_ARRAY_BUFFER_BINDING,
        gl_ELEMENT_ARRAY_BUFFER_BINDING, gl_ELEMENT_ARRAY_BUFFER,
        gl_EDGE_FLAG_ARRAY_BUFFER_BINDING, gl_DYNAMIC_READ,
        gl_DYNAMIC_DRAW, gl_DYNAMIC_COPY, gl_COLOR_ARRAY_BUFFER_BINDING,
        gl_BUFFER_USAGE, gl_BUFFER_SIZE, gl_BUFFER_MAP_POINTER,
        gl_BUFFER_MAPPED, gl_BUFFER_ACCESS, gl_ARRAY_BUFFER_BINDING,
        gl_ARRAY_BUFFER)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUnmapBuffer #-}
 
ptr_glUnmapBuffer :: FunPtr a
ptr_glUnmapBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glUnmapBufferARB"
 
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
        "GL_ARB_vertex_buffer_object"
        "glMapBufferARB"
 
glMapBuffer :: GLenum -> GLenum -> IO (Ptr a)
glMapBuffer = dyn_glMapBuffer ptr_glMapBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO (Ptr a))
 
{-# NOINLINE ptr_glIsBuffer #-}
 
ptr_glIsBuffer :: FunPtr a
ptr_glIsBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glIsBufferARB"
 
glIsBuffer :: GLuint -> IO GLboolean
glIsBuffer = dyn_glIsBuffer ptr_glIsBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetBufferSubData #-}
 
ptr_glGetBufferSubData :: FunPtr a
ptr_glGetBufferSubData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glGetBufferSubDataARB"
 
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
        "GL_ARB_vertex_buffer_object"
        "glGetBufferPointervARB"
 
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
        "GL_ARB_vertex_buffer_object"
        "glGetBufferParameterivARB"
 
glGetBufferParameteriv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetBufferParameteriv
  = dyn_glGetBufferParameteriv ptr_glGetBufferParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetBufferParameteriv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGenBuffers #-}
 
ptr_glGenBuffers :: FunPtr a
ptr_glGenBuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glGenBuffersARB"
 
glGenBuffers :: GLsizei -> Ptr GLuint -> IO ()
glGenBuffers = dyn_glGenBuffers ptr_glGenBuffers
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenBuffers ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteBuffers #-}
 
ptr_glDeleteBuffers :: FunPtr a
ptr_glDeleteBuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glDeleteBuffersARB"
 
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
        "GL_ARB_vertex_buffer_object"
        "glBufferSubDataARB"
 
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
        "GL_ARB_vertex_buffer_object"
        "glBufferDataARB"
 
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
        "GL_ARB_vertex_buffer_object"
        "glBindBufferARB"
 
glBindBuffer :: GLenum -> GLuint -> IO ()
glBindBuffer = dyn_glBindBuffer ptr_glBindBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
gl_WRITE_ONLY :: GLenum
gl_WRITE_ONLY = 35001
 
gl_WEIGHT_ARRAY_BUFFER_BINDING :: GLenum
gl_WEIGHT_ARRAY_BUFFER_BINDING = 34974
 
gl_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING :: GLenum
gl_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 34975
 
gl_VERTEX_ARRAY_BUFFER_BINDING :: GLenum
gl_VERTEX_ARRAY_BUFFER_BINDING = 34966
 
gl_TEXTURE_COORD_ARRAY_BUFFER_BINDING :: GLenum
gl_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 34970
 
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
 
gl_SECONDARY_COLOR_ARRAY_BUFFER_BINDING :: GLenum
gl_SECONDARY_COLOR_ARRAY_BUFFER_BINDING = 34972
 
gl_READ_WRITE :: GLenum
gl_READ_WRITE = 35002
 
gl_READ_ONLY :: GLenum
gl_READ_ONLY = 35000
 
gl_NORMAL_ARRAY_BUFFER_BINDING :: GLenum
gl_NORMAL_ARRAY_BUFFER_BINDING = 34967
 
gl_INDEX_ARRAY_BUFFER_BINDING :: GLenum
gl_INDEX_ARRAY_BUFFER_BINDING = 34969
 
gl_FOG_COORDINATE_ARRAY_BUFFER_BINDING :: GLenum
gl_FOG_COORDINATE_ARRAY_BUFFER_BINDING = 34973
 
gl_ELEMENT_ARRAY_BUFFER_BINDING :: GLenum
gl_ELEMENT_ARRAY_BUFFER_BINDING = 34965
 
gl_ELEMENT_ARRAY_BUFFER :: GLenum
gl_ELEMENT_ARRAY_BUFFER = 34963
 
gl_EDGE_FLAG_ARRAY_BUFFER_BINDING :: GLenum
gl_EDGE_FLAG_ARRAY_BUFFER_BINDING = 34971
 
gl_DYNAMIC_READ :: GLenum
gl_DYNAMIC_READ = 35049
 
gl_DYNAMIC_DRAW :: GLenum
gl_DYNAMIC_DRAW = 35048
 
gl_DYNAMIC_COPY :: GLenum
gl_DYNAMIC_COPY = 35050
 
gl_COLOR_ARRAY_BUFFER_BINDING :: GLenum
gl_COLOR_ARRAY_BUFFER_BINDING = 34968
 
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