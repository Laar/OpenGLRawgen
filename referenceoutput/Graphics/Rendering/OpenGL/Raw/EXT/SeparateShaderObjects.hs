{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.SeparateShaderObjects
       (glUseShaderProgramEXT, glCreateShaderProgramEXT,
        glActiveProgramEXT, gl_ACTIVE_PROGRAM_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUseShaderProgramEXT #-}
 
ptr_glUseShaderProgramEXT :: FunPtr a
ptr_glUseShaderProgramEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_separate_shader_objects"
        "glUseShaderProgramEXT"
 
glUseShaderProgramEXT :: GLenum -> GLuint -> IO ()
glUseShaderProgramEXT
  = dyn_glUseShaderProgramEXT ptr_glUseShaderProgramEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glUseShaderProgramEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glCreateShaderProgramEXT #-}
 
ptr_glCreateShaderProgramEXT :: FunPtr a
ptr_glCreateShaderProgramEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_separate_shader_objects"
        "glCreateShaderProgramEXT"
 
glCreateShaderProgramEXT :: GLenum -> Ptr GLchar -> IO GLuint
glCreateShaderProgramEXT
  = dyn_glCreateShaderProgramEXT ptr_glCreateShaderProgramEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCreateShaderProgramEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLchar -> IO GLuint)
 
{-# NOINLINE ptr_glActiveProgramEXT #-}
 
ptr_glActiveProgramEXT :: FunPtr a
ptr_glActiveProgramEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_separate_shader_objects"
        "glActiveProgramEXT"
 
glActiveProgramEXT :: GLuint -> IO ()
glActiveProgramEXT = dyn_glActiveProgramEXT ptr_glActiveProgramEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glActiveProgramEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
gl_ACTIVE_PROGRAM_EXT :: GLenum
gl_ACTIVE_PROGRAM_EXT = 35725