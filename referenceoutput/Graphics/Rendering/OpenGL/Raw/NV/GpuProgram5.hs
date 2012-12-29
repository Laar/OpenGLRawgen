{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.GpuProgram5
       (glGetProgramSubroutineParameteruivNV,
        glProgramSubroutineParametersuivNV,
        gl_MAX_PROGRAM_SUBROUTINE_NUM_NV,
        gl_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV,
        gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV,
        gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV,
        gl_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV,
        gl_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV,
        gl_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV,
        gl_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetProgramSubroutineParameteruivNV #-}
 
ptr_glGetProgramSubroutineParameteruivNV :: FunPtr a
ptr_glGetProgramSubroutineParameteruivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program5"
        "glGetProgramSubroutineParameteruivNV"
 
glGetProgramSubroutineParameteruivNV ::
                                     GLenum -> GLuint -> Ptr GLuint -> IO ()
glGetProgramSubroutineParameteruivNV
  = dyn_glGetProgramSubroutineParameteruivNV
      ptr_glGetProgramSubroutineParameteruivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramSubroutineParameteruivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramSubroutineParametersuivNV #-}
 
ptr_glProgramSubroutineParametersuivNV :: FunPtr a
ptr_glProgramSubroutineParametersuivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program5"
        "glProgramSubroutineParametersuivNV"
 
glProgramSubroutineParametersuivNV ::
                                   GLenum -> GLsizei -> Ptr GLuint -> IO ()
glProgramSubroutineParametersuivNV
  = dyn_glProgramSubroutineParametersuivNV
      ptr_glProgramSubroutineParametersuivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramSubroutineParametersuivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr GLuint -> IO ())
 
gl_MAX_PROGRAM_SUBROUTINE_NUM_NV :: GLenum
gl_MAX_PROGRAM_SUBROUTINE_NUM_NV = 36677
 
gl_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV :: GLenum
gl_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV = 36676
 
gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV :: GLenum
gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV = 36447
 
gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV :: GLenum
gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV = 36446
 
gl_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV :: GLenum
gl_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV = 36445
 
gl_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV :: GLenum
gl_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV = 36444
 
gl_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV :: GLenum
gl_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV = 36443
 
gl_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV :: GLenum
gl_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV = 36442