{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.GpuShader5
       (glUniform4ui64v, glUniform4ui64, glUniform4i64v, glUniform4i64,
        glUniform3ui64v, glUniform3ui64, glUniform3i64v, glUniform3i64,
        glUniform2ui64v, glUniform2ui64, glUniform2i64v, glUniform2i64,
        glUniform1ui64v, glUniform1ui64, glUniform1i64v, glUniform1i64,
        glProgramUniform4ui64v, glProgramUniform4ui64,
        glProgramUniform4i64v, glProgramUniform4i64,
        glProgramUniform3ui64v, glProgramUniform3ui64,
        glProgramUniform3i64v, glProgramUniform3i64,
        glProgramUniform2ui64v, glProgramUniform2ui64,
        glProgramUniform2i64v, glProgramUniform2i64,
        glProgramUniform1ui64v, glProgramUniform1ui64,
        glProgramUniform1i64v, glProgramUniform1i64, glGetUniformi64v,
        gl_UNSIGNED_INT8_VEC4, gl_UNSIGNED_INT8_VEC3,
        gl_UNSIGNED_INT8_VEC2, gl_UNSIGNED_INT8, gl_UNSIGNED_INT64_VEC4,
        gl_UNSIGNED_INT64_VEC3, gl_UNSIGNED_INT64_VEC2, gl_UNSIGNED_INT64,
        gl_UNSIGNED_INT16_VEC4, gl_UNSIGNED_INT16_VEC3,
        gl_UNSIGNED_INT16_VEC2, gl_UNSIGNED_INT16, gl_PATCHES,
        gl_INT8_VEC4, gl_INT8_VEC3, gl_INT8_VEC2, gl_INT8, gl_INT64_VEC4,
        gl_INT64_VEC3, gl_INT64_VEC2, gl_INT64, gl_INT16_VEC4,
        gl_INT16_VEC3, gl_INT16_VEC2, gl_INT16, gl_FLOAT16_VEC4,
        gl_FLOAT16_VEC3, gl_FLOAT16_VEC2, gl_FLOAT16)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core40
       (gl_PATCHES)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUniform4ui64v #-}
 
ptr_glUniform4ui64v :: FunPtr a
ptr_glUniform4ui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform4ui64vNV"
 
glUniform4ui64v :: GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glUniform4ui64v = dyn_glUniform4ui64v ptr_glUniform4ui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4ui64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform4ui64 #-}
 
ptr_glUniform4ui64 :: FunPtr a
ptr_glUniform4ui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform4ui64NV"
 
glUniform4ui64 ::
               GLint -> GLuint64 -> GLuint64 -> GLuint64 -> GLuint64 -> IO ()
glUniform4ui64 = dyn_glUniform4ui64 ptr_glUniform4ui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4ui64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint64 -> GLuint64 -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform4i64v #-}
 
ptr_glUniform4i64v :: FunPtr a
ptr_glUniform4i64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform4i64vNV"
 
glUniform4i64v :: GLint -> GLsizei -> Ptr GLint64 -> IO ()
glUniform4i64v = dyn_glUniform4i64v ptr_glUniform4i64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4i64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glUniform4i64 #-}
 
ptr_glUniform4i64 :: FunPtr a
ptr_glUniform4i64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform4i64NV"
 
glUniform4i64 ::
              GLint -> GLint64 -> GLint64 -> GLint64 -> GLint64 -> IO ()
glUniform4i64 = dyn_glUniform4i64 ptr_glUniform4i64
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4i64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint64 -> GLint64 -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glUniform3ui64v #-}
 
ptr_glUniform3ui64v :: FunPtr a
ptr_glUniform3ui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform3ui64vNV"
 
glUniform3ui64v :: GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glUniform3ui64v = dyn_glUniform3ui64v ptr_glUniform3ui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3ui64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform3ui64 #-}
 
ptr_glUniform3ui64 :: FunPtr a
ptr_glUniform3ui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform3ui64NV"
 
glUniform3ui64 ::
               GLint -> GLuint64 -> GLuint64 -> GLuint64 -> IO ()
glUniform3ui64 = dyn_glUniform3ui64 ptr_glUniform3ui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3ui64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint64 -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform3i64v #-}
 
ptr_glUniform3i64v :: FunPtr a
ptr_glUniform3i64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform3i64vNV"
 
glUniform3i64v :: GLint -> GLsizei -> Ptr GLint64 -> IO ()
glUniform3i64v = dyn_glUniform3i64v ptr_glUniform3i64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3i64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glUniform3i64 #-}
 
ptr_glUniform3i64 :: FunPtr a
ptr_glUniform3i64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform3i64NV"
 
glUniform3i64 :: GLint -> GLint64 -> GLint64 -> GLint64 -> IO ()
glUniform3i64 = dyn_glUniform3i64 ptr_glUniform3i64
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3i64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint64 -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glUniform2ui64v #-}
 
ptr_glUniform2ui64v :: FunPtr a
ptr_glUniform2ui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform2ui64vNV"
 
glUniform2ui64v :: GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glUniform2ui64v = dyn_glUniform2ui64v ptr_glUniform2ui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2ui64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform2ui64 #-}
 
ptr_glUniform2ui64 :: FunPtr a
ptr_glUniform2ui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform2ui64NV"
 
glUniform2ui64 :: GLint -> GLuint64 -> GLuint64 -> IO ()
glUniform2ui64 = dyn_glUniform2ui64 ptr_glUniform2ui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2ui64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform2i64v #-}
 
ptr_glUniform2i64v :: FunPtr a
ptr_glUniform2i64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform2i64vNV"
 
glUniform2i64v :: GLint -> GLsizei -> Ptr GLint64 -> IO ()
glUniform2i64v = dyn_glUniform2i64v ptr_glUniform2i64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2i64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glUniform2i64 #-}
 
ptr_glUniform2i64 :: FunPtr a
ptr_glUniform2i64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform2i64NV"
 
glUniform2i64 :: GLint -> GLint64 -> GLint64 -> IO ()
glUniform2i64 = dyn_glUniform2i64 ptr_glUniform2i64
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2i64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glUniform1ui64v #-}
 
ptr_glUniform1ui64v :: FunPtr a
ptr_glUniform1ui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform1ui64vNV"
 
glUniform1ui64v :: GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glUniform1ui64v = dyn_glUniform1ui64v ptr_glUniform1ui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1ui64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform1ui64 #-}
 
ptr_glUniform1ui64 :: FunPtr a
ptr_glUniform1ui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform1ui64NV"
 
glUniform1ui64 :: GLint -> GLuint64 -> IO ()
glUniform1ui64 = dyn_glUniform1ui64 ptr_glUniform1ui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1ui64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniform1i64v #-}
 
ptr_glUniform1i64v :: FunPtr a
ptr_glUniform1i64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform1i64vNV"
 
glUniform1i64v :: GLint -> GLsizei -> Ptr GLint64 -> IO ()
glUniform1i64v = dyn_glUniform1i64v ptr_glUniform1i64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1i64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glUniform1i64 #-}
 
ptr_glUniform1i64 :: FunPtr a
ptr_glUniform1i64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glUniform1i64NV"
 
glUniform1i64 :: GLint -> GLint64 -> IO ()
glUniform1i64 = dyn_glUniform1i64 ptr_glUniform1i64
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1i64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4ui64v #-}
 
ptr_glProgramUniform4ui64v :: FunPtr a
ptr_glProgramUniform4ui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform4ui64vNV"
 
glProgramUniform4ui64v ::
                       GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glProgramUniform4ui64v
  = dyn_glProgramUniform4ui64v ptr_glProgramUniform4ui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4ui64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4ui64 #-}
 
ptr_glProgramUniform4ui64 :: FunPtr a
ptr_glProgramUniform4ui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform4ui64NV"
 
glProgramUniform4ui64 ::
                      GLuint ->
                        GLint -> GLuint64 -> GLuint64 -> GLuint64 -> GLuint64 -> IO ()
glProgramUniform4ui64
  = dyn_glProgramUniform4ui64 ptr_glProgramUniform4ui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4ui64
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint -> GLuint64 -> GLuint64 -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4i64v #-}
 
ptr_glProgramUniform4i64v :: FunPtr a
ptr_glProgramUniform4i64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform4i64vNV"
 
glProgramUniform4i64v ::
                      GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ()
glProgramUniform4i64v
  = dyn_glProgramUniform4i64v ptr_glProgramUniform4i64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4i64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4i64 #-}
 
ptr_glProgramUniform4i64 :: FunPtr a
ptr_glProgramUniform4i64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform4i64NV"
 
glProgramUniform4i64 ::
                     GLuint ->
                       GLint -> GLint64 -> GLint64 -> GLint64 -> GLint64 -> IO ()
glProgramUniform4i64
  = dyn_glProgramUniform4i64 ptr_glProgramUniform4i64
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4i64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint -> GLint64 -> GLint64 -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3ui64v #-}
 
ptr_glProgramUniform3ui64v :: FunPtr a
ptr_glProgramUniform3ui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform3ui64vNV"
 
glProgramUniform3ui64v ::
                       GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glProgramUniform3ui64v
  = dyn_glProgramUniform3ui64v ptr_glProgramUniform3ui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3ui64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3ui64 #-}
 
ptr_glProgramUniform3ui64 :: FunPtr a
ptr_glProgramUniform3ui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform3ui64NV"
 
glProgramUniform3ui64 ::
                      GLuint -> GLint -> GLuint64 -> GLuint64 -> GLuint64 -> IO ()
glProgramUniform3ui64
  = dyn_glProgramUniform3ui64 ptr_glProgramUniform3ui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3ui64
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint64 -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3i64v #-}
 
ptr_glProgramUniform3i64v :: FunPtr a
ptr_glProgramUniform3i64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform3i64vNV"
 
glProgramUniform3i64v ::
                      GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ()
glProgramUniform3i64v
  = dyn_glProgramUniform3i64v ptr_glProgramUniform3i64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3i64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3i64 #-}
 
ptr_glProgramUniform3i64 :: FunPtr a
ptr_glProgramUniform3i64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform3i64NV"
 
glProgramUniform3i64 ::
                     GLuint -> GLint -> GLint64 -> GLint64 -> GLint64 -> IO ()
glProgramUniform3i64
  = dyn_glProgramUniform3i64 ptr_glProgramUniform3i64
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3i64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint64 -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2ui64v #-}
 
ptr_glProgramUniform2ui64v :: FunPtr a
ptr_glProgramUniform2ui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform2ui64vNV"
 
glProgramUniform2ui64v ::
                       GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glProgramUniform2ui64v
  = dyn_glProgramUniform2ui64v ptr_glProgramUniform2ui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2ui64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2ui64 #-}
 
ptr_glProgramUniform2ui64 :: FunPtr a
ptr_glProgramUniform2ui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform2ui64NV"
 
glProgramUniform2ui64 ::
                      GLuint -> GLint -> GLuint64 -> GLuint64 -> IO ()
glProgramUniform2ui64
  = dyn_glProgramUniform2ui64 ptr_glProgramUniform2ui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2ui64
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint64 -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2i64v #-}
 
ptr_glProgramUniform2i64v :: FunPtr a
ptr_glProgramUniform2i64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform2i64vNV"
 
glProgramUniform2i64v ::
                      GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ()
glProgramUniform2i64v
  = dyn_glProgramUniform2i64v ptr_glProgramUniform2i64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2i64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2i64 #-}
 
ptr_glProgramUniform2i64 :: FunPtr a
ptr_glProgramUniform2i64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform2i64NV"
 
glProgramUniform2i64 ::
                     GLuint -> GLint -> GLint64 -> GLint64 -> IO ()
glProgramUniform2i64
  = dyn_glProgramUniform2i64 ptr_glProgramUniform2i64
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2i64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint64 -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1ui64v #-}
 
ptr_glProgramUniform1ui64v :: FunPtr a
ptr_glProgramUniform1ui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform1ui64vNV"
 
glProgramUniform1ui64v ::
                       GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glProgramUniform1ui64v
  = dyn_glProgramUniform1ui64v ptr_glProgramUniform1ui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1ui64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1ui64 #-}
 
ptr_glProgramUniform1ui64 :: FunPtr a
ptr_glProgramUniform1ui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform1ui64NV"
 
glProgramUniform1ui64 :: GLuint -> GLint -> GLuint64 -> IO ()
glProgramUniform1ui64
  = dyn_glProgramUniform1ui64 ptr_glProgramUniform1ui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1ui64
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1i64v #-}
 
ptr_glProgramUniform1i64v :: FunPtr a
ptr_glProgramUniform1i64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform1i64vNV"
 
glProgramUniform1i64v ::
                      GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ()
glProgramUniform1i64v
  = dyn_glProgramUniform1i64v ptr_glProgramUniform1i64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1i64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1i64 #-}
 
ptr_glProgramUniform1i64 :: FunPtr a
ptr_glProgramUniform1i64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glProgramUniform1i64NV"
 
glProgramUniform1i64 :: GLuint -> GLint -> GLint64 -> IO ()
glProgramUniform1i64
  = dyn_glProgramUniform1i64 ptr_glProgramUniform1i64
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1i64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint64 -> IO ())
 
{-# NOINLINE ptr_glGetUniformi64v #-}
 
ptr_glGetUniformi64v :: FunPtr a
ptr_glGetUniformi64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_shader5"
        "glGetUniformi64vNV"
 
glGetUniformi64v :: GLuint -> GLint -> Ptr GLint64 -> IO ()
glGetUniformi64v = dyn_glGetUniformi64v ptr_glGetUniformi64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformi64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> Ptr GLint64 -> IO ())
 
gl_UNSIGNED_INT8_VEC4 :: GLenum
gl_UNSIGNED_INT8_VEC4 = 36847
 
gl_UNSIGNED_INT8_VEC3 :: GLenum
gl_UNSIGNED_INT8_VEC3 = 36846
 
gl_UNSIGNED_INT8_VEC2 :: GLenum
gl_UNSIGNED_INT8_VEC2 = 36845
 
gl_UNSIGNED_INT8 :: GLenum
gl_UNSIGNED_INT8 = 36844
 
gl_UNSIGNED_INT64_VEC4 :: GLenum
gl_UNSIGNED_INT64_VEC4 = 36855
 
gl_UNSIGNED_INT64_VEC3 :: GLenum
gl_UNSIGNED_INT64_VEC3 = 36854
 
gl_UNSIGNED_INT64_VEC2 :: GLenum
gl_UNSIGNED_INT64_VEC2 = 36853
 
gl_UNSIGNED_INT64 :: GLenum
gl_UNSIGNED_INT64 = 5135
 
gl_UNSIGNED_INT16_VEC4 :: GLenum
gl_UNSIGNED_INT16_VEC4 = 36851
 
gl_UNSIGNED_INT16_VEC3 :: GLenum
gl_UNSIGNED_INT16_VEC3 = 36850
 
gl_UNSIGNED_INT16_VEC2 :: GLenum
gl_UNSIGNED_INT16_VEC2 = 36849
 
gl_UNSIGNED_INT16 :: GLenum
gl_UNSIGNED_INT16 = 36848
 
gl_INT8_VEC4 :: GLenum
gl_INT8_VEC4 = 36835
 
gl_INT8_VEC3 :: GLenum
gl_INT8_VEC3 = 36834
 
gl_INT8_VEC2 :: GLenum
gl_INT8_VEC2 = 36833
 
gl_INT8 :: GLenum
gl_INT8 = 36832
 
gl_INT64_VEC4 :: GLenum
gl_INT64_VEC4 = 36843
 
gl_INT64_VEC3 :: GLenum
gl_INT64_VEC3 = 36842
 
gl_INT64_VEC2 :: GLenum
gl_INT64_VEC2 = 36841
 
gl_INT64 :: GLenum
gl_INT64 = 5134
 
gl_INT16_VEC4 :: GLenum
gl_INT16_VEC4 = 36839
 
gl_INT16_VEC3 :: GLenum
gl_INT16_VEC3 = 36838
 
gl_INT16_VEC2 :: GLenum
gl_INT16_VEC2 = 36837
 
gl_INT16 :: GLenum
gl_INT16 = 36836
 
gl_FLOAT16_VEC4 :: GLenum
gl_FLOAT16_VEC4 = 36859
 
gl_FLOAT16_VEC3 :: GLenum
gl_FLOAT16_VEC3 = 36858
 
gl_FLOAT16_VEC2 :: GLenum
gl_FLOAT16_VEC2 = 36857
 
gl_FLOAT16 :: GLenum
gl_FLOAT16 = 36856