{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.ShaderObjects
       (glValidateProgram, glUseProgramObject, glUniformMatrix4fv,
        glUniformMatrix3fv, glUniformMatrix2fv, glUniform4iv, glUniform4i,
        glUniform4fv, glUniform4f, glUniform3iv, glUniform3i, glUniform3fv,
        glUniform3f, glUniform2iv, glUniform2i, glUniform2fv, glUniform2f,
        glUniform1iv, glUniform1i, glUniform1fv, glUniform1f,
        glShaderSource, glLinkProgram, glGetUniformiv, glGetUniformfv,
        glGetUniformLocation, glGetShaderSource, glGetObjectParameteriv,
        glGetObjectParameterfv, glGetInfoLog, glGetHandle,
        glGetAttachedObjects, glGetActiveUniform, glDetachObject,
        glDeleteObject, glCreateShaderObject, glCreateProgramObject,
        glCompileShader, glAttachObject, gl_SHADER_OBJECT, gl_SAMPLER_CUBE,
        gl_SAMPLER_3D, gl_SAMPLER_2D_SHADOW, gl_SAMPLER_2D_RECT_SHADOW,
        gl_SAMPLER_2D_RECT, gl_SAMPLER_2D, gl_SAMPLER_1D_SHADOW,
        gl_SAMPLER_1D, gl_PROGRAM_OBJECT, gl_OBJECT_VALIDATE_STATUS,
        gl_OBJECT_TYPE, gl_OBJECT_SUBTYPE, gl_OBJECT_SHADER_SOURCE_LENGTH,
        gl_OBJECT_LINK_STATUS, gl_OBJECT_INFO_LOG_LENGTH,
        gl_OBJECT_DELETE_STATUS, gl_OBJECT_COMPILE_STATUS,
        gl_OBJECT_ATTACHED_OBJECTS, gl_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH,
        gl_OBJECT_ACTIVE_UNIFORMS, gl_INT_VEC4, gl_INT_VEC3, gl_INT_VEC2,
        gl_FLOAT_VEC4, gl_FLOAT_VEC3, gl_FLOAT_VEC2, gl_FLOAT_MAT4,
        gl_FLOAT_MAT3, gl_FLOAT_MAT2, gl_BOOL_VEC4, gl_BOOL_VEC3,
        gl_BOOL_VEC2, gl_BOOL)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glValidateProgram #-}
 
ptr_glValidateProgram :: FunPtr a
ptr_glValidateProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glValidateProgramARB"
 
glValidateProgram :: GLhandle -> IO ()
glValidateProgram = dyn_glValidateProgram ptr_glValidateProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glValidateProgram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> IO ())
 
{-# NOINLINE ptr_glUseProgramObject #-}
 
ptr_glUseProgramObject :: FunPtr a
ptr_glUseProgramObject
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUseProgramObjectARB"
 
glUseProgramObject :: GLhandle -> IO ()
glUseProgramObject = dyn_glUseProgramObject ptr_glUseProgramObject
 
foreign import CALLCONV unsafe "dynamic" dyn_glUseProgramObject ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix4fv #-}
 
ptr_glUniformMatrix4fv :: FunPtr a
ptr_glUniformMatrix4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniformMatrix4fvARB"
 
glUniformMatrix4fv ::
                   GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glUniformMatrix4fv = dyn_glUniformMatrix4fv ptr_glUniformMatrix4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix3fv #-}
 
ptr_glUniformMatrix3fv :: FunPtr a
ptr_glUniformMatrix3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniformMatrix3fvARB"
 
glUniformMatrix3fv ::
                   GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glUniformMatrix3fv = dyn_glUniformMatrix3fv ptr_glUniformMatrix3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix2fv #-}
 
ptr_glUniformMatrix2fv :: FunPtr a
ptr_glUniformMatrix2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniformMatrix2fvARB"
 
glUniformMatrix2fv ::
                   GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glUniformMatrix2fv = dyn_glUniformMatrix2fv ptr_glUniformMatrix2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform4iv #-}
 
ptr_glUniform4iv :: FunPtr a
ptr_glUniform4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform4ivARB"
 
glUniform4iv :: GLint -> GLsizei -> Ptr GLint -> IO ()
glUniform4iv = dyn_glUniform4iv ptr_glUniform4iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glUniform4i #-}
 
ptr_glUniform4i :: FunPtr a
ptr_glUniform4i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform4iARB"
 
glUniform4i :: GLint -> GLint -> GLint -> GLint -> GLint -> IO ()
glUniform4i = dyn_glUniform4i ptr_glUniform4i
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glUniform4fv #-}
 
ptr_glUniform4fv :: FunPtr a
ptr_glUniform4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform4fvARB"
 
glUniform4fv :: GLint -> GLsizei -> Ptr GLfloat -> IO ()
glUniform4fv = dyn_glUniform4fv ptr_glUniform4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform4f #-}
 
ptr_glUniform4f :: FunPtr a
ptr_glUniform4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform4fARB"
 
glUniform4f ::
            GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glUniform4f = dyn_glUniform4f ptr_glUniform4f
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform3iv #-}
 
ptr_glUniform3iv :: FunPtr a
ptr_glUniform3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform3ivARB"
 
glUniform3iv :: GLint -> GLsizei -> Ptr GLint -> IO ()
glUniform3iv = dyn_glUniform3iv ptr_glUniform3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glUniform3i #-}
 
ptr_glUniform3i :: FunPtr a
ptr_glUniform3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform3iARB"
 
glUniform3i :: GLint -> GLint -> GLint -> GLint -> IO ()
glUniform3i = dyn_glUniform3i ptr_glUniform3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glUniform3fv #-}
 
ptr_glUniform3fv :: FunPtr a
ptr_glUniform3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform3fvARB"
 
glUniform3fv :: GLint -> GLsizei -> Ptr GLfloat -> IO ()
glUniform3fv = dyn_glUniform3fv ptr_glUniform3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform3f #-}
 
ptr_glUniform3f :: FunPtr a
ptr_glUniform3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform3fARB"
 
glUniform3f :: GLint -> GLfloat -> GLfloat -> GLfloat -> IO ()
glUniform3f = dyn_glUniform3f ptr_glUniform3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform2iv #-}
 
ptr_glUniform2iv :: FunPtr a
ptr_glUniform2iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform2ivARB"
 
glUniform2iv :: GLint -> GLsizei -> Ptr GLint -> IO ()
glUniform2iv = dyn_glUniform2iv ptr_glUniform2iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glUniform2i #-}
 
ptr_glUniform2i :: FunPtr a
ptr_glUniform2i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform2iARB"
 
glUniform2i :: GLint -> GLint -> GLint -> IO ()
glUniform2i = dyn_glUniform2i ptr_glUniform2i
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glUniform2fv #-}
 
ptr_glUniform2fv :: FunPtr a
ptr_glUniform2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform2fvARB"
 
glUniform2fv :: GLint -> GLsizei -> Ptr GLfloat -> IO ()
glUniform2fv = dyn_glUniform2fv ptr_glUniform2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform2f #-}
 
ptr_glUniform2f :: FunPtr a
ptr_glUniform2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform2fARB"
 
glUniform2f :: GLint -> GLfloat -> GLfloat -> IO ()
glUniform2f = dyn_glUniform2f ptr_glUniform2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform1iv #-}
 
ptr_glUniform1iv :: FunPtr a
ptr_glUniform1iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform1ivARB"
 
glUniform1iv :: GLint -> GLsizei -> Ptr GLint -> IO ()
glUniform1iv = dyn_glUniform1iv ptr_glUniform1iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glUniform1i #-}
 
ptr_glUniform1i :: FunPtr a
ptr_glUniform1i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform1iARB"
 
glUniform1i :: GLint -> GLint -> IO ()
glUniform1i = dyn_glUniform1i ptr_glUniform1i
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glUniform1fv #-}
 
ptr_glUniform1fv :: FunPtr a
ptr_glUniform1fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform1fvARB"
 
glUniform1fv :: GLint -> GLsizei -> Ptr GLfloat -> IO ()
glUniform1fv = dyn_glUniform1fv ptr_glUniform1fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniform1f #-}
 
ptr_glUniform1f :: FunPtr a
ptr_glUniform1f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glUniform1fARB"
 
glUniform1f :: GLint -> GLfloat -> IO ()
glUniform1f = dyn_glUniform1f ptr_glUniform1f
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glShaderSource #-}
 
ptr_glShaderSource :: FunPtr a
ptr_glShaderSource
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glShaderSourceARB"
 
glShaderSource ::
               GLhandle -> GLsizei -> Ptr (Ptr GLchar) -> Ptr GLint -> IO ()
glShaderSource = dyn_glShaderSource ptr_glShaderSource
 
foreign import CALLCONV unsafe "dynamic" dyn_glShaderSource ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLsizei -> Ptr (Ptr GLchar) -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glLinkProgram #-}
 
ptr_glLinkProgram :: FunPtr a
ptr_glLinkProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glLinkProgramARB"
 
glLinkProgram :: GLhandle -> IO ()
glLinkProgram = dyn_glLinkProgram ptr_glLinkProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glLinkProgram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> IO ())
 
{-# NOINLINE ptr_glGetUniformiv #-}
 
ptr_glGetUniformiv :: FunPtr a
ptr_glGetUniformiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetUniformivARB"
 
glGetUniformiv :: GLhandle -> GLint -> Ptr GLint -> IO ()
glGetUniformiv = dyn_glGetUniformiv ptr_glGetUniformiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetUniformfv #-}
 
ptr_glGetUniformfv :: FunPtr a
ptr_glGetUniformfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetUniformfvARB"
 
glGetUniformfv :: GLhandle -> GLint -> Ptr GLfloat -> IO ()
glGetUniformfv = dyn_glGetUniformfv ptr_glGetUniformfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetUniformLocation #-}
 
ptr_glGetUniformLocation :: FunPtr a
ptr_glGetUniformLocation
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetUniformLocationARB"
 
glGetUniformLocation :: GLhandle -> Ptr GLchar -> IO GLint
glGetUniformLocation
  = dyn_glGetUniformLocation ptr_glGetUniformLocation
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformLocation ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> Ptr GLchar -> IO GLint)
 
{-# NOINLINE ptr_glGetShaderSource #-}
 
ptr_glGetShaderSource :: FunPtr a
ptr_glGetShaderSource
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetShaderSourceARB"
 
glGetShaderSource ::
                  GLhandle -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetShaderSource = dyn_glGetShaderSource ptr_glGetShaderSource
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetShaderSource ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetObjectParameteriv #-}
 
ptr_glGetObjectParameteriv :: FunPtr a
ptr_glGetObjectParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetObjectParameterivARB"
 
glGetObjectParameteriv :: GLhandle -> GLenum -> Ptr GLint -> IO ()
glGetObjectParameteriv
  = dyn_glGetObjectParameteriv ptr_glGetObjectParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetObjectParameteriv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetObjectParameterfv #-}
 
ptr_glGetObjectParameterfv :: FunPtr a
ptr_glGetObjectParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetObjectParameterfvARB"
 
glGetObjectParameterfv ::
                       GLhandle -> GLenum -> Ptr GLfloat -> IO ()
glGetObjectParameterfv
  = dyn_glGetObjectParameterfv ptr_glGetObjectParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetObjectParameterfv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetInfoLog #-}
 
ptr_glGetInfoLog :: FunPtr a
ptr_glGetInfoLog
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetInfoLogARB"
 
glGetInfoLog ::
             GLhandle -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetInfoLog = dyn_glGetInfoLog ptr_glGetInfoLog
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetInfoLog ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetHandle #-}
 
ptr_glGetHandle :: FunPtr a
ptr_glGetHandle
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetHandleARB"
 
glGetHandle :: GLenum -> IO GLuint
glGetHandle = dyn_glGetHandle ptr_glGetHandle
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetHandle ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glGetAttachedObjects #-}
 
ptr_glGetAttachedObjects :: FunPtr a
ptr_glGetAttachedObjects
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetAttachedObjectsARB"
 
glGetAttachedObjects ::
                     GLhandle -> GLsizei -> Ptr GLsizei -> Ptr GLhandle -> IO ()
glGetAttachedObjects
  = dyn_glGetAttachedObjects ptr_glGetAttachedObjects
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetAttachedObjects ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLsizei -> Ptr GLsizei -> Ptr GLhandle -> IO ())
 
{-# NOINLINE ptr_glGetActiveUniform #-}
 
ptr_glGetActiveUniform :: FunPtr a
ptr_glGetActiveUniform
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glGetActiveUniformARB"
 
glGetActiveUniform ::
                   GLhandle ->
                     GLuint ->
                       GLsizei ->
                         Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO ()
glGetActiveUniform = dyn_glGetActiveUniform ptr_glGetActiveUniform
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetActiveUniform ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle ->
                    GLuint ->
                      GLsizei ->
                        Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glDetachObject #-}
 
ptr_glDetachObject :: FunPtr a
ptr_glDetachObject
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glDetachObjectARB"
 
glDetachObject :: GLhandle -> GLhandle -> IO ()
glDetachObject = dyn_glDetachObject ptr_glDetachObject
 
foreign import CALLCONV unsafe "dynamic" dyn_glDetachObject ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLhandle -> IO ())
 
{-# NOINLINE ptr_glDeleteObject #-}
 
ptr_glDeleteObject :: FunPtr a
ptr_glDeleteObject
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glDeleteObjectARB"
 
glDeleteObject :: GLhandle -> IO ()
glDeleteObject = dyn_glDeleteObject ptr_glDeleteObject
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteObject ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> IO ())
 
{-# NOINLINE ptr_glCreateShaderObject #-}
 
ptr_glCreateShaderObject :: FunPtr a
ptr_glCreateShaderObject
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glCreateShaderObjectARB"
 
glCreateShaderObject :: GLenum -> IO GLuint
glCreateShaderObject
  = dyn_glCreateShaderObject ptr_glCreateShaderObject
 
foreign import CALLCONV unsafe "dynamic" dyn_glCreateShaderObject ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glCreateProgramObject #-}
 
ptr_glCreateProgramObject :: FunPtr a
ptr_glCreateProgramObject
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glCreateProgramObjectARB"
 
glCreateProgramObject :: IO GLuint
glCreateProgramObject
  = dyn_glCreateProgramObject ptr_glCreateProgramObject
 
foreign import CALLCONV unsafe "dynamic" dyn_glCreateProgramObject
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (IO GLuint)
 
{-# NOINLINE ptr_glCompileShader #-}
 
ptr_glCompileShader :: FunPtr a
ptr_glCompileShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glCompileShaderARB"
 
glCompileShader :: GLhandle -> IO ()
glCompileShader = dyn_glCompileShader ptr_glCompileShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glCompileShader ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> IO ())
 
{-# NOINLINE ptr_glAttachObject #-}
 
ptr_glAttachObject :: FunPtr a
ptr_glAttachObject
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shader_objects"
        "glAttachObjectARB"
 
glAttachObject :: GLhandle -> GLhandle -> IO ()
glAttachObject = dyn_glAttachObject ptr_glAttachObject
 
foreign import CALLCONV unsafe "dynamic" dyn_glAttachObject ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLhandle -> IO ())
 
gl_SHADER_OBJECT :: GLenum
gl_SHADER_OBJECT = 35656
 
gl_SAMPLER_CUBE :: GLenum
gl_SAMPLER_CUBE = 35680
 
gl_SAMPLER_3D :: GLenum
gl_SAMPLER_3D = 35679
 
gl_SAMPLER_2D_SHADOW :: GLenum
gl_SAMPLER_2D_SHADOW = 35682
 
gl_SAMPLER_2D_RECT_SHADOW :: GLenum
gl_SAMPLER_2D_RECT_SHADOW = 35684
 
gl_SAMPLER_2D_RECT :: GLenum
gl_SAMPLER_2D_RECT = 35683
 
gl_SAMPLER_2D :: GLenum
gl_SAMPLER_2D = 35678
 
gl_SAMPLER_1D_SHADOW :: GLenum
gl_SAMPLER_1D_SHADOW = 35681
 
gl_SAMPLER_1D :: GLenum
gl_SAMPLER_1D = 35677
 
gl_PROGRAM_OBJECT :: GLenum
gl_PROGRAM_OBJECT = 35648
 
gl_OBJECT_VALIDATE_STATUS :: GLenum
gl_OBJECT_VALIDATE_STATUS = 35715
 
gl_OBJECT_TYPE :: GLenum
gl_OBJECT_TYPE = 35662
 
gl_OBJECT_SUBTYPE :: GLenum
gl_OBJECT_SUBTYPE = 35663
 
gl_OBJECT_SHADER_SOURCE_LENGTH :: GLenum
gl_OBJECT_SHADER_SOURCE_LENGTH = 35720
 
gl_OBJECT_LINK_STATUS :: GLenum
gl_OBJECT_LINK_STATUS = 35714
 
gl_OBJECT_INFO_LOG_LENGTH :: GLenum
gl_OBJECT_INFO_LOG_LENGTH = 35716
 
gl_OBJECT_DELETE_STATUS :: GLenum
gl_OBJECT_DELETE_STATUS = 35712
 
gl_OBJECT_COMPILE_STATUS :: GLenum
gl_OBJECT_COMPILE_STATUS = 35713
 
gl_OBJECT_ATTACHED_OBJECTS :: GLenum
gl_OBJECT_ATTACHED_OBJECTS = 35717
 
gl_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH :: GLenum
gl_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH = 35719
 
gl_OBJECT_ACTIVE_UNIFORMS :: GLenum
gl_OBJECT_ACTIVE_UNIFORMS = 35718
 
gl_INT_VEC4 :: GLenum
gl_INT_VEC4 = 35669
 
gl_INT_VEC3 :: GLenum
gl_INT_VEC3 = 35668
 
gl_INT_VEC2 :: GLenum
gl_INT_VEC2 = 35667
 
gl_FLOAT_VEC4 :: GLenum
gl_FLOAT_VEC4 = 35666
 
gl_FLOAT_VEC3 :: GLenum
gl_FLOAT_VEC3 = 35665
 
gl_FLOAT_VEC2 :: GLenum
gl_FLOAT_VEC2 = 35664
 
gl_FLOAT_MAT4 :: GLenum
gl_FLOAT_MAT4 = 35676
 
gl_FLOAT_MAT3 :: GLenum
gl_FLOAT_MAT3 = 35675
 
gl_FLOAT_MAT2 :: GLenum
gl_FLOAT_MAT2 = 35674
 
gl_BOOL_VEC4 :: GLenum
gl_BOOL_VEC4 = 35673
 
gl_BOOL_VEC3 :: GLenum
gl_BOOL_VEC3 = 35672
 
gl_BOOL_VEC2 :: GLenum
gl_BOOL_VEC2 = 35671
 
gl_BOOL :: GLenum
gl_BOOL = 35670