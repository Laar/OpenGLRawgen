{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.ShaderBufferLoad
       (glProgramUniformui64vNV, glProgramUniformui64NV,
        glGetUniformui64vNV, glUniformui64vNV, glUniformui64NV,
        glGetIntegerui64vNV, glGetNamedBufferParameterui64vNV,
        glGetBufferParameterui64vNV, glIsNamedBufferResidentNV,
        glMakeNamedBufferNonResidentNV, glMakeNamedBufferResidentNV,
        glIsBufferResidentNV, glMakeBufferNonResidentNV,
        glMakeBufferResidentNV, gl_MAX_SHADER_BUFFER_ADDRESS_NV,
        gl_GPU_ADDRESS_NV, gl_BUFFER_GPU_ADDRESS_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glProgramUniformui64vNV #-}
 
ptr_glProgramUniformui64vNV :: FunPtr a
ptr_glProgramUniformui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glProgramUniformui64vNV"
 
glProgramUniformui64vNV ::
                        GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glProgramUniformui64vNV
  = dyn_glProgramUniformui64vNV ptr_glProgramUniformui64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniformui64vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniformui64NV #-}
 
ptr_glProgramUniformui64NV :: FunPtr a
ptr_glProgramUniformui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glProgramUniformui64NV"
 
glProgramUniformui64NV :: GLuint -> GLint -> GLuint64 -> IO ()
glProgramUniformui64NV
  = dyn_glProgramUniformui64NV ptr_glProgramUniformui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniformui64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glGetUniformui64vNV #-}
 
ptr_glGetUniformui64vNV :: FunPtr a
ptr_glGetUniformui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glGetUniformui64vNV"
 
glGetUniformui64vNV :: GLuint -> GLint -> Ptr GLuint64 -> IO ()
glGetUniformui64vNV
  = dyn_glGetUniformui64vNV ptr_glGetUniformui64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniformui64vNV #-}
 
ptr_glUniformui64vNV :: FunPtr a
ptr_glUniformui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glUniformui64vNV"
 
glUniformui64vNV :: GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glUniformui64vNV = dyn_glUniformui64vNV ptr_glUniformui64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniformui64NV #-}
 
ptr_glUniformui64NV :: FunPtr a
ptr_glUniformui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glUniformui64NV"
 
glUniformui64NV :: GLint -> GLuint64 -> IO ()
glUniformui64NV = dyn_glUniformui64NV ptr_glUniformui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformui64NV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glGetIntegerui64vNV #-}
 
ptr_glGetIntegerui64vNV :: FunPtr a
ptr_glGetIntegerui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glGetIntegerui64vNV"
 
glGetIntegerui64vNV :: GLenum -> Ptr GLuint64 -> IO ()
glGetIntegerui64vNV
  = dyn_glGetIntegerui64vNV ptr_glGetIntegerui64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetIntegerui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glGetNamedBufferParameterui64vNV #-}
 
ptr_glGetNamedBufferParameterui64vNV :: FunPtr a
ptr_glGetNamedBufferParameterui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glGetNamedBufferParameterui64vNV"
 
glGetNamedBufferParameterui64vNV ::
                                 GLuint -> GLenum -> Ptr GLuint64 -> IO ()
glGetNamedBufferParameterui64vNV
  = dyn_glGetNamedBufferParameterui64vNV
      ptr_glGetNamedBufferParameterui64vNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedBufferParameterui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glGetBufferParameterui64vNV #-}
 
ptr_glGetBufferParameterui64vNV :: FunPtr a
ptr_glGetBufferParameterui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glGetBufferParameterui64vNV"
 
glGetBufferParameterui64vNV ::
                            GLenum -> GLenum -> Ptr GLuint64 -> IO ()
glGetBufferParameterui64vNV
  = dyn_glGetBufferParameterui64vNV ptr_glGetBufferParameterui64vNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetBufferParameterui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glIsNamedBufferResidentNV #-}
 
ptr_glIsNamedBufferResidentNV :: FunPtr a
ptr_glIsNamedBufferResidentNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glIsNamedBufferResidentNV"
 
glIsNamedBufferResidentNV :: GLuint -> IO GLboolean
glIsNamedBufferResidentNV
  = dyn_glIsNamedBufferResidentNV ptr_glIsNamedBufferResidentNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glIsNamedBufferResidentNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glMakeNamedBufferNonResidentNV #-}
 
ptr_glMakeNamedBufferNonResidentNV :: FunPtr a
ptr_glMakeNamedBufferNonResidentNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glMakeNamedBufferNonResidentNV"
 
glMakeNamedBufferNonResidentNV :: GLuint -> IO ()
glMakeNamedBufferNonResidentNV
  = dyn_glMakeNamedBufferNonResidentNV
      ptr_glMakeNamedBufferNonResidentNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMakeNamedBufferNonResidentNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glMakeNamedBufferResidentNV #-}
 
ptr_glMakeNamedBufferResidentNV :: FunPtr a
ptr_glMakeNamedBufferResidentNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glMakeNamedBufferResidentNV"
 
glMakeNamedBufferResidentNV :: GLuint -> GLenum -> IO ()
glMakeNamedBufferResidentNV
  = dyn_glMakeNamedBufferResidentNV ptr_glMakeNamedBufferResidentNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMakeNamedBufferResidentNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glIsBufferResidentNV #-}
 
ptr_glIsBufferResidentNV :: FunPtr a
ptr_glIsBufferResidentNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glIsBufferResidentNV"
 
glIsBufferResidentNV :: GLenum -> IO GLboolean
glIsBufferResidentNV
  = dyn_glIsBufferResidentNV ptr_glIsBufferResidentNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsBufferResidentNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLboolean)
 
{-# NOINLINE ptr_glMakeBufferNonResidentNV #-}
 
ptr_glMakeBufferNonResidentNV :: FunPtr a
ptr_glMakeBufferNonResidentNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glMakeBufferNonResidentNV"
 
glMakeBufferNonResidentNV :: GLenum -> IO ()
glMakeBufferNonResidentNV
  = dyn_glMakeBufferNonResidentNV ptr_glMakeBufferNonResidentNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMakeBufferNonResidentNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glMakeBufferResidentNV #-}
 
ptr_glMakeBufferResidentNV :: FunPtr a
ptr_glMakeBufferResidentNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glMakeBufferResidentNV"
 
glMakeBufferResidentNV :: GLenum -> GLenum -> IO ()
glMakeBufferResidentNV
  = dyn_glMakeBufferResidentNV ptr_glMakeBufferResidentNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glMakeBufferResidentNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
gl_MAX_SHADER_BUFFER_ADDRESS_NV :: GLenum
gl_MAX_SHADER_BUFFER_ADDRESS_NV = 36661
 
gl_GPU_ADDRESS_NV :: GLenum
gl_GPU_ADDRESS_NV = 36660
 
gl_BUFFER_GPU_ADDRESS_NV :: GLenum
gl_BUFFER_GPU_ADDRESS_NV = 36637