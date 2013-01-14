{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core20
       (glVertexAttribPointer, glVertexAttrib4usv, glVertexAttrib4uiv,
        glVertexAttrib4ubv, glVertexAttrib4sv, glVertexAttrib4s,
        glVertexAttrib4iv, glVertexAttrib4fv, glVertexAttrib4f,
        glVertexAttrib4dv, glVertexAttrib4d, glVertexAttrib4bv,
        glVertexAttrib4Nusv, glVertexAttrib4Nuiv, glVertexAttrib4Nubv,
        glVertexAttrib4Nub, glVertexAttrib4Nsv, glVertexAttrib4Niv,
        glVertexAttrib4Nbv, glVertexAttrib3sv, glVertexAttrib3s,
        glVertexAttrib3fv, glVertexAttrib3f, glVertexAttrib3dv,
        glVertexAttrib3d, glVertexAttrib2sv, glVertexAttrib2s,
        glVertexAttrib2fv, glVertexAttrib2f, glVertexAttrib2dv,
        glVertexAttrib2d, glVertexAttrib1sv, glVertexAttrib1s,
        glVertexAttrib1fv, glVertexAttrib1f, glVertexAttrib1dv,
        glVertexAttrib1d, glValidateProgram, glUseProgram,
        glUniformMatrix4fv, glUniformMatrix3fv, glUniformMatrix2fv,
        glUniform4iv, glUniform4i, glUniform4fv, glUniform4f, glUniform3iv,
        glUniform3i, glUniform3fv, glUniform3f, glUniform2iv, glUniform2i,
        glUniform2fv, glUniform2f, glUniform1iv, glUniform1i, glUniform1fv,
        glUniform1f, glStencilOpSeparate, glStencilMaskSeparate,
        glStencilFuncSeparate, glShaderSource, glLinkProgram, glIsShader,
        glIsProgram, glGetVertexAttribiv, glGetVertexAttribfv,
        glGetVertexAttribdv, glGetVertexAttribPointerv, glGetUniformiv,
        glGetUniformfv, glGetUniformLocation, glGetShaderiv,
        glGetShaderSource, glGetShaderInfoLog, glGetProgramiv,
        glGetProgramInfoLog, glGetAttribLocation, glGetAttachedShaders,
        glGetActiveUniform, glGetActiveAttrib, glEnableVertexAttribArray,
        glDrawBuffers, glDisableVertexAttribArray, glDetachShader,
        glDeleteShader, glDeleteProgram, glCreateShader, glCreateProgram,
        glCompileShader, glBlendEquationSeparate, glBindAttribLocation,
        glAttachShader, gl_VERTEX_SHADER, gl_VERTEX_PROGRAM_POINT_SIZE,
        gl_VERTEX_ATTRIB_ARRAY_TYPE, gl_VERTEX_ATTRIB_ARRAY_STRIDE,
        gl_VERTEX_ATTRIB_ARRAY_SIZE, gl_VERTEX_ATTRIB_ARRAY_POINTER,
        gl_VERTEX_ATTRIB_ARRAY_NORMALIZED, gl_VERTEX_ATTRIB_ARRAY_ENABLED,
        gl_VALIDATE_STATUS, gl_UPPER_LEFT, gl_STENCIL_BACK_WRITEMASK,
        gl_STENCIL_BACK_VALUE_MASK, gl_STENCIL_BACK_REF,
        gl_STENCIL_BACK_PASS_DEPTH_PASS, gl_STENCIL_BACK_PASS_DEPTH_FAIL,
        gl_STENCIL_BACK_FUNC, gl_STENCIL_BACK_FAIL,
        gl_SHADING_LANGUAGE_VERSION, gl_SHADER_TYPE,
        gl_SHADER_SOURCE_LENGTH, gl_SAMPLER_CUBE, gl_SAMPLER_3D,
        gl_SAMPLER_2D_SHADOW, gl_SAMPLER_2D, gl_SAMPLER_1D_SHADOW,
        gl_SAMPLER_1D, gl_POINT_SPRITE_COORD_ORIGIN,
        gl_MAX_VERTEX_UNIFORM_COMPONENTS,
        gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS, gl_MAX_VERTEX_ATTRIBS,
        gl_MAX_VARYING_FLOATS, gl_MAX_TEXTURE_IMAGE_UNITS,
        gl_MAX_FRAGMENT_UNIFORM_COMPONENTS, gl_MAX_DRAW_BUFFERS,
        gl_MAX_COMBINED_TEXTURE_IMAGE_UNITS, gl_LOWER_LEFT, gl_LINK_STATUS,
        gl_INT_VEC4, gl_INT_VEC3, gl_INT_VEC2, gl_INFO_LOG_LENGTH,
        gl_FRAGMENT_SHADER_DERIVATIVE_HINT, gl_FRAGMENT_SHADER,
        gl_FLOAT_VEC4, gl_FLOAT_VEC3, gl_FLOAT_VEC2, gl_FLOAT_MAT4,
        gl_FLOAT_MAT3, gl_FLOAT_MAT2, gl_DRAW_BUFFER9, gl_DRAW_BUFFER8,
        gl_DRAW_BUFFER7, gl_DRAW_BUFFER6, gl_DRAW_BUFFER5, gl_DRAW_BUFFER4,
        gl_DRAW_BUFFER3, gl_DRAW_BUFFER2, gl_DRAW_BUFFER15,
        gl_DRAW_BUFFER14, gl_DRAW_BUFFER13, gl_DRAW_BUFFER12,
        gl_DRAW_BUFFER11, gl_DRAW_BUFFER10, gl_DRAW_BUFFER1,
        gl_DRAW_BUFFER0, gl_DELETE_STATUS, gl_CURRENT_VERTEX_ATTRIB,
        gl_CURRENT_PROGRAM, gl_COMPILE_STATUS, gl_BOOL_VEC4, gl_BOOL_VEC3,
        gl_BOOL_VEC2, gl_BOOL, gl_BLEND_EQUATION_RGB,
        gl_BLEND_EQUATION_ALPHA, gl_ATTACHED_SHADERS,
        gl_ACTIVE_UNIFORM_MAX_LENGTH, gl_ACTIVE_UNIFORMS,
        gl_ACTIVE_ATTRIBUTE_MAX_LENGTH, gl_ACTIVE_ATTRIBUTES)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribPointer #-}
 
ptr_glVertexAttribPointer :: FunPtr a
ptr_glVertexAttribPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttribPointer"
 
glVertexAttribPointer ::
                      GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> Ptr a -> IO ()
glVertexAttribPointer
  = dyn_glVertexAttribPointer ptr_glVertexAttribPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribPointer
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint -> GLenum -> GLboolean -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4usv #-}
 
ptr_glVertexAttrib4usv :: FunPtr a
ptr_glVertexAttrib4usv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4usv"
 
glVertexAttrib4usv :: GLuint -> Ptr GLushort -> IO ()
glVertexAttrib4usv = dyn_glVertexAttrib4usv ptr_glVertexAttrib4usv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4usv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4uiv #-}
 
ptr_glVertexAttrib4uiv :: FunPtr a
ptr_glVertexAttrib4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4uiv"
 
glVertexAttrib4uiv :: GLuint -> Ptr GLuint -> IO ()
glVertexAttrib4uiv = dyn_glVertexAttrib4uiv ptr_glVertexAttrib4uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4ubv #-}
 
ptr_glVertexAttrib4ubv :: FunPtr a
ptr_glVertexAttrib4ubv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4ubv"
 
glVertexAttrib4ubv :: GLuint -> Ptr GLubyte -> IO ()
glVertexAttrib4ubv = dyn_glVertexAttrib4ubv ptr_glVertexAttrib4ubv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4ubv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4sv #-}
 
ptr_glVertexAttrib4sv :: FunPtr a
ptr_glVertexAttrib4sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4sv"
 
glVertexAttrib4sv :: GLuint -> Ptr GLshort -> IO ()
glVertexAttrib4sv = dyn_glVertexAttrib4sv ptr_glVertexAttrib4sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4s #-}
 
ptr_glVertexAttrib4s :: FunPtr a
ptr_glVertexAttrib4s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4s"
 
glVertexAttrib4s ::
                 GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()
glVertexAttrib4s = dyn_glVertexAttrib4s ptr_glVertexAttrib4s
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4iv #-}
 
ptr_glVertexAttrib4iv :: FunPtr a
ptr_glVertexAttrib4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4iv"
 
glVertexAttrib4iv :: GLuint -> Ptr GLint -> IO ()
glVertexAttrib4iv = dyn_glVertexAttrib4iv ptr_glVertexAttrib4iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4fv #-}
 
ptr_glVertexAttrib4fv :: FunPtr a
ptr_glVertexAttrib4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4fv"
 
glVertexAttrib4fv :: GLuint -> Ptr GLfloat -> IO ()
glVertexAttrib4fv = dyn_glVertexAttrib4fv ptr_glVertexAttrib4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4f #-}
 
ptr_glVertexAttrib4f :: FunPtr a
ptr_glVertexAttrib4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4f"
 
glVertexAttrib4f ::
                 GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glVertexAttrib4f = dyn_glVertexAttrib4f ptr_glVertexAttrib4f
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4dv #-}
 
ptr_glVertexAttrib4dv :: FunPtr a
ptr_glVertexAttrib4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4dv"
 
glVertexAttrib4dv :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttrib4dv = dyn_glVertexAttrib4dv ptr_glVertexAttrib4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4d #-}
 
ptr_glVertexAttrib4d :: FunPtr a
ptr_glVertexAttrib4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4d"
 
glVertexAttrib4d ::
                 GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexAttrib4d = dyn_glVertexAttrib4d ptr_glVertexAttrib4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4bv #-}
 
ptr_glVertexAttrib4bv :: FunPtr a
ptr_glVertexAttrib4bv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4bv"
 
glVertexAttrib4bv :: GLuint -> Ptr GLbyte -> IO ()
glVertexAttrib4bv = dyn_glVertexAttrib4bv ptr_glVertexAttrib4bv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4bv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4Nusv #-}
 
ptr_glVertexAttrib4Nusv :: FunPtr a
ptr_glVertexAttrib4Nusv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4Nusv"
 
glVertexAttrib4Nusv :: GLuint -> Ptr GLushort -> IO ()
glVertexAttrib4Nusv
  = dyn_glVertexAttrib4Nusv ptr_glVertexAttrib4Nusv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4Nusv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4Nuiv #-}
 
ptr_glVertexAttrib4Nuiv :: FunPtr a
ptr_glVertexAttrib4Nuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4Nuiv"
 
glVertexAttrib4Nuiv :: GLuint -> Ptr GLuint -> IO ()
glVertexAttrib4Nuiv
  = dyn_glVertexAttrib4Nuiv ptr_glVertexAttrib4Nuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4Nuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4Nubv #-}
 
ptr_glVertexAttrib4Nubv :: FunPtr a
ptr_glVertexAttrib4Nubv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4Nubv"
 
glVertexAttrib4Nubv :: GLuint -> Ptr GLubyte -> IO ()
glVertexAttrib4Nubv
  = dyn_glVertexAttrib4Nubv ptr_glVertexAttrib4Nubv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4Nubv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4Nub #-}
 
ptr_glVertexAttrib4Nub :: FunPtr a
ptr_glVertexAttrib4Nub
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4Nub"
 
glVertexAttrib4Nub ::
                   GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO ()
glVertexAttrib4Nub = dyn_glVertexAttrib4Nub ptr_glVertexAttrib4Nub
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4Nub ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4Nsv #-}
 
ptr_glVertexAttrib4Nsv :: FunPtr a
ptr_glVertexAttrib4Nsv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4Nsv"
 
glVertexAttrib4Nsv :: GLuint -> Ptr GLshort -> IO ()
glVertexAttrib4Nsv = dyn_glVertexAttrib4Nsv ptr_glVertexAttrib4Nsv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4Nsv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4Niv #-}
 
ptr_glVertexAttrib4Niv :: FunPtr a
ptr_glVertexAttrib4Niv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4Niv"
 
glVertexAttrib4Niv :: GLuint -> Ptr GLint -> IO ()
glVertexAttrib4Niv = dyn_glVertexAttrib4Niv ptr_glVertexAttrib4Niv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4Niv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4Nbv #-}
 
ptr_glVertexAttrib4Nbv :: FunPtr a
ptr_glVertexAttrib4Nbv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib4Nbv"
 
glVertexAttrib4Nbv :: GLuint -> Ptr GLbyte -> IO ()
glVertexAttrib4Nbv = dyn_glVertexAttrib4Nbv ptr_glVertexAttrib4Nbv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4Nbv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3sv #-}
 
ptr_glVertexAttrib3sv :: FunPtr a
ptr_glVertexAttrib3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib3sv"
 
glVertexAttrib3sv :: GLuint -> Ptr GLshort -> IO ()
glVertexAttrib3sv = dyn_glVertexAttrib3sv ptr_glVertexAttrib3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3s #-}
 
ptr_glVertexAttrib3s :: FunPtr a
ptr_glVertexAttrib3s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib3s"
 
glVertexAttrib3s ::
                 GLuint -> GLshort -> GLshort -> GLshort -> IO ()
glVertexAttrib3s = dyn_glVertexAttrib3s ptr_glVertexAttrib3s
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3fv #-}
 
ptr_glVertexAttrib3fv :: FunPtr a
ptr_glVertexAttrib3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib3fv"
 
glVertexAttrib3fv :: GLuint -> Ptr GLfloat -> IO ()
glVertexAttrib3fv = dyn_glVertexAttrib3fv ptr_glVertexAttrib3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3f #-}
 
ptr_glVertexAttrib3f :: FunPtr a
ptr_glVertexAttrib3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib3f"
 
glVertexAttrib3f ::
                 GLuint -> GLfloat -> GLfloat -> GLfloat -> IO ()
glVertexAttrib3f = dyn_glVertexAttrib3f ptr_glVertexAttrib3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3dv #-}
 
ptr_glVertexAttrib3dv :: FunPtr a
ptr_glVertexAttrib3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib3dv"
 
glVertexAttrib3dv :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttrib3dv = dyn_glVertexAttrib3dv ptr_glVertexAttrib3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3d #-}
 
ptr_glVertexAttrib3d :: FunPtr a
ptr_glVertexAttrib3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib3d"
 
glVertexAttrib3d ::
                 GLuint -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexAttrib3d = dyn_glVertexAttrib3d ptr_glVertexAttrib3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2sv #-}
 
ptr_glVertexAttrib2sv :: FunPtr a
ptr_glVertexAttrib2sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib2sv"
 
glVertexAttrib2sv :: GLuint -> Ptr GLshort -> IO ()
glVertexAttrib2sv = dyn_glVertexAttrib2sv ptr_glVertexAttrib2sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2s #-}
 
ptr_glVertexAttrib2s :: FunPtr a
ptr_glVertexAttrib2s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib2s"
 
glVertexAttrib2s :: GLuint -> GLshort -> GLshort -> IO ()
glVertexAttrib2s = dyn_glVertexAttrib2s ptr_glVertexAttrib2s
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2fv #-}
 
ptr_glVertexAttrib2fv :: FunPtr a
ptr_glVertexAttrib2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib2fv"
 
glVertexAttrib2fv :: GLuint -> Ptr GLfloat -> IO ()
glVertexAttrib2fv = dyn_glVertexAttrib2fv ptr_glVertexAttrib2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2f #-}
 
ptr_glVertexAttrib2f :: FunPtr a
ptr_glVertexAttrib2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib2f"
 
glVertexAttrib2f :: GLuint -> GLfloat -> GLfloat -> IO ()
glVertexAttrib2f = dyn_glVertexAttrib2f ptr_glVertexAttrib2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2dv #-}
 
ptr_glVertexAttrib2dv :: FunPtr a
ptr_glVertexAttrib2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib2dv"
 
glVertexAttrib2dv :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttrib2dv = dyn_glVertexAttrib2dv ptr_glVertexAttrib2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2d #-}
 
ptr_glVertexAttrib2d :: FunPtr a
ptr_glVertexAttrib2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib2d"
 
glVertexAttrib2d :: GLuint -> GLdouble -> GLdouble -> IO ()
glVertexAttrib2d = dyn_glVertexAttrib2d ptr_glVertexAttrib2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1sv #-}
 
ptr_glVertexAttrib1sv :: FunPtr a
ptr_glVertexAttrib1sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib1sv"
 
glVertexAttrib1sv :: GLuint -> Ptr GLshort -> IO ()
glVertexAttrib1sv = dyn_glVertexAttrib1sv ptr_glVertexAttrib1sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1s #-}
 
ptr_glVertexAttrib1s :: FunPtr a
ptr_glVertexAttrib1s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib1s"
 
glVertexAttrib1s :: GLuint -> GLshort -> IO ()
glVertexAttrib1s = dyn_glVertexAttrib1s ptr_glVertexAttrib1s
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1fv #-}
 
ptr_glVertexAttrib1fv :: FunPtr a
ptr_glVertexAttrib1fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib1fv"
 
glVertexAttrib1fv :: GLuint -> Ptr GLfloat -> IO ()
glVertexAttrib1fv = dyn_glVertexAttrib1fv ptr_glVertexAttrib1fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1f #-}
 
ptr_glVertexAttrib1f :: FunPtr a
ptr_glVertexAttrib1f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib1f"
 
glVertexAttrib1f :: GLuint -> GLfloat -> IO ()
glVertexAttrib1f = dyn_glVertexAttrib1f ptr_glVertexAttrib1f
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1dv #-}
 
ptr_glVertexAttrib1dv :: FunPtr a
ptr_glVertexAttrib1dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib1dv"
 
glVertexAttrib1dv :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttrib1dv = dyn_glVertexAttrib1dv ptr_glVertexAttrib1dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1d #-}
 
ptr_glVertexAttrib1d :: FunPtr a
ptr_glVertexAttrib1d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glVertexAttrib1d"
 
glVertexAttrib1d :: GLuint -> GLdouble -> IO ()
glVertexAttrib1d = dyn_glVertexAttrib1d ptr_glVertexAttrib1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glValidateProgram #-}
 
ptr_glValidateProgram :: FunPtr a
ptr_glValidateProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glValidateProgram"
 
glValidateProgram :: GLuint -> IO ()
glValidateProgram = dyn_glValidateProgram ptr_glValidateProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glValidateProgram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glUseProgram #-}
 
ptr_glUseProgram :: FunPtr a
ptr_glUseProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glUseProgram"
 
glUseProgram :: GLuint -> IO ()
glUseProgram = dyn_glUseProgram ptr_glUseProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glUseProgram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix4fv #-}
 
ptr_glUniformMatrix4fv :: FunPtr a
ptr_glUniformMatrix4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glUniformMatrix4fv"
 
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
        "GL_VERSION_2_0"
        "glUniformMatrix3fv"
 
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
        "GL_VERSION_2_0"
        "glUniformMatrix2fv"
 
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
        "GL_VERSION_2_0"
        "glUniform4iv"
 
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
        "GL_VERSION_2_0"
        "glUniform4i"
 
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
        "GL_VERSION_2_0"
        "glUniform4fv"
 
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
        "GL_VERSION_2_0"
        "glUniform4f"
 
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
        "GL_VERSION_2_0"
        "glUniform3iv"
 
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
        "GL_VERSION_2_0"
        "glUniform3i"
 
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
        "GL_VERSION_2_0"
        "glUniform3fv"
 
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
        "GL_VERSION_2_0"
        "glUniform3f"
 
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
        "GL_VERSION_2_0"
        "glUniform2iv"
 
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
        "GL_VERSION_2_0"
        "glUniform2i"
 
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
        "GL_VERSION_2_0"
        "glUniform2fv"
 
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
        "GL_VERSION_2_0"
        "glUniform2f"
 
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
        "GL_VERSION_2_0"
        "glUniform1iv"
 
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
        "GL_VERSION_2_0"
        "glUniform1i"
 
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
        "GL_VERSION_2_0"
        "glUniform1fv"
 
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
        "GL_VERSION_2_0"
        "glUniform1f"
 
glUniform1f :: GLint -> GLfloat -> IO ()
glUniform1f = dyn_glUniform1f ptr_glUniform1f
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glStencilOpSeparate #-}
 
ptr_glStencilOpSeparate :: FunPtr a
ptr_glStencilOpSeparate
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glStencilOpSeparate"
 
glStencilOpSeparate ::
                    GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glStencilOpSeparate
  = dyn_glStencilOpSeparate ptr_glStencilOpSeparate
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilOpSeparate ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glStencilMaskSeparate #-}
 
ptr_glStencilMaskSeparate :: FunPtr a
ptr_glStencilMaskSeparate
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glStencilMaskSeparate"
 
glStencilMaskSeparate :: GLenum -> GLuint -> IO ()
glStencilMaskSeparate
  = dyn_glStencilMaskSeparate ptr_glStencilMaskSeparate
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilMaskSeparate
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glStencilFuncSeparate #-}
 
ptr_glStencilFuncSeparate :: FunPtr a
ptr_glStencilFuncSeparate
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glStencilFuncSeparate"
 
glStencilFuncSeparate ::
                      GLenum -> GLenum -> GLint -> GLuint -> IO ()
glStencilFuncSeparate
  = dyn_glStencilFuncSeparate ptr_glStencilFuncSeparate
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilFuncSeparate
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glShaderSource #-}
 
ptr_glShaderSource :: FunPtr a
ptr_glShaderSource
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glShaderSource"
 
glShaderSource ::
               GLuint -> GLsizei -> Ptr GLchar -> Ptr GLint -> IO ()
glShaderSource = dyn_glShaderSource ptr_glShaderSource
 
foreign import CALLCONV unsafe "dynamic" dyn_glShaderSource ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLchar -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glLinkProgram #-}
 
ptr_glLinkProgram :: FunPtr a
ptr_glLinkProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glLinkProgram"
 
glLinkProgram :: GLuint -> IO ()
glLinkProgram = dyn_glLinkProgram ptr_glLinkProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glLinkProgram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glIsShader #-}
 
ptr_glIsShader :: FunPtr a
ptr_glIsShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glIsShader"
 
glIsShader :: GLuint -> IO GLboolean
glIsShader = dyn_glIsShader ptr_glIsShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsShader ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glIsProgram #-}
 
ptr_glIsProgram :: FunPtr a
ptr_glIsProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glIsProgram"
 
glIsProgram :: GLuint -> IO GLboolean
glIsProgram = dyn_glIsProgram ptr_glIsProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsProgram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetVertexAttribiv #-}
 
ptr_glGetVertexAttribiv :: FunPtr a
ptr_glGetVertexAttribiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetVertexAttribiv"
 
glGetVertexAttribiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVertexAttribiv
  = dyn_glGetVertexAttribiv ptr_glGetVertexAttribiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribfv #-}
 
ptr_glGetVertexAttribfv :: FunPtr a
ptr_glGetVertexAttribfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetVertexAttribfv"
 
glGetVertexAttribfv :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetVertexAttribfv
  = dyn_glGetVertexAttribfv ptr_glGetVertexAttribfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribdv #-}
 
ptr_glGetVertexAttribdv :: FunPtr a
ptr_glGetVertexAttribdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetVertexAttribdv"
 
glGetVertexAttribdv :: GLuint -> GLenum -> Ptr GLdouble -> IO ()
glGetVertexAttribdv
  = dyn_glGetVertexAttribdv ptr_glGetVertexAttribdv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribPointerv #-}
 
ptr_glGetVertexAttribPointerv :: FunPtr a
ptr_glGetVertexAttribPointerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetVertexAttribPointerv"
 
glGetVertexAttribPointerv ::
                          GLuint -> GLenum -> Ptr (Ptr a) -> IO ()
glGetVertexAttribPointerv
  = dyn_glGetVertexAttribPointerv ptr_glGetVertexAttribPointerv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVertexAttribPointerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glGetUniformiv #-}
 
ptr_glGetUniformiv :: FunPtr a
ptr_glGetUniformiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetUniformiv"
 
glGetUniformiv :: GLuint -> GLint -> Ptr GLint -> IO ()
glGetUniformiv = dyn_glGetUniformiv ptr_glGetUniformiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetUniformfv #-}
 
ptr_glGetUniformfv :: FunPtr a
ptr_glGetUniformfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetUniformfv"
 
glGetUniformfv :: GLuint -> GLint -> Ptr GLfloat -> IO ()
glGetUniformfv = dyn_glGetUniformfv ptr_glGetUniformfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetUniformLocation #-}
 
ptr_glGetUniformLocation :: FunPtr a
ptr_glGetUniformLocation
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetUniformLocation"
 
glGetUniformLocation :: GLuint -> Ptr GLchar -> IO GLint
glGetUniformLocation
  = dyn_glGetUniformLocation ptr_glGetUniformLocation
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformLocation ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLchar -> IO GLint)
 
{-# NOINLINE ptr_glGetShaderiv #-}
 
ptr_glGetShaderiv :: FunPtr a
ptr_glGetShaderiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetShaderiv"
 
glGetShaderiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetShaderiv = dyn_glGetShaderiv ptr_glGetShaderiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetShaderiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetShaderSource #-}
 
ptr_glGetShaderSource :: FunPtr a
ptr_glGetShaderSource
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetShaderSource"
 
glGetShaderSource ::
                  GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetShaderSource = dyn_glGetShaderSource ptr_glGetShaderSource
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetShaderSource ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetShaderInfoLog #-}
 
ptr_glGetShaderInfoLog :: FunPtr a
ptr_glGetShaderInfoLog
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetShaderInfoLog"
 
glGetShaderInfoLog ::
                   GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetShaderInfoLog = dyn_glGetShaderInfoLog ptr_glGetShaderInfoLog
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetShaderInfoLog ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetProgramiv #-}
 
ptr_glGetProgramiv :: FunPtr a
ptr_glGetProgramiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetProgramiv"
 
glGetProgramiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetProgramiv = dyn_glGetProgramiv ptr_glGetProgramiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetProgramInfoLog #-}
 
ptr_glGetProgramInfoLog :: FunPtr a
ptr_glGetProgramInfoLog
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetProgramInfoLog"
 
glGetProgramInfoLog ::
                    GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetProgramInfoLog
  = dyn_glGetProgramInfoLog ptr_glGetProgramInfoLog
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramInfoLog ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetAttribLocation #-}
 
ptr_glGetAttribLocation :: FunPtr a
ptr_glGetAttribLocation
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetAttribLocation"
 
glGetAttribLocation :: GLuint -> Ptr GLchar -> IO GLint
glGetAttribLocation
  = dyn_glGetAttribLocation ptr_glGetAttribLocation
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetAttribLocation ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLchar -> IO GLint)
 
{-# NOINLINE ptr_glGetAttachedShaders #-}
 
ptr_glGetAttachedShaders :: FunPtr a
ptr_glGetAttachedShaders
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetAttachedShaders"
 
glGetAttachedShaders ::
                     GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLuint -> IO ()
glGetAttachedShaders
  = dyn_glGetAttachedShaders ptr_glGetAttachedShaders
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetAttachedShaders ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetActiveUniform #-}
 
ptr_glGetActiveUniform :: FunPtr a
ptr_glGetActiveUniform
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetActiveUniform"
 
glGetActiveUniform ::
                   GLuint ->
                     GLuint ->
                       GLsizei ->
                         Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO ()
glGetActiveUniform = dyn_glGetActiveUniform ptr_glGetActiveUniform
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetActiveUniform ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLsizei ->
                        Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetActiveAttrib #-}
 
ptr_glGetActiveAttrib :: FunPtr a
ptr_glGetActiveAttrib
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glGetActiveAttrib"
 
glGetActiveAttrib ::
                  GLuint ->
                    GLuint ->
                      GLsizei ->
                        Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO ()
glGetActiveAttrib = dyn_glGetActiveAttrib ptr_glGetActiveAttrib
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetActiveAttrib ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLsizei ->
                        Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glEnableVertexAttribArray #-}
 
ptr_glEnableVertexAttribArray :: FunPtr a
ptr_glEnableVertexAttribArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glEnableVertexAttribArray"
 
glEnableVertexAttribArray :: GLuint -> IO ()
glEnableVertexAttribArray
  = dyn_glEnableVertexAttribArray ptr_glEnableVertexAttribArray
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glEnableVertexAttribArray ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glDrawBuffers #-}
 
ptr_glDrawBuffers :: FunPtr a
ptr_glDrawBuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glDrawBuffers"
 
glDrawBuffers :: GLsizei -> Ptr GLenum -> IO ()
glDrawBuffers = dyn_glDrawBuffers ptr_glDrawBuffers
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawBuffers ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLenum -> IO ())
 
{-# NOINLINE ptr_glDisableVertexAttribArray #-}
 
ptr_glDisableVertexAttribArray :: FunPtr a
ptr_glDisableVertexAttribArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glDisableVertexAttribArray"
 
glDisableVertexAttribArray :: GLuint -> IO ()
glDisableVertexAttribArray
  = dyn_glDisableVertexAttribArray ptr_glDisableVertexAttribArray
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDisableVertexAttribArray ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glDetachShader #-}
 
ptr_glDetachShader :: FunPtr a
ptr_glDetachShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glDetachShader"
 
glDetachShader :: GLuint -> GLuint -> IO ()
glDetachShader = dyn_glDetachShader ptr_glDetachShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glDetachShader ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteShader #-}
 
ptr_glDeleteShader :: FunPtr a
ptr_glDeleteShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glDeleteShader"
 
glDeleteShader :: GLuint -> IO ()
glDeleteShader = dyn_glDeleteShader ptr_glDeleteShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteShader ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteProgram #-}
 
ptr_glDeleteProgram :: FunPtr a
ptr_glDeleteProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glDeleteProgram"
 
glDeleteProgram :: GLuint -> IO ()
glDeleteProgram = dyn_glDeleteProgram ptr_glDeleteProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteProgram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glCreateShader #-}
 
ptr_glCreateShader :: FunPtr a
ptr_glCreateShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glCreateShader"
 
glCreateShader :: GLenum -> IO GLuint
glCreateShader = dyn_glCreateShader ptr_glCreateShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glCreateShader ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glCreateProgram #-}
 
ptr_glCreateProgram :: FunPtr a
ptr_glCreateProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glCreateProgram"
 
glCreateProgram :: IO GLuint
glCreateProgram = dyn_glCreateProgram ptr_glCreateProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glCreateProgram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (IO GLuint)
 
{-# NOINLINE ptr_glCompileShader #-}
 
ptr_glCompileShader :: FunPtr a
ptr_glCompileShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glCompileShader"
 
glCompileShader :: GLuint -> IO ()
glCompileShader = dyn_glCompileShader ptr_glCompileShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glCompileShader ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glBlendEquationSeparate #-}
 
ptr_glBlendEquationSeparate :: FunPtr a
ptr_glBlendEquationSeparate
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glBlendEquationSeparate"
 
glBlendEquationSeparate :: GLenum -> GLenum -> IO ()
glBlendEquationSeparate
  = dyn_glBlendEquationSeparate ptr_glBlendEquationSeparate
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendEquationSeparate
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBindAttribLocation #-}
 
ptr_glBindAttribLocation :: FunPtr a
ptr_glBindAttribLocation
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glBindAttribLocation"
 
glBindAttribLocation :: GLuint -> GLuint -> Ptr GLchar -> IO ()
glBindAttribLocation
  = dyn_glBindAttribLocation ptr_glBindAttribLocation
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindAttribLocation ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glAttachShader #-}
 
ptr_glAttachShader :: FunPtr a
ptr_glAttachShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_0"
        "glAttachShader"
 
glAttachShader :: GLuint -> GLuint -> IO ()
glAttachShader = dyn_glAttachShader ptr_glAttachShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glAttachShader ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO ())
 
gl_VERTEX_SHADER :: GLenum
gl_VERTEX_SHADER = 35633
 
gl_VERTEX_PROGRAM_POINT_SIZE :: GLenum
gl_VERTEX_PROGRAM_POINT_SIZE = 34370
 
gl_VERTEX_ATTRIB_ARRAY_TYPE :: GLenum
gl_VERTEX_ATTRIB_ARRAY_TYPE = 34341
 
gl_VERTEX_ATTRIB_ARRAY_STRIDE :: GLenum
gl_VERTEX_ATTRIB_ARRAY_STRIDE = 34340
 
gl_VERTEX_ATTRIB_ARRAY_SIZE :: GLenum
gl_VERTEX_ATTRIB_ARRAY_SIZE = 34339
 
gl_VERTEX_ATTRIB_ARRAY_POINTER :: GLenum
gl_VERTEX_ATTRIB_ARRAY_POINTER = 34373
 
gl_VERTEX_ATTRIB_ARRAY_NORMALIZED :: GLenum
gl_VERTEX_ATTRIB_ARRAY_NORMALIZED = 34922
 
gl_VERTEX_ATTRIB_ARRAY_ENABLED :: GLenum
gl_VERTEX_ATTRIB_ARRAY_ENABLED = 34338
 
gl_VALIDATE_STATUS :: GLenum
gl_VALIDATE_STATUS = 35715
 
gl_UPPER_LEFT :: GLenum
gl_UPPER_LEFT = 36002
 
gl_STENCIL_BACK_WRITEMASK :: GLenum
gl_STENCIL_BACK_WRITEMASK = 36005
 
gl_STENCIL_BACK_VALUE_MASK :: GLenum
gl_STENCIL_BACK_VALUE_MASK = 36004
 
gl_STENCIL_BACK_REF :: GLenum
gl_STENCIL_BACK_REF = 36003
 
gl_STENCIL_BACK_PASS_DEPTH_PASS :: GLenum
gl_STENCIL_BACK_PASS_DEPTH_PASS = 34819
 
gl_STENCIL_BACK_PASS_DEPTH_FAIL :: GLenum
gl_STENCIL_BACK_PASS_DEPTH_FAIL = 34818
 
gl_STENCIL_BACK_FUNC :: GLenum
gl_STENCIL_BACK_FUNC = 34816
 
gl_STENCIL_BACK_FAIL :: GLenum
gl_STENCIL_BACK_FAIL = 34817
 
gl_SHADING_LANGUAGE_VERSION :: GLenum
gl_SHADING_LANGUAGE_VERSION = 35724
 
gl_SHADER_TYPE :: GLenum
gl_SHADER_TYPE = 35663
 
gl_SHADER_SOURCE_LENGTH :: GLenum
gl_SHADER_SOURCE_LENGTH = 35720
 
gl_SAMPLER_CUBE :: GLenum
gl_SAMPLER_CUBE = 35680
 
gl_SAMPLER_3D :: GLenum
gl_SAMPLER_3D = 35679
 
gl_SAMPLER_2D_SHADOW :: GLenum
gl_SAMPLER_2D_SHADOW = 35682
 
gl_SAMPLER_2D :: GLenum
gl_SAMPLER_2D = 35678
 
gl_SAMPLER_1D_SHADOW :: GLenum
gl_SAMPLER_1D_SHADOW = 35681
 
gl_SAMPLER_1D :: GLenum
gl_SAMPLER_1D = 35677
 
gl_POINT_SPRITE_COORD_ORIGIN :: GLenum
gl_POINT_SPRITE_COORD_ORIGIN = 36000
 
gl_MAX_VERTEX_UNIFORM_COMPONENTS :: GLenum
gl_MAX_VERTEX_UNIFORM_COMPONENTS = 35658
 
gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 35660
 
gl_MAX_VERTEX_ATTRIBS :: GLenum
gl_MAX_VERTEX_ATTRIBS = 34921
 
gl_MAX_VARYING_FLOATS :: GLenum
gl_MAX_VARYING_FLOATS = 35659
 
gl_MAX_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_TEXTURE_IMAGE_UNITS = 34930
 
gl_MAX_FRAGMENT_UNIFORM_COMPONENTS :: GLenum
gl_MAX_FRAGMENT_UNIFORM_COMPONENTS = 35657
 
gl_MAX_DRAW_BUFFERS :: GLenum
gl_MAX_DRAW_BUFFERS = 34852
 
gl_MAX_COMBINED_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_COMBINED_TEXTURE_IMAGE_UNITS = 35661
 
gl_LOWER_LEFT :: GLenum
gl_LOWER_LEFT = 36001
 
gl_LINK_STATUS :: GLenum
gl_LINK_STATUS = 35714
 
gl_INT_VEC4 :: GLenum
gl_INT_VEC4 = 35669
 
gl_INT_VEC3 :: GLenum
gl_INT_VEC3 = 35668
 
gl_INT_VEC2 :: GLenum
gl_INT_VEC2 = 35667
 
gl_INFO_LOG_LENGTH :: GLenum
gl_INFO_LOG_LENGTH = 35716
 
gl_FRAGMENT_SHADER_DERIVATIVE_HINT :: GLenum
gl_FRAGMENT_SHADER_DERIVATIVE_HINT = 35723
 
gl_FRAGMENT_SHADER :: GLenum
gl_FRAGMENT_SHADER = 35632
 
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
 
gl_DRAW_BUFFER9 :: GLenum
gl_DRAW_BUFFER9 = 34862
 
gl_DRAW_BUFFER8 :: GLenum
gl_DRAW_BUFFER8 = 34861
 
gl_DRAW_BUFFER7 :: GLenum
gl_DRAW_BUFFER7 = 34860
 
gl_DRAW_BUFFER6 :: GLenum
gl_DRAW_BUFFER6 = 34859
 
gl_DRAW_BUFFER5 :: GLenum
gl_DRAW_BUFFER5 = 34858
 
gl_DRAW_BUFFER4 :: GLenum
gl_DRAW_BUFFER4 = 34857
 
gl_DRAW_BUFFER3 :: GLenum
gl_DRAW_BUFFER3 = 34856
 
gl_DRAW_BUFFER2 :: GLenum
gl_DRAW_BUFFER2 = 34855
 
gl_DRAW_BUFFER15 :: GLenum
gl_DRAW_BUFFER15 = 34868
 
gl_DRAW_BUFFER14 :: GLenum
gl_DRAW_BUFFER14 = 34867
 
gl_DRAW_BUFFER13 :: GLenum
gl_DRAW_BUFFER13 = 34866
 
gl_DRAW_BUFFER12 :: GLenum
gl_DRAW_BUFFER12 = 34865
 
gl_DRAW_BUFFER11 :: GLenum
gl_DRAW_BUFFER11 = 34864
 
gl_DRAW_BUFFER10 :: GLenum
gl_DRAW_BUFFER10 = 34863
 
gl_DRAW_BUFFER1 :: GLenum
gl_DRAW_BUFFER1 = 34854
 
gl_DRAW_BUFFER0 :: GLenum
gl_DRAW_BUFFER0 = 34853
 
gl_DELETE_STATUS :: GLenum
gl_DELETE_STATUS = 35712
 
gl_CURRENT_VERTEX_ATTRIB :: GLenum
gl_CURRENT_VERTEX_ATTRIB = 34342
 
gl_CURRENT_PROGRAM :: GLenum
gl_CURRENT_PROGRAM = 35725
 
gl_COMPILE_STATUS :: GLenum
gl_COMPILE_STATUS = 35713
 
gl_BOOL_VEC4 :: GLenum
gl_BOOL_VEC4 = 35673
 
gl_BOOL_VEC3 :: GLenum
gl_BOOL_VEC3 = 35672
 
gl_BOOL_VEC2 :: GLenum
gl_BOOL_VEC2 = 35671
 
gl_BOOL :: GLenum
gl_BOOL = 35670
 
gl_BLEND_EQUATION_RGB :: GLenum
gl_BLEND_EQUATION_RGB = 32777
 
gl_BLEND_EQUATION_ALPHA :: GLenum
gl_BLEND_EQUATION_ALPHA = 34877
 
gl_ATTACHED_SHADERS :: GLenum
gl_ATTACHED_SHADERS = 35717
 
gl_ACTIVE_UNIFORM_MAX_LENGTH :: GLenum
gl_ACTIVE_UNIFORM_MAX_LENGTH = 35719
 
gl_ACTIVE_UNIFORMS :: GLenum
gl_ACTIVE_UNIFORMS = 35718
 
gl_ACTIVE_ATTRIBUTE_MAX_LENGTH :: GLenum
gl_ACTIVE_ATTRIBUTE_MAX_LENGTH = 35722
 
gl_ACTIVE_ATTRIBUTES :: GLenum
gl_ACTIVE_ATTRIBUTES = 35721