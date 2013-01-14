{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.FragmentProgram
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
        glVertexAttrib1d, glProgramString, glProgramLocalParameter4fv,
        glProgramLocalParameter4f, glProgramLocalParameter4dv,
        glProgramLocalParameter4d, glProgramEnvParameter4fv,
        glProgramEnvParameter4f, glProgramEnvParameter4dv,
        glProgramEnvParameter4d, glIsProgram, glGetVertexAttribiv,
        glGetVertexAttribfv, glGetVertexAttribdv,
        glGetVertexAttribPointerv, glGetProgramiv, glGetProgramString,
        glGetProgramLocalParameterfv, glGetProgramLocalParameterdv,
        glGetProgramEnvParameterfv, glGetProgramEnvParameterdv,
        glGenPrograms, glEnableVertexAttribArray,
        glDisableVertexAttribArray, glDeletePrograms, glBindProgram,
        gl_VERTEX_PROGRAM_TWO_SIDE, gl_VERTEX_PROGRAM_POINT_SIZE,
        gl_VERTEX_PROGRAM, gl_VERTEX_ATTRIB_ARRAY_TYPE,
        gl_VERTEX_ATTRIB_ARRAY_STRIDE, gl_VERTEX_ATTRIB_ARRAY_SIZE,
        gl_VERTEX_ATTRIB_ARRAY_POINTER, gl_VERTEX_ATTRIB_ARRAY_NORMALIZED,
        gl_VERTEX_ATTRIB_ARRAY_ENABLED, gl_TRANSPOSE_CURRENT_MATRIX,
        gl_PROGRAM_UNDER_NATIVE_LIMITS, gl_PROGRAM_TEX_INSTRUCTIONS,
        gl_PROGRAM_TEX_INDIRECTIONS, gl_PROGRAM_TEMPORARIES,
        gl_PROGRAM_STRING, gl_PROGRAM_PARAMETERS,
        gl_PROGRAM_NATIVE_TEX_INSTRUCTIONS,
        gl_PROGRAM_NATIVE_TEX_INDIRECTIONS, gl_PROGRAM_NATIVE_TEMPORARIES,
        gl_PROGRAM_NATIVE_PARAMETERS, gl_PROGRAM_NATIVE_INSTRUCTIONS,
        gl_PROGRAM_NATIVE_ATTRIBS, gl_PROGRAM_NATIVE_ALU_INSTRUCTIONS,
        gl_PROGRAM_NATIVE_ADDRESS_REGISTERS, gl_PROGRAM_LENGTH,
        gl_PROGRAM_INSTRUCTIONS, gl_PROGRAM_FORMAT_ASCII,
        gl_PROGRAM_FORMAT, gl_PROGRAM_ERROR_STRING,
        gl_PROGRAM_ERROR_POSITION, gl_PROGRAM_BINDING, gl_PROGRAM_ATTRIBS,
        gl_PROGRAM_ALU_INSTRUCTIONS, gl_PROGRAM_ADDRESS_REGISTERS,
        gl_MAX_VERTEX_ATTRIBS, gl_MAX_TEXTURE_IMAGE_UNITS,
        gl_MAX_TEXTURE_COORDS, gl_MAX_PROGRAM_TEX_INSTRUCTIONS,
        gl_MAX_PROGRAM_TEX_INDIRECTIONS, gl_MAX_PROGRAM_TEMPORARIES,
        gl_MAX_PROGRAM_PARAMETERS, gl_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS,
        gl_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS,
        gl_MAX_PROGRAM_NATIVE_TEMPORARIES,
        gl_MAX_PROGRAM_NATIVE_PARAMETERS,
        gl_MAX_PROGRAM_NATIVE_INSTRUCTIONS, gl_MAX_PROGRAM_NATIVE_ATTRIBS,
        gl_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS,
        gl_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS,
        gl_MAX_PROGRAM_MATRIX_STACK_DEPTH, gl_MAX_PROGRAM_MATRICES,
        gl_MAX_PROGRAM_LOCAL_PARAMETERS, gl_MAX_PROGRAM_INSTRUCTIONS,
        gl_MAX_PROGRAM_ENV_PARAMETERS, gl_MAX_PROGRAM_ATTRIBS,
        gl_MAX_PROGRAM_ALU_INSTRUCTIONS, gl_MAX_PROGRAM_ADDRESS_REGISTERS,
        gl_MATRIX9, gl_MATRIX8, gl_MATRIX7, gl_MATRIX6, gl_MATRIX5,
        gl_MATRIX4, gl_MATRIX3, gl_MATRIX31, gl_MATRIX30, gl_MATRIX2,
        gl_MATRIX29, gl_MATRIX28, gl_MATRIX27, gl_MATRIX26, gl_MATRIX25,
        gl_MATRIX24, gl_MATRIX23, gl_MATRIX22, gl_MATRIX21, gl_MATRIX20,
        gl_MATRIX1, gl_MATRIX19, gl_MATRIX18, gl_MATRIX17, gl_MATRIX16,
        gl_MATRIX15, gl_MATRIX14, gl_MATRIX13, gl_MATRIX12, gl_MATRIX11,
        gl_MATRIX10, gl_MATRIX0, gl_FRAGMENT_PROGRAM,
        gl_CURRENT_VERTEX_ATTRIB, gl_CURRENT_MATRIX_STACK_DEPTH,
        gl_CURRENT_MATRIX, gl_COLOR_SUM)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribPointer #-}
 
ptr_glVertexAttribPointer :: FunPtr a
ptr_glVertexAttribPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttribPointerARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4usvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4uivARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4ubvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4svARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4sARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4ivARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4fvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4fARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4dvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4dARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4bvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4NusvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4NuivARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4NubvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4NubARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4NsvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4NivARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib4NbvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib3svARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib3sARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib3fvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib3fARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib3dvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib3dARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib2svARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib2sARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib2fvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib2fARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib2dvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib2dARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib1svARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib1sARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib1fvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib1fARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib1dvARB"
 
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
        "GL_ARB_fragment_program"
        "glVertexAttrib1dARB"
 
glVertexAttrib1d :: GLuint -> GLdouble -> IO ()
glVertexAttrib1d = dyn_glVertexAttrib1d ptr_glVertexAttrib1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramString #-}
 
ptr_glProgramString :: FunPtr a
ptr_glProgramString
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramStringARB"
 
glProgramString :: GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glProgramString = dyn_glProgramString ptr_glProgramString
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramString ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameter4fv #-}
 
ptr_glProgramLocalParameter4fv :: FunPtr a
ptr_glProgramLocalParameter4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramLocalParameter4fvARB"
 
glProgramLocalParameter4fv ::
                           GLenum -> GLuint -> Ptr GLfloat -> IO ()
glProgramLocalParameter4fv
  = dyn_glProgramLocalParameter4fv ptr_glProgramLocalParameter4fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameter4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameter4f #-}
 
ptr_glProgramLocalParameter4f :: FunPtr a
ptr_glProgramLocalParameter4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramLocalParameter4fARB"
 
glProgramLocalParameter4f ::
                          GLenum ->
                            GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glProgramLocalParameter4f
  = dyn_glProgramLocalParameter4f ptr_glProgramLocalParameter4f
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameter4f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameter4dv #-}
 
ptr_glProgramLocalParameter4dv :: FunPtr a
ptr_glProgramLocalParameter4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramLocalParameter4dvARB"
 
glProgramLocalParameter4dv ::
                           GLenum -> GLuint -> Ptr GLdouble -> IO ()
glProgramLocalParameter4dv
  = dyn_glProgramLocalParameter4dv ptr_glProgramLocalParameter4dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameter4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameter4d #-}
 
ptr_glProgramLocalParameter4d :: FunPtr a
ptr_glProgramLocalParameter4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramLocalParameter4dARB"
 
glProgramLocalParameter4d ::
                          GLenum ->
                            GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glProgramLocalParameter4d
  = dyn_glProgramLocalParameter4d ptr_glProgramLocalParameter4d
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameter4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameter4fv #-}
 
ptr_glProgramEnvParameter4fv :: FunPtr a
ptr_glProgramEnvParameter4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramEnvParameter4fvARB"
 
glProgramEnvParameter4fv ::
                         GLenum -> GLuint -> Ptr GLfloat -> IO ()
glProgramEnvParameter4fv
  = dyn_glProgramEnvParameter4fv ptr_glProgramEnvParameter4fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameter4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameter4f #-}
 
ptr_glProgramEnvParameter4f :: FunPtr a
ptr_glProgramEnvParameter4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramEnvParameter4fARB"
 
glProgramEnvParameter4f ::
                        GLenum ->
                          GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glProgramEnvParameter4f
  = dyn_glProgramEnvParameter4f ptr_glProgramEnvParameter4f
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramEnvParameter4f
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameter4dv #-}
 
ptr_glProgramEnvParameter4dv :: FunPtr a
ptr_glProgramEnvParameter4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramEnvParameter4dvARB"
 
glProgramEnvParameter4dv ::
                         GLenum -> GLuint -> Ptr GLdouble -> IO ()
glProgramEnvParameter4dv
  = dyn_glProgramEnvParameter4dv ptr_glProgramEnvParameter4dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameter4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameter4d #-}
 
ptr_glProgramEnvParameter4d :: FunPtr a
ptr_glProgramEnvParameter4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramEnvParameter4dARB"
 
glProgramEnvParameter4d ::
                        GLenum ->
                          GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glProgramEnvParameter4d
  = dyn_glProgramEnvParameter4d ptr_glProgramEnvParameter4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramEnvParameter4d
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glIsProgram #-}
 
ptr_glIsProgram :: FunPtr a
ptr_glIsProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glIsProgramARB"
 
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
        "GL_ARB_fragment_program"
        "glGetVertexAttribivARB"
 
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
        "GL_ARB_fragment_program"
        "glGetVertexAttribfvARB"
 
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
        "GL_ARB_fragment_program"
        "glGetVertexAttribdvARB"
 
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
        "GL_ARB_fragment_program"
        "glGetVertexAttribPointervARB"
 
glGetVertexAttribPointerv ::
                          GLuint -> GLenum -> Ptr (Ptr a) -> IO ()
glGetVertexAttribPointerv
  = dyn_glGetVertexAttribPointerv ptr_glGetVertexAttribPointerv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVertexAttribPointerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glGetProgramiv #-}
 
ptr_glGetProgramiv :: FunPtr a
ptr_glGetProgramiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetProgramivARB"
 
glGetProgramiv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetProgramiv = dyn_glGetProgramiv ptr_glGetProgramiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetProgramString #-}
 
ptr_glGetProgramString :: FunPtr a
ptr_glGetProgramString
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetProgramStringARB"
 
glGetProgramString :: GLenum -> GLenum -> Ptr a -> IO ()
glGetProgramString = dyn_glGetProgramString ptr_glGetProgramString
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramString ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetProgramLocalParameterfv #-}
 
ptr_glGetProgramLocalParameterfv :: FunPtr a
ptr_glGetProgramLocalParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetProgramLocalParameterfvARB"
 
glGetProgramLocalParameterfv ::
                             GLenum -> GLuint -> Ptr GLfloat -> IO ()
glGetProgramLocalParameterfv
  = dyn_glGetProgramLocalParameterfv ptr_glGetProgramLocalParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramLocalParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetProgramLocalParameterdv #-}
 
ptr_glGetProgramLocalParameterdv :: FunPtr a
ptr_glGetProgramLocalParameterdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetProgramLocalParameterdvARB"
 
glGetProgramLocalParameterdv ::
                             GLenum -> GLuint -> Ptr GLdouble -> IO ()
glGetProgramLocalParameterdv
  = dyn_glGetProgramLocalParameterdv ptr_glGetProgramLocalParameterdv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramLocalParameterdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetProgramEnvParameterfv #-}
 
ptr_glGetProgramEnvParameterfv :: FunPtr a
ptr_glGetProgramEnvParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetProgramEnvParameterfvARB"
 
glGetProgramEnvParameterfv ::
                           GLenum -> GLuint -> Ptr GLfloat -> IO ()
glGetProgramEnvParameterfv
  = dyn_glGetProgramEnvParameterfv ptr_glGetProgramEnvParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramEnvParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetProgramEnvParameterdv #-}
 
ptr_glGetProgramEnvParameterdv :: FunPtr a
ptr_glGetProgramEnvParameterdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetProgramEnvParameterdvARB"
 
glGetProgramEnvParameterdv ::
                           GLenum -> GLuint -> Ptr GLdouble -> IO ()
glGetProgramEnvParameterdv
  = dyn_glGetProgramEnvParameterdv ptr_glGetProgramEnvParameterdv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramEnvParameterdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGenPrograms #-}
 
ptr_glGenPrograms :: FunPtr a
ptr_glGenPrograms
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGenProgramsARB"
 
glGenPrograms :: GLsizei -> Ptr GLuint -> IO ()
glGenPrograms = dyn_glGenPrograms ptr_glGenPrograms
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenPrograms ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glEnableVertexAttribArray #-}
 
ptr_glEnableVertexAttribArray :: FunPtr a
ptr_glEnableVertexAttribArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glEnableVertexAttribArrayARB"
 
glEnableVertexAttribArray :: GLuint -> IO ()
glEnableVertexAttribArray
  = dyn_glEnableVertexAttribArray ptr_glEnableVertexAttribArray
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glEnableVertexAttribArray ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glDisableVertexAttribArray #-}
 
ptr_glDisableVertexAttribArray :: FunPtr a
ptr_glDisableVertexAttribArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glDisableVertexAttribArrayARB"
 
glDisableVertexAttribArray :: GLuint -> IO ()
glDisableVertexAttribArray
  = dyn_glDisableVertexAttribArray ptr_glDisableVertexAttribArray
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDisableVertexAttribArray ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glDeletePrograms #-}
 
ptr_glDeletePrograms :: FunPtr a
ptr_glDeletePrograms
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glDeleteProgramsARB"
 
glDeletePrograms :: GLsizei -> Ptr GLuint -> IO ()
glDeletePrograms = dyn_glDeletePrograms ptr_glDeletePrograms
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeletePrograms ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBindProgram #-}
 
ptr_glBindProgram :: FunPtr a
ptr_glBindProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glBindProgramARB"
 
glBindProgram :: GLenum -> GLuint -> IO ()
glBindProgram = dyn_glBindProgram ptr_glBindProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindProgram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
gl_VERTEX_PROGRAM_TWO_SIDE :: GLenum
gl_VERTEX_PROGRAM_TWO_SIDE = 34371
 
gl_VERTEX_PROGRAM_POINT_SIZE :: GLenum
gl_VERTEX_PROGRAM_POINT_SIZE = 34370
 
gl_VERTEX_PROGRAM :: GLenum
gl_VERTEX_PROGRAM = 34336
 
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
 
gl_TRANSPOSE_CURRENT_MATRIX :: GLenum
gl_TRANSPOSE_CURRENT_MATRIX = 34999
 
gl_PROGRAM_UNDER_NATIVE_LIMITS :: GLenum
gl_PROGRAM_UNDER_NATIVE_LIMITS = 34998
 
gl_PROGRAM_TEX_INSTRUCTIONS :: GLenum
gl_PROGRAM_TEX_INSTRUCTIONS = 34822
 
gl_PROGRAM_TEX_INDIRECTIONS :: GLenum
gl_PROGRAM_TEX_INDIRECTIONS = 34823
 
gl_PROGRAM_TEMPORARIES :: GLenum
gl_PROGRAM_TEMPORARIES = 34980
 
gl_PROGRAM_STRING :: GLenum
gl_PROGRAM_STRING = 34344
 
gl_PROGRAM_PARAMETERS :: GLenum
gl_PROGRAM_PARAMETERS = 34984
 
gl_PROGRAM_NATIVE_TEX_INSTRUCTIONS :: GLenum
gl_PROGRAM_NATIVE_TEX_INSTRUCTIONS = 34825
 
gl_PROGRAM_NATIVE_TEX_INDIRECTIONS :: GLenum
gl_PROGRAM_NATIVE_TEX_INDIRECTIONS = 34826
 
gl_PROGRAM_NATIVE_TEMPORARIES :: GLenum
gl_PROGRAM_NATIVE_TEMPORARIES = 34982
 
gl_PROGRAM_NATIVE_PARAMETERS :: GLenum
gl_PROGRAM_NATIVE_PARAMETERS = 34986
 
gl_PROGRAM_NATIVE_INSTRUCTIONS :: GLenum
gl_PROGRAM_NATIVE_INSTRUCTIONS = 34978
 
gl_PROGRAM_NATIVE_ATTRIBS :: GLenum
gl_PROGRAM_NATIVE_ATTRIBS = 34990
 
gl_PROGRAM_NATIVE_ALU_INSTRUCTIONS :: GLenum
gl_PROGRAM_NATIVE_ALU_INSTRUCTIONS = 34824
 
gl_PROGRAM_NATIVE_ADDRESS_REGISTERS :: GLenum
gl_PROGRAM_NATIVE_ADDRESS_REGISTERS = 34994
 
gl_PROGRAM_LENGTH :: GLenum
gl_PROGRAM_LENGTH = 34343
 
gl_PROGRAM_INSTRUCTIONS :: GLenum
gl_PROGRAM_INSTRUCTIONS = 34976
 
gl_PROGRAM_FORMAT_ASCII :: GLenum
gl_PROGRAM_FORMAT_ASCII = 34933
 
gl_PROGRAM_FORMAT :: GLenum
gl_PROGRAM_FORMAT = 34934
 
gl_PROGRAM_ERROR_STRING :: GLenum
gl_PROGRAM_ERROR_STRING = 34932
 
gl_PROGRAM_ERROR_POSITION :: GLenum
gl_PROGRAM_ERROR_POSITION = 34379
 
gl_PROGRAM_BINDING :: GLenum
gl_PROGRAM_BINDING = 34423
 
gl_PROGRAM_ATTRIBS :: GLenum
gl_PROGRAM_ATTRIBS = 34988
 
gl_PROGRAM_ALU_INSTRUCTIONS :: GLenum
gl_PROGRAM_ALU_INSTRUCTIONS = 34821
 
gl_PROGRAM_ADDRESS_REGISTERS :: GLenum
gl_PROGRAM_ADDRESS_REGISTERS = 34992
 
gl_MAX_VERTEX_ATTRIBS :: GLenum
gl_MAX_VERTEX_ATTRIBS = 34921
 
gl_MAX_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_TEXTURE_IMAGE_UNITS = 34930
 
gl_MAX_TEXTURE_COORDS :: GLenum
gl_MAX_TEXTURE_COORDS = 34929
 
gl_MAX_PROGRAM_TEX_INSTRUCTIONS :: GLenum
gl_MAX_PROGRAM_TEX_INSTRUCTIONS = 34828
 
gl_MAX_PROGRAM_TEX_INDIRECTIONS :: GLenum
gl_MAX_PROGRAM_TEX_INDIRECTIONS = 34829
 
gl_MAX_PROGRAM_TEMPORARIES :: GLenum
gl_MAX_PROGRAM_TEMPORARIES = 34981
 
gl_MAX_PROGRAM_PARAMETERS :: GLenum
gl_MAX_PROGRAM_PARAMETERS = 34985
 
gl_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS :: GLenum
gl_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS = 34831
 
gl_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS :: GLenum
gl_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS = 34832
 
gl_MAX_PROGRAM_NATIVE_TEMPORARIES :: GLenum
gl_MAX_PROGRAM_NATIVE_TEMPORARIES = 34983
 
gl_MAX_PROGRAM_NATIVE_PARAMETERS :: GLenum
gl_MAX_PROGRAM_NATIVE_PARAMETERS = 34987
 
gl_MAX_PROGRAM_NATIVE_INSTRUCTIONS :: GLenum
gl_MAX_PROGRAM_NATIVE_INSTRUCTIONS = 34979
 
gl_MAX_PROGRAM_NATIVE_ATTRIBS :: GLenum
gl_MAX_PROGRAM_NATIVE_ATTRIBS = 34991
 
gl_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS :: GLenum
gl_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS = 34830
 
gl_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS :: GLenum
gl_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS = 34995
 
gl_MAX_PROGRAM_MATRIX_STACK_DEPTH :: GLenum
gl_MAX_PROGRAM_MATRIX_STACK_DEPTH = 34350
 
gl_MAX_PROGRAM_MATRICES :: GLenum
gl_MAX_PROGRAM_MATRICES = 34351
 
gl_MAX_PROGRAM_LOCAL_PARAMETERS :: GLenum
gl_MAX_PROGRAM_LOCAL_PARAMETERS = 34996
 
gl_MAX_PROGRAM_INSTRUCTIONS :: GLenum
gl_MAX_PROGRAM_INSTRUCTIONS = 34977
 
gl_MAX_PROGRAM_ENV_PARAMETERS :: GLenum
gl_MAX_PROGRAM_ENV_PARAMETERS = 34997
 
gl_MAX_PROGRAM_ATTRIBS :: GLenum
gl_MAX_PROGRAM_ATTRIBS = 34989
 
gl_MAX_PROGRAM_ALU_INSTRUCTIONS :: GLenum
gl_MAX_PROGRAM_ALU_INSTRUCTIONS = 34827
 
gl_MAX_PROGRAM_ADDRESS_REGISTERS :: GLenum
gl_MAX_PROGRAM_ADDRESS_REGISTERS = 34993
 
gl_MATRIX9 :: GLenum
gl_MATRIX9 = 35017
 
gl_MATRIX8 :: GLenum
gl_MATRIX8 = 35016
 
gl_MATRIX7 :: GLenum
gl_MATRIX7 = 35015
 
gl_MATRIX6 :: GLenum
gl_MATRIX6 = 35014
 
gl_MATRIX5 :: GLenum
gl_MATRIX5 = 35013
 
gl_MATRIX4 :: GLenum
gl_MATRIX4 = 35012
 
gl_MATRIX3 :: GLenum
gl_MATRIX3 = 35011
 
gl_MATRIX31 :: GLenum
gl_MATRIX31 = 35039
 
gl_MATRIX30 :: GLenum
gl_MATRIX30 = 35038
 
gl_MATRIX2 :: GLenum
gl_MATRIX2 = 35010
 
gl_MATRIX29 :: GLenum
gl_MATRIX29 = 35037
 
gl_MATRIX28 :: GLenum
gl_MATRIX28 = 35036
 
gl_MATRIX27 :: GLenum
gl_MATRIX27 = 35035
 
gl_MATRIX26 :: GLenum
gl_MATRIX26 = 35034
 
gl_MATRIX25 :: GLenum
gl_MATRIX25 = 35033
 
gl_MATRIX24 :: GLenum
gl_MATRIX24 = 35032
 
gl_MATRIX23 :: GLenum
gl_MATRIX23 = 35031
 
gl_MATRIX22 :: GLenum
gl_MATRIX22 = 35030
 
gl_MATRIX21 :: GLenum
gl_MATRIX21 = 35029
 
gl_MATRIX20 :: GLenum
gl_MATRIX20 = 35028
 
gl_MATRIX1 :: GLenum
gl_MATRIX1 = 35009
 
gl_MATRIX19 :: GLenum
gl_MATRIX19 = 35027
 
gl_MATRIX18 :: GLenum
gl_MATRIX18 = 35026
 
gl_MATRIX17 :: GLenum
gl_MATRIX17 = 35025
 
gl_MATRIX16 :: GLenum
gl_MATRIX16 = 35024
 
gl_MATRIX15 :: GLenum
gl_MATRIX15 = 35023
 
gl_MATRIX14 :: GLenum
gl_MATRIX14 = 35022
 
gl_MATRIX13 :: GLenum
gl_MATRIX13 = 35021
 
gl_MATRIX12 :: GLenum
gl_MATRIX12 = 35020
 
gl_MATRIX11 :: GLenum
gl_MATRIX11 = 35019
 
gl_MATRIX10 :: GLenum
gl_MATRIX10 = 35018
 
gl_MATRIX0 :: GLenum
gl_MATRIX0 = 35008
 
gl_FRAGMENT_PROGRAM :: GLenum
gl_FRAGMENT_PROGRAM = 34820
 
gl_CURRENT_VERTEX_ATTRIB :: GLenum
gl_CURRENT_VERTEX_ATTRIB = 34342
 
gl_CURRENT_MATRIX_STACK_DEPTH :: GLenum
gl_CURRENT_MATRIX_STACK_DEPTH = 34368
 
gl_CURRENT_MATRIX :: GLenum
gl_CURRENT_MATRIX = 34369
 
gl_COLOR_SUM :: GLenum
gl_COLOR_SUM = 33880