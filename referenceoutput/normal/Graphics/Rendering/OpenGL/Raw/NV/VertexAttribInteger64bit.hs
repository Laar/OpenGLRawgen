{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexAttribInteger64bit
       (glVertexAttribLFormatNV, glVertexAttribL4ui64vNV,
        glVertexAttribL4ui64NV, glVertexAttribL4i64vNV,
        glVertexAttribL4i64NV, glVertexAttribL3ui64vNV,
        glVertexAttribL3ui64NV, glVertexAttribL3i64vNV,
        glVertexAttribL3i64NV, glVertexAttribL2ui64vNV,
        glVertexAttribL2ui64NV, glVertexAttribL2i64vNV,
        glVertexAttribL2i64NV, glVertexAttribL1ui64vNV,
        glVertexAttribL1ui64NV, glVertexAttribL1i64vNV,
        glVertexAttribL1i64NV, glGetVertexAttribLui64vNV,
        glGetVertexAttribLi64vNV, gl_UNSIGNED_INT64_NV, gl_INT64_NV)
       where
import Graphics.Rendering.OpenGL.Raw.NV.GpuShader5
       (gl_UNSIGNED_INT64_NV, gl_INT64_NV)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribLFormatNV #-}
 
ptr_glVertexAttribLFormatNV :: FunPtr a
ptr_glVertexAttribLFormatNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribLFormatNV"
 
glVertexAttribLFormatNV ::
                        GLuint -> GLint -> GLenum -> GLsizei -> IO ()
glVertexAttribLFormatNV
  = dyn_glVertexAttribLFormatNV ptr_glVertexAttribLFormatNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribLFormatNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL4ui64vNV #-}
 
ptr_glVertexAttribL4ui64vNV :: FunPtr a
ptr_glVertexAttribL4ui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL4ui64vNV"
 
glVertexAttribL4ui64vNV :: GLuint -> Ptr GLuint64 -> IO ()
glVertexAttribL4ui64vNV
  = dyn_glVertexAttribL4ui64vNV ptr_glVertexAttribL4ui64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL4ui64vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL4ui64NV #-}
 
ptr_glVertexAttribL4ui64NV :: FunPtr a
ptr_glVertexAttribL4ui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL4ui64NV"
 
glVertexAttribL4ui64NV ::
                       GLuint -> GLuint64 -> GLuint64 -> GLuint64 -> GLuint64 -> IO ()
glVertexAttribL4ui64NV
  = dyn_glVertexAttribL4ui64NV ptr_glVertexAttribL4ui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL4ui64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint64 -> GLuint64 -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL4i64vNV #-}
 
ptr_glVertexAttribL4i64vNV :: FunPtr a
ptr_glVertexAttribL4i64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL4i64vNV"
 
glVertexAttribL4i64vNV :: GLuint -> Ptr GLint64 -> IO ()
glVertexAttribL4i64vNV
  = dyn_glVertexAttribL4i64vNV ptr_glVertexAttribL4i64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL4i64vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL4i64NV #-}
 
ptr_glVertexAttribL4i64NV :: FunPtr a
ptr_glVertexAttribL4i64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL4i64NV"
 
glVertexAttribL4i64NV ::
                      GLuint -> GLint64 -> GLint64 -> GLint64 -> GLint64 -> IO ()
glVertexAttribL4i64NV
  = dyn_glVertexAttribL4i64NV ptr_glVertexAttribL4i64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL4i64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint64 -> GLint64 -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL3ui64vNV #-}
 
ptr_glVertexAttribL3ui64vNV :: FunPtr a
ptr_glVertexAttribL3ui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL3ui64vNV"
 
glVertexAttribL3ui64vNV :: GLuint -> Ptr GLuint64 -> IO ()
glVertexAttribL3ui64vNV
  = dyn_glVertexAttribL3ui64vNV ptr_glVertexAttribL3ui64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL3ui64vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL3ui64NV #-}
 
ptr_glVertexAttribL3ui64NV :: FunPtr a
ptr_glVertexAttribL3ui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL3ui64NV"
 
glVertexAttribL3ui64NV ::
                       GLuint -> GLuint64 -> GLuint64 -> GLuint64 -> IO ()
glVertexAttribL3ui64NV
  = dyn_glVertexAttribL3ui64NV ptr_glVertexAttribL3ui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL3ui64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint64 -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL3i64vNV #-}
 
ptr_glVertexAttribL3i64vNV :: FunPtr a
ptr_glVertexAttribL3i64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL3i64vNV"
 
glVertexAttribL3i64vNV :: GLuint -> Ptr GLint64 -> IO ()
glVertexAttribL3i64vNV
  = dyn_glVertexAttribL3i64vNV ptr_glVertexAttribL3i64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL3i64vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL3i64NV #-}
 
ptr_glVertexAttribL3i64NV :: FunPtr a
ptr_glVertexAttribL3i64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL3i64NV"
 
glVertexAttribL3i64NV ::
                      GLuint -> GLint64 -> GLint64 -> GLint64 -> IO ()
glVertexAttribL3i64NV
  = dyn_glVertexAttribL3i64NV ptr_glVertexAttribL3i64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL3i64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint64 -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL2ui64vNV #-}
 
ptr_glVertexAttribL2ui64vNV :: FunPtr a
ptr_glVertexAttribL2ui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL2ui64vNV"
 
glVertexAttribL2ui64vNV :: GLuint -> Ptr GLuint64 -> IO ()
glVertexAttribL2ui64vNV
  = dyn_glVertexAttribL2ui64vNV ptr_glVertexAttribL2ui64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL2ui64vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL2ui64NV #-}
 
ptr_glVertexAttribL2ui64NV :: FunPtr a
ptr_glVertexAttribL2ui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL2ui64NV"
 
glVertexAttribL2ui64NV :: GLuint -> GLuint64 -> GLuint64 -> IO ()
glVertexAttribL2ui64NV
  = dyn_glVertexAttribL2ui64NV ptr_glVertexAttribL2ui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL2ui64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL2i64vNV #-}
 
ptr_glVertexAttribL2i64vNV :: FunPtr a
ptr_glVertexAttribL2i64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL2i64vNV"
 
glVertexAttribL2i64vNV :: GLuint -> Ptr GLint64 -> IO ()
glVertexAttribL2i64vNV
  = dyn_glVertexAttribL2i64vNV ptr_glVertexAttribL2i64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL2i64vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL2i64NV #-}
 
ptr_glVertexAttribL2i64NV :: FunPtr a
ptr_glVertexAttribL2i64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL2i64NV"
 
glVertexAttribL2i64NV :: GLuint -> GLint64 -> GLint64 -> IO ()
glVertexAttribL2i64NV
  = dyn_glVertexAttribL2i64NV ptr_glVertexAttribL2i64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL2i64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL1ui64vNV #-}
 
ptr_glVertexAttribL1ui64vNV :: FunPtr a
ptr_glVertexAttribL1ui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL1ui64vNV"
 
glVertexAttribL1ui64vNV :: GLuint -> Ptr GLuint64 -> IO ()
glVertexAttribL1ui64vNV
  = dyn_glVertexAttribL1ui64vNV ptr_glVertexAttribL1ui64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL1ui64vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL1ui64NV #-}
 
ptr_glVertexAttribL1ui64NV :: FunPtr a
ptr_glVertexAttribL1ui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL1ui64NV"
 
glVertexAttribL1ui64NV :: GLuint -> GLuint64 -> IO ()
glVertexAttribL1ui64NV
  = dyn_glVertexAttribL1ui64NV ptr_glVertexAttribL1ui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL1ui64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL1i64vNV #-}
 
ptr_glVertexAttribL1i64vNV :: FunPtr a
ptr_glVertexAttribL1i64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL1i64vNV"
 
glVertexAttribL1i64vNV :: GLuint -> Ptr GLint64 -> IO ()
glVertexAttribL1i64vNV
  = dyn_glVertexAttribL1i64vNV ptr_glVertexAttribL1i64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL1i64vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL1i64NV #-}
 
ptr_glVertexAttribL1i64NV :: FunPtr a
ptr_glVertexAttribL1i64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glVertexAttribL1i64NV"
 
glVertexAttribL1i64NV :: GLuint -> GLint64 -> IO ()
glVertexAttribL1i64NV
  = dyn_glVertexAttribL1i64NV ptr_glVertexAttribL1i64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL1i64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribLui64vNV #-}
 
ptr_glGetVertexAttribLui64vNV :: FunPtr a
ptr_glGetVertexAttribLui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glGetVertexAttribLui64vNV"
 
glGetVertexAttribLui64vNV ::
                          GLuint -> GLenum -> Ptr GLuint64 -> IO ()
glGetVertexAttribLui64vNV
  = dyn_glGetVertexAttribLui64vNV ptr_glGetVertexAttribLui64vNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVertexAttribLui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribLi64vNV #-}
 
ptr_glGetVertexAttribLi64vNV :: FunPtr a
ptr_glGetVertexAttribLi64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_attrib_integer_64bit"
        "glGetVertexAttribLi64vNV"
 
glGetVertexAttribLi64vNV ::
                         GLuint -> GLenum -> Ptr GLint64 -> IO ()
glGetVertexAttribLi64vNV
  = dyn_glGetVertexAttribLi64vNV ptr_glGetVertexAttribLi64vNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVertexAttribLi64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint64 -> IO ())