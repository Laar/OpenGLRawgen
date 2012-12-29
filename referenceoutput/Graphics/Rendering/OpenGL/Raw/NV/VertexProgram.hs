{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexProgram
       (glVertexAttribs4ubvNV, glVertexAttribs4svNV, glVertexAttribs4fvNV,
        glVertexAttribs4dvNV, glVertexAttribs3svNV, glVertexAttribs3fvNV,
        glVertexAttribs3dvNV, glVertexAttribs2svNV, glVertexAttribs2fvNV,
        glVertexAttribs2dvNV, glVertexAttribs1svNV, glVertexAttribs1fvNV,
        glVertexAttribs1dvNV, glVertexAttrib4ubvNV, glVertexAttrib4ubNV,
        glVertexAttrib4svNV, glVertexAttrib4sNV, glVertexAttrib4fvNV,
        glVertexAttrib4fNV, glVertexAttrib4dvNV, glVertexAttrib4dNV,
        glVertexAttrib3svNV, glVertexAttrib3sNV, glVertexAttrib3fvNV,
        glVertexAttrib3fNV, glVertexAttrib3dvNV, glVertexAttrib3dNV,
        glVertexAttrib2svNV, glVertexAttrib2sNV, glVertexAttrib2fvNV,
        glVertexAttrib2fNV, glVertexAttrib2dvNV, glVertexAttrib2dNV,
        glVertexAttrib1svNV, glVertexAttrib1sNV, glVertexAttrib1fvNV,
        glVertexAttrib1fNV, glVertexAttrib1dvNV, glVertexAttrib1dNV,
        glVertexAttribPointerNV, glTrackMatrixNV,
        glRequestResidentProgramsNV, glProgramParameters4fvNV,
        glProgramParameters4dvNV, glProgramParameter4fvNV,
        glProgramParameter4fNV, glProgramParameter4dvNV,
        glProgramParameter4dNV, glLoadProgramNV, glIsProgramNV,
        glGetVertexAttribPointervNV, glGetVertexAttribivNV,
        glGetVertexAttribfvNV, glGetVertexAttribdvNV, glGetTrackMatrixivNV,
        glGetProgramStringNV, glGetProgramivNV, glGetProgramParameterfvNV,
        glGetProgramParameterdvNV, glGenProgramsNV, glExecuteProgramNV,
        glDeleteProgramsNV, glBindProgramNV, glAreProgramsResidentNV,
        gl_MAP2_VERTEX_ATTRIB15_4_NV, gl_MAP2_VERTEX_ATTRIB14_4_NV,
        gl_MAP2_VERTEX_ATTRIB13_4_NV, gl_MAP2_VERTEX_ATTRIB12_4_NV,
        gl_MAP2_VERTEX_ATTRIB11_4_NV, gl_MAP2_VERTEX_ATTRIB10_4_NV,
        gl_MAP2_VERTEX_ATTRIB9_4_NV, gl_MAP2_VERTEX_ATTRIB8_4_NV,
        gl_MAP2_VERTEX_ATTRIB7_4_NV, gl_MAP2_VERTEX_ATTRIB6_4_NV,
        gl_MAP2_VERTEX_ATTRIB5_4_NV, gl_MAP2_VERTEX_ATTRIB4_4_NV,
        gl_MAP2_VERTEX_ATTRIB3_4_NV, gl_MAP2_VERTEX_ATTRIB2_4_NV,
        gl_MAP2_VERTEX_ATTRIB1_4_NV, gl_MAP2_VERTEX_ATTRIB0_4_NV,
        gl_MAP1_VERTEX_ATTRIB15_4_NV, gl_MAP1_VERTEX_ATTRIB14_4_NV,
        gl_MAP1_VERTEX_ATTRIB13_4_NV, gl_MAP1_VERTEX_ATTRIB12_4_NV,
        gl_MAP1_VERTEX_ATTRIB11_4_NV, gl_MAP1_VERTEX_ATTRIB10_4_NV,
        gl_MAP1_VERTEX_ATTRIB9_4_NV, gl_MAP1_VERTEX_ATTRIB8_4_NV,
        gl_MAP1_VERTEX_ATTRIB7_4_NV, gl_MAP1_VERTEX_ATTRIB6_4_NV,
        gl_MAP1_VERTEX_ATTRIB5_4_NV, gl_MAP1_VERTEX_ATTRIB4_4_NV,
        gl_MAP1_VERTEX_ATTRIB3_4_NV, gl_MAP1_VERTEX_ATTRIB2_4_NV,
        gl_MAP1_VERTEX_ATTRIB1_4_NV, gl_MAP1_VERTEX_ATTRIB0_4_NV,
        gl_VERTEX_ATTRIB_ARRAY15_NV, gl_VERTEX_ATTRIB_ARRAY14_NV,
        gl_VERTEX_ATTRIB_ARRAY13_NV, gl_VERTEX_ATTRIB_ARRAY12_NV,
        gl_VERTEX_ATTRIB_ARRAY11_NV, gl_VERTEX_ATTRIB_ARRAY10_NV,
        gl_VERTEX_ATTRIB_ARRAY9_NV, gl_VERTEX_ATTRIB_ARRAY8_NV,
        gl_VERTEX_ATTRIB_ARRAY7_NV, gl_VERTEX_ATTRIB_ARRAY6_NV,
        gl_VERTEX_ATTRIB_ARRAY5_NV, gl_VERTEX_ATTRIB_ARRAY4_NV,
        gl_VERTEX_ATTRIB_ARRAY3_NV, gl_VERTEX_ATTRIB_ARRAY2_NV,
        gl_VERTEX_ATTRIB_ARRAY1_NV, gl_VERTEX_ATTRIB_ARRAY0_NV,
        gl_PROGRAM_ERROR_POSITION_NV, gl_VERTEX_PROGRAM_BINDING_NV,
        gl_TRACK_MATRIX_TRANSFORM_NV, gl_TRACK_MATRIX_NV,
        gl_PROGRAM_RESIDENT_NV, gl_PROGRAM_TARGET_NV,
        gl_ATTRIB_ARRAY_POINTER_NV, gl_PROGRAM_PARAMETER_NV,
        gl_VERTEX_PROGRAM_TWO_SIDE_NV, gl_VERTEX_PROGRAM_POINT_SIZE_NV,
        gl_CURRENT_MATRIX_NV, gl_CURRENT_MATRIX_STACK_DEPTH_NV,
        gl_MATRIX7_NV, gl_MATRIX6_NV, gl_MATRIX5_NV, gl_MATRIX4_NV,
        gl_MATRIX3_NV, gl_MATRIX2_NV, gl_MATRIX1_NV, gl_MATRIX0_NV,
        gl_MAX_TRACK_MATRICES_NV, gl_MAX_TRACK_MATRIX_STACK_DEPTH_NV,
        gl_INVERSE_TRANSPOSE_NV, gl_TRANSPOSE_NV, gl_INVERSE_NV,
        gl_IDENTITY_NV, gl_MODELVIEW_PROJECTION_NV, gl_PROGRAM_STRING_NV,
        gl_PROGRAM_LENGTH_NV, gl_CURRENT_ATTRIB_NV,
        gl_ATTRIB_ARRAY_TYPE_NV, gl_ATTRIB_ARRAY_STRIDE_NV,
        gl_ATTRIB_ARRAY_SIZE_NV, gl_VERTEX_STATE_PROGRAM_NV,
        gl_VERTEX_PROGRAM_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribs4ubvNV #-}
 
ptr_glVertexAttribs4ubvNV :: FunPtr a
ptr_glVertexAttribs4ubvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs4ubvNV"
 
glVertexAttribs4ubvNV :: GLuint -> GLsizei -> Ptr GLubyte -> IO ()
glVertexAttribs4ubvNV
  = dyn_glVertexAttribs4ubvNV ptr_glVertexAttribs4ubvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs4ubvNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs4svNV #-}
 
ptr_glVertexAttribs4svNV :: FunPtr a
ptr_glVertexAttribs4svNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs4svNV"
 
glVertexAttribs4svNV :: GLuint -> GLsizei -> Ptr GLshort -> IO ()
glVertexAttribs4svNV
  = dyn_glVertexAttribs4svNV ptr_glVertexAttribs4svNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs4svNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs4fvNV #-}
 
ptr_glVertexAttribs4fvNV :: FunPtr a
ptr_glVertexAttribs4fvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs4fvNV"
 
glVertexAttribs4fvNV :: GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glVertexAttribs4fvNV
  = dyn_glVertexAttribs4fvNV ptr_glVertexAttribs4fvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs4fvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs4dvNV #-}
 
ptr_glVertexAttribs4dvNV :: FunPtr a
ptr_glVertexAttribs4dvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs4dvNV"
 
glVertexAttribs4dvNV :: GLuint -> GLsizei -> Ptr GLdouble -> IO ()
glVertexAttribs4dvNV
  = dyn_glVertexAttribs4dvNV ptr_glVertexAttribs4dvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs4dvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs3svNV #-}
 
ptr_glVertexAttribs3svNV :: FunPtr a
ptr_glVertexAttribs3svNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs3svNV"
 
glVertexAttribs3svNV :: GLuint -> GLsizei -> Ptr GLshort -> IO ()
glVertexAttribs3svNV
  = dyn_glVertexAttribs3svNV ptr_glVertexAttribs3svNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs3svNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs3fvNV #-}
 
ptr_glVertexAttribs3fvNV :: FunPtr a
ptr_glVertexAttribs3fvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs3fvNV"
 
glVertexAttribs3fvNV :: GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glVertexAttribs3fvNV
  = dyn_glVertexAttribs3fvNV ptr_glVertexAttribs3fvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs3fvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs3dvNV #-}
 
ptr_glVertexAttribs3dvNV :: FunPtr a
ptr_glVertexAttribs3dvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs3dvNV"
 
glVertexAttribs3dvNV :: GLuint -> GLsizei -> Ptr GLdouble -> IO ()
glVertexAttribs3dvNV
  = dyn_glVertexAttribs3dvNV ptr_glVertexAttribs3dvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs3dvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs2svNV #-}
 
ptr_glVertexAttribs2svNV :: FunPtr a
ptr_glVertexAttribs2svNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs2svNV"
 
glVertexAttribs2svNV :: GLuint -> GLsizei -> Ptr GLshort -> IO ()
glVertexAttribs2svNV
  = dyn_glVertexAttribs2svNV ptr_glVertexAttribs2svNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs2svNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs2fvNV #-}
 
ptr_glVertexAttribs2fvNV :: FunPtr a
ptr_glVertexAttribs2fvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs2fvNV"
 
glVertexAttribs2fvNV :: GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glVertexAttribs2fvNV
  = dyn_glVertexAttribs2fvNV ptr_glVertexAttribs2fvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs2fvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs2dvNV #-}
 
ptr_glVertexAttribs2dvNV :: FunPtr a
ptr_glVertexAttribs2dvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs2dvNV"
 
glVertexAttribs2dvNV :: GLuint -> GLsizei -> Ptr GLdouble -> IO ()
glVertexAttribs2dvNV
  = dyn_glVertexAttribs2dvNV ptr_glVertexAttribs2dvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs2dvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs1svNV #-}
 
ptr_glVertexAttribs1svNV :: FunPtr a
ptr_glVertexAttribs1svNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs1svNV"
 
glVertexAttribs1svNV :: GLuint -> GLsizei -> Ptr GLshort -> IO ()
glVertexAttribs1svNV
  = dyn_glVertexAttribs1svNV ptr_glVertexAttribs1svNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs1svNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs1fvNV #-}
 
ptr_glVertexAttribs1fvNV :: FunPtr a
ptr_glVertexAttribs1fvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs1fvNV"
 
glVertexAttribs1fvNV :: GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glVertexAttribs1fvNV
  = dyn_glVertexAttribs1fvNV ptr_glVertexAttribs1fvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs1fvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs1dvNV #-}
 
ptr_glVertexAttribs1dvNV :: FunPtr a
ptr_glVertexAttribs1dvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs1dvNV"
 
glVertexAttribs1dvNV :: GLuint -> GLsizei -> Ptr GLdouble -> IO ()
glVertexAttribs1dvNV
  = dyn_glVertexAttribs1dvNV ptr_glVertexAttribs1dvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs1dvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4ubvNV #-}
 
ptr_glVertexAttrib4ubvNV :: FunPtr a
ptr_glVertexAttrib4ubvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib4ubvNV"
 
glVertexAttrib4ubvNV :: GLuint -> Ptr GLubyte -> IO ()
glVertexAttrib4ubvNV
  = dyn_glVertexAttrib4ubvNV ptr_glVertexAttrib4ubvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4ubvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4ubNV #-}
 
ptr_glVertexAttrib4ubNV :: FunPtr a
ptr_glVertexAttrib4ubNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib4ubNV"
 
glVertexAttrib4ubNV ::
                    GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO ()
glVertexAttrib4ubNV
  = dyn_glVertexAttrib4ubNV ptr_glVertexAttrib4ubNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4ubNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4svNV #-}
 
ptr_glVertexAttrib4svNV :: FunPtr a
ptr_glVertexAttrib4svNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib4svNV"
 
glVertexAttrib4svNV :: GLuint -> Ptr GLshort -> IO ()
glVertexAttrib4svNV
  = dyn_glVertexAttrib4svNV ptr_glVertexAttrib4svNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4svNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4sNV #-}
 
ptr_glVertexAttrib4sNV :: FunPtr a
ptr_glVertexAttrib4sNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib4sNV"
 
glVertexAttrib4sNV ::
                   GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()
glVertexAttrib4sNV = dyn_glVertexAttrib4sNV ptr_glVertexAttrib4sNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4sNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4fvNV #-}
 
ptr_glVertexAttrib4fvNV :: FunPtr a
ptr_glVertexAttrib4fvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib4fvNV"
 
glVertexAttrib4fvNV :: GLuint -> Ptr GLfloat -> IO ()
glVertexAttrib4fvNV
  = dyn_glVertexAttrib4fvNV ptr_glVertexAttrib4fvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4fvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4fNV #-}
 
ptr_glVertexAttrib4fNV :: FunPtr a
ptr_glVertexAttrib4fNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib4fNV"
 
glVertexAttrib4fNV ::
                   GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glVertexAttrib4fNV = dyn_glVertexAttrib4fNV ptr_glVertexAttrib4fNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4fNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4dvNV #-}
 
ptr_glVertexAttrib4dvNV :: FunPtr a
ptr_glVertexAttrib4dvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib4dvNV"
 
glVertexAttrib4dvNV :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttrib4dvNV
  = dyn_glVertexAttrib4dvNV ptr_glVertexAttrib4dvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4dvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4dNV #-}
 
ptr_glVertexAttrib4dNV :: FunPtr a
ptr_glVertexAttrib4dNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib4dNV"
 
glVertexAttrib4dNV ::
                   GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexAttrib4dNV = dyn_glVertexAttrib4dNV ptr_glVertexAttrib4dNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4dNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3svNV #-}
 
ptr_glVertexAttrib3svNV :: FunPtr a
ptr_glVertexAttrib3svNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib3svNV"
 
glVertexAttrib3svNV :: GLuint -> Ptr GLshort -> IO ()
glVertexAttrib3svNV
  = dyn_glVertexAttrib3svNV ptr_glVertexAttrib3svNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3svNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3sNV #-}
 
ptr_glVertexAttrib3sNV :: FunPtr a
ptr_glVertexAttrib3sNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib3sNV"
 
glVertexAttrib3sNV ::
                   GLuint -> GLshort -> GLshort -> GLshort -> IO ()
glVertexAttrib3sNV = dyn_glVertexAttrib3sNV ptr_glVertexAttrib3sNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3sNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3fvNV #-}
 
ptr_glVertexAttrib3fvNV :: FunPtr a
ptr_glVertexAttrib3fvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib3fvNV"
 
glVertexAttrib3fvNV :: GLuint -> Ptr GLfloat -> IO ()
glVertexAttrib3fvNV
  = dyn_glVertexAttrib3fvNV ptr_glVertexAttrib3fvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3fvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3fNV #-}
 
ptr_glVertexAttrib3fNV :: FunPtr a
ptr_glVertexAttrib3fNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib3fNV"
 
glVertexAttrib3fNV ::
                   GLuint -> GLfloat -> GLfloat -> GLfloat -> IO ()
glVertexAttrib3fNV = dyn_glVertexAttrib3fNV ptr_glVertexAttrib3fNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3fNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3dvNV #-}
 
ptr_glVertexAttrib3dvNV :: FunPtr a
ptr_glVertexAttrib3dvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib3dvNV"
 
glVertexAttrib3dvNV :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttrib3dvNV
  = dyn_glVertexAttrib3dvNV ptr_glVertexAttrib3dvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3dvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3dNV #-}
 
ptr_glVertexAttrib3dNV :: FunPtr a
ptr_glVertexAttrib3dNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib3dNV"
 
glVertexAttrib3dNV ::
                   GLuint -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexAttrib3dNV = dyn_glVertexAttrib3dNV ptr_glVertexAttrib3dNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3dNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2svNV #-}
 
ptr_glVertexAttrib2svNV :: FunPtr a
ptr_glVertexAttrib2svNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib2svNV"
 
glVertexAttrib2svNV :: GLuint -> Ptr GLshort -> IO ()
glVertexAttrib2svNV
  = dyn_glVertexAttrib2svNV ptr_glVertexAttrib2svNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2svNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2sNV #-}
 
ptr_glVertexAttrib2sNV :: FunPtr a
ptr_glVertexAttrib2sNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib2sNV"
 
glVertexAttrib2sNV :: GLuint -> GLshort -> GLshort -> IO ()
glVertexAttrib2sNV = dyn_glVertexAttrib2sNV ptr_glVertexAttrib2sNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2sNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2fvNV #-}
 
ptr_glVertexAttrib2fvNV :: FunPtr a
ptr_glVertexAttrib2fvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib2fvNV"
 
glVertexAttrib2fvNV :: GLuint -> Ptr GLfloat -> IO ()
glVertexAttrib2fvNV
  = dyn_glVertexAttrib2fvNV ptr_glVertexAttrib2fvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2fvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2fNV #-}
 
ptr_glVertexAttrib2fNV :: FunPtr a
ptr_glVertexAttrib2fNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib2fNV"
 
glVertexAttrib2fNV :: GLuint -> GLfloat -> GLfloat -> IO ()
glVertexAttrib2fNV = dyn_glVertexAttrib2fNV ptr_glVertexAttrib2fNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2fNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2dvNV #-}
 
ptr_glVertexAttrib2dvNV :: FunPtr a
ptr_glVertexAttrib2dvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib2dvNV"
 
glVertexAttrib2dvNV :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttrib2dvNV
  = dyn_glVertexAttrib2dvNV ptr_glVertexAttrib2dvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2dvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2dNV #-}
 
ptr_glVertexAttrib2dNV :: FunPtr a
ptr_glVertexAttrib2dNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib2dNV"
 
glVertexAttrib2dNV :: GLuint -> GLdouble -> GLdouble -> IO ()
glVertexAttrib2dNV = dyn_glVertexAttrib2dNV ptr_glVertexAttrib2dNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2dNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1svNV #-}
 
ptr_glVertexAttrib1svNV :: FunPtr a
ptr_glVertexAttrib1svNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib1svNV"
 
glVertexAttrib1svNV :: GLuint -> Ptr GLshort -> IO ()
glVertexAttrib1svNV
  = dyn_glVertexAttrib1svNV ptr_glVertexAttrib1svNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1svNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1sNV #-}
 
ptr_glVertexAttrib1sNV :: FunPtr a
ptr_glVertexAttrib1sNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib1sNV"
 
glVertexAttrib1sNV :: GLuint -> GLshort -> IO ()
glVertexAttrib1sNV = dyn_glVertexAttrib1sNV ptr_glVertexAttrib1sNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1sNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1fvNV #-}
 
ptr_glVertexAttrib1fvNV :: FunPtr a
ptr_glVertexAttrib1fvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib1fvNV"
 
glVertexAttrib1fvNV :: GLuint -> Ptr GLfloat -> IO ()
glVertexAttrib1fvNV
  = dyn_glVertexAttrib1fvNV ptr_glVertexAttrib1fvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1fvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1fNV #-}
 
ptr_glVertexAttrib1fNV :: FunPtr a
ptr_glVertexAttrib1fNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib1fNV"
 
glVertexAttrib1fNV :: GLuint -> GLfloat -> IO ()
glVertexAttrib1fNV = dyn_glVertexAttrib1fNV ptr_glVertexAttrib1fNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1fNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1dvNV #-}
 
ptr_glVertexAttrib1dvNV :: FunPtr a
ptr_glVertexAttrib1dvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib1dvNV"
 
glVertexAttrib1dvNV :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttrib1dvNV
  = dyn_glVertexAttrib1dvNV ptr_glVertexAttrib1dvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1dvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1dNV #-}
 
ptr_glVertexAttrib1dNV :: FunPtr a
ptr_glVertexAttrib1dNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib1dNV"
 
glVertexAttrib1dNV :: GLuint -> GLdouble -> IO ()
glVertexAttrib1dNV = dyn_glVertexAttrib1dNV ptr_glVertexAttrib1dNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1dNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribPointerNV #-}
 
ptr_glVertexAttribPointerNV :: FunPtr a
ptr_glVertexAttribPointerNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribPointerNV"
 
glVertexAttribPointerNV ::
                        GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glVertexAttribPointerNV
  = dyn_glVertexAttribPointerNV ptr_glVertexAttribPointerNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribPointerNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTrackMatrixNV #-}
 
ptr_glTrackMatrixNV :: FunPtr a
ptr_glTrackMatrixNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glTrackMatrixNV"
 
glTrackMatrixNV :: GLenum -> GLuint -> GLenum -> GLenum -> IO ()
glTrackMatrixNV = dyn_glTrackMatrixNV ptr_glTrackMatrixNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glTrackMatrixNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glRequestResidentProgramsNV #-}
 
ptr_glRequestResidentProgramsNV :: FunPtr a
ptr_glRequestResidentProgramsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glRequestResidentProgramsNV"
 
glRequestResidentProgramsNV :: GLsizei -> Ptr GLuint -> IO ()
glRequestResidentProgramsNV
  = dyn_glRequestResidentProgramsNV ptr_glRequestResidentProgramsNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glRequestResidentProgramsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramParameters4fvNV #-}
 
ptr_glProgramParameters4fvNV :: FunPtr a
ptr_glProgramParameters4fvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glProgramParameters4fvNV"
 
glProgramParameters4fvNV ::
                         GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramParameters4fvNV
  = dyn_glProgramParameters4fvNV ptr_glProgramParameters4fvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramParameters4fvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramParameters4dvNV #-}
 
ptr_glProgramParameters4dvNV :: FunPtr a
ptr_glProgramParameters4dvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glProgramParameters4dvNV"
 
glProgramParameters4dvNV ::
                         GLenum -> GLuint -> GLsizei -> Ptr GLdouble -> IO ()
glProgramParameters4dvNV
  = dyn_glProgramParameters4dvNV ptr_glProgramParameters4dvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramParameters4dvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramParameter4fvNV #-}
 
ptr_glProgramParameter4fvNV :: FunPtr a
ptr_glProgramParameter4fvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glProgramParameter4fvNV"
 
glProgramParameter4fvNV :: GLenum -> GLuint -> Ptr GLfloat -> IO ()
glProgramParameter4fvNV
  = dyn_glProgramParameter4fvNV ptr_glProgramParameter4fvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramParameter4fvNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramParameter4fNV #-}
 
ptr_glProgramParameter4fNV :: FunPtr a
ptr_glProgramParameter4fNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glProgramParameter4fNV"
 
glProgramParameter4fNV ::
                       GLenum ->
                         GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glProgramParameter4fNV
  = dyn_glProgramParameter4fNV ptr_glProgramParameter4fNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramParameter4fNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramParameter4dvNV #-}
 
ptr_glProgramParameter4dvNV :: FunPtr a
ptr_glProgramParameter4dvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glProgramParameter4dvNV"
 
glProgramParameter4dvNV ::
                        GLenum -> GLuint -> Ptr GLdouble -> IO ()
glProgramParameter4dvNV
  = dyn_glProgramParameter4dvNV ptr_glProgramParameter4dvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramParameter4dvNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramParameter4dNV #-}
 
ptr_glProgramParameter4dNV :: FunPtr a
ptr_glProgramParameter4dNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glProgramParameter4dNV"
 
glProgramParameter4dNV ::
                       GLenum ->
                         GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glProgramParameter4dNV
  = dyn_glProgramParameter4dNV ptr_glProgramParameter4dNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramParameter4dNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glLoadProgramNV #-}
 
ptr_glLoadProgramNV :: FunPtr a
ptr_glLoadProgramNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glLoadProgramNV"
 
glLoadProgramNV ::
                GLenum -> GLuint -> GLsizei -> Ptr GLubyte -> IO ()
glLoadProgramNV = dyn_glLoadProgramNV ptr_glLoadProgramNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glLoadProgramNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glIsProgramNV #-}
 
ptr_glIsProgramNV :: FunPtr a
ptr_glIsProgramNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glIsProgramNV"
 
glIsProgramNV :: GLuint -> IO GLboolean
glIsProgramNV = dyn_glIsProgramNV ptr_glIsProgramNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsProgramNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetVertexAttribPointervNV #-}
 
ptr_glGetVertexAttribPointervNV :: FunPtr a
ptr_glGetVertexAttribPointervNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGetVertexAttribPointervNV"
 
glGetVertexAttribPointervNV ::
                            GLuint -> GLenum -> Ptr (Ptr a) -> IO ()
glGetVertexAttribPointervNV
  = dyn_glGetVertexAttribPointervNV ptr_glGetVertexAttribPointervNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVertexAttribPointervNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribivNV #-}
 
ptr_glGetVertexAttribivNV :: FunPtr a
ptr_glGetVertexAttribivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGetVertexAttribivNV"
 
glGetVertexAttribivNV :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVertexAttribivNV
  = dyn_glGetVertexAttribivNV ptr_glGetVertexAttribivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribivNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribfvNV #-}
 
ptr_glGetVertexAttribfvNV :: FunPtr a
ptr_glGetVertexAttribfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGetVertexAttribfvNV"
 
glGetVertexAttribfvNV :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetVertexAttribfvNV
  = dyn_glGetVertexAttribfvNV ptr_glGetVertexAttribfvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribfvNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribdvNV #-}
 
ptr_glGetVertexAttribdvNV :: FunPtr a
ptr_glGetVertexAttribdvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGetVertexAttribdvNV"
 
glGetVertexAttribdvNV :: GLuint -> GLenum -> Ptr GLdouble -> IO ()
glGetVertexAttribdvNV
  = dyn_glGetVertexAttribdvNV ptr_glGetVertexAttribdvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribdvNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetTrackMatrixivNV #-}
 
ptr_glGetTrackMatrixivNV :: FunPtr a
ptr_glGetTrackMatrixivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGetTrackMatrixivNV"
 
glGetTrackMatrixivNV ::
                     GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ()
glGetTrackMatrixivNV
  = dyn_glGetTrackMatrixivNV ptr_glGetTrackMatrixivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTrackMatrixivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetProgramStringNV #-}
 
ptr_glGetProgramStringNV :: FunPtr a
ptr_glGetProgramStringNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGetProgramStringNV"
 
glGetProgramStringNV :: GLuint -> GLenum -> Ptr GLubyte -> IO ()
glGetProgramStringNV
  = dyn_glGetProgramStringNV ptr_glGetProgramStringNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramStringNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glGetProgramivNV #-}
 
ptr_glGetProgramivNV :: FunPtr a
ptr_glGetProgramivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGetProgramivNV"
 
glGetProgramivNV :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetProgramivNV = dyn_glGetProgramivNV ptr_glGetProgramivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetProgramParameterfvNV #-}
 
ptr_glGetProgramParameterfvNV :: FunPtr a
ptr_glGetProgramParameterfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGetProgramParameterfvNV"
 
glGetProgramParameterfvNV ::
                          GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetProgramParameterfvNV
  = dyn_glGetProgramParameterfvNV ptr_glGetProgramParameterfvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramParameterfvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetProgramParameterdvNV #-}
 
ptr_glGetProgramParameterdvNV :: FunPtr a
ptr_glGetProgramParameterdvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGetProgramParameterdvNV"
 
glGetProgramParameterdvNV ::
                          GLenum -> GLuint -> GLenum -> Ptr GLdouble -> IO ()
glGetProgramParameterdvNV
  = dyn_glGetProgramParameterdvNV ptr_glGetProgramParameterdvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramParameterdvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGenProgramsNV #-}
 
ptr_glGenProgramsNV :: FunPtr a
ptr_glGenProgramsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGenProgramsNV"
 
glGenProgramsNV :: GLsizei -> Ptr GLuint -> IO ()
glGenProgramsNV = dyn_glGenProgramsNV ptr_glGenProgramsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenProgramsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glExecuteProgramNV #-}
 
ptr_glExecuteProgramNV :: FunPtr a
ptr_glExecuteProgramNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glExecuteProgramNV"
 
glExecuteProgramNV :: GLenum -> GLuint -> Ptr GLfloat -> IO ()
glExecuteProgramNV = dyn_glExecuteProgramNV ptr_glExecuteProgramNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glExecuteProgramNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glDeleteProgramsNV #-}
 
ptr_glDeleteProgramsNV :: FunPtr a
ptr_glDeleteProgramsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glDeleteProgramsNV"
 
glDeleteProgramsNV :: GLsizei -> Ptr GLuint -> IO ()
glDeleteProgramsNV = dyn_glDeleteProgramsNV ptr_glDeleteProgramsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteProgramsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBindProgramNV #-}
 
ptr_glBindProgramNV :: FunPtr a
ptr_glBindProgramNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glBindProgramNV"
 
glBindProgramNV :: GLenum -> GLuint -> IO ()
glBindProgramNV = dyn_glBindProgramNV ptr_glBindProgramNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindProgramNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glAreProgramsResidentNV #-}
 
ptr_glAreProgramsResidentNV :: FunPtr a
ptr_glAreProgramsResidentNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glAreProgramsResidentNV"
 
glAreProgramsResidentNV ::
                        GLsizei -> Ptr GLuint -> Ptr GLboolean -> IO GLboolean
glAreProgramsResidentNV
  = dyn_glAreProgramsResidentNV ptr_glAreProgramsResidentNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glAreProgramsResidentNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> Ptr GLboolean -> IO GLboolean)
 
gl_MAP2_VERTEX_ATTRIB15_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB15_4_NV = 34431
 
gl_MAP2_VERTEX_ATTRIB14_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB14_4_NV = 34430
 
gl_MAP2_VERTEX_ATTRIB13_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB13_4_NV = 34429
 
gl_MAP2_VERTEX_ATTRIB12_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB12_4_NV = 34428
 
gl_MAP2_VERTEX_ATTRIB11_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB11_4_NV = 34427
 
gl_MAP2_VERTEX_ATTRIB10_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB10_4_NV = 34426
 
gl_MAP2_VERTEX_ATTRIB9_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB9_4_NV = 34425
 
gl_MAP2_VERTEX_ATTRIB8_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB8_4_NV = 34424
 
gl_MAP2_VERTEX_ATTRIB7_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB7_4_NV = 34423
 
gl_MAP2_VERTEX_ATTRIB6_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB6_4_NV = 34422
 
gl_MAP2_VERTEX_ATTRIB5_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB5_4_NV = 34421
 
gl_MAP2_VERTEX_ATTRIB4_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB4_4_NV = 34420
 
gl_MAP2_VERTEX_ATTRIB3_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB3_4_NV = 34419
 
gl_MAP2_VERTEX_ATTRIB2_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB2_4_NV = 34418
 
gl_MAP2_VERTEX_ATTRIB1_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB1_4_NV = 34417
 
gl_MAP2_VERTEX_ATTRIB0_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB0_4_NV = 34416
 
gl_MAP1_VERTEX_ATTRIB15_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB15_4_NV = 34415
 
gl_MAP1_VERTEX_ATTRIB14_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB14_4_NV = 34414
 
gl_MAP1_VERTEX_ATTRIB13_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB13_4_NV = 34413
 
gl_MAP1_VERTEX_ATTRIB12_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB12_4_NV = 34412
 
gl_MAP1_VERTEX_ATTRIB11_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB11_4_NV = 34411
 
gl_MAP1_VERTEX_ATTRIB10_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB10_4_NV = 34410
 
gl_MAP1_VERTEX_ATTRIB9_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB9_4_NV = 34409
 
gl_MAP1_VERTEX_ATTRIB8_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB8_4_NV = 34408
 
gl_MAP1_VERTEX_ATTRIB7_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB7_4_NV = 34407
 
gl_MAP1_VERTEX_ATTRIB6_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB6_4_NV = 34406
 
gl_MAP1_VERTEX_ATTRIB5_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB5_4_NV = 34405
 
gl_MAP1_VERTEX_ATTRIB4_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB4_4_NV = 34404
 
gl_MAP1_VERTEX_ATTRIB3_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB3_4_NV = 34403
 
gl_MAP1_VERTEX_ATTRIB2_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB2_4_NV = 34402
 
gl_MAP1_VERTEX_ATTRIB1_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB1_4_NV = 34401
 
gl_MAP1_VERTEX_ATTRIB0_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB0_4_NV = 34400
 
gl_VERTEX_ATTRIB_ARRAY15_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY15_NV = 34399
 
gl_VERTEX_ATTRIB_ARRAY14_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY14_NV = 34398
 
gl_VERTEX_ATTRIB_ARRAY13_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY13_NV = 34397
 
gl_VERTEX_ATTRIB_ARRAY12_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY12_NV = 34396
 
gl_VERTEX_ATTRIB_ARRAY11_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY11_NV = 34395
 
gl_VERTEX_ATTRIB_ARRAY10_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY10_NV = 34394
 
gl_VERTEX_ATTRIB_ARRAY9_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY9_NV = 34393
 
gl_VERTEX_ATTRIB_ARRAY8_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY8_NV = 34392
 
gl_VERTEX_ATTRIB_ARRAY7_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY7_NV = 34391
 
gl_VERTEX_ATTRIB_ARRAY6_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY6_NV = 34390
 
gl_VERTEX_ATTRIB_ARRAY5_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY5_NV = 34389
 
gl_VERTEX_ATTRIB_ARRAY4_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY4_NV = 34388
 
gl_VERTEX_ATTRIB_ARRAY3_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY3_NV = 34387
 
gl_VERTEX_ATTRIB_ARRAY2_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY2_NV = 34386
 
gl_VERTEX_ATTRIB_ARRAY1_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY1_NV = 34385
 
gl_VERTEX_ATTRIB_ARRAY0_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY0_NV = 34384
 
gl_PROGRAM_ERROR_POSITION_NV :: GLenum
gl_PROGRAM_ERROR_POSITION_NV = 34379
 
gl_VERTEX_PROGRAM_BINDING_NV :: GLenum
gl_VERTEX_PROGRAM_BINDING_NV = 34378
 
gl_TRACK_MATRIX_TRANSFORM_NV :: GLenum
gl_TRACK_MATRIX_TRANSFORM_NV = 34377
 
gl_TRACK_MATRIX_NV :: GLenum
gl_TRACK_MATRIX_NV = 34376
 
gl_PROGRAM_RESIDENT_NV :: GLenum
gl_PROGRAM_RESIDENT_NV = 34375
 
gl_PROGRAM_TARGET_NV :: GLenum
gl_PROGRAM_TARGET_NV = 34374
 
gl_ATTRIB_ARRAY_POINTER_NV :: GLenum
gl_ATTRIB_ARRAY_POINTER_NV = 34373
 
gl_PROGRAM_PARAMETER_NV :: GLenum
gl_PROGRAM_PARAMETER_NV = 34372
 
gl_VERTEX_PROGRAM_TWO_SIDE_NV :: GLenum
gl_VERTEX_PROGRAM_TWO_SIDE_NV = 34371
 
gl_VERTEX_PROGRAM_POINT_SIZE_NV :: GLenum
gl_VERTEX_PROGRAM_POINT_SIZE_NV = 34370
 
gl_CURRENT_MATRIX_NV :: GLenum
gl_CURRENT_MATRIX_NV = 34369
 
gl_CURRENT_MATRIX_STACK_DEPTH_NV :: GLenum
gl_CURRENT_MATRIX_STACK_DEPTH_NV = 34368
 
gl_MATRIX7_NV :: GLenum
gl_MATRIX7_NV = 34359
 
gl_MATRIX6_NV :: GLenum
gl_MATRIX6_NV = 34358
 
gl_MATRIX5_NV :: GLenum
gl_MATRIX5_NV = 34357
 
gl_MATRIX4_NV :: GLenum
gl_MATRIX4_NV = 34356
 
gl_MATRIX3_NV :: GLenum
gl_MATRIX3_NV = 34355
 
gl_MATRIX2_NV :: GLenum
gl_MATRIX2_NV = 34354
 
gl_MATRIX1_NV :: GLenum
gl_MATRIX1_NV = 34353
 
gl_MATRIX0_NV :: GLenum
gl_MATRIX0_NV = 34352
 
gl_MAX_TRACK_MATRICES_NV :: GLenum
gl_MAX_TRACK_MATRICES_NV = 34351
 
gl_MAX_TRACK_MATRIX_STACK_DEPTH_NV :: GLenum
gl_MAX_TRACK_MATRIX_STACK_DEPTH_NV = 34350
 
gl_INVERSE_TRANSPOSE_NV :: GLenum
gl_INVERSE_TRANSPOSE_NV = 34349
 
gl_TRANSPOSE_NV :: GLenum
gl_TRANSPOSE_NV = 34348
 
gl_INVERSE_NV :: GLenum
gl_INVERSE_NV = 34347
 
gl_IDENTITY_NV :: GLenum
gl_IDENTITY_NV = 34346
 
gl_MODELVIEW_PROJECTION_NV :: GLenum
gl_MODELVIEW_PROJECTION_NV = 34345
 
gl_PROGRAM_STRING_NV :: GLenum
gl_PROGRAM_STRING_NV = 34344
 
gl_PROGRAM_LENGTH_NV :: GLenum
gl_PROGRAM_LENGTH_NV = 34343
 
gl_CURRENT_ATTRIB_NV :: GLenum
gl_CURRENT_ATTRIB_NV = 34342
 
gl_ATTRIB_ARRAY_TYPE_NV :: GLenum
gl_ATTRIB_ARRAY_TYPE_NV = 34341
 
gl_ATTRIB_ARRAY_STRIDE_NV :: GLenum
gl_ATTRIB_ARRAY_STRIDE_NV = 34340
 
gl_ATTRIB_ARRAY_SIZE_NV :: GLenum
gl_ATTRIB_ARRAY_SIZE_NV = 34339
 
gl_VERTEX_STATE_PROGRAM_NV :: GLenum
gl_VERTEX_STATE_PROGRAM_NV = 34337
 
gl_VERTEX_PROGRAM_NV :: GLenum
gl_VERTEX_PROGRAM_NV = 34336