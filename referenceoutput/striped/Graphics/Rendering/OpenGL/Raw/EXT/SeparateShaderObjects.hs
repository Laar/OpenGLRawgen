{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.SeparateShaderObjects
       (glUseShaderProgram, glCreateShaderProgram, glActiveProgram,
        gl_ACTIVE_PROGRAM)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUseShaderProgram #-}
 
ptr_glUseShaderProgram :: FunPtr a
ptr_glUseShaderProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_separate_shader_objects"
        "glUseShaderProgramEXT"
 
glUseShaderProgram :: GLenum -> GLuint -> IO ()
glUseShaderProgram = dyn_glUseShaderProgram ptr_glUseShaderProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glUseShaderProgram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glCreateShaderProgram #-}
 
ptr_glCreateShaderProgram :: FunPtr a
ptr_glCreateShaderProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_separate_shader_objects"
        "glCreateShaderProgramEXT"
 
glCreateShaderProgram :: GLenum -> Ptr GLchar -> IO GLuint
glCreateShaderProgram
  = dyn_glCreateShaderProgram ptr_glCreateShaderProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glCreateShaderProgram
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLchar -> IO GLuint)
 
{-# NOINLINE ptr_glActiveProgram #-}
 
ptr_glActiveProgram :: FunPtr a
ptr_glActiveProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_separate_shader_objects"
        "glActiveProgramEXT"
 
glActiveProgram :: GLuint -> IO ()
glActiveProgram = dyn_glActiveProgram ptr_glActiveProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glActiveProgram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
gl_ACTIVE_PROGRAM :: GLenum
gl_ACTIVE_PROGRAM = 35725