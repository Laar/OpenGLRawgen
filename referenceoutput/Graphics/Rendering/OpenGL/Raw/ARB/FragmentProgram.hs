{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.FragmentProgram
       (glVertexAttribPointerARB, glVertexAttrib4usvARB,
        glVertexAttrib4uivARB, glVertexAttrib4ubvARB, glVertexAttrib4svARB,
        glVertexAttrib4sARB, glVertexAttrib4ivARB, glVertexAttrib4fvARB,
        glVertexAttrib4fARB, glVertexAttrib4dvARB, glVertexAttrib4dARB,
        glVertexAttrib4bvARB, glVertexAttrib4NusvARB,
        glVertexAttrib4NuivARB, glVertexAttrib4NubvARB,
        glVertexAttrib4NubARB, glVertexAttrib4NsvARB,
        glVertexAttrib4NivARB, glVertexAttrib4NbvARB, glVertexAttrib3svARB,
        glVertexAttrib3sARB, glVertexAttrib3fvARB, glVertexAttrib3fARB,
        glVertexAttrib3dvARB, glVertexAttrib3dARB, glVertexAttrib2svARB,
        glVertexAttrib2sARB, glVertexAttrib2fvARB, glVertexAttrib2fARB,
        glVertexAttrib2dvARB, glVertexAttrib2dARB, glVertexAttrib1svARB,
        glVertexAttrib1sARB, glVertexAttrib1fvARB, glVertexAttrib1fARB,
        glVertexAttrib1dvARB, glVertexAttrib1dARB, glProgramStringARB,
        glProgramLocalParameter4fvARB, glProgramLocalParameter4fARB,
        glProgramLocalParameter4dvARB, glProgramLocalParameter4dARB,
        glProgramEnvParameter4fvARB, glProgramEnvParameter4fARB,
        glProgramEnvParameter4dvARB, glProgramEnvParameter4dARB,
        glIsProgramARB, glGetVertexAttribivARB, glGetVertexAttribfvARB,
        glGetVertexAttribdvARB, glGetVertexAttribPointervARB,
        glGetProgramivARB, glGetProgramStringARB,
        glGetProgramLocalParameterfvARB, glGetProgramLocalParameterdvARB,
        glGetProgramEnvParameterfvARB, glGetProgramEnvParameterdvARB,
        glGenProgramsARB, glEnableVertexAttribArrayARB,
        glDisableVertexAttribArrayARB, glDeleteProgramsARB,
        glBindProgramARB, gl_VERTEX_PROGRAM_TWO_SIDE_ARB,
        gl_VERTEX_PROGRAM_POINT_SIZE_ARB, gl_VERTEX_PROGRAM_ARB,
        gl_VERTEX_ATTRIB_ARRAY_TYPE_ARB, gl_VERTEX_ATTRIB_ARRAY_STRIDE_ARB,
        gl_VERTEX_ATTRIB_ARRAY_SIZE_ARB,
        gl_VERTEX_ATTRIB_ARRAY_POINTER_ARB,
        gl_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB,
        gl_VERTEX_ATTRIB_ARRAY_ENABLED_ARB,
        gl_TRANSPOSE_CURRENT_MATRIX_ARB,
        gl_PROGRAM_UNDER_NATIVE_LIMITS_ARB,
        gl_PROGRAM_TEX_INSTRUCTIONS_ARB, gl_PROGRAM_TEX_INDIRECTIONS_ARB,
        gl_PROGRAM_TEMPORARIES_ARB, gl_PROGRAM_STRING_ARB,
        gl_PROGRAM_PARAMETERS_ARB, gl_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB,
        gl_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB,
        gl_PROGRAM_NATIVE_TEMPORARIES_ARB,
        gl_PROGRAM_NATIVE_PARAMETERS_ARB,
        gl_PROGRAM_NATIVE_INSTRUCTIONS_ARB, gl_PROGRAM_NATIVE_ATTRIBS_ARB,
        gl_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB,
        gl_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB, gl_PROGRAM_LENGTH_ARB,
        gl_PROGRAM_INSTRUCTIONS_ARB, gl_PROGRAM_FORMAT_ASCII_ARB,
        gl_PROGRAM_FORMAT_ARB, gl_PROGRAM_ERROR_STRING_ARB,
        gl_PROGRAM_ERROR_POSITION_ARB, gl_PROGRAM_BINDING_ARB,
        gl_PROGRAM_ATTRIBS_ARB, gl_PROGRAM_ALU_INSTRUCTIONS_ARB,
        gl_PROGRAM_ADDRESS_REGISTERS_ARB, gl_MAX_VERTEX_ATTRIBS_ARB,
        gl_MAX_TEXTURE_IMAGE_UNITS_ARB, gl_MAX_TEXTURE_COORDS_ARB,
        gl_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB,
        gl_MAX_PROGRAM_TEX_INDIRECTIONS_ARB,
        gl_MAX_PROGRAM_TEMPORARIES_ARB, gl_MAX_PROGRAM_PARAMETERS_ARB,
        gl_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB,
        gl_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB,
        gl_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB,
        gl_MAX_PROGRAM_NATIVE_PARAMETERS_ARB,
        gl_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB,
        gl_MAX_PROGRAM_NATIVE_ATTRIBS_ARB,
        gl_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB,
        gl_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB,
        gl_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB, gl_MAX_PROGRAM_MATRICES_ARB,
        gl_MAX_PROGRAM_LOCAL_PARAMETERS_ARB,
        gl_MAX_PROGRAM_INSTRUCTIONS_ARB, gl_MAX_PROGRAM_ENV_PARAMETERS_ARB,
        gl_MAX_PROGRAM_ATTRIBS_ARB, gl_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB,
        gl_MAX_PROGRAM_ADDRESS_REGISTERS_ARB, gl_MATRIX9_ARB,
        gl_MATRIX8_ARB, gl_MATRIX7_ARB, gl_MATRIX6_ARB, gl_MATRIX5_ARB,
        gl_MATRIX4_ARB, gl_MATRIX3_ARB, gl_MATRIX31_ARB, gl_MATRIX30_ARB,
        gl_MATRIX2_ARB, gl_MATRIX29_ARB, gl_MATRIX28_ARB, gl_MATRIX27_ARB,
        gl_MATRIX26_ARB, gl_MATRIX25_ARB, gl_MATRIX24_ARB, gl_MATRIX23_ARB,
        gl_MATRIX22_ARB, gl_MATRIX21_ARB, gl_MATRIX20_ARB, gl_MATRIX1_ARB,
        gl_MATRIX19_ARB, gl_MATRIX18_ARB, gl_MATRIX17_ARB, gl_MATRIX16_ARB,
        gl_MATRIX15_ARB, gl_MATRIX14_ARB, gl_MATRIX13_ARB, gl_MATRIX12_ARB,
        gl_MATRIX11_ARB, gl_MATRIX10_ARB, gl_MATRIX0_ARB,
        gl_FRAGMENT_PROGRAM_ARB, gl_CURRENT_VERTEX_ATTRIB_ARB,
        gl_CURRENT_MATRIX_STACK_DEPTH_ARB, gl_CURRENT_MATRIX_ARB,
        gl_COLOR_SUM_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribPointerARB #-}
 
ptr_glVertexAttribPointerARB :: FunPtr a
ptr_glVertexAttribPointerARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttribPointerARB"
 
glVertexAttribPointerARB ::
                         GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> Ptr a -> IO ()
glVertexAttribPointerARB
  = dyn_glVertexAttribPointerARB ptr_glVertexAttribPointerARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexAttribPointerARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint -> GLenum -> GLboolean -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4usvARB #-}
 
ptr_glVertexAttrib4usvARB :: FunPtr a
ptr_glVertexAttrib4usvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4usvARB"
 
glVertexAttrib4usvARB :: GLuint -> Ptr GLushort -> IO ()
glVertexAttrib4usvARB
  = dyn_glVertexAttrib4usvARB ptr_glVertexAttrib4usvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4usvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4uivARB #-}
 
ptr_glVertexAttrib4uivARB :: FunPtr a
ptr_glVertexAttrib4uivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4uivARB"
 
glVertexAttrib4uivARB :: GLuint -> Ptr GLuint -> IO ()
glVertexAttrib4uivARB
  = dyn_glVertexAttrib4uivARB ptr_glVertexAttrib4uivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4uivARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4ubvARB #-}
 
ptr_glVertexAttrib4ubvARB :: FunPtr a
ptr_glVertexAttrib4ubvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4ubvARB"
 
glVertexAttrib4ubvARB :: GLuint -> Ptr GLubyte -> IO ()
glVertexAttrib4ubvARB
  = dyn_glVertexAttrib4ubvARB ptr_glVertexAttrib4ubvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4ubvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4svARB #-}
 
ptr_glVertexAttrib4svARB :: FunPtr a
ptr_glVertexAttrib4svARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4svARB"
 
glVertexAttrib4svARB :: GLuint -> Ptr GLshort -> IO ()
glVertexAttrib4svARB
  = dyn_glVertexAttrib4svARB ptr_glVertexAttrib4svARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4svARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4sARB #-}
 
ptr_glVertexAttrib4sARB :: FunPtr a
ptr_glVertexAttrib4sARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4sARB"
 
glVertexAttrib4sARB ::
                    GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()
glVertexAttrib4sARB
  = dyn_glVertexAttrib4sARB ptr_glVertexAttrib4sARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4sARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4ivARB #-}
 
ptr_glVertexAttrib4ivARB :: FunPtr a
ptr_glVertexAttrib4ivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4ivARB"
 
glVertexAttrib4ivARB :: GLuint -> Ptr GLint -> IO ()
glVertexAttrib4ivARB
  = dyn_glVertexAttrib4ivARB ptr_glVertexAttrib4ivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4ivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4fvARB #-}
 
ptr_glVertexAttrib4fvARB :: FunPtr a
ptr_glVertexAttrib4fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4fvARB"
 
glVertexAttrib4fvARB :: GLuint -> Ptr GLfloat -> IO ()
glVertexAttrib4fvARB
  = dyn_glVertexAttrib4fvARB ptr_glVertexAttrib4fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4fvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4fARB #-}
 
ptr_glVertexAttrib4fARB :: FunPtr a
ptr_glVertexAttrib4fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4fARB"
 
glVertexAttrib4fARB ::
                    GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glVertexAttrib4fARB
  = dyn_glVertexAttrib4fARB ptr_glVertexAttrib4fARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4dvARB #-}
 
ptr_glVertexAttrib4dvARB :: FunPtr a
ptr_glVertexAttrib4dvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4dvARB"
 
glVertexAttrib4dvARB :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttrib4dvARB
  = dyn_glVertexAttrib4dvARB ptr_glVertexAttrib4dvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4dvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4dARB #-}
 
ptr_glVertexAttrib4dARB :: FunPtr a
ptr_glVertexAttrib4dARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4dARB"
 
glVertexAttrib4dARB ::
                    GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexAttrib4dARB
  = dyn_glVertexAttrib4dARB ptr_glVertexAttrib4dARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4dARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4bvARB #-}
 
ptr_glVertexAttrib4bvARB :: FunPtr a
ptr_glVertexAttrib4bvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4bvARB"
 
glVertexAttrib4bvARB :: GLuint -> Ptr GLbyte -> IO ()
glVertexAttrib4bvARB
  = dyn_glVertexAttrib4bvARB ptr_glVertexAttrib4bvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4bvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4NusvARB #-}
 
ptr_glVertexAttrib4NusvARB :: FunPtr a
ptr_glVertexAttrib4NusvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4NusvARB"
 
glVertexAttrib4NusvARB :: GLuint -> Ptr GLushort -> IO ()
glVertexAttrib4NusvARB
  = dyn_glVertexAttrib4NusvARB ptr_glVertexAttrib4NusvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4NusvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4NuivARB #-}
 
ptr_glVertexAttrib4NuivARB :: FunPtr a
ptr_glVertexAttrib4NuivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4NuivARB"
 
glVertexAttrib4NuivARB :: GLuint -> Ptr GLuint -> IO ()
glVertexAttrib4NuivARB
  = dyn_glVertexAttrib4NuivARB ptr_glVertexAttrib4NuivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4NuivARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4NubvARB #-}
 
ptr_glVertexAttrib4NubvARB :: FunPtr a
ptr_glVertexAttrib4NubvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4NubvARB"
 
glVertexAttrib4NubvARB :: GLuint -> Ptr GLubyte -> IO ()
glVertexAttrib4NubvARB
  = dyn_glVertexAttrib4NubvARB ptr_glVertexAttrib4NubvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4NubvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4NubARB #-}
 
ptr_glVertexAttrib4NubARB :: FunPtr a
ptr_glVertexAttrib4NubARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4NubARB"
 
glVertexAttrib4NubARB ::
                      GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO ()
glVertexAttrib4NubARB
  = dyn_glVertexAttrib4NubARB ptr_glVertexAttrib4NubARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4NubARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4NsvARB #-}
 
ptr_glVertexAttrib4NsvARB :: FunPtr a
ptr_glVertexAttrib4NsvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4NsvARB"
 
glVertexAttrib4NsvARB :: GLuint -> Ptr GLshort -> IO ()
glVertexAttrib4NsvARB
  = dyn_glVertexAttrib4NsvARB ptr_glVertexAttrib4NsvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4NsvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4NivARB #-}
 
ptr_glVertexAttrib4NivARB :: FunPtr a
ptr_glVertexAttrib4NivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4NivARB"
 
glVertexAttrib4NivARB :: GLuint -> Ptr GLint -> IO ()
glVertexAttrib4NivARB
  = dyn_glVertexAttrib4NivARB ptr_glVertexAttrib4NivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4NivARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4NbvARB #-}
 
ptr_glVertexAttrib4NbvARB :: FunPtr a
ptr_glVertexAttrib4NbvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib4NbvARB"
 
glVertexAttrib4NbvARB :: GLuint -> Ptr GLbyte -> IO ()
glVertexAttrib4NbvARB
  = dyn_glVertexAttrib4NbvARB ptr_glVertexAttrib4NbvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4NbvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3svARB #-}
 
ptr_glVertexAttrib3svARB :: FunPtr a
ptr_glVertexAttrib3svARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib3svARB"
 
glVertexAttrib3svARB :: GLuint -> Ptr GLshort -> IO ()
glVertexAttrib3svARB
  = dyn_glVertexAttrib3svARB ptr_glVertexAttrib3svARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3svARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3sARB #-}
 
ptr_glVertexAttrib3sARB :: FunPtr a
ptr_glVertexAttrib3sARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib3sARB"
 
glVertexAttrib3sARB ::
                    GLuint -> GLshort -> GLshort -> GLshort -> IO ()
glVertexAttrib3sARB
  = dyn_glVertexAttrib3sARB ptr_glVertexAttrib3sARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3sARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3fvARB #-}
 
ptr_glVertexAttrib3fvARB :: FunPtr a
ptr_glVertexAttrib3fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib3fvARB"
 
glVertexAttrib3fvARB :: GLuint -> Ptr GLfloat -> IO ()
glVertexAttrib3fvARB
  = dyn_glVertexAttrib3fvARB ptr_glVertexAttrib3fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3fvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3fARB #-}
 
ptr_glVertexAttrib3fARB :: FunPtr a
ptr_glVertexAttrib3fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib3fARB"
 
glVertexAttrib3fARB ::
                    GLuint -> GLfloat -> GLfloat -> GLfloat -> IO ()
glVertexAttrib3fARB
  = dyn_glVertexAttrib3fARB ptr_glVertexAttrib3fARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3dvARB #-}
 
ptr_glVertexAttrib3dvARB :: FunPtr a
ptr_glVertexAttrib3dvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib3dvARB"
 
glVertexAttrib3dvARB :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttrib3dvARB
  = dyn_glVertexAttrib3dvARB ptr_glVertexAttrib3dvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3dvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3dARB #-}
 
ptr_glVertexAttrib3dARB :: FunPtr a
ptr_glVertexAttrib3dARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib3dARB"
 
glVertexAttrib3dARB ::
                    GLuint -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexAttrib3dARB
  = dyn_glVertexAttrib3dARB ptr_glVertexAttrib3dARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3dARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2svARB #-}
 
ptr_glVertexAttrib2svARB :: FunPtr a
ptr_glVertexAttrib2svARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib2svARB"
 
glVertexAttrib2svARB :: GLuint -> Ptr GLshort -> IO ()
glVertexAttrib2svARB
  = dyn_glVertexAttrib2svARB ptr_glVertexAttrib2svARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2svARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2sARB #-}
 
ptr_glVertexAttrib2sARB :: FunPtr a
ptr_glVertexAttrib2sARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib2sARB"
 
glVertexAttrib2sARB :: GLuint -> GLshort -> GLshort -> IO ()
glVertexAttrib2sARB
  = dyn_glVertexAttrib2sARB ptr_glVertexAttrib2sARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2sARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2fvARB #-}
 
ptr_glVertexAttrib2fvARB :: FunPtr a
ptr_glVertexAttrib2fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib2fvARB"
 
glVertexAttrib2fvARB :: GLuint -> Ptr GLfloat -> IO ()
glVertexAttrib2fvARB
  = dyn_glVertexAttrib2fvARB ptr_glVertexAttrib2fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2fvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2fARB #-}
 
ptr_glVertexAttrib2fARB :: FunPtr a
ptr_glVertexAttrib2fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib2fARB"
 
glVertexAttrib2fARB :: GLuint -> GLfloat -> GLfloat -> IO ()
glVertexAttrib2fARB
  = dyn_glVertexAttrib2fARB ptr_glVertexAttrib2fARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2dvARB #-}
 
ptr_glVertexAttrib2dvARB :: FunPtr a
ptr_glVertexAttrib2dvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib2dvARB"
 
glVertexAttrib2dvARB :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttrib2dvARB
  = dyn_glVertexAttrib2dvARB ptr_glVertexAttrib2dvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2dvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2dARB #-}
 
ptr_glVertexAttrib2dARB :: FunPtr a
ptr_glVertexAttrib2dARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib2dARB"
 
glVertexAttrib2dARB :: GLuint -> GLdouble -> GLdouble -> IO ()
glVertexAttrib2dARB
  = dyn_glVertexAttrib2dARB ptr_glVertexAttrib2dARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2dARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1svARB #-}
 
ptr_glVertexAttrib1svARB :: FunPtr a
ptr_glVertexAttrib1svARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib1svARB"
 
glVertexAttrib1svARB :: GLuint -> Ptr GLshort -> IO ()
glVertexAttrib1svARB
  = dyn_glVertexAttrib1svARB ptr_glVertexAttrib1svARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1svARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1sARB #-}
 
ptr_glVertexAttrib1sARB :: FunPtr a
ptr_glVertexAttrib1sARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib1sARB"
 
glVertexAttrib1sARB :: GLuint -> GLshort -> IO ()
glVertexAttrib1sARB
  = dyn_glVertexAttrib1sARB ptr_glVertexAttrib1sARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1sARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1fvARB #-}
 
ptr_glVertexAttrib1fvARB :: FunPtr a
ptr_glVertexAttrib1fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib1fvARB"
 
glVertexAttrib1fvARB :: GLuint -> Ptr GLfloat -> IO ()
glVertexAttrib1fvARB
  = dyn_glVertexAttrib1fvARB ptr_glVertexAttrib1fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1fvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1fARB #-}
 
ptr_glVertexAttrib1fARB :: FunPtr a
ptr_glVertexAttrib1fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib1fARB"
 
glVertexAttrib1fARB :: GLuint -> GLfloat -> IO ()
glVertexAttrib1fARB
  = dyn_glVertexAttrib1fARB ptr_glVertexAttrib1fARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1dvARB #-}
 
ptr_glVertexAttrib1dvARB :: FunPtr a
ptr_glVertexAttrib1dvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib1dvARB"
 
glVertexAttrib1dvARB :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttrib1dvARB
  = dyn_glVertexAttrib1dvARB ptr_glVertexAttrib1dvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1dvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1dARB #-}
 
ptr_glVertexAttrib1dARB :: FunPtr a
ptr_glVertexAttrib1dARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glVertexAttrib1dARB"
 
glVertexAttrib1dARB :: GLuint -> GLdouble -> IO ()
glVertexAttrib1dARB
  = dyn_glVertexAttrib1dARB ptr_glVertexAttrib1dARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1dARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramStringARB #-}
 
ptr_glProgramStringARB :: FunPtr a
ptr_glProgramStringARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramStringARB"
 
glProgramStringARB :: GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glProgramStringARB = dyn_glProgramStringARB ptr_glProgramStringARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramStringARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameter4fvARB #-}
 
ptr_glProgramLocalParameter4fvARB :: FunPtr a
ptr_glProgramLocalParameter4fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramLocalParameter4fvARB"
 
glProgramLocalParameter4fvARB ::
                              GLenum -> GLuint -> Ptr GLfloat -> IO ()
glProgramLocalParameter4fvARB
  = dyn_glProgramLocalParameter4fvARB
      ptr_glProgramLocalParameter4fvARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameter4fvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameter4fARB #-}
 
ptr_glProgramLocalParameter4fARB :: FunPtr a
ptr_glProgramLocalParameter4fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramLocalParameter4fARB"
 
glProgramLocalParameter4fARB ::
                             GLenum ->
                               GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glProgramLocalParameter4fARB
  = dyn_glProgramLocalParameter4fARB ptr_glProgramLocalParameter4fARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameter4fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameter4dvARB #-}
 
ptr_glProgramLocalParameter4dvARB :: FunPtr a
ptr_glProgramLocalParameter4dvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramLocalParameter4dvARB"
 
glProgramLocalParameter4dvARB ::
                              GLenum -> GLuint -> Ptr GLdouble -> IO ()
glProgramLocalParameter4dvARB
  = dyn_glProgramLocalParameter4dvARB
      ptr_glProgramLocalParameter4dvARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameter4dvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramLocalParameter4dARB #-}
 
ptr_glProgramLocalParameter4dARB :: FunPtr a
ptr_glProgramLocalParameter4dARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramLocalParameter4dARB"
 
glProgramLocalParameter4dARB ::
                             GLenum ->
                               GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glProgramLocalParameter4dARB
  = dyn_glProgramLocalParameter4dARB ptr_glProgramLocalParameter4dARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramLocalParameter4dARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameter4fvARB #-}
 
ptr_glProgramEnvParameter4fvARB :: FunPtr a
ptr_glProgramEnvParameter4fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramEnvParameter4fvARB"
 
glProgramEnvParameter4fvARB ::
                            GLenum -> GLuint -> Ptr GLfloat -> IO ()
glProgramEnvParameter4fvARB
  = dyn_glProgramEnvParameter4fvARB ptr_glProgramEnvParameter4fvARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameter4fvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameter4fARB #-}
 
ptr_glProgramEnvParameter4fARB :: FunPtr a
ptr_glProgramEnvParameter4fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramEnvParameter4fARB"
 
glProgramEnvParameter4fARB ::
                           GLenum ->
                             GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glProgramEnvParameter4fARB
  = dyn_glProgramEnvParameter4fARB ptr_glProgramEnvParameter4fARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameter4fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameter4dvARB #-}
 
ptr_glProgramEnvParameter4dvARB :: FunPtr a
ptr_glProgramEnvParameter4dvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramEnvParameter4dvARB"
 
glProgramEnvParameter4dvARB ::
                            GLenum -> GLuint -> Ptr GLdouble -> IO ()
glProgramEnvParameter4dvARB
  = dyn_glProgramEnvParameter4dvARB ptr_glProgramEnvParameter4dvARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameter4dvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramEnvParameter4dARB #-}
 
ptr_glProgramEnvParameter4dARB :: FunPtr a
ptr_glProgramEnvParameter4dARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glProgramEnvParameter4dARB"
 
glProgramEnvParameter4dARB ::
                           GLenum ->
                             GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glProgramEnvParameter4dARB
  = dyn_glProgramEnvParameter4dARB ptr_glProgramEnvParameter4dARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramEnvParameter4dARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glIsProgramARB #-}
 
ptr_glIsProgramARB :: FunPtr a
ptr_glIsProgramARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glIsProgramARB"
 
glIsProgramARB :: GLuint -> IO GLboolean
glIsProgramARB = dyn_glIsProgramARB ptr_glIsProgramARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsProgramARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetVertexAttribivARB #-}
 
ptr_glGetVertexAttribivARB :: FunPtr a
ptr_glGetVertexAttribivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetVertexAttribivARB"
 
glGetVertexAttribivARB :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVertexAttribivARB
  = dyn_glGetVertexAttribivARB ptr_glGetVertexAttribivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribivARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribfvARB #-}
 
ptr_glGetVertexAttribfvARB :: FunPtr a
ptr_glGetVertexAttribfvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetVertexAttribfvARB"
 
glGetVertexAttribfvARB :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetVertexAttribfvARB
  = dyn_glGetVertexAttribfvARB ptr_glGetVertexAttribfvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribfvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribdvARB #-}
 
ptr_glGetVertexAttribdvARB :: FunPtr a
ptr_glGetVertexAttribdvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetVertexAttribdvARB"
 
glGetVertexAttribdvARB :: GLuint -> GLenum -> Ptr GLdouble -> IO ()
glGetVertexAttribdvARB
  = dyn_glGetVertexAttribdvARB ptr_glGetVertexAttribdvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribdvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribPointervARB #-}
 
ptr_glGetVertexAttribPointervARB :: FunPtr a
ptr_glGetVertexAttribPointervARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetVertexAttribPointervARB"
 
glGetVertexAttribPointervARB ::
                             GLuint -> GLenum -> Ptr (Ptr a) -> IO ()
glGetVertexAttribPointervARB
  = dyn_glGetVertexAttribPointervARB ptr_glGetVertexAttribPointervARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVertexAttribPointervARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glGetProgramivARB #-}
 
ptr_glGetProgramivARB :: FunPtr a
ptr_glGetProgramivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetProgramivARB"
 
glGetProgramivARB :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetProgramivARB = dyn_glGetProgramivARB ptr_glGetProgramivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetProgramStringARB #-}
 
ptr_glGetProgramStringARB :: FunPtr a
ptr_glGetProgramStringARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetProgramStringARB"
 
glGetProgramStringARB :: GLenum -> GLenum -> Ptr a -> IO ()
glGetProgramStringARB
  = dyn_glGetProgramStringARB ptr_glGetProgramStringARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramStringARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetProgramLocalParameterfvARB #-}
 
ptr_glGetProgramLocalParameterfvARB :: FunPtr a
ptr_glGetProgramLocalParameterfvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetProgramLocalParameterfvARB"
 
glGetProgramLocalParameterfvARB ::
                                GLenum -> GLuint -> Ptr GLfloat -> IO ()
glGetProgramLocalParameterfvARB
  = dyn_glGetProgramLocalParameterfvARB
      ptr_glGetProgramLocalParameterfvARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramLocalParameterfvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetProgramLocalParameterdvARB #-}
 
ptr_glGetProgramLocalParameterdvARB :: FunPtr a
ptr_glGetProgramLocalParameterdvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetProgramLocalParameterdvARB"
 
glGetProgramLocalParameterdvARB ::
                                GLenum -> GLuint -> Ptr GLdouble -> IO ()
glGetProgramLocalParameterdvARB
  = dyn_glGetProgramLocalParameterdvARB
      ptr_glGetProgramLocalParameterdvARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramLocalParameterdvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetProgramEnvParameterfvARB #-}
 
ptr_glGetProgramEnvParameterfvARB :: FunPtr a
ptr_glGetProgramEnvParameterfvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetProgramEnvParameterfvARB"
 
glGetProgramEnvParameterfvARB ::
                              GLenum -> GLuint -> Ptr GLfloat -> IO ()
glGetProgramEnvParameterfvARB
  = dyn_glGetProgramEnvParameterfvARB
      ptr_glGetProgramEnvParameterfvARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramEnvParameterfvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetProgramEnvParameterdvARB #-}
 
ptr_glGetProgramEnvParameterdvARB :: FunPtr a
ptr_glGetProgramEnvParameterdvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGetProgramEnvParameterdvARB"
 
glGetProgramEnvParameterdvARB ::
                              GLenum -> GLuint -> Ptr GLdouble -> IO ()
glGetProgramEnvParameterdvARB
  = dyn_glGetProgramEnvParameterdvARB
      ptr_glGetProgramEnvParameterdvARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramEnvParameterdvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGenProgramsARB #-}
 
ptr_glGenProgramsARB :: FunPtr a
ptr_glGenProgramsARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glGenProgramsARB"
 
glGenProgramsARB :: GLsizei -> Ptr GLuint -> IO ()
glGenProgramsARB = dyn_glGenProgramsARB ptr_glGenProgramsARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenProgramsARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glEnableVertexAttribArrayARB #-}
 
ptr_glEnableVertexAttribArrayARB :: FunPtr a
ptr_glEnableVertexAttribArrayARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glEnableVertexAttribArrayARB"
 
glEnableVertexAttribArrayARB :: GLuint -> IO ()
glEnableVertexAttribArrayARB
  = dyn_glEnableVertexAttribArrayARB ptr_glEnableVertexAttribArrayARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glEnableVertexAttribArrayARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glDisableVertexAttribArrayARB #-}
 
ptr_glDisableVertexAttribArrayARB :: FunPtr a
ptr_glDisableVertexAttribArrayARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glDisableVertexAttribArrayARB"
 
glDisableVertexAttribArrayARB :: GLuint -> IO ()
glDisableVertexAttribArrayARB
  = dyn_glDisableVertexAttribArrayARB
      ptr_glDisableVertexAttribArrayARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDisableVertexAttribArrayARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteProgramsARB #-}
 
ptr_glDeleteProgramsARB :: FunPtr a
ptr_glDeleteProgramsARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glDeleteProgramsARB"
 
glDeleteProgramsARB :: GLsizei -> Ptr GLuint -> IO ()
glDeleteProgramsARB
  = dyn_glDeleteProgramsARB ptr_glDeleteProgramsARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteProgramsARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBindProgramARB #-}
 
ptr_glBindProgramARB :: FunPtr a
ptr_glBindProgramARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_fragment_program"
        "glBindProgramARB"
 
glBindProgramARB :: GLenum -> GLuint -> IO ()
glBindProgramARB = dyn_glBindProgramARB ptr_glBindProgramARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindProgramARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
gl_VERTEX_PROGRAM_TWO_SIDE_ARB :: GLenum
gl_VERTEX_PROGRAM_TWO_SIDE_ARB = 34371
 
gl_VERTEX_PROGRAM_POINT_SIZE_ARB :: GLenum
gl_VERTEX_PROGRAM_POINT_SIZE_ARB = 34370
 
gl_VERTEX_PROGRAM_ARB :: GLenum
gl_VERTEX_PROGRAM_ARB = 34336
 
gl_VERTEX_ATTRIB_ARRAY_TYPE_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_TYPE_ARB = 34341
 
gl_VERTEX_ATTRIB_ARRAY_STRIDE_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_STRIDE_ARB = 34340
 
gl_VERTEX_ATTRIB_ARRAY_SIZE_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_SIZE_ARB = 34339
 
gl_VERTEX_ATTRIB_ARRAY_POINTER_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_POINTER_ARB = 34373
 
gl_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB = 34922
 
gl_VERTEX_ATTRIB_ARRAY_ENABLED_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_ENABLED_ARB = 34338
 
gl_TRANSPOSE_CURRENT_MATRIX_ARB :: GLenum
gl_TRANSPOSE_CURRENT_MATRIX_ARB = 34999
 
gl_PROGRAM_UNDER_NATIVE_LIMITS_ARB :: GLenum
gl_PROGRAM_UNDER_NATIVE_LIMITS_ARB = 34998
 
gl_PROGRAM_TEX_INSTRUCTIONS_ARB :: GLenum
gl_PROGRAM_TEX_INSTRUCTIONS_ARB = 34822
 
gl_PROGRAM_TEX_INDIRECTIONS_ARB :: GLenum
gl_PROGRAM_TEX_INDIRECTIONS_ARB = 34823
 
gl_PROGRAM_TEMPORARIES_ARB :: GLenum
gl_PROGRAM_TEMPORARIES_ARB = 34980
 
gl_PROGRAM_STRING_ARB :: GLenum
gl_PROGRAM_STRING_ARB = 34344
 
gl_PROGRAM_PARAMETERS_ARB :: GLenum
gl_PROGRAM_PARAMETERS_ARB = 34984
 
gl_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB :: GLenum
gl_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = 34825
 
gl_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB :: GLenum
gl_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = 34826
 
gl_PROGRAM_NATIVE_TEMPORARIES_ARB :: GLenum
gl_PROGRAM_NATIVE_TEMPORARIES_ARB = 34982
 
gl_PROGRAM_NATIVE_PARAMETERS_ARB :: GLenum
gl_PROGRAM_NATIVE_PARAMETERS_ARB = 34986
 
gl_PROGRAM_NATIVE_INSTRUCTIONS_ARB :: GLenum
gl_PROGRAM_NATIVE_INSTRUCTIONS_ARB = 34978
 
gl_PROGRAM_NATIVE_ATTRIBS_ARB :: GLenum
gl_PROGRAM_NATIVE_ATTRIBS_ARB = 34990
 
gl_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB :: GLenum
gl_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = 34824
 
gl_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB :: GLenum
gl_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = 34994
 
gl_PROGRAM_LENGTH_ARB :: GLenum
gl_PROGRAM_LENGTH_ARB = 34343
 
gl_PROGRAM_INSTRUCTIONS_ARB :: GLenum
gl_PROGRAM_INSTRUCTIONS_ARB = 34976
 
gl_PROGRAM_FORMAT_ASCII_ARB :: GLenum
gl_PROGRAM_FORMAT_ASCII_ARB = 34933
 
gl_PROGRAM_FORMAT_ARB :: GLenum
gl_PROGRAM_FORMAT_ARB = 34934
 
gl_PROGRAM_ERROR_STRING_ARB :: GLenum
gl_PROGRAM_ERROR_STRING_ARB = 34932
 
gl_PROGRAM_ERROR_POSITION_ARB :: GLenum
gl_PROGRAM_ERROR_POSITION_ARB = 34379
 
gl_PROGRAM_BINDING_ARB :: GLenum
gl_PROGRAM_BINDING_ARB = 34423
 
gl_PROGRAM_ATTRIBS_ARB :: GLenum
gl_PROGRAM_ATTRIBS_ARB = 34988
 
gl_PROGRAM_ALU_INSTRUCTIONS_ARB :: GLenum
gl_PROGRAM_ALU_INSTRUCTIONS_ARB = 34821
 
gl_PROGRAM_ADDRESS_REGISTERS_ARB :: GLenum
gl_PROGRAM_ADDRESS_REGISTERS_ARB = 34992
 
gl_MAX_VERTEX_ATTRIBS_ARB :: GLenum
gl_MAX_VERTEX_ATTRIBS_ARB = 34921
 
gl_MAX_TEXTURE_IMAGE_UNITS_ARB :: GLenum
gl_MAX_TEXTURE_IMAGE_UNITS_ARB = 34930
 
gl_MAX_TEXTURE_COORDS_ARB :: GLenum
gl_MAX_TEXTURE_COORDS_ARB = 34929
 
gl_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB :: GLenum
gl_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB = 34828
 
gl_MAX_PROGRAM_TEX_INDIRECTIONS_ARB :: GLenum
gl_MAX_PROGRAM_TEX_INDIRECTIONS_ARB = 34829
 
gl_MAX_PROGRAM_TEMPORARIES_ARB :: GLenum
gl_MAX_PROGRAM_TEMPORARIES_ARB = 34981
 
gl_MAX_PROGRAM_PARAMETERS_ARB :: GLenum
gl_MAX_PROGRAM_PARAMETERS_ARB = 34985
 
gl_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB :: GLenum
gl_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB = 34831
 
gl_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB :: GLenum
gl_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB = 34832
 
gl_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB :: GLenum
gl_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB = 34983
 
gl_MAX_PROGRAM_NATIVE_PARAMETERS_ARB :: GLenum
gl_MAX_PROGRAM_NATIVE_PARAMETERS_ARB = 34987
 
gl_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB :: GLenum
gl_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB = 34979
 
gl_MAX_PROGRAM_NATIVE_ATTRIBS_ARB :: GLenum
gl_MAX_PROGRAM_NATIVE_ATTRIBS_ARB = 34991
 
gl_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB :: GLenum
gl_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB = 34830
 
gl_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB :: GLenum
gl_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = 34995
 
gl_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB :: GLenum
gl_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB = 34350
 
gl_MAX_PROGRAM_MATRICES_ARB :: GLenum
gl_MAX_PROGRAM_MATRICES_ARB = 34351
 
gl_MAX_PROGRAM_LOCAL_PARAMETERS_ARB :: GLenum
gl_MAX_PROGRAM_LOCAL_PARAMETERS_ARB = 34996
 
gl_MAX_PROGRAM_INSTRUCTIONS_ARB :: GLenum
gl_MAX_PROGRAM_INSTRUCTIONS_ARB = 34977
 
gl_MAX_PROGRAM_ENV_PARAMETERS_ARB :: GLenum
gl_MAX_PROGRAM_ENV_PARAMETERS_ARB = 34997
 
gl_MAX_PROGRAM_ATTRIBS_ARB :: GLenum
gl_MAX_PROGRAM_ATTRIBS_ARB = 34989
 
gl_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB :: GLenum
gl_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB = 34827
 
gl_MAX_PROGRAM_ADDRESS_REGISTERS_ARB :: GLenum
gl_MAX_PROGRAM_ADDRESS_REGISTERS_ARB = 34993
 
gl_MATRIX9_ARB :: GLenum
gl_MATRIX9_ARB = 35017
 
gl_MATRIX8_ARB :: GLenum
gl_MATRIX8_ARB = 35016
 
gl_MATRIX7_ARB :: GLenum
gl_MATRIX7_ARB = 35015
 
gl_MATRIX6_ARB :: GLenum
gl_MATRIX6_ARB = 35014
 
gl_MATRIX5_ARB :: GLenum
gl_MATRIX5_ARB = 35013
 
gl_MATRIX4_ARB :: GLenum
gl_MATRIX4_ARB = 35012
 
gl_MATRIX3_ARB :: GLenum
gl_MATRIX3_ARB = 35011
 
gl_MATRIX31_ARB :: GLenum
gl_MATRIX31_ARB = 35039
 
gl_MATRIX30_ARB :: GLenum
gl_MATRIX30_ARB = 35038
 
gl_MATRIX2_ARB :: GLenum
gl_MATRIX2_ARB = 35010
 
gl_MATRIX29_ARB :: GLenum
gl_MATRIX29_ARB = 35037
 
gl_MATRIX28_ARB :: GLenum
gl_MATRIX28_ARB = 35036
 
gl_MATRIX27_ARB :: GLenum
gl_MATRIX27_ARB = 35035
 
gl_MATRIX26_ARB :: GLenum
gl_MATRIX26_ARB = 35034
 
gl_MATRIX25_ARB :: GLenum
gl_MATRIX25_ARB = 35033
 
gl_MATRIX24_ARB :: GLenum
gl_MATRIX24_ARB = 35032
 
gl_MATRIX23_ARB :: GLenum
gl_MATRIX23_ARB = 35031
 
gl_MATRIX22_ARB :: GLenum
gl_MATRIX22_ARB = 35030
 
gl_MATRIX21_ARB :: GLenum
gl_MATRIX21_ARB = 35029
 
gl_MATRIX20_ARB :: GLenum
gl_MATRIX20_ARB = 35028
 
gl_MATRIX1_ARB :: GLenum
gl_MATRIX1_ARB = 35009
 
gl_MATRIX19_ARB :: GLenum
gl_MATRIX19_ARB = 35027
 
gl_MATRIX18_ARB :: GLenum
gl_MATRIX18_ARB = 35026
 
gl_MATRIX17_ARB :: GLenum
gl_MATRIX17_ARB = 35025
 
gl_MATRIX16_ARB :: GLenum
gl_MATRIX16_ARB = 35024
 
gl_MATRIX15_ARB :: GLenum
gl_MATRIX15_ARB = 35023
 
gl_MATRIX14_ARB :: GLenum
gl_MATRIX14_ARB = 35022
 
gl_MATRIX13_ARB :: GLenum
gl_MATRIX13_ARB = 35021
 
gl_MATRIX12_ARB :: GLenum
gl_MATRIX12_ARB = 35020
 
gl_MATRIX11_ARB :: GLenum
gl_MATRIX11_ARB = 35019
 
gl_MATRIX10_ARB :: GLenum
gl_MATRIX10_ARB = 35018
 
gl_MATRIX0_ARB :: GLenum
gl_MATRIX0_ARB = 35008
 
gl_FRAGMENT_PROGRAM_ARB :: GLenum
gl_FRAGMENT_PROGRAM_ARB = 34820
 
gl_CURRENT_VERTEX_ATTRIB_ARB :: GLenum
gl_CURRENT_VERTEX_ATTRIB_ARB = 34342
 
gl_CURRENT_MATRIX_STACK_DEPTH_ARB :: GLenum
gl_CURRENT_MATRIX_STACK_DEPTH_ARB = 34368
 
gl_CURRENT_MATRIX_ARB :: GLenum
gl_CURRENT_MATRIX_ARB = 34369
 
gl_COLOR_SUM_ARB :: GLenum
gl_COLOR_SUM_ARB = 33880