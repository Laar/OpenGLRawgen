{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.VertexBufferObject
       (glUnmapBufferARB, glMapBufferARB, glIsBufferARB,
        glGetBufferSubDataARB, glGetBufferPointervARB,
        glGetBufferParameterivARB, glGenBuffersARB, glDeleteBuffersARB,
        glBufferSubDataARB, glBufferDataARB, glBindBufferARB,
        gl_WRITE_ONLY_ARB, gl_WEIGHT_ARRAY_BUFFER_BINDING_ARB,
        gl_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB,
        gl_VERTEX_ARRAY_BUFFER_BINDING_ARB,
        gl_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB, gl_STREAM_READ_ARB,
        gl_STREAM_DRAW_ARB, gl_STREAM_COPY_ARB, gl_STATIC_READ_ARB,
        gl_STATIC_DRAW_ARB, gl_STATIC_COPY_ARB,
        gl_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB, gl_READ_WRITE_ARB,
        gl_READ_ONLY_ARB, gl_NORMAL_ARRAY_BUFFER_BINDING_ARB,
        gl_INDEX_ARRAY_BUFFER_BINDING_ARB,
        gl_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB,
        gl_ELEMENT_ARRAY_BUFFER_BINDING_ARB, gl_ELEMENT_ARRAY_BUFFER_ARB,
        gl_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB, gl_DYNAMIC_READ_ARB,
        gl_DYNAMIC_DRAW_ARB, gl_DYNAMIC_COPY_ARB,
        gl_COLOR_ARRAY_BUFFER_BINDING_ARB, gl_BUFFER_USAGE_ARB,
        gl_BUFFER_SIZE_ARB, gl_BUFFER_MAP_POINTER_ARB,
        gl_BUFFER_MAPPED_ARB, gl_BUFFER_ACCESS_ARB,
        gl_ARRAY_BUFFER_BINDING_ARB, gl_ARRAY_BUFFER_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUnmapBufferARB #-}
 
ptr_glUnmapBufferARB :: FunPtr a
ptr_glUnmapBufferARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glUnmapBufferARB"
 
glUnmapBufferARB :: GLenum -> IO GLboolean
glUnmapBufferARB = dyn_glUnmapBufferARB ptr_glUnmapBufferARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUnmapBufferARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLboolean)
 
{-# NOINLINE ptr_glMapBufferARB #-}
 
ptr_glMapBufferARB :: FunPtr a
ptr_glMapBufferARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glMapBufferARB"
 
glMapBufferARB :: GLenum -> GLenum -> IO (Ptr a)
glMapBufferARB = dyn_glMapBufferARB ptr_glMapBufferARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapBufferARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO (Ptr a))
 
{-# NOINLINE ptr_glIsBufferARB #-}
 
ptr_glIsBufferARB :: FunPtr a
ptr_glIsBufferARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glIsBufferARB"
 
glIsBufferARB :: GLuint -> IO GLboolean
glIsBufferARB = dyn_glIsBufferARB ptr_glIsBufferARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsBufferARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetBufferSubDataARB #-}
 
ptr_glGetBufferSubDataARB :: FunPtr a
ptr_glGetBufferSubDataARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glGetBufferSubDataARB"
 
glGetBufferSubDataARB ::
                      GLenum -> GLintptr -> GLsizeiptr -> Ptr a -> IO ()
glGetBufferSubDataARB
  = dyn_glGetBufferSubDataARB ptr_glGetBufferSubDataARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetBufferSubDataARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLintptr -> GLsizeiptr -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetBufferPointervARB #-}
 
ptr_glGetBufferPointervARB :: FunPtr a
ptr_glGetBufferPointervARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glGetBufferPointervARB"
 
glGetBufferPointervARB :: GLenum -> GLenum -> Ptr (Ptr a) -> IO ()
glGetBufferPointervARB
  = dyn_glGetBufferPointervARB ptr_glGetBufferPointervARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetBufferPointervARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glGetBufferParameterivARB #-}
 
ptr_glGetBufferParameterivARB :: FunPtr a
ptr_glGetBufferParameterivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glGetBufferParameterivARB"
 
glGetBufferParameterivARB :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetBufferParameterivARB
  = dyn_glGetBufferParameterivARB ptr_glGetBufferParameterivARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetBufferParameterivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGenBuffersARB #-}
 
ptr_glGenBuffersARB :: FunPtr a
ptr_glGenBuffersARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glGenBuffersARB"
 
glGenBuffersARB :: GLsizei -> Ptr GLuint -> IO ()
glGenBuffersARB = dyn_glGenBuffersARB ptr_glGenBuffersARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenBuffersARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteBuffersARB #-}
 
ptr_glDeleteBuffersARB :: FunPtr a
ptr_glDeleteBuffersARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glDeleteBuffersARB"
 
glDeleteBuffersARB :: GLsizei -> Ptr GLuint -> IO ()
glDeleteBuffersARB = dyn_glDeleteBuffersARB ptr_glDeleteBuffersARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteBuffersARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBufferSubDataARB #-}
 
ptr_glBufferSubDataARB :: FunPtr a
ptr_glBufferSubDataARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glBufferSubDataARB"
 
glBufferSubDataARB ::
                   GLenum -> GLintptr -> GLsizeiptr -> Ptr a -> IO ()
glBufferSubDataARB = dyn_glBufferSubDataARB ptr_glBufferSubDataARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glBufferSubDataARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLintptr -> GLsizeiptr -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glBufferDataARB #-}
 
ptr_glBufferDataARB :: FunPtr a
ptr_glBufferDataARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glBufferDataARB"
 
glBufferDataARB :: GLenum -> GLsizeiptr -> Ptr a -> GLenum -> IO ()
glBufferDataARB = dyn_glBufferDataARB ptr_glBufferDataARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glBufferDataARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizeiptr -> Ptr a -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBindBufferARB #-}
 
ptr_glBindBufferARB :: FunPtr a
ptr_glBindBufferARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_buffer_object"
        "glBindBufferARB"
 
glBindBufferARB :: GLenum -> GLuint -> IO ()
glBindBufferARB = dyn_glBindBufferARB ptr_glBindBufferARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindBufferARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
gl_WRITE_ONLY_ARB :: GLenum
gl_WRITE_ONLY_ARB = 35001
 
gl_WEIGHT_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_WEIGHT_ARRAY_BUFFER_BINDING_ARB = 34974
 
gl_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB = 34975
 
gl_VERTEX_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_VERTEX_ARRAY_BUFFER_BINDING_ARB = 34966
 
gl_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB = 34970
 
gl_STREAM_READ_ARB :: GLenum
gl_STREAM_READ_ARB = 35041
 
gl_STREAM_DRAW_ARB :: GLenum
gl_STREAM_DRAW_ARB = 35040
 
gl_STREAM_COPY_ARB :: GLenum
gl_STREAM_COPY_ARB = 35042
 
gl_STATIC_READ_ARB :: GLenum
gl_STATIC_READ_ARB = 35045
 
gl_STATIC_DRAW_ARB :: GLenum
gl_STATIC_DRAW_ARB = 35044
 
gl_STATIC_COPY_ARB :: GLenum
gl_STATIC_COPY_ARB = 35046
 
gl_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB = 34972
 
gl_READ_WRITE_ARB :: GLenum
gl_READ_WRITE_ARB = 35002
 
gl_READ_ONLY_ARB :: GLenum
gl_READ_ONLY_ARB = 35000
 
gl_NORMAL_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_NORMAL_ARRAY_BUFFER_BINDING_ARB = 34967
 
gl_INDEX_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_INDEX_ARRAY_BUFFER_BINDING_ARB = 34969
 
gl_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB = 34973
 
gl_ELEMENT_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_ELEMENT_ARRAY_BUFFER_BINDING_ARB = 34965
 
gl_ELEMENT_ARRAY_BUFFER_ARB :: GLenum
gl_ELEMENT_ARRAY_BUFFER_ARB = 34963
 
gl_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB = 34971
 
gl_DYNAMIC_READ_ARB :: GLenum
gl_DYNAMIC_READ_ARB = 35049
 
gl_DYNAMIC_DRAW_ARB :: GLenum
gl_DYNAMIC_DRAW_ARB = 35048
 
gl_DYNAMIC_COPY_ARB :: GLenum
gl_DYNAMIC_COPY_ARB = 35050
 
gl_COLOR_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_COLOR_ARRAY_BUFFER_BINDING_ARB = 34968
 
gl_BUFFER_USAGE_ARB :: GLenum
gl_BUFFER_USAGE_ARB = 34661
 
gl_BUFFER_SIZE_ARB :: GLenum
gl_BUFFER_SIZE_ARB = 34660
 
gl_BUFFER_MAP_POINTER_ARB :: GLenum
gl_BUFFER_MAP_POINTER_ARB = 35005
 
gl_BUFFER_MAPPED_ARB :: GLenum
gl_BUFFER_MAPPED_ARB = 35004
 
gl_BUFFER_ACCESS_ARB :: GLenum
gl_BUFFER_ACCESS_ARB = 35003
 
gl_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_ARRAY_BUFFER_BINDING_ARB = 34964
 
gl_ARRAY_BUFFER_ARB :: GLenum
gl_ARRAY_BUFFER_ARB = 34962