{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.GpuProgram4
       (glGetProgramEnvParameterIuivNV, glGetProgramEnvParameterIivNV,
        glGetProgramLocalParameterIuivNV, glGetProgramLocalParameterIivNV,
        glProgramEnvParametersI4uivNV, glProgramEnvParameterI4uivNV,
        glProgramEnvParameterI4uiNV, glProgramEnvParametersI4ivNV,
        glProgramEnvParameterI4ivNV, glProgramEnvParameterI4iNV,
        glProgramLocalParametersI4uivNV, glProgramLocalParameterI4uivNV,
        glProgramLocalParameterI4uiNV, glProgramLocalParametersI4ivNV,
        glProgramLocalParameterI4ivNV, glProgramLocalParameterI4iNV,
        gl_MAX_PROGRAM_GENERIC_RESULTS_NV,
        gl_MAX_PROGRAM_GENERIC_ATTRIBS_NV,
        gl_MAX_PROGRAM_RESULT_COMPONENTS_NV,
        gl_MAX_PROGRAM_ATTRIB_COMPONENTS_NV,
        gl_PROGRAM_RESULT_COMPONENTS_NV, gl_PROGRAM_ATTRIB_COMPONENTS_NV,
        gl_MAX_PROGRAM_TEXEL_OFFSET_NV, gl_MIN_PROGRAM_TEXEL_OFFSET_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetProgramEnvParameterIuivNV #-}
 
ptr_glGetProgramEnvParameterIuivNV :: FunPtr a
ptr_glGetProgramEnvParameterIuivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glGetProgramEnvParameterIuivNV"
 
glGetProgramEnvParameterIuivNV ::
                               GLenum -> GLuint -> Ptr GLuint -> IO ()
glGetProgramEnvParameterIuivNV
  = dyn_glGetProgramEnvParameterIuivNV
      ptr_glGetProgramEnvParameterIuivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramEnvParameterIuivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetProgramEnvParameterIivNV #-}
 
ptr_glGetProgramEnvParameterIivNV :: FunPtr a
ptr_glGetProgramEnvParameterIivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glGetProgramEnvParameterIivNV"
 
glGetProgramEnvParameterIivNV ::
                              GLenum -> GLuint -> Ptr GLint -> IO ()
glGetProgramEnvParameterIivNV
  = dyn_glGetProgramEnvParameterIivNV
      ptr_glGetProgramEnvParameterIivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramEnvParameterIivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetProgramLocalParameterIuivNV #-}
 
ptr_glGetProgramLocalParameterIuivNV :: FunPtr a
ptr_glGetProgramLocalParameterIuivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glGetProgramLocalParameterIuivNV"
 
glGetProgramLocalParameterIuivNV ::
                                 GLenum -> GLuint -> Ptr GLuint -> IO ()
glGetProgramLocalParameterIuivNV
  = dyn_glGetProgramLocalParameterIuivNV
      ptr_glGetProgramLocalParameterIuivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramLocalParameterIuivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetProgramLocalParameterIivNV #-}
 
ptr_glGetProgramLocalParameterIivNV :: FunPtr a
ptr_glGetProgramLocalParameterIivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glGetProgramLocalParameterIivNV"
 
glGetProgramLocalParameterIivNV ::
                                GLenum -> GLuint -> Ptr GLint -> IO ()
glGetProgramLocalParameterIivNV
  = dyn_glGetProgramLocalParameterIivNV
      ptr_glGetProgramLocalParameterIivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramLocalParameterIivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParametersI4uivNV #-}
 
ptr_glProgramEnvParametersI4uivNV :: FunPtr a
ptr_glProgramEnvParametersI4uivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramEnvParametersI4uivNV"
 
glProgramEnvParametersI4uivNV ::
                              GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ()
glProgramEnvParametersI4uivNV
  = dyn_glProgramEnvParametersI4uivNV
      ptr_glProgramEnvParametersI4uivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParametersI4uivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameterI4uivNV #-}
 
ptr_glProgramEnvParameterI4uivNV :: FunPtr a
ptr_glProgramEnvParameterI4uivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramEnvParameterI4uivNV"
 
glProgramEnvParameterI4uivNV ::
                             GLenum -> GLuint -> Ptr GLuint -> IO ()
glProgramEnvParameterI4uivNV
  = dyn_glProgramEnvParameterI4uivNV ptr_glProgramEnvParameterI4uivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameterI4uivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameterI4uiNV #-}
 
ptr_glProgramEnvParameterI4uiNV :: FunPtr a
ptr_glProgramEnvParameterI4uiNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramEnvParameterI4uiNV"
 
glProgramEnvParameterI4uiNV ::
                            GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glProgramEnvParameterI4uiNV
  = dyn_glProgramEnvParameterI4uiNV ptr_glProgramEnvParameterI4uiNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameterI4uiNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParametersI4ivNV #-}
 
ptr_glProgramEnvParametersI4ivNV :: FunPtr a
ptr_glProgramEnvParametersI4ivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramEnvParametersI4ivNV"
 
glProgramEnvParametersI4ivNV ::
                             GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ()
glProgramEnvParametersI4ivNV
  = dyn_glProgramEnvParametersI4ivNV ptr_glProgramEnvParametersI4ivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParametersI4ivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameterI4ivNV #-}
 
ptr_glProgramEnvParameterI4ivNV :: FunPtr a
ptr_glProgramEnvParameterI4ivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramEnvParameterI4ivNV"
 
glProgramEnvParameterI4ivNV ::
                            GLenum -> GLuint -> Ptr GLint -> IO ()
glProgramEnvParameterI4ivNV
  = dyn_glProgramEnvParameterI4ivNV ptr_glProgramEnvParameterI4ivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameterI4ivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameterI4iNV #-}
 
ptr_glProgramEnvParameterI4iNV :: FunPtr a
ptr_glProgramEnvParameterI4iNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramEnvParameterI4iNV"
 
glProgramEnvParameterI4iNV ::
                           GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
glProgramEnvParameterI4iNV
  = dyn_glProgramEnvParameterI4iNV ptr_glProgramEnvParameterI4iNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameterI4iNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParametersI4uivNV #-}
 
ptr_glProgramLocalParametersI4uivNV :: FunPtr a
ptr_glProgramLocalParametersI4uivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramLocalParametersI4uivNV"
 
glProgramLocalParametersI4uivNV ::
                                GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ()
glProgramLocalParametersI4uivNV
  = dyn_glProgramLocalParametersI4uivNV
      ptr_glProgramLocalParametersI4uivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParametersI4uivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameterI4uivNV #-}
 
ptr_glProgramLocalParameterI4uivNV :: FunPtr a
ptr_glProgramLocalParameterI4uivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramLocalParameterI4uivNV"
 
glProgramLocalParameterI4uivNV ::
                               GLenum -> GLuint -> Ptr GLuint -> IO ()
glProgramLocalParameterI4uivNV
  = dyn_glProgramLocalParameterI4uivNV
      ptr_glProgramLocalParameterI4uivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameterI4uivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameterI4uiNV #-}
 
ptr_glProgramLocalParameterI4uiNV :: FunPtr a
ptr_glProgramLocalParameterI4uiNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramLocalParameterI4uiNV"
 
glProgramLocalParameterI4uiNV ::
                              GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glProgramLocalParameterI4uiNV
  = dyn_glProgramLocalParameterI4uiNV
      ptr_glProgramLocalParameterI4uiNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameterI4uiNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParametersI4ivNV #-}
 
ptr_glProgramLocalParametersI4ivNV :: FunPtr a
ptr_glProgramLocalParametersI4ivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramLocalParametersI4ivNV"
 
glProgramLocalParametersI4ivNV ::
                               GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ()
glProgramLocalParametersI4ivNV
  = dyn_glProgramLocalParametersI4ivNV
      ptr_glProgramLocalParametersI4ivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParametersI4ivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameterI4ivNV #-}
 
ptr_glProgramLocalParameterI4ivNV :: FunPtr a
ptr_glProgramLocalParameterI4ivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramLocalParameterI4ivNV"
 
glProgramLocalParameterI4ivNV ::
                              GLenum -> GLuint -> Ptr GLint -> IO ()
glProgramLocalParameterI4ivNV
  = dyn_glProgramLocalParameterI4ivNV
      ptr_glProgramLocalParameterI4ivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameterI4ivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameterI4iNV #-}
 
ptr_glProgramLocalParameterI4iNV :: FunPtr a
ptr_glProgramLocalParameterI4iNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramLocalParameterI4iNV"
 
glProgramLocalParameterI4iNV ::
                             GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
glProgramLocalParameterI4iNV
  = dyn_glProgramLocalParameterI4iNV ptr_glProgramLocalParameterI4iNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameterI4iNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
gl_MAX_PROGRAM_GENERIC_RESULTS_NV :: GLenum
gl_MAX_PROGRAM_GENERIC_RESULTS_NV = 36262
 
gl_MAX_PROGRAM_GENERIC_ATTRIBS_NV :: GLenum
gl_MAX_PROGRAM_GENERIC_ATTRIBS_NV = 36261
 
gl_MAX_PROGRAM_RESULT_COMPONENTS_NV :: GLenum
gl_MAX_PROGRAM_RESULT_COMPONENTS_NV = 35081
 
gl_MAX_PROGRAM_ATTRIB_COMPONENTS_NV :: GLenum
gl_MAX_PROGRAM_ATTRIB_COMPONENTS_NV = 35080
 
gl_PROGRAM_RESULT_COMPONENTS_NV :: GLenum
gl_PROGRAM_RESULT_COMPONENTS_NV = 35079
 
gl_PROGRAM_ATTRIB_COMPONENTS_NV :: GLenum
gl_PROGRAM_ATTRIB_COMPONENTS_NV = 35078
 
gl_MAX_PROGRAM_TEXEL_OFFSET_NV :: GLenum
gl_MAX_PROGRAM_TEXEL_OFFSET_NV = 35077
 
gl_MIN_PROGRAM_TEXEL_OFFSET_NV :: GLenum
gl_MIN_PROGRAM_TEXEL_OFFSET_NV = 35076