{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.ShaderBufferLoad
       (glUniformui64v, glUniformui64, glProgramUniformui64v,
        glProgramUniformui64, glMakeNamedBufferResident,
        glMakeNamedBufferNonResident, glMakeBufferResident,
        glMakeBufferNonResident, glIsNamedBufferResident,
        glIsBufferResident, glGetUniformui64v,
        glGetNamedBufferParameterui64v, glGetIntegerui64v,
        glGetBufferParameterui64v, gl_MAX_SHADER_BUFFER_ADDRESS,
        gl_GPU_ADDRESS, gl_BUFFER_GPU_ADDRESS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUniformui64v #-}
 
ptr_glUniformui64v :: FunPtr a
ptr_glUniformui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glUniformui64vNV"
 
glUniformui64v :: GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glUniformui64v = dyn_glUniformui64v ptr_glUniformui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformui64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniformui64 #-}
 
ptr_glUniformui64 :: FunPtr a
ptr_glUniformui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glUniformui64NV"
 
glUniformui64 :: GLint -> GLuint64 -> IO ()
glUniformui64 = dyn_glUniformui64 ptr_glUniformui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformui64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniformui64v #-}
 
ptr_glProgramUniformui64v :: FunPtr a
ptr_glProgramUniformui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glProgramUniformui64vNV"
 
glProgramUniformui64v ::
                      GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glProgramUniformui64v
  = dyn_glProgramUniformui64v ptr_glProgramUniformui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniformui64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniformui64 #-}
 
ptr_glProgramUniformui64 :: FunPtr a
ptr_glProgramUniformui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glProgramUniformui64NV"
 
glProgramUniformui64 :: GLuint -> GLint -> GLuint64 -> IO ()
glProgramUniformui64
  = dyn_glProgramUniformui64 ptr_glProgramUniformui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniformui64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glMakeNamedBufferResident #-}
 
ptr_glMakeNamedBufferResident :: FunPtr a
ptr_glMakeNamedBufferResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glMakeNamedBufferResidentNV"
 
glMakeNamedBufferResident :: GLuint -> GLenum -> IO ()
glMakeNamedBufferResident
  = dyn_glMakeNamedBufferResident ptr_glMakeNamedBufferResident
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMakeNamedBufferResident ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glMakeNamedBufferNonResident #-}
 
ptr_glMakeNamedBufferNonResident :: FunPtr a
ptr_glMakeNamedBufferNonResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glMakeNamedBufferNonResidentNV"
 
glMakeNamedBufferNonResident :: GLuint -> IO ()
glMakeNamedBufferNonResident
  = dyn_glMakeNamedBufferNonResident ptr_glMakeNamedBufferNonResident
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMakeNamedBufferNonResident ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glMakeBufferResident #-}
 
ptr_glMakeBufferResident :: FunPtr a
ptr_glMakeBufferResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glMakeBufferResidentNV"
 
glMakeBufferResident :: GLenum -> GLenum -> IO ()
glMakeBufferResident
  = dyn_glMakeBufferResident ptr_glMakeBufferResident
 
foreign import CALLCONV unsafe "dynamic" dyn_glMakeBufferResident ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glMakeBufferNonResident #-}
 
ptr_glMakeBufferNonResident :: FunPtr a
ptr_glMakeBufferNonResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glMakeBufferNonResidentNV"
 
glMakeBufferNonResident :: GLenum -> IO ()
glMakeBufferNonResident
  = dyn_glMakeBufferNonResident ptr_glMakeBufferNonResident
 
foreign import CALLCONV unsafe "dynamic" dyn_glMakeBufferNonResident
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glIsNamedBufferResident #-}
 
ptr_glIsNamedBufferResident :: FunPtr a
ptr_glIsNamedBufferResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glIsNamedBufferResidentNV"
 
glIsNamedBufferResident :: GLuint -> IO GLboolean
glIsNamedBufferResident
  = dyn_glIsNamedBufferResident ptr_glIsNamedBufferResident
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsNamedBufferResident
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glIsBufferResident #-}
 
ptr_glIsBufferResident :: FunPtr a
ptr_glIsBufferResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glIsBufferResidentNV"
 
glIsBufferResident :: GLenum -> IO GLboolean
glIsBufferResident = dyn_glIsBufferResident ptr_glIsBufferResident
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsBufferResident ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLboolean)
 
{-# NOINLINE ptr_glGetUniformui64v #-}
 
ptr_glGetUniformui64v :: FunPtr a
ptr_glGetUniformui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glGetUniformui64vNV"
 
glGetUniformui64v :: GLuint -> GLint -> Ptr GLuint64 -> IO ()
glGetUniformui64v = dyn_glGetUniformui64v ptr_glGetUniformui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformui64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glGetNamedBufferParameterui64v #-}
 
ptr_glGetNamedBufferParameterui64v :: FunPtr a
ptr_glGetNamedBufferParameterui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glGetNamedBufferParameterui64vNV"
 
glGetNamedBufferParameterui64v ::
                               GLuint -> GLenum -> Ptr GLuint64 -> IO ()
glGetNamedBufferParameterui64v
  = dyn_glGetNamedBufferParameterui64v
      ptr_glGetNamedBufferParameterui64v
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedBufferParameterui64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glGetIntegerui64v #-}
 
ptr_glGetIntegerui64v :: FunPtr a
ptr_glGetIntegerui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glGetIntegerui64vNV"
 
glGetIntegerui64v :: GLenum -> Ptr GLuint64 -> IO ()
glGetIntegerui64v = dyn_glGetIntegerui64v ptr_glGetIntegerui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetIntegerui64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glGetBufferParameterui64v #-}
 
ptr_glGetBufferParameterui64v :: FunPtr a
ptr_glGetBufferParameterui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_shader_buffer_load"
        "glGetBufferParameterui64vNV"
 
glGetBufferParameterui64v ::
                          GLenum -> GLenum -> Ptr GLuint64 -> IO ()
glGetBufferParameterui64v
  = dyn_glGetBufferParameterui64v ptr_glGetBufferParameterui64v
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetBufferParameterui64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLuint64 -> IO ())
 
gl_MAX_SHADER_BUFFER_ADDRESS :: GLenum
gl_MAX_SHADER_BUFFER_ADDRESS = 36661
 
gl_GPU_ADDRESS :: GLenum
gl_GPU_ADDRESS = 36660
 
gl_BUFFER_GPU_ADDRESS :: GLenum
gl_BUFFER_GPU_ADDRESS = 36637