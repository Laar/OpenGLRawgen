{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexAttribInteger64bit
       (glVertexAttribLFormat, glVertexAttribL4ui64v,
        glVertexAttribL4ui64, glVertexAttribL4i64v, glVertexAttribL4i64,
        glVertexAttribL3ui64v, glVertexAttribL3ui64, glVertexAttribL3i64v,
        glVertexAttribL3i64, glVertexAttribL2ui64v, glVertexAttribL2ui64,
        glVertexAttribL2i64v, glVertexAttribL2i64, glVertexAttribL1ui64v,
        glVertexAttribL1ui64, glVertexAttribL1i64v, glVertexAttribL1i64,
        glGetVertexAttribLui64v, glGetVertexAttribLi64v, gl_UNSIGNED_INT64,
        gl_INT64)
       where
import Graphics.Rendering.OpenGL.Raw.NV.GpuShader5
       (gl_UNSIGNED_INT64, gl_INT64)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribLFormat #-}
 
ptr_glVertexAttribLFormat :: FunPtr a
ptr_glVertexAttribLFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribLFormatNV"
 
glVertexAttribLFormat ::
                      GLuint -> GLint -> GLenum -> GLsizei -> IO ()
glVertexAttribLFormat
  = dyn_glVertexAttribLFormat ptr_glVertexAttribLFormat
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribLFormat
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL4ui64v #-}
 
ptr_glVertexAttribL4ui64v :: FunPtr a
ptr_glVertexAttribL4ui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL4ui64vNV"
 
glVertexAttribL4ui64v :: GLuint -> Ptr GLuint64 -> IO ()
glVertexAttribL4ui64v
  = dyn_glVertexAttribL4ui64v ptr_glVertexAttribL4ui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL4ui64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL4ui64 #-}
 
ptr_glVertexAttribL4ui64 :: FunPtr a
ptr_glVertexAttribL4ui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL4ui64NV"
 
glVertexAttribL4ui64 ::
                     GLuint -> GLuint64 -> GLuint64 -> GLuint64 -> GLuint64 -> IO ()
glVertexAttribL4ui64
  = dyn_glVertexAttribL4ui64 ptr_glVertexAttribL4ui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL4ui64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint64 -> GLuint64 -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL4i64v #-}
 
ptr_glVertexAttribL4i64v :: FunPtr a
ptr_glVertexAttribL4i64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL4i64vNV"
 
glVertexAttribL4i64v :: GLuint -> Ptr GLint64 -> IO ()
glVertexAttribL4i64v
  = dyn_glVertexAttribL4i64v ptr_glVertexAttribL4i64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL4i64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL4i64 #-}
 
ptr_glVertexAttribL4i64 :: FunPtr a
ptr_glVertexAttribL4i64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL4i64NV"
 
glVertexAttribL4i64 ::
                    GLuint -> GLint64 -> GLint64 -> GLint64 -> GLint64 -> IO ()
glVertexAttribL4i64
  = dyn_glVertexAttribL4i64 ptr_glVertexAttribL4i64
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL4i64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint64 -> GLint64 -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL3ui64v #-}
 
ptr_glVertexAttribL3ui64v :: FunPtr a
ptr_glVertexAttribL3ui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL3ui64vNV"
 
glVertexAttribL3ui64v :: GLuint -> Ptr GLuint64 -> IO ()
glVertexAttribL3ui64v
  = dyn_glVertexAttribL3ui64v ptr_glVertexAttribL3ui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL3ui64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL3ui64 #-}
 
ptr_glVertexAttribL3ui64 :: FunPtr a
ptr_glVertexAttribL3ui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL3ui64NV"
 
glVertexAttribL3ui64 ::
                     GLuint -> GLuint64 -> GLuint64 -> GLuint64 -> IO ()
glVertexAttribL3ui64
  = dyn_glVertexAttribL3ui64 ptr_glVertexAttribL3ui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL3ui64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint64 -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL3i64v #-}
 
ptr_glVertexAttribL3i64v :: FunPtr a
ptr_glVertexAttribL3i64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL3i64vNV"
 
glVertexAttribL3i64v :: GLuint -> Ptr GLint64 -> IO ()
glVertexAttribL3i64v
  = dyn_glVertexAttribL3i64v ptr_glVertexAttribL3i64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL3i64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL3i64 #-}
 
ptr_glVertexAttribL3i64 :: FunPtr a
ptr_glVertexAttribL3i64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL3i64NV"
 
glVertexAttribL3i64 ::
                    GLuint -> GLint64 -> GLint64 -> GLint64 -> IO ()
glVertexAttribL3i64
  = dyn_glVertexAttribL3i64 ptr_glVertexAttribL3i64
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL3i64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint64 -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL2ui64v #-}
 
ptr_glVertexAttribL2ui64v :: FunPtr a
ptr_glVertexAttribL2ui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL2ui64vNV"
 
glVertexAttribL2ui64v :: GLuint -> Ptr GLuint64 -> IO ()
glVertexAttribL2ui64v
  = dyn_glVertexAttribL2ui64v ptr_glVertexAttribL2ui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL2ui64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL2ui64 #-}
 
ptr_glVertexAttribL2ui64 :: FunPtr a
ptr_glVertexAttribL2ui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL2ui64NV"
 
glVertexAttribL2ui64 :: GLuint -> GLuint64 -> GLuint64 -> IO ()
glVertexAttribL2ui64
  = dyn_glVertexAttribL2ui64 ptr_glVertexAttribL2ui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL2ui64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL2i64v #-}
 
ptr_glVertexAttribL2i64v :: FunPtr a
ptr_glVertexAttribL2i64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL2i64vNV"
 
glVertexAttribL2i64v :: GLuint -> Ptr GLint64 -> IO ()
glVertexAttribL2i64v
  = dyn_glVertexAttribL2i64v ptr_glVertexAttribL2i64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL2i64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL2i64 #-}
 
ptr_glVertexAttribL2i64 :: FunPtr a
ptr_glVertexAttribL2i64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL2i64NV"
 
glVertexAttribL2i64 :: GLuint -> GLint64 -> GLint64 -> IO ()
glVertexAttribL2i64
  = dyn_glVertexAttribL2i64 ptr_glVertexAttribL2i64
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL2i64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL1ui64v #-}
 
ptr_glVertexAttribL1ui64v :: FunPtr a
ptr_glVertexAttribL1ui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL1ui64vNV"
 
glVertexAttribL1ui64v :: GLuint -> Ptr GLuint64 -> IO ()
glVertexAttribL1ui64v
  = dyn_glVertexAttribL1ui64v ptr_glVertexAttribL1ui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL1ui64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL1ui64 #-}
 
ptr_glVertexAttribL1ui64 :: FunPtr a
ptr_glVertexAttribL1ui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL1ui64NV"
 
glVertexAttribL1ui64 :: GLuint -> GLuint64 -> IO ()
glVertexAttribL1ui64
  = dyn_glVertexAttribL1ui64 ptr_glVertexAttribL1ui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL1ui64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL1i64v #-}
 
ptr_glVertexAttribL1i64v :: FunPtr a
ptr_glVertexAttribL1i64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL1i64vNV"
 
glVertexAttribL1i64v :: GLuint -> Ptr GLint64 -> IO ()
glVertexAttribL1i64v
  = dyn_glVertexAttribL1i64v ptr_glVertexAttribL1i64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL1i64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL1i64 #-}
 
ptr_glVertexAttribL1i64 :: FunPtr a
ptr_glVertexAttribL1i64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL1i64NV"
 
glVertexAttribL1i64 :: GLuint -> GLint64 -> IO ()
glVertexAttribL1i64
  = dyn_glVertexAttribL1i64 ptr_glVertexAttribL1i64
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL1i64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribLui64v #-}
 
ptr_glGetVertexAttribLui64v :: FunPtr a
ptr_glGetVertexAttribLui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glGetVertexAttribLui64vNV"
 
glGetVertexAttribLui64v ::
                        GLuint -> GLenum -> Ptr GLuint64 -> IO ()
glGetVertexAttribLui64v
  = dyn_glGetVertexAttribLui64v ptr_glGetVertexAttribLui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribLui64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribLi64v #-}
 
ptr_glGetVertexAttribLi64v :: FunPtr a
ptr_glGetVertexAttribLi64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glGetVertexAttribLi64vNV"
 
glGetVertexAttribLi64v :: GLuint -> GLenum -> Ptr GLint64 -> IO ()
glGetVertexAttribLi64v
  = dyn_glGetVertexAttribLi64v ptr_glGetVertexAttribLi64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribLi64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint64 -> IO ())