{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.GpuProgram5
       (glProgramSubroutineParametersuiv,
        glGetProgramSubroutineParameteruiv,
        gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET,
        gl_MIN_FRAGMENT_INTERPOLATION_OFFSET,
        gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET,
        gl_MAX_PROGRAM_SUBROUTINE_PARAMETERS,
        gl_MAX_PROGRAM_SUBROUTINE_NUM, gl_MAX_GEOMETRY_PROGRAM_INVOCATIONS,
        gl_MAX_FRAGMENT_INTERPOLATION_OFFSET,
        gl_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glProgramSubroutineParametersuiv #-}
 
ptr_glProgramSubroutineParametersuiv :: FunPtr a
ptr_glProgramSubroutineParametersuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program5"
        "glProgramSubroutineParametersuivNV"
 
glProgramSubroutineParametersuiv ::
                                 GLenum -> GLsizei -> Ptr GLuint -> IO ()
glProgramSubroutineParametersuiv
  = dyn_glProgramSubroutineParametersuiv
      ptr_glProgramSubroutineParametersuiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramSubroutineParametersuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetProgramSubroutineParameteruiv #-}
 
ptr_glGetProgramSubroutineParameteruiv :: FunPtr a
ptr_glGetProgramSubroutineParameteruiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_gpu_program5"
        "glGetProgramSubroutineParameteruivNV"
 
glGetProgramSubroutineParameteruiv ::
                                   GLenum -> GLuint -> Ptr GLuint -> IO ()
glGetProgramSubroutineParameteruiv
  = dyn_glGetProgramSubroutineParameteruiv
      ptr_glGetProgramSubroutineParameteruiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramSubroutineParameteruiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint -> IO ())
 
gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET :: GLenum
gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET = 36446
 
gl_MIN_FRAGMENT_INTERPOLATION_OFFSET :: GLenum
gl_MIN_FRAGMENT_INTERPOLATION_OFFSET = 36443
 
gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET :: GLenum
gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET = 36447
 
gl_MAX_PROGRAM_SUBROUTINE_PARAMETERS :: GLenum
gl_MAX_PROGRAM_SUBROUTINE_PARAMETERS = 36676
 
gl_MAX_PROGRAM_SUBROUTINE_NUM :: GLenum
gl_MAX_PROGRAM_SUBROUTINE_NUM = 36677
 
gl_MAX_GEOMETRY_PROGRAM_INVOCATIONS :: GLenum
gl_MAX_GEOMETRY_PROGRAM_INVOCATIONS = 36442
 
gl_MAX_FRAGMENT_INTERPOLATION_OFFSET :: GLenum
gl_MAX_FRAGMENT_INTERPOLATION_OFFSET = 36444
 
gl_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS :: GLenum
gl_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS = 36445