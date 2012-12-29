{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.GpuProgramParameters
       (glProgramLocalParameters4fvEXT, glProgramEnvParameters4fvEXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glProgramLocalParameters4fvEXT #-}
 
ptr_glProgramLocalParameters4fvEXT :: FunPtr a
ptr_glProgramLocalParameters4fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_program_parameters"
        "glProgramLocalParameters4fvEXT"
 
glProgramLocalParameters4fvEXT ::
                               GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramLocalParameters4fvEXT
  = dyn_glProgramLocalParameters4fvEXT
      ptr_glProgramLocalParameters4fvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameters4fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameters4fvEXT #-}
 
ptr_glProgramEnvParameters4fvEXT :: FunPtr a
ptr_glProgramEnvParameters4fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_program_parameters"
        "glProgramEnvParameters4fvEXT"
 
glProgramEnvParameters4fvEXT ::
                             GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramEnvParameters4fvEXT
  = dyn_glProgramEnvParameters4fvEXT ptr_glProgramEnvParameters4fvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameters4fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())