{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.ShaderObjects
       (glGetShaderSourceARB, glGetUniformivARB, glGetUniformfvARB,
        glGetActiveUniformARB, glGetUniformLocationARB,
        glGetAttachedObjectsARB, glGetInfoLogARB,
        glGetObjectParameterivARB, glGetObjectParameterfvARB,
        glUniformMatrix4fvARB, glUniformMatrix3fvARB,
        glUniformMatrix2fvARB, glUniform4ivARB, glUniform3ivARB,
        glUniform2ivARB, glUniform1ivARB, glUniform4fvARB, glUniform3fvARB,
        glUniform2fvARB, glUniform1fvARB, glUniform4iARB, glUniform3iARB,
        glUniform2iARB, glUniform1iARB, glUniform4fARB, glUniform3fARB,
        glUniform2fARB, glUniform1fARB, glValidateProgramARB,
        glUseProgramObjectARB, glLinkProgramARB, glAttachObjectARB,
        glCreateProgramObjectARB, glCompileShaderARB, glShaderSourceARB,
        glCreateShaderObjectARB, glDetachObjectARB, glGetHandleARB,
        glDeleteObjectARB, gl_OBJECT_SHADER_SOURCE_LENGTH_ARB,
        gl_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB,
        gl_OBJECT_ACTIVE_UNIFORMS_ARB, gl_OBJECT_ATTACHED_OBJECTS_ARB,
        gl_OBJECT_INFO_LOG_LENGTH_ARB, gl_OBJECT_VALIDATE_STATUS_ARB,
        gl_OBJECT_LINK_STATUS_ARB, gl_OBJECT_COMPILE_STATUS_ARB,
        gl_OBJECT_DELETE_STATUS_ARB, gl_SAMPLER_2D_RECT_SHADOW_ARB,
        gl_SAMPLER_2D_RECT_ARB, gl_SAMPLER_2D_SHADOW_ARB,
        gl_SAMPLER_1D_SHADOW_ARB, gl_SAMPLER_CUBE_ARB, gl_SAMPLER_3D_ARB,
        gl_SAMPLER_2D_ARB, gl_SAMPLER_1D_ARB, gl_FLOAT_MAT4_ARB,
        gl_FLOAT_MAT3_ARB, gl_FLOAT_MAT2_ARB, gl_BOOL_VEC4_ARB,
        gl_BOOL_VEC3_ARB, gl_BOOL_VEC2_ARB, gl_BOOL_ARB, gl_INT_VEC4_ARB,
        gl_INT_VEC3_ARB, gl_INT_VEC2_ARB, gl_FLOAT_VEC4_ARB,
        gl_FLOAT_VEC3_ARB, gl_FLOAT_VEC2_ARB, gl_OBJECT_SUBTYPE_ARB,
        gl_OBJECT_TYPE_ARB, gl_SHADER_OBJECT_ARB, gl_PROGRAM_OBJECT_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetShaderSourceARB #-}
 
ptr_glGetShaderSourceARB :: FunPtr a
ptr_glGetShaderSourceARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetShaderSourceARB"
 
glGetShaderSourceARB ::
                     GLhandle -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetShaderSourceARB
  = dyn_glGetShaderSourceARB ptr_glGetShaderSourceARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetShaderSourceARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetUniformivARB #-}
 
ptr_glGetUniformivARB :: FunPtr a
ptr_glGetUniformivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetUniformivARB"
 
glGetUniformivARB :: GLhandle -> GLint -> Ptr GLint -> IO ()
glGetUniformivARB = dyn_glGetUniformivARB ptr_glGetUniformivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetUniformfvARB #-}
 
ptr_glGetUniformfvARB :: FunPtr a
ptr_glGetUniformfvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetUniformfvARB"
 
glGetUniformfvARB :: GLhandle -> GLint -> Ptr GLfloat -> IO ()
glGetUniformfvARB = dyn_glGetUniformfvARB ptr_glGetUniformfvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformfvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetActiveUniformARB #-}
 
ptr_glGetActiveUniformARB :: FunPtr a
ptr_glGetActiveUniformARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetActiveUniformARB"
 
glGetActiveUniformARB ::
                      GLhandle ->
                        GLuint ->
                          GLsizei ->
                            Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO ()
glGetActiveUniformARB
  = dyn_glGetActiveUniformARB ptr_glGetActiveUniformARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetActiveUniformARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle ->
                    GLuint ->
                      GLsizei ->
                        Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetUniformLocationARB #-}
 
ptr_glGetUniformLocationARB :: FunPtr a
ptr_glGetUniformLocationARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetUniformLocationARB"
 
glGetUniformLocationARB :: GLhandle -> Ptr GLchar -> IO GLint
glGetUniformLocationARB
  = dyn_glGetUniformLocationARB ptr_glGetUniformLocationARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformLocationARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> Ptr GLchar -> IO GLint)
 
{-# NOINLINE ptr_glGetAttachedObjectsARB #-}
 
ptr_glGetAttachedObjectsARB :: FunPtr a
ptr_glGetAttachedObjectsARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetAttachedObjectsARB"
 
glGetAttachedObjectsARB ::
                        GLhandle -> GLsizei -> Ptr GLsizei -> Ptr GLhandle -> IO ()
glGetAttachedObjectsARB
  = dyn_glGetAttachedObjectsARB ptr_glGetAttachedObjectsARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetAttachedObjectsARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLsizei -> Ptr GLsizei -> Ptr GLhandle -> IO ())
 
{-# NOINLINE ptr_glGetInfoLogARB #-}
 
ptr_glGetInfoLogARB :: FunPtr a
ptr_glGetInfoLogARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetInfoLogARB"
 
glGetInfoLogARB ::
                GLhandle -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetInfoLogARB = dyn_glGetInfoLogARB ptr_glGetInfoLogARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetInfoLogARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetObjectParameterivARB #-}
 
ptr_glGetObjectParameterivARB :: FunPtr a
ptr_glGetObjectParameterivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetObjectParameterivARB"
 
glGetObjectParameterivARB ::
                          GLhandle -> GLenum -> Ptr GLint -> IO ()
glGetObjectParameterivARB
  = dyn_glGetObjectParameterivARB ptr_glGetObjectParameterivARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetObjectParameterivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetObjectParameterfvARB #-}
 
ptr_glGetObjectParameterfvARB :: FunPtr a
ptr_glGetObjectParameterfvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetObjectParameterfvARB"
 
glGetObjectParameterfvARB ::
                          GLhandle -> GLenum -> Ptr GLfloat -> IO ()
glGetObjectParameterfvARB
  = dyn_glGetObjectParameterfvARB ptr_glGetObjectParameterfvARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetObjectParameterfvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix4fvARB #-}
 
ptr_glUniformMatrix4fvARB :: FunPtr a
ptr_glUniformMatrix4fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniformMatrix4fvARB"
 
glUniformMatrix4fvARB ::
                      GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glUniformMatrix4fvARB
  = dyn_glUniformMatrix4fvARB ptr_glUniformMatrix4fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix4fvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix3fvARB #-}
 
ptr_glUniformMatrix3fvARB :: FunPtr a
ptr_glUniformMatrix3fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniformMatrix3fvARB"
 
glUniformMatrix3fvARB ::
                      GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glUniformMatrix3fvARB
  = dyn_glUniformMatrix3fvARB ptr_glUniformMatrix3fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix3fvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix2fvARB #-}
 
ptr_glUniformMatrix2fvARB :: FunPtr a
ptr_glUniformMatrix2fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniformMatrix2fvARB"
 
glUniformMatrix2fvARB ::
                      GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glUniformMatrix2fvARB
  = dyn_glUniformMatrix2fvARB ptr_glUniformMatrix2fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix2fvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform4ivARB #-}
 
ptr_glUniform4ivARB :: FunPtr a
ptr_glUniform4ivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform4ivARB"
 
glUniform4ivARB :: GLint -> GLsizei -> Ptr GLint -> IO ()
glUniform4ivARB = dyn_glUniform4ivARB ptr_glUniform4ivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4ivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glUniform3ivARB #-}
 
ptr_glUniform3ivARB :: FunPtr a
ptr_glUniform3ivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform3ivARB"
 
glUniform3ivARB :: GLint -> GLsizei -> Ptr GLint -> IO ()
glUniform3ivARB = dyn_glUniform3ivARB ptr_glUniform3ivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3ivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glUniform2ivARB #-}
 
ptr_glUniform2ivARB :: FunPtr a
ptr_glUniform2ivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform2ivARB"
 
glUniform2ivARB :: GLint -> GLsizei -> Ptr GLint -> IO ()
glUniform2ivARB = dyn_glUniform2ivARB ptr_glUniform2ivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2ivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glUniform1ivARB #-}
 
ptr_glUniform1ivARB :: FunPtr a
ptr_glUniform1ivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform1ivARB"
 
glUniform1ivARB :: GLint -> GLsizei -> Ptr GLint -> IO ()
glUniform1ivARB = dyn_glUniform1ivARB ptr_glUniform1ivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1ivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glUniform4fvARB #-}
 
ptr_glUniform4fvARB :: FunPtr a
ptr_glUniform4fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform4fvARB"
 
glUniform4fvARB :: GLint -> GLsizei -> Ptr GLfloat -> IO ()
glUniform4fvARB = dyn_glUniform4fvARB ptr_glUniform4fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4fvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform3fvARB #-}
 
ptr_glUniform3fvARB :: FunPtr a
ptr_glUniform3fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform3fvARB"
 
glUniform3fvARB :: GLint -> GLsizei -> Ptr GLfloat -> IO ()
glUniform3fvARB = dyn_glUniform3fvARB ptr_glUniform3fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3fvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform2fvARB #-}
 
ptr_glUniform2fvARB :: FunPtr a
ptr_glUniform2fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform2fvARB"
 
glUniform2fvARB :: GLint -> GLsizei -> Ptr GLfloat -> IO ()
glUniform2fvARB = dyn_glUniform2fvARB ptr_glUniform2fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2fvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform1fvARB #-}
 
ptr_glUniform1fvARB :: FunPtr a
ptr_glUniform1fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform1fvARB"
 
glUniform1fvARB :: GLint -> GLsizei -> Ptr GLfloat -> IO ()
glUniform1fvARB = dyn_glUniform1fvARB ptr_glUniform1fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1fvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform4iARB #-}
 
ptr_glUniform4iARB :: FunPtr a
ptr_glUniform4iARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform4iARB"
 
glUniform4iARB ::
               GLint -> GLint -> GLint -> GLint -> GLint -> IO ()
glUniform4iARB = dyn_glUniform4iARB ptr_glUniform4iARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4iARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glUniform3iARB #-}
 
ptr_glUniform3iARB :: FunPtr a
ptr_glUniform3iARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform3iARB"
 
glUniform3iARB :: GLint -> GLint -> GLint -> GLint -> IO ()
glUniform3iARB = dyn_glUniform3iARB ptr_glUniform3iARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3iARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glUniform2iARB #-}
 
ptr_glUniform2iARB :: FunPtr a
ptr_glUniform2iARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform2iARB"
 
glUniform2iARB :: GLint -> GLint -> GLint -> IO ()
glUniform2iARB = dyn_glUniform2iARB ptr_glUniform2iARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2iARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glUniform1iARB #-}
 
ptr_glUniform1iARB :: FunPtr a
ptr_glUniform1iARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform1iARB"
 
glUniform1iARB :: GLint -> GLint -> IO ()
glUniform1iARB = dyn_glUniform1iARB ptr_glUniform1iARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1iARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glUniform4fARB #-}
 
ptr_glUniform4fARB :: FunPtr a
ptr_glUniform4fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform4fARB"
 
glUniform4fARB ::
               GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glUniform4fARB = dyn_glUniform4fARB ptr_glUniform4fARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform3fARB #-}
 
ptr_glUniform3fARB :: FunPtr a
ptr_glUniform3fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform3fARB"
 
glUniform3fARB :: GLint -> GLfloat -> GLfloat -> GLfloat -> IO ()
glUniform3fARB = dyn_glUniform3fARB ptr_glUniform3fARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform2fARB #-}
 
ptr_glUniform2fARB :: FunPtr a
ptr_glUniform2fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform2fARB"
 
glUniform2fARB :: GLint -> GLfloat -> GLfloat -> IO ()
glUniform2fARB = dyn_glUniform2fARB ptr_glUniform2fARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform1fARB #-}
 
ptr_glUniform1fARB :: FunPtr a
ptr_glUniform1fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform1fARB"
 
glUniform1fARB :: GLint -> GLfloat -> IO ()
glUniform1fARB = dyn_glUniform1fARB ptr_glUniform1fARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glValidateProgramARB #-}
 
ptr_glValidateProgramARB :: FunPtr a
ptr_glValidateProgramARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glValidateProgramARB"
 
glValidateProgramARB :: GLhandle -> IO ()
glValidateProgramARB
  = dyn_glValidateProgramARB ptr_glValidateProgramARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glValidateProgramARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> IO ())
 
{-# NOINLINE ptr_glUseProgramObjectARB #-}
 
ptr_glUseProgramObjectARB :: FunPtr a
ptr_glUseProgramObjectARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUseProgramObjectARB"
 
glUseProgramObjectARB :: GLhandle -> IO ()
glUseProgramObjectARB
  = dyn_glUseProgramObjectARB ptr_glUseProgramObjectARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glUseProgramObjectARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> IO ())
 
{-# NOINLINE ptr_glLinkProgramARB #-}
 
ptr_glLinkProgramARB :: FunPtr a
ptr_glLinkProgramARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glLinkProgramARB"
 
glLinkProgramARB :: GLhandle -> IO ()
glLinkProgramARB = dyn_glLinkProgramARB ptr_glLinkProgramARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glLinkProgramARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> IO ())
 
{-# NOINLINE ptr_glAttachObjectARB #-}
 
ptr_glAttachObjectARB :: FunPtr a
ptr_glAttachObjectARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glAttachObjectARB"
 
glAttachObjectARB :: GLhandle -> GLhandle -> IO ()
glAttachObjectARB = dyn_glAttachObjectARB ptr_glAttachObjectARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glAttachObjectARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLhandle -> IO ())
 
{-# NOINLINE ptr_glCreateProgramObjectARB #-}
 
ptr_glCreateProgramObjectARB :: FunPtr a
ptr_glCreateProgramObjectARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glCreateProgramObjectARB"
 
glCreateProgramObjectARB :: IO GLuint
glCreateProgramObjectARB
  = dyn_glCreateProgramObjectARB ptr_glCreateProgramObjectARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCreateProgramObjectARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (IO GLuint)
 
{-# NOINLINE ptr_glCompileShaderARB #-}
 
ptr_glCompileShaderARB :: FunPtr a
ptr_glCompileShaderARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glCompileShaderARB"
 
glCompileShaderARB :: GLhandle -> IO ()
glCompileShaderARB = dyn_glCompileShaderARB ptr_glCompileShaderARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glCompileShaderARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> IO ())
 
{-# NOINLINE ptr_glShaderSourceARB #-}
 
ptr_glShaderSourceARB :: FunPtr a
ptr_glShaderSourceARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glShaderSourceARB"
 
glShaderSourceARB ::
                  GLhandle -> GLsizei -> Ptr (Ptr GLchar) -> Ptr GLint -> IO ()
glShaderSourceARB = dyn_glShaderSourceARB ptr_glShaderSourceARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glShaderSourceARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLsizei -> Ptr (Ptr GLchar) -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glCreateShaderObjectARB #-}
 
ptr_glCreateShaderObjectARB :: FunPtr a
ptr_glCreateShaderObjectARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glCreateShaderObjectARB"
 
glCreateShaderObjectARB :: GLenum -> IO GLuint
glCreateShaderObjectARB
  = dyn_glCreateShaderObjectARB ptr_glCreateShaderObjectARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glCreateShaderObjectARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glDetachObjectARB #-}
 
ptr_glDetachObjectARB :: FunPtr a
ptr_glDetachObjectARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glDetachObjectARB"
 
glDetachObjectARB :: GLhandle -> GLhandle -> IO ()
glDetachObjectARB = dyn_glDetachObjectARB ptr_glDetachObjectARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glDetachObjectARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLhandle -> IO ())
 
{-# NOINLINE ptr_glGetHandleARB #-}
 
ptr_glGetHandleARB :: FunPtr a
ptr_glGetHandleARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetHandleARB"
 
glGetHandleARB :: GLenum -> IO GLuint
glGetHandleARB = dyn_glGetHandleARB ptr_glGetHandleARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetHandleARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glDeleteObjectARB #-}
 
ptr_glDeleteObjectARB :: FunPtr a
ptr_glDeleteObjectARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glDeleteObjectARB"
 
glDeleteObjectARB :: GLhandle -> IO ()
glDeleteObjectARB = dyn_glDeleteObjectARB ptr_glDeleteObjectARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteObjectARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> IO ())
 
gl_OBJECT_SHADER_SOURCE_LENGTH_ARB :: GLenum
gl_OBJECT_SHADER_SOURCE_LENGTH_ARB = 35720
 
gl_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB :: GLenum
gl_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB = 35719
 
gl_OBJECT_ACTIVE_UNIFORMS_ARB :: GLenum
gl_OBJECT_ACTIVE_UNIFORMS_ARB = 35718
 
gl_OBJECT_ATTACHED_OBJECTS_ARB :: GLenum
gl_OBJECT_ATTACHED_OBJECTS_ARB = 35717
 
gl_OBJECT_INFO_LOG_LENGTH_ARB :: GLenum
gl_OBJECT_INFO_LOG_LENGTH_ARB = 35716
 
gl_OBJECT_VALIDATE_STATUS_ARB :: GLenum
gl_OBJECT_VALIDATE_STATUS_ARB = 35715
 
gl_OBJECT_LINK_STATUS_ARB :: GLenum
gl_OBJECT_LINK_STATUS_ARB = 35714
 
gl_OBJECT_COMPILE_STATUS_ARB :: GLenum
gl_OBJECT_COMPILE_STATUS_ARB = 35713
 
gl_OBJECT_DELETE_STATUS_ARB :: GLenum
gl_OBJECT_DELETE_STATUS_ARB = 35712
 
gl_SAMPLER_2D_RECT_SHADOW_ARB :: GLenum
gl_SAMPLER_2D_RECT_SHADOW_ARB = 35684
 
gl_SAMPLER_2D_RECT_ARB :: GLenum
gl_SAMPLER_2D_RECT_ARB = 35683
 
gl_SAMPLER_2D_SHADOW_ARB :: GLenum
gl_SAMPLER_2D_SHADOW_ARB = 35682
 
gl_SAMPLER_1D_SHADOW_ARB :: GLenum
gl_SAMPLER_1D_SHADOW_ARB = 35681
 
gl_SAMPLER_CUBE_ARB :: GLenum
gl_SAMPLER_CUBE_ARB = 35680
 
gl_SAMPLER_3D_ARB :: GLenum
gl_SAMPLER_3D_ARB = 35679
 
gl_SAMPLER_2D_ARB :: GLenum
gl_SAMPLER_2D_ARB = 35678
 
gl_SAMPLER_1D_ARB :: GLenum
gl_SAMPLER_1D_ARB = 35677
 
gl_FLOAT_MAT4_ARB :: GLenum
gl_FLOAT_MAT4_ARB = 35676
 
gl_FLOAT_MAT3_ARB :: GLenum
gl_FLOAT_MAT3_ARB = 35675
 
gl_FLOAT_MAT2_ARB :: GLenum
gl_FLOAT_MAT2_ARB = 35674
 
gl_BOOL_VEC4_ARB :: GLenum
gl_BOOL_VEC4_ARB = 35673
 
gl_BOOL_VEC3_ARB :: GLenum
gl_BOOL_VEC3_ARB = 35672
 
gl_BOOL_VEC2_ARB :: GLenum
gl_BOOL_VEC2_ARB = 35671
 
gl_BOOL_ARB :: GLenum
gl_BOOL_ARB = 35670
 
gl_INT_VEC4_ARB :: GLenum
gl_INT_VEC4_ARB = 35669
 
gl_INT_VEC3_ARB :: GLenum
gl_INT_VEC3_ARB = 35668
 
gl_INT_VEC2_ARB :: GLenum
gl_INT_VEC2_ARB = 35667
 
gl_FLOAT_VEC4_ARB :: GLenum
gl_FLOAT_VEC4_ARB = 35666
 
gl_FLOAT_VEC3_ARB :: GLenum
gl_FLOAT_VEC3_ARB = 35665
 
gl_FLOAT_VEC2_ARB :: GLenum
gl_FLOAT_VEC2_ARB = 35664
 
gl_OBJECT_SUBTYPE_ARB :: GLenum
gl_OBJECT_SUBTYPE_ARB = 35663
 
gl_OBJECT_TYPE_ARB :: GLenum
gl_OBJECT_TYPE_ARB = 35662
 
gl_SHADER_OBJECT_ARB :: GLenum
gl_SHADER_OBJECT_ARB = 35656
 
gl_PROGRAM_OBJECT_ARB :: GLenum
gl_PROGRAM_OBJECT_ARB = 35648