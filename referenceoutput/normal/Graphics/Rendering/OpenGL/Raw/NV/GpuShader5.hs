{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.GpuShader5
       (glUniform4ui64vNV, glUniform4ui64NV, glUniform4i64vNV,
        glUniform4i64NV, glUniform3ui64vNV, glUniform3ui64NV,
        glUniform3i64vNV, glUniform3i64NV, glUniform2ui64vNV,
        glUniform2ui64NV, glUniform2i64vNV, glUniform2i64NV,
        glUniform1ui64vNV, glUniform1ui64NV, glUniform1i64vNV,
        glUniform1i64NV, glProgramUniform4ui64vNV, glProgramUniform4ui64NV,
        glProgramUniform4i64vNV, glProgramUniform4i64NV,
        glProgramUniform3ui64vNV, glProgramUniform3ui64NV,
        glProgramUniform3i64vNV, glProgramUniform3i64NV,
        glProgramUniform2ui64vNV, glProgramUniform2ui64NV,
        glProgramUniform2i64vNV, glProgramUniform2i64NV,
        glProgramUniform1ui64vNV, glProgramUniform1ui64NV,
        glProgramUniform1i64vNV, glProgramUniform1i64NV,
        glGetUniformi64vNV, gl_UNSIGNED_INT8_VEC4_NV,
        gl_UNSIGNED_INT8_VEC3_NV, gl_UNSIGNED_INT8_VEC2_NV,
        gl_UNSIGNED_INT8_NV, gl_UNSIGNED_INT64_VEC4_NV,
        gl_UNSIGNED_INT64_VEC3_NV, gl_UNSIGNED_INT64_VEC2_NV,
        gl_UNSIGNED_INT64_NV, gl_UNSIGNED_INT16_VEC4_NV,
        gl_UNSIGNED_INT16_VEC3_NV, gl_UNSIGNED_INT16_VEC2_NV,
        gl_UNSIGNED_INT16_NV, gl_PATCHES, gl_INT8_VEC4_NV, gl_INT8_VEC3_NV,
        gl_INT8_VEC2_NV, gl_INT8_NV, gl_INT64_VEC4_NV, gl_INT64_VEC3_NV,
        gl_INT64_VEC2_NV, gl_INT64_NV, gl_INT16_VEC4_NV, gl_INT16_VEC3_NV,
        gl_INT16_VEC2_NV, gl_INT16_NV, gl_FLOAT16_VEC4_NV,
        gl_FLOAT16_VEC3_NV, gl_FLOAT16_VEC2_NV, gl_FLOAT16_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core40
       (gl_PATCHES)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUniform4ui64vNV #-}
 
ptr_glUniform4ui64vNV :: FunPtr a
ptr_glUniform4ui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform4ui64vNV"
 
glUniform4ui64vNV :: GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glUniform4ui64vNV = dyn_glUniform4ui64vNV ptr_glUniform4ui64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4ui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform4ui64NV #-}
 
ptr_glUniform4ui64NV :: FunPtr a
ptr_glUniform4ui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform4ui64NV"
 
glUniform4ui64NV ::
                 GLint -> GLuint64 -> GLuint64 -> GLuint64 -> GLuint64 -> IO ()
glUniform4ui64NV = dyn_glUniform4ui64NV ptr_glUniform4ui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4ui64NV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint64 -> GLuint64 -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform4i64vNV #-}
 
ptr_glUniform4i64vNV :: FunPtr a
ptr_glUniform4i64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform4i64vNV"
 
glUniform4i64vNV :: GLint -> GLsizei -> Ptr GLint64 -> IO ()
glUniform4i64vNV = dyn_glUniform4i64vNV ptr_glUniform4i64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4i64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glUniform4i64NV #-}
 
ptr_glUniform4i64NV :: FunPtr a
ptr_glUniform4i64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform4i64NV"
 
glUniform4i64NV ::
                GLint -> GLint64 -> GLint64 -> GLint64 -> GLint64 -> IO ()
glUniform4i64NV = dyn_glUniform4i64NV ptr_glUniform4i64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4i64NV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint64 -> GLint64 -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glUniform3ui64vNV #-}
 
ptr_glUniform3ui64vNV :: FunPtr a
ptr_glUniform3ui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform3ui64vNV"
 
glUniform3ui64vNV :: GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glUniform3ui64vNV = dyn_glUniform3ui64vNV ptr_glUniform3ui64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3ui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform3ui64NV #-}
 
ptr_glUniform3ui64NV :: FunPtr a
ptr_glUniform3ui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform3ui64NV"
 
glUniform3ui64NV ::
                 GLint -> GLuint64 -> GLuint64 -> GLuint64 -> IO ()
glUniform3ui64NV = dyn_glUniform3ui64NV ptr_glUniform3ui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3ui64NV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint64 -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform3i64vNV #-}
 
ptr_glUniform3i64vNV :: FunPtr a
ptr_glUniform3i64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform3i64vNV"
 
glUniform3i64vNV :: GLint -> GLsizei -> Ptr GLint64 -> IO ()
glUniform3i64vNV = dyn_glUniform3i64vNV ptr_glUniform3i64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3i64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glUniform3i64NV #-}
 
ptr_glUniform3i64NV :: FunPtr a
ptr_glUniform3i64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform3i64NV"
 
glUniform3i64NV :: GLint -> GLint64 -> GLint64 -> GLint64 -> IO ()
glUniform3i64NV = dyn_glUniform3i64NV ptr_glUniform3i64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3i64NV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint64 -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glUniform2ui64vNV #-}
 
ptr_glUniform2ui64vNV :: FunPtr a
ptr_glUniform2ui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform2ui64vNV"
 
glUniform2ui64vNV :: GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glUniform2ui64vNV = dyn_glUniform2ui64vNV ptr_glUniform2ui64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2ui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform2ui64NV #-}
 
ptr_glUniform2ui64NV :: FunPtr a
ptr_glUniform2ui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform2ui64NV"
 
glUniform2ui64NV :: GLint -> GLuint64 -> GLuint64 -> IO ()
glUniform2ui64NV = dyn_glUniform2ui64NV ptr_glUniform2ui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2ui64NV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform2i64vNV #-}
 
ptr_glUniform2i64vNV :: FunPtr a
ptr_glUniform2i64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform2i64vNV"
 
glUniform2i64vNV :: GLint -> GLsizei -> Ptr GLint64 -> IO ()
glUniform2i64vNV = dyn_glUniform2i64vNV ptr_glUniform2i64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2i64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glUniform2i64NV #-}
 
ptr_glUniform2i64NV :: FunPtr a
ptr_glUniform2i64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform2i64NV"
 
glUniform2i64NV :: GLint -> GLint64 -> GLint64 -> IO ()
glUniform2i64NV = dyn_glUniform2i64NV ptr_glUniform2i64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2i64NV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glUniform1ui64vNV #-}
 
ptr_glUniform1ui64vNV :: FunPtr a
ptr_glUniform1ui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform1ui64vNV"
 
glUniform1ui64vNV :: GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glUniform1ui64vNV = dyn_glUniform1ui64vNV ptr_glUniform1ui64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1ui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform1ui64NV #-}
 
ptr_glUniform1ui64NV :: FunPtr a
ptr_glUniform1ui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform1ui64NV"
 
glUniform1ui64NV :: GLint -> GLuint64 -> IO ()
glUniform1ui64NV = dyn_glUniform1ui64NV ptr_glUniform1ui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1ui64NV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform1i64vNV #-}
 
ptr_glUniform1i64vNV :: FunPtr a
ptr_glUniform1i64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform1i64vNV"
 
glUniform1i64vNV :: GLint -> GLsizei -> Ptr GLint64 -> IO ()
glUniform1i64vNV = dyn_glUniform1i64vNV ptr_glUniform1i64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1i64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glUniform1i64NV #-}
 
ptr_glUniform1i64NV :: FunPtr a
ptr_glUniform1i64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform1i64NV"
 
glUniform1i64NV :: GLint -> GLint64 -> IO ()
glUniform1i64NV = dyn_glUniform1i64NV ptr_glUniform1i64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1i64NV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4ui64vNV #-}
 
ptr_glProgramUniform4ui64vNV :: FunPtr a
ptr_glProgramUniform4ui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform4ui64vNV"
 
glProgramUniform4ui64vNV ::
                         GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glProgramUniform4ui64vNV
  = dyn_glProgramUniform4ui64vNV ptr_glProgramUniform4ui64vNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniform4ui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4ui64NV #-}
 
ptr_glProgramUniform4ui64NV :: FunPtr a
ptr_glProgramUniform4ui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform4ui64NV"
 
glProgramUniform4ui64NV ::
                        GLuint ->
                          GLint -> GLuint64 -> GLuint64 -> GLuint64 -> GLuint64 -> IO ()
glProgramUniform4ui64NV
  = dyn_glProgramUniform4ui64NV ptr_glProgramUniform4ui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4ui64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint -> GLuint64 -> GLuint64 -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4i64vNV #-}
 
ptr_glProgramUniform4i64vNV :: FunPtr a
ptr_glProgramUniform4i64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform4i64vNV"
 
glProgramUniform4i64vNV ::
                        GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ()
glProgramUniform4i64vNV
  = dyn_glProgramUniform4i64vNV ptr_glProgramUniform4i64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4i64vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4i64NV #-}
 
ptr_glProgramUniform4i64NV :: FunPtr a
ptr_glProgramUniform4i64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform4i64NV"
 
glProgramUniform4i64NV ::
                       GLuint ->
                         GLint -> GLint64 -> GLint64 -> GLint64 -> GLint64 -> IO ()
glProgramUniform4i64NV
  = dyn_glProgramUniform4i64NV ptr_glProgramUniform4i64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4i64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint -> GLint64 -> GLint64 -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3ui64vNV #-}
 
ptr_glProgramUniform3ui64vNV :: FunPtr a
ptr_glProgramUniform3ui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform3ui64vNV"
 
glProgramUniform3ui64vNV ::
                         GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glProgramUniform3ui64vNV
  = dyn_glProgramUniform3ui64vNV ptr_glProgramUniform3ui64vNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniform3ui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3ui64NV #-}
 
ptr_glProgramUniform3ui64NV :: FunPtr a
ptr_glProgramUniform3ui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform3ui64NV"
 
glProgramUniform3ui64NV ::
                        GLuint -> GLint -> GLuint64 -> GLuint64 -> GLuint64 -> IO ()
glProgramUniform3ui64NV
  = dyn_glProgramUniform3ui64NV ptr_glProgramUniform3ui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3ui64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint64 -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3i64vNV #-}
 
ptr_glProgramUniform3i64vNV :: FunPtr a
ptr_glProgramUniform3i64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform3i64vNV"
 
glProgramUniform3i64vNV ::
                        GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ()
glProgramUniform3i64vNV
  = dyn_glProgramUniform3i64vNV ptr_glProgramUniform3i64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3i64vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3i64NV #-}
 
ptr_glProgramUniform3i64NV :: FunPtr a
ptr_glProgramUniform3i64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform3i64NV"
 
glProgramUniform3i64NV ::
                       GLuint -> GLint -> GLint64 -> GLint64 -> GLint64 -> IO ()
glProgramUniform3i64NV
  = dyn_glProgramUniform3i64NV ptr_glProgramUniform3i64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3i64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint64 -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2ui64vNV #-}
 
ptr_glProgramUniform2ui64vNV :: FunPtr a
ptr_glProgramUniform2ui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform2ui64vNV"
 
glProgramUniform2ui64vNV ::
                         GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glProgramUniform2ui64vNV
  = dyn_glProgramUniform2ui64vNV ptr_glProgramUniform2ui64vNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniform2ui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2ui64NV #-}
 
ptr_glProgramUniform2ui64NV :: FunPtr a
ptr_glProgramUniform2ui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform2ui64NV"
 
glProgramUniform2ui64NV ::
                        GLuint -> GLint -> GLuint64 -> GLuint64 -> IO ()
glProgramUniform2ui64NV
  = dyn_glProgramUniform2ui64NV ptr_glProgramUniform2ui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2ui64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2i64vNV #-}
 
ptr_glProgramUniform2i64vNV :: FunPtr a
ptr_glProgramUniform2i64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform2i64vNV"
 
glProgramUniform2i64vNV ::
                        GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ()
glProgramUniform2i64vNV
  = dyn_glProgramUniform2i64vNV ptr_glProgramUniform2i64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2i64vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2i64NV #-}
 
ptr_glProgramUniform2i64NV :: FunPtr a
ptr_glProgramUniform2i64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform2i64NV"
 
glProgramUniform2i64NV ::
                       GLuint -> GLint -> GLint64 -> GLint64 -> IO ()
glProgramUniform2i64NV
  = dyn_glProgramUniform2i64NV ptr_glProgramUniform2i64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2i64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1ui64vNV #-}
 
ptr_glProgramUniform1ui64vNV :: FunPtr a
ptr_glProgramUniform1ui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform1ui64vNV"
 
glProgramUniform1ui64vNV ::
                         GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glProgramUniform1ui64vNV
  = dyn_glProgramUniform1ui64vNV ptr_glProgramUniform1ui64vNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniform1ui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1ui64NV #-}
 
ptr_glProgramUniform1ui64NV :: FunPtr a
ptr_glProgramUniform1ui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform1ui64NV"
 
glProgramUniform1ui64NV :: GLuint -> GLint -> GLuint64 -> IO ()
glProgramUniform1ui64NV
  = dyn_glProgramUniform1ui64NV ptr_glProgramUniform1ui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1ui64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1i64vNV #-}
 
ptr_glProgramUniform1i64vNV :: FunPtr a
ptr_glProgramUniform1i64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform1i64vNV"
 
glProgramUniform1i64vNV ::
                        GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ()
glProgramUniform1i64vNV
  = dyn_glProgramUniform1i64vNV ptr_glProgramUniform1i64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1i64vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1i64NV #-}
 
ptr_glProgramUniform1i64NV :: FunPtr a
ptr_glProgramUniform1i64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform1i64NV"
 
glProgramUniform1i64NV :: GLuint -> GLint -> GLint64 -> IO ()
glProgramUniform1i64NV
  = dyn_glProgramUniform1i64NV ptr_glProgramUniform1i64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1i64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glGetUniformi64vNV #-}
 
ptr_glGetUniformi64vNV :: FunPtr a
ptr_glGetUniformi64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glGetUniformi64vNV"
 
glGetUniformi64vNV :: GLuint -> GLint -> Ptr GLint64 -> IO ()
glGetUniformi64vNV = dyn_glGetUniformi64vNV ptr_glGetUniformi64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformi64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> Ptr GLint64 -> IO ())
 
gl_UNSIGNED_INT8_VEC4_NV :: GLenum
gl_UNSIGNED_INT8_VEC4_NV = 36847
 
gl_UNSIGNED_INT8_VEC3_NV :: GLenum
gl_UNSIGNED_INT8_VEC3_NV = 36846
 
gl_UNSIGNED_INT8_VEC2_NV :: GLenum
gl_UNSIGNED_INT8_VEC2_NV = 36845
 
gl_UNSIGNED_INT8_NV :: GLenum
gl_UNSIGNED_INT8_NV = 36844
 
gl_UNSIGNED_INT64_VEC4_NV :: GLenum
gl_UNSIGNED_INT64_VEC4_NV = 36855
 
gl_UNSIGNED_INT64_VEC3_NV :: GLenum
gl_UNSIGNED_INT64_VEC3_NV = 36854
 
gl_UNSIGNED_INT64_VEC2_NV :: GLenum
gl_UNSIGNED_INT64_VEC2_NV = 36853
 
gl_UNSIGNED_INT64_NV :: GLenum
gl_UNSIGNED_INT64_NV = 5135
 
gl_UNSIGNED_INT16_VEC4_NV :: GLenum
gl_UNSIGNED_INT16_VEC4_NV = 36851
 
gl_UNSIGNED_INT16_VEC3_NV :: GLenum
gl_UNSIGNED_INT16_VEC3_NV = 36850
 
gl_UNSIGNED_INT16_VEC2_NV :: GLenum
gl_UNSIGNED_INT16_VEC2_NV = 36849
 
gl_UNSIGNED_INT16_NV :: GLenum
gl_UNSIGNED_INT16_NV = 36848
 
gl_INT8_VEC4_NV :: GLenum
gl_INT8_VEC4_NV = 36835
 
gl_INT8_VEC3_NV :: GLenum
gl_INT8_VEC3_NV = 36834
 
gl_INT8_VEC2_NV :: GLenum
gl_INT8_VEC2_NV = 36833
 
gl_INT8_NV :: GLenum
gl_INT8_NV = 36832
 
gl_INT64_VEC4_NV :: GLenum
gl_INT64_VEC4_NV = 36843
 
gl_INT64_VEC3_NV :: GLenum
gl_INT64_VEC3_NV = 36842
 
gl_INT64_VEC2_NV :: GLenum
gl_INT64_VEC2_NV = 36841
 
gl_INT64_NV :: GLenum
gl_INT64_NV = 5134
 
gl_INT16_VEC4_NV :: GLenum
gl_INT16_VEC4_NV = 36839
 
gl_INT16_VEC3_NV :: GLenum
gl_INT16_VEC3_NV = 36838
 
gl_INT16_VEC2_NV :: GLenum
gl_INT16_VEC2_NV = 36837
 
gl_INT16_NV :: GLenum
gl_INT16_NV = 36836
 
gl_FLOAT16_VEC4_NV :: GLenum
gl_FLOAT16_VEC4_NV = 36859
 
gl_FLOAT16_VEC3_NV :: GLenum
gl_FLOAT16_VEC3_NV = 36858
 
gl_FLOAT16_VEC2_NV :: GLenum
gl_FLOAT16_VEC2_NV = 36857
 
gl_FLOAT16_NV :: GLenum
gl_FLOAT16_NV = 36856