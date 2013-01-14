{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.GpuProgramParameters
       (glProgramLocalParameters4fv, glProgramEnvParameters4fv) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glProgramLocalParameters4fv #-}
 
ptr_glProgramLocalParameters4fv :: FunPtr a
ptr_glProgramLocalParameters4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_program_parameters"
        "glProgramLocalParameters4fvEXT"
 
glProgramLocalParameters4fv ::
                            GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramLocalParameters4fv
  = dyn_glProgramLocalParameters4fv ptr_glProgramLocalParameters4fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameters4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameters4fv #-}
 
ptr_glProgramEnvParameters4fv :: FunPtr a
ptr_glProgramEnvParameters4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_program_parameters"
        "glProgramEnvParameters4fvEXT"
 
glProgramEnvParameters4fv ::
                          GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramEnvParameters4fv
  = dyn_glProgramEnvParameters4fv ptr_glProgramEnvParameters4fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameters4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())