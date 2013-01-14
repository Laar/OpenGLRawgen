{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.GpuProgram4
       (glProgramLocalParametersI4uiv, glProgramLocalParametersI4iv,
        glProgramLocalParameterI4uiv, glProgramLocalParameterI4ui,
        glProgramLocalParameterI4iv, glProgramLocalParameterI4i,
        glProgramEnvParametersI4uiv, glProgramEnvParametersI4iv,
        glProgramEnvParameterI4uiv, glProgramEnvParameterI4ui,
        glProgramEnvParameterI4iv, glProgramEnvParameterI4i,
        glGetProgramLocalParameterIuiv, glGetProgramLocalParameterIiv,
        glGetProgramEnvParameterIuiv, glGetProgramEnvParameterIiv,
        gl_PROGRAM_RESULT_COMPONENTS, gl_PROGRAM_ATTRIB_COMPONENTS,
        gl_MIN_PROGRAM_TEXEL_OFFSET, gl_MAX_PROGRAM_TEXEL_OFFSET,
        gl_MAX_PROGRAM_RESULT_COMPONENTS, gl_MAX_PROGRAM_GENERIC_RESULTS,
        gl_MAX_PROGRAM_GENERIC_ATTRIBS, gl_MAX_PROGRAM_ATTRIB_COMPONENTS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glProgramLocalParametersI4uiv #-}
 
ptr_glProgramLocalParametersI4uiv :: FunPtr a
ptr_glProgramLocalParametersI4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramLocalParametersI4uivNV"
 
glProgramLocalParametersI4uiv ::
                              GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ()
glProgramLocalParametersI4uiv
  = dyn_glProgramLocalParametersI4uiv
      ptr_glProgramLocalParametersI4uiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParametersI4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParametersI4iv #-}
 
ptr_glProgramLocalParametersI4iv :: FunPtr a
ptr_glProgramLocalParametersI4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramLocalParametersI4ivNV"
 
glProgramLocalParametersI4iv ::
                             GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ()
glProgramLocalParametersI4iv
  = dyn_glProgramLocalParametersI4iv ptr_glProgramLocalParametersI4iv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParametersI4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameterI4uiv #-}
 
ptr_glProgramLocalParameterI4uiv :: FunPtr a
ptr_glProgramLocalParameterI4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramLocalParameterI4uivNV"
 
glProgramLocalParameterI4uiv ::
                             GLenum -> GLuint -> Ptr GLuint -> IO ()
glProgramLocalParameterI4uiv
  = dyn_glProgramLocalParameterI4uiv ptr_glProgramLocalParameterI4uiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameterI4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameterI4ui #-}
 
ptr_glProgramLocalParameterI4ui :: FunPtr a
ptr_glProgramLocalParameterI4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramLocalParameterI4uiNV"
 
glProgramLocalParameterI4ui ::
                            GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glProgramLocalParameterI4ui
  = dyn_glProgramLocalParameterI4ui ptr_glProgramLocalParameterI4ui
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameterI4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameterI4iv #-}
 
ptr_glProgramLocalParameterI4iv :: FunPtr a
ptr_glProgramLocalParameterI4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramLocalParameterI4ivNV"
 
glProgramLocalParameterI4iv ::
                            GLenum -> GLuint -> Ptr GLint -> IO ()
glProgramLocalParameterI4iv
  = dyn_glProgramLocalParameterI4iv ptr_glProgramLocalParameterI4iv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameterI4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameterI4i #-}
 
ptr_glProgramLocalParameterI4i :: FunPtr a
ptr_glProgramLocalParameterI4i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramLocalParameterI4iNV"
 
glProgramLocalParameterI4i ::
                           GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
glProgramLocalParameterI4i
  = dyn_glProgramLocalParameterI4i ptr_glProgramLocalParameterI4i
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameterI4i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParametersI4uiv #-}
 
ptr_glProgramEnvParametersI4uiv :: FunPtr a
ptr_glProgramEnvParametersI4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramEnvParametersI4uivNV"
 
glProgramEnvParametersI4uiv ::
                            GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ()
glProgramEnvParametersI4uiv
  = dyn_glProgramEnvParametersI4uiv ptr_glProgramEnvParametersI4uiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParametersI4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParametersI4iv #-}
 
ptr_glProgramEnvParametersI4iv :: FunPtr a
ptr_glProgramEnvParametersI4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramEnvParametersI4ivNV"
 
glProgramEnvParametersI4iv ::
                           GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ()
glProgramEnvParametersI4iv
  = dyn_glProgramEnvParametersI4iv ptr_glProgramEnvParametersI4iv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParametersI4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameterI4uiv #-}
 
ptr_glProgramEnvParameterI4uiv :: FunPtr a
ptr_glProgramEnvParameterI4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramEnvParameterI4uivNV"
 
glProgramEnvParameterI4uiv ::
                           GLenum -> GLuint -> Ptr GLuint -> IO ()
glProgramEnvParameterI4uiv
  = dyn_glProgramEnvParameterI4uiv ptr_glProgramEnvParameterI4uiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameterI4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameterI4ui #-}
 
ptr_glProgramEnvParameterI4ui :: FunPtr a
ptr_glProgramEnvParameterI4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramEnvParameterI4uiNV"
 
glProgramEnvParameterI4ui ::
                          GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glProgramEnvParameterI4ui
  = dyn_glProgramEnvParameterI4ui ptr_glProgramEnvParameterI4ui
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameterI4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameterI4iv #-}
 
ptr_glProgramEnvParameterI4iv :: FunPtr a
ptr_glProgramEnvParameterI4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramEnvParameterI4ivNV"
 
glProgramEnvParameterI4iv :: GLenum -> GLuint -> Ptr GLint -> IO ()
glProgramEnvParameterI4iv
  = dyn_glProgramEnvParameterI4iv ptr_glProgramEnvParameterI4iv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameterI4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameterI4i #-}
 
ptr_glProgramEnvParameterI4i :: FunPtr a
ptr_glProgramEnvParameterI4i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glProgramEnvParameterI4iNV"
 
glProgramEnvParameterI4i ::
                         GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
glProgramEnvParameterI4i
  = dyn_glProgramEnvParameterI4i ptr_glProgramEnvParameterI4i
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameterI4i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glGetProgramLocalParameterIuiv #-}
 
ptr_glGetProgramLocalParameterIuiv :: FunPtr a
ptr_glGetProgramLocalParameterIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glGetProgramLocalParameterIuivNV"
 
glGetProgramLocalParameterIuiv ::
                               GLenum -> GLuint -> Ptr GLuint -> IO ()
glGetProgramLocalParameterIuiv
  = dyn_glGetProgramLocalParameterIuiv
      ptr_glGetProgramLocalParameterIuiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramLocalParameterIuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetProgramLocalParameterIiv #-}
 
ptr_glGetProgramLocalParameterIiv :: FunPtr a
ptr_glGetProgramLocalParameterIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glGetProgramLocalParameterIivNV"
 
glGetProgramLocalParameterIiv ::
                              GLenum -> GLuint -> Ptr GLint -> IO ()
glGetProgramLocalParameterIiv
  = dyn_glGetProgramLocalParameterIiv
      ptr_glGetProgramLocalParameterIiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramLocalParameterIiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetProgramEnvParameterIuiv #-}
 
ptr_glGetProgramEnvParameterIuiv :: FunPtr a
ptr_glGetProgramEnvParameterIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glGetProgramEnvParameterIuivNV"
 
glGetProgramEnvParameterIuiv ::
                             GLenum -> GLuint -> Ptr GLuint -> IO ()
glGetProgramEnvParameterIuiv
  = dyn_glGetProgramEnvParameterIuiv ptr_glGetProgramEnvParameterIuiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramEnvParameterIuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetProgramEnvParameterIiv #-}
 
ptr_glGetProgramEnvParameterIiv :: FunPtr a
ptr_glGetProgramEnvParameterIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program4"
        "glGetProgramEnvParameterIivNV"
 
glGetProgramEnvParameterIiv ::
                            GLenum -> GLuint -> Ptr GLint -> IO ()
glGetProgramEnvParameterIiv
  = dyn_glGetProgramEnvParameterIiv ptr_glGetProgramEnvParameterIiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramEnvParameterIiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLint -> IO ())
 
gl_PROGRAM_RESULT_COMPONENTS :: GLenum
gl_PROGRAM_RESULT_COMPONENTS = 35079
 
gl_PROGRAM_ATTRIB_COMPONENTS :: GLenum
gl_PROGRAM_ATTRIB_COMPONENTS = 35078
 
gl_MIN_PROGRAM_TEXEL_OFFSET :: GLenum
gl_MIN_PROGRAM_TEXEL_OFFSET = 35076
 
gl_MAX_PROGRAM_TEXEL_OFFSET :: GLenum
gl_MAX_PROGRAM_TEXEL_OFFSET = 35077
 
gl_MAX_PROGRAM_RESULT_COMPONENTS :: GLenum
gl_MAX_PROGRAM_RESULT_COMPONENTS = 35081
 
gl_MAX_PROGRAM_GENERIC_RESULTS :: GLenum
gl_MAX_PROGRAM_GENERIC_RESULTS = 36262
 
gl_MAX_PROGRAM_GENERIC_ATTRIBS :: GLenum
gl_MAX_PROGRAM_GENERIC_ATTRIBS = 36261
 
gl_MAX_PROGRAM_ATTRIB_COMPONENTS :: GLenum
gl_MAX_PROGRAM_ATTRIB_COMPONENTS = 35080