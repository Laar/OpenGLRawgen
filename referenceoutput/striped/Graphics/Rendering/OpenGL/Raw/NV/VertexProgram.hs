{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexProgram
       (glVertexAttribs4ubv, glVertexAttribs4sv, glVertexAttribs4fv,
        glVertexAttribs4dv, glVertexAttribs3sv, glVertexAttribs3fv,
        glVertexAttribs3dv, glVertexAttribs2sv, glVertexAttribs2fv,
        glVertexAttribs2dv, glVertexAttribs1sv, glVertexAttribs1fv,
        glVertexAttribs1dv, glVertexAttribPointer, glVertexAttrib4ubv,
        glVertexAttrib4ub, glVertexAttrib4sv, glVertexAttrib4s,
        glVertexAttrib4fv, glVertexAttrib4f, glVertexAttrib4dv,
        glVertexAttrib4d, glVertexAttrib3sv, glVertexAttrib3s,
        glVertexAttrib3fv, glVertexAttrib3f, glVertexAttrib3dv,
        glVertexAttrib3d, glVertexAttrib2sv, glVertexAttrib2s,
        glVertexAttrib2fv, glVertexAttrib2f, glVertexAttrib2dv,
        glVertexAttrib2d, glVertexAttrib1sv, glVertexAttrib1s,
        glVertexAttrib1fv, glVertexAttrib1f, glVertexAttrib1dv,
        glVertexAttrib1d, glTrackMatrix, glRequestResidentPrograms,
        glProgramParameters4fv, glProgramParameters4dv,
        glProgramParameter4fv, glProgramParameter4f, glProgramParameter4dv,
        glProgramParameter4d, glLoadProgram, glIsProgram,
        glGetVertexAttribiv, glGetVertexAttribfv, glGetVertexAttribdv,
        glGetVertexAttribPointerv, glGetTrackMatrixiv, glGetProgramiv,
        glGetProgramString, glGetProgramParameterfv,
        glGetProgramParameterdv, glGenPrograms, glExecuteProgram,
        glDeletePrograms, glBindProgram, glAreProgramsResident,
        gl_VERTEX_STATE_PROGRAM, gl_VERTEX_PROGRAM_TWO_SIDE,
        gl_VERTEX_PROGRAM_POINT_SIZE, gl_VERTEX_PROGRAM,
        gl_VERTEX_PROGRAM_BINDING, gl_VERTEX_ATTRIB_ARRAY9,
        gl_VERTEX_ATTRIB_ARRAY8, gl_VERTEX_ATTRIB_ARRAY7,
        gl_VERTEX_ATTRIB_ARRAY6, gl_VERTEX_ATTRIB_ARRAY5,
        gl_VERTEX_ATTRIB_ARRAY4, gl_VERTEX_ATTRIB_ARRAY3,
        gl_VERTEX_ATTRIB_ARRAY2, gl_VERTEX_ATTRIB_ARRAY1,
        gl_VERTEX_ATTRIB_ARRAY15, gl_VERTEX_ATTRIB_ARRAY14,
        gl_VERTEX_ATTRIB_ARRAY13, gl_VERTEX_ATTRIB_ARRAY12,
        gl_VERTEX_ATTRIB_ARRAY11, gl_VERTEX_ATTRIB_ARRAY10,
        gl_VERTEX_ATTRIB_ARRAY0, gl_TRANSPOSE, gl_TRACK_MATRIX_TRANSFORM,
        gl_TRACK_MATRIX, gl_PROGRAM_TARGET, gl_PROGRAM_STRING,
        gl_PROGRAM_RESIDENT, gl_PROGRAM_PARAMETER, gl_PROGRAM_LENGTH,
        gl_PROGRAM_ERROR_POSITION, gl_MODELVIEW_PROJECTION,
        gl_MAX_TRACK_MATRIX_STACK_DEPTH, gl_MAX_TRACK_MATRICES, gl_MATRIX7,
        gl_MATRIX6, gl_MATRIX5, gl_MATRIX4, gl_MATRIX3, gl_MATRIX2,
        gl_MATRIX1, gl_MATRIX0, gl_MAP2_VERTEX_ATTRIB9_4,
        gl_MAP2_VERTEX_ATTRIB8_4, gl_MAP2_VERTEX_ATTRIB7_4,
        gl_MAP2_VERTEX_ATTRIB6_4, gl_MAP2_VERTEX_ATTRIB5_4,
        gl_MAP2_VERTEX_ATTRIB4_4, gl_MAP2_VERTEX_ATTRIB3_4,
        gl_MAP2_VERTEX_ATTRIB2_4, gl_MAP2_VERTEX_ATTRIB1_4,
        gl_MAP2_VERTEX_ATTRIB15_4, gl_MAP2_VERTEX_ATTRIB14_4,
        gl_MAP2_VERTEX_ATTRIB13_4, gl_MAP2_VERTEX_ATTRIB12_4,
        gl_MAP2_VERTEX_ATTRIB11_4, gl_MAP2_VERTEX_ATTRIB10_4,
        gl_MAP2_VERTEX_ATTRIB0_4, gl_MAP1_VERTEX_ATTRIB9_4,
        gl_MAP1_VERTEX_ATTRIB8_4, gl_MAP1_VERTEX_ATTRIB7_4,
        gl_MAP1_VERTEX_ATTRIB6_4, gl_MAP1_VERTEX_ATTRIB5_4,
        gl_MAP1_VERTEX_ATTRIB4_4, gl_MAP1_VERTEX_ATTRIB3_4,
        gl_MAP1_VERTEX_ATTRIB2_4, gl_MAP1_VERTEX_ATTRIB1_4,
        gl_MAP1_VERTEX_ATTRIB15_4, gl_MAP1_VERTEX_ATTRIB14_4,
        gl_MAP1_VERTEX_ATTRIB13_4, gl_MAP1_VERTEX_ATTRIB12_4,
        gl_MAP1_VERTEX_ATTRIB11_4, gl_MAP1_VERTEX_ATTRIB10_4,
        gl_MAP1_VERTEX_ATTRIB0_4, gl_INVERSE_TRANSPOSE, gl_INVERSE,
        gl_IDENTITY, gl_CURRENT_MATRIX_STACK_DEPTH, gl_CURRENT_MATRIX,
        gl_CURRENT_ATTRIB, gl_ATTRIB_ARRAY_TYPE, gl_ATTRIB_ARRAY_STRIDE,
        gl_ATTRIB_ARRAY_SIZE, gl_ATTRIB_ARRAY_POINTER)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribs4ubv #-}
 
ptr_glVertexAttribs4ubv :: FunPtr a
ptr_glVertexAttribs4ubv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs4ubvNV"
 
glVertexAttribs4ubv :: GLuint -> GLsizei -> Ptr GLubyte -> IO ()
glVertexAttribs4ubv
  = dyn_glVertexAttribs4ubv ptr_glVertexAttribs4ubv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs4ubv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs4sv #-}
 
ptr_glVertexAttribs4sv :: FunPtr a
ptr_glVertexAttribs4sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs4svNV"
 
glVertexAttribs4sv :: GLuint -> GLsizei -> Ptr GLshort -> IO ()
glVertexAttribs4sv = dyn_glVertexAttribs4sv ptr_glVertexAttribs4sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs4sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs4fv #-}
 
ptr_glVertexAttribs4fv :: FunPtr a
ptr_glVertexAttribs4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs4fvNV"
 
glVertexAttribs4fv :: GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glVertexAttribs4fv = dyn_glVertexAttribs4fv ptr_glVertexAttribs4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs4dv #-}
 
ptr_glVertexAttribs4dv :: FunPtr a
ptr_glVertexAttribs4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs4dvNV"
 
glVertexAttribs4dv :: GLuint -> GLsizei -> Ptr GLdouble -> IO ()
glVertexAttribs4dv = dyn_glVertexAttribs4dv ptr_glVertexAttribs4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs3sv #-}
 
ptr_glVertexAttribs3sv :: FunPtr a
ptr_glVertexAttribs3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs3svNV"
 
glVertexAttribs3sv :: GLuint -> GLsizei -> Ptr GLshort -> IO ()
glVertexAttribs3sv = dyn_glVertexAttribs3sv ptr_glVertexAttribs3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs3fv #-}
 
ptr_glVertexAttribs3fv :: FunPtr a
ptr_glVertexAttribs3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs3fvNV"
 
glVertexAttribs3fv :: GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glVertexAttribs3fv = dyn_glVertexAttribs3fv ptr_glVertexAttribs3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs3dv #-}
 
ptr_glVertexAttribs3dv :: FunPtr a
ptr_glVertexAttribs3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs3dvNV"
 
glVertexAttribs3dv :: GLuint -> GLsizei -> Ptr GLdouble -> IO ()
glVertexAttribs3dv = dyn_glVertexAttribs3dv ptr_glVertexAttribs3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs2sv #-}
 
ptr_glVertexAttribs2sv :: FunPtr a
ptr_glVertexAttribs2sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs2svNV"
 
glVertexAttribs2sv :: GLuint -> GLsizei -> Ptr GLshort -> IO ()
glVertexAttribs2sv = dyn_glVertexAttribs2sv ptr_glVertexAttribs2sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs2sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs2fv #-}
 
ptr_glVertexAttribs2fv :: FunPtr a
ptr_glVertexAttribs2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs2fvNV"
 
glVertexAttribs2fv :: GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glVertexAttribs2fv = dyn_glVertexAttribs2fv ptr_glVertexAttribs2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs2dv #-}
 
ptr_glVertexAttribs2dv :: FunPtr a
ptr_glVertexAttribs2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs2dvNV"
 
glVertexAttribs2dv :: GLuint -> GLsizei -> Ptr GLdouble -> IO ()
glVertexAttribs2dv = dyn_glVertexAttribs2dv ptr_glVertexAttribs2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs1sv #-}
 
ptr_glVertexAttribs1sv :: FunPtr a
ptr_glVertexAttribs1sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs1svNV"
 
glVertexAttribs1sv :: GLuint -> GLsizei -> Ptr GLshort -> IO ()
glVertexAttribs1sv = dyn_glVertexAttribs1sv ptr_glVertexAttribs1sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs1sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs1fv #-}
 
ptr_glVertexAttribs1fv :: FunPtr a
ptr_glVertexAttribs1fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs1fvNV"
 
glVertexAttribs1fv :: GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glVertexAttribs1fv = dyn_glVertexAttribs1fv ptr_glVertexAttribs1fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs1fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs1dv #-}
 
ptr_glVertexAttribs1dv :: FunPtr a
ptr_glVertexAttribs1dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribs1dvNV"
 
glVertexAttribs1dv :: GLuint -> GLsizei -> Ptr GLdouble -> IO ()
glVertexAttribs1dv = dyn_glVertexAttribs1dv ptr_glVertexAttribs1dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs1dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribPointer #-}
 
ptr_glVertexAttribPointer :: FunPtr a
ptr_glVertexAttribPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttribPointerNV"
 
glVertexAttribPointer ::
                      GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glVertexAttribPointer
  = dyn_glVertexAttribPointer ptr_glVertexAttribPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribPointer
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4ubv #-}
 
ptr_glVertexAttrib4ubv :: FunPtr a
ptr_glVertexAttrib4ubv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib4ubvNV"
 
glVertexAttrib4ubv :: GLuint -> Ptr GLubyte -> IO ()
glVertexAttrib4ubv = dyn_glVertexAttrib4ubv ptr_glVertexAttrib4ubv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4ubv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4ub #-}
 
ptr_glVertexAttrib4ub :: FunPtr a
ptr_glVertexAttrib4ub
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib4ubNV"
 
glVertexAttrib4ub ::
                  GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO ()
glVertexAttrib4ub = dyn_glVertexAttrib4ub ptr_glVertexAttrib4ub
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4ub ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4sv #-}
 
ptr_glVertexAttrib4sv :: FunPtr a
ptr_glVertexAttrib4sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib4svNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib4sNV"
 
glVertexAttrib4s ::
                 GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()
glVertexAttrib4s = dyn_glVertexAttrib4s ptr_glVertexAttrib4s
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4fv #-}
 
ptr_glVertexAttrib4fv :: FunPtr a
ptr_glVertexAttrib4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib4fvNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib4fNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib4dvNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib4dNV"
 
glVertexAttrib4d ::
                 GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexAttrib4d = dyn_glVertexAttrib4d ptr_glVertexAttrib4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3sv #-}
 
ptr_glVertexAttrib3sv :: FunPtr a
ptr_glVertexAttrib3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glVertexAttrib3svNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib3sNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib3fvNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib3fNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib3dvNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib3dNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib2svNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib2sNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib2fvNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib2fNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib2dvNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib2dNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib1svNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib1sNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib1fvNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib1fNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib1dvNV"
 
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
        "GL_NV_vertex_program"
        "glVertexAttrib1dNV"
 
glVertexAttrib1d :: GLuint -> GLdouble -> IO ()
glVertexAttrib1d = dyn_glVertexAttrib1d ptr_glVertexAttrib1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glTrackMatrix #-}
 
ptr_glTrackMatrix :: FunPtr a
ptr_glTrackMatrix
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glTrackMatrixNV"
 
glTrackMatrix :: GLenum -> GLuint -> GLenum -> GLenum -> IO ()
glTrackMatrix = dyn_glTrackMatrix ptr_glTrackMatrix
 
foreign import CALLCONV unsafe "dynamic" dyn_glTrackMatrix ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glRequestResidentPrograms #-}
 
ptr_glRequestResidentPrograms :: FunPtr a
ptr_glRequestResidentPrograms
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glRequestResidentProgramsNV"
 
glRequestResidentPrograms :: GLsizei -> Ptr GLuint -> IO ()
glRequestResidentPrograms
  = dyn_glRequestResidentPrograms ptr_glRequestResidentPrograms
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glRequestResidentPrograms ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramParameters4fv #-}
 
ptr_glProgramParameters4fv :: FunPtr a
ptr_glProgramParameters4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glProgramParameters4fvNV"
 
glProgramParameters4fv ::
                       GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramParameters4fv
  = dyn_glProgramParameters4fv ptr_glProgramParameters4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramParameters4fv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramParameters4dv #-}
 
ptr_glProgramParameters4dv :: FunPtr a
ptr_glProgramParameters4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glProgramParameters4dvNV"
 
glProgramParameters4dv ::
                       GLenum -> GLuint -> GLsizei -> Ptr GLdouble -> IO ()
glProgramParameters4dv
  = dyn_glProgramParameters4dv ptr_glProgramParameters4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramParameters4dv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramParameter4fv #-}
 
ptr_glProgramParameter4fv :: FunPtr a
ptr_glProgramParameter4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glProgramParameter4fvNV"
 
glProgramParameter4fv :: GLenum -> GLuint -> Ptr GLfloat -> IO ()
glProgramParameter4fv
  = dyn_glProgramParameter4fv ptr_glProgramParameter4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramParameter4fv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramParameter4f #-}
 
ptr_glProgramParameter4f :: FunPtr a
ptr_glProgramParameter4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glProgramParameter4fNV"
 
glProgramParameter4f ::
                     GLenum ->
                       GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glProgramParameter4f
  = dyn_glProgramParameter4f ptr_glProgramParameter4f
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramParameter4f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramParameter4dv #-}
 
ptr_glProgramParameter4dv :: FunPtr a
ptr_glProgramParameter4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glProgramParameter4dvNV"
 
glProgramParameter4dv :: GLenum -> GLuint -> Ptr GLdouble -> IO ()
glProgramParameter4dv
  = dyn_glProgramParameter4dv ptr_glProgramParameter4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramParameter4dv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramParameter4d #-}
 
ptr_glProgramParameter4d :: FunPtr a
ptr_glProgramParameter4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glProgramParameter4dNV"
 
glProgramParameter4d ::
                     GLenum ->
                       GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glProgramParameter4d
  = dyn_glProgramParameter4d ptr_glProgramParameter4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramParameter4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glLoadProgram #-}
 
ptr_glLoadProgram :: FunPtr a
ptr_glLoadProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glLoadProgramNV"
 
glLoadProgram ::
              GLenum -> GLuint -> GLsizei -> Ptr GLubyte -> IO ()
glLoadProgram = dyn_glLoadProgram ptr_glLoadProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glLoadProgram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glIsProgram #-}
 
ptr_glIsProgram :: FunPtr a
ptr_glIsProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glIsProgramNV"
 
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
        "GL_NV_vertex_program"
        "glGetVertexAttribivNV"
 
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
        "GL_NV_vertex_program"
        "glGetVertexAttribfvNV"
 
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
        "GL_NV_vertex_program"
        "glGetVertexAttribdvNV"
 
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
        "GL_NV_vertex_program"
        "glGetVertexAttribPointervNV"
 
glGetVertexAttribPointerv ::
                          GLuint -> GLenum -> Ptr (Ptr a) -> IO ()
glGetVertexAttribPointerv
  = dyn_glGetVertexAttribPointerv ptr_glGetVertexAttribPointerv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVertexAttribPointerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glGetTrackMatrixiv #-}
 
ptr_glGetTrackMatrixiv :: FunPtr a
ptr_glGetTrackMatrixiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGetTrackMatrixivNV"
 
glGetTrackMatrixiv ::
                   GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ()
glGetTrackMatrixiv = dyn_glGetTrackMatrixiv ptr_glGetTrackMatrixiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTrackMatrixiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetProgramiv #-}
 
ptr_glGetProgramiv :: FunPtr a
ptr_glGetProgramiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGetProgramivNV"
 
glGetProgramiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetProgramiv = dyn_glGetProgramiv ptr_glGetProgramiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetProgramString #-}
 
ptr_glGetProgramString :: FunPtr a
ptr_glGetProgramString
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGetProgramStringNV"
 
glGetProgramString :: GLuint -> GLenum -> Ptr GLubyte -> IO ()
glGetProgramString = dyn_glGetProgramString ptr_glGetProgramString
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramString ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glGetProgramParameterfv #-}
 
ptr_glGetProgramParameterfv :: FunPtr a
ptr_glGetProgramParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGetProgramParameterfvNV"
 
glGetProgramParameterfv ::
                        GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetProgramParameterfv
  = dyn_glGetProgramParameterfv ptr_glGetProgramParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramParameterfv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetProgramParameterdv #-}
 
ptr_glGetProgramParameterdv :: FunPtr a
ptr_glGetProgramParameterdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGetProgramParameterdvNV"
 
glGetProgramParameterdv ::
                        GLenum -> GLuint -> GLenum -> Ptr GLdouble -> IO ()
glGetProgramParameterdv
  = dyn_glGetProgramParameterdv ptr_glGetProgramParameterdv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramParameterdv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGenPrograms #-}
 
ptr_glGenPrograms :: FunPtr a
ptr_glGenPrograms
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glGenProgramsNV"
 
glGenPrograms :: GLsizei -> Ptr GLuint -> IO ()
glGenPrograms = dyn_glGenPrograms ptr_glGenPrograms
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenPrograms ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glExecuteProgram #-}
 
ptr_glExecuteProgram :: FunPtr a
ptr_glExecuteProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glExecuteProgramNV"
 
glExecuteProgram :: GLenum -> GLuint -> Ptr GLfloat -> IO ()
glExecuteProgram = dyn_glExecuteProgram ptr_glExecuteProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glExecuteProgram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glDeletePrograms #-}
 
ptr_glDeletePrograms :: FunPtr a
ptr_glDeletePrograms
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glDeleteProgramsNV"
 
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
        "GL_NV_vertex_program"
        "glBindProgramNV"
 
glBindProgram :: GLenum -> GLuint -> IO ()
glBindProgram = dyn_glBindProgram ptr_glBindProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindProgram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glAreProgramsResident #-}
 
ptr_glAreProgramsResident :: FunPtr a
ptr_glAreProgramsResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program"
        "glAreProgramsResidentNV"
 
glAreProgramsResident ::
                      GLsizei -> Ptr GLuint -> Ptr GLboolean -> IO GLboolean
glAreProgramsResident
  = dyn_glAreProgramsResident ptr_glAreProgramsResident
 
foreign import CALLCONV unsafe "dynamic" dyn_glAreProgramsResident
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> Ptr GLboolean -> IO GLboolean)
 
gl_VERTEX_STATE_PROGRAM :: GLenum
gl_VERTEX_STATE_PROGRAM = 34337
 
gl_VERTEX_PROGRAM_TWO_SIDE :: GLenum
gl_VERTEX_PROGRAM_TWO_SIDE = 34371
 
gl_VERTEX_PROGRAM_POINT_SIZE :: GLenum
gl_VERTEX_PROGRAM_POINT_SIZE = 34370
 
gl_VERTEX_PROGRAM :: GLenum
gl_VERTEX_PROGRAM = 34336
 
gl_VERTEX_PROGRAM_BINDING :: GLenum
gl_VERTEX_PROGRAM_BINDING = 34378
 
gl_VERTEX_ATTRIB_ARRAY9 :: GLenum
gl_VERTEX_ATTRIB_ARRAY9 = 34393
 
gl_VERTEX_ATTRIB_ARRAY8 :: GLenum
gl_VERTEX_ATTRIB_ARRAY8 = 34392
 
gl_VERTEX_ATTRIB_ARRAY7 :: GLenum
gl_VERTEX_ATTRIB_ARRAY7 = 34391
 
gl_VERTEX_ATTRIB_ARRAY6 :: GLenum
gl_VERTEX_ATTRIB_ARRAY6 = 34390
 
gl_VERTEX_ATTRIB_ARRAY5 :: GLenum
gl_VERTEX_ATTRIB_ARRAY5 = 34389
 
gl_VERTEX_ATTRIB_ARRAY4 :: GLenum
gl_VERTEX_ATTRIB_ARRAY4 = 34388
 
gl_VERTEX_ATTRIB_ARRAY3 :: GLenum
gl_VERTEX_ATTRIB_ARRAY3 = 34387
 
gl_VERTEX_ATTRIB_ARRAY2 :: GLenum
gl_VERTEX_ATTRIB_ARRAY2 = 34386
 
gl_VERTEX_ATTRIB_ARRAY1 :: GLenum
gl_VERTEX_ATTRIB_ARRAY1 = 34385
 
gl_VERTEX_ATTRIB_ARRAY15 :: GLenum
gl_VERTEX_ATTRIB_ARRAY15 = 34399
 
gl_VERTEX_ATTRIB_ARRAY14 :: GLenum
gl_VERTEX_ATTRIB_ARRAY14 = 34398
 
gl_VERTEX_ATTRIB_ARRAY13 :: GLenum
gl_VERTEX_ATTRIB_ARRAY13 = 34397
 
gl_VERTEX_ATTRIB_ARRAY12 :: GLenum
gl_VERTEX_ATTRIB_ARRAY12 = 34396
 
gl_VERTEX_ATTRIB_ARRAY11 :: GLenum
gl_VERTEX_ATTRIB_ARRAY11 = 34395
 
gl_VERTEX_ATTRIB_ARRAY10 :: GLenum
gl_VERTEX_ATTRIB_ARRAY10 = 34394
 
gl_VERTEX_ATTRIB_ARRAY0 :: GLenum
gl_VERTEX_ATTRIB_ARRAY0 = 34384
 
gl_TRANSPOSE :: GLenum
gl_TRANSPOSE = 34348
 
gl_TRACK_MATRIX_TRANSFORM :: GLenum
gl_TRACK_MATRIX_TRANSFORM = 34377
 
gl_TRACK_MATRIX :: GLenum
gl_TRACK_MATRIX = 34376
 
gl_PROGRAM_TARGET :: GLenum
gl_PROGRAM_TARGET = 34374
 
gl_PROGRAM_STRING :: GLenum
gl_PROGRAM_STRING = 34344
 
gl_PROGRAM_RESIDENT :: GLenum
gl_PROGRAM_RESIDENT = 34375
 
gl_PROGRAM_PARAMETER :: GLenum
gl_PROGRAM_PARAMETER = 34372
 
gl_PROGRAM_LENGTH :: GLenum
gl_PROGRAM_LENGTH = 34343
 
gl_PROGRAM_ERROR_POSITION :: GLenum
gl_PROGRAM_ERROR_POSITION = 34379
 
gl_MODELVIEW_PROJECTION :: GLenum
gl_MODELVIEW_PROJECTION = 34345
 
gl_MAX_TRACK_MATRIX_STACK_DEPTH :: GLenum
gl_MAX_TRACK_MATRIX_STACK_DEPTH = 34350
 
gl_MAX_TRACK_MATRICES :: GLenum
gl_MAX_TRACK_MATRICES = 34351
 
gl_MATRIX7 :: GLenum
gl_MATRIX7 = 34359
 
gl_MATRIX6 :: GLenum
gl_MATRIX6 = 34358
 
gl_MATRIX5 :: GLenum
gl_MATRIX5 = 34357
 
gl_MATRIX4 :: GLenum
gl_MATRIX4 = 34356
 
gl_MATRIX3 :: GLenum
gl_MATRIX3 = 34355
 
gl_MATRIX2 :: GLenum
gl_MATRIX2 = 34354
 
gl_MATRIX1 :: GLenum
gl_MATRIX1 = 34353
 
gl_MATRIX0 :: GLenum
gl_MATRIX0 = 34352
 
gl_MAP2_VERTEX_ATTRIB9_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB9_4 = 34425
 
gl_MAP2_VERTEX_ATTRIB8_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB8_4 = 34424
 
gl_MAP2_VERTEX_ATTRIB7_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB7_4 = 34423
 
gl_MAP2_VERTEX_ATTRIB6_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB6_4 = 34422
 
gl_MAP2_VERTEX_ATTRIB5_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB5_4 = 34421
 
gl_MAP2_VERTEX_ATTRIB4_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB4_4 = 34420
 
gl_MAP2_VERTEX_ATTRIB3_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB3_4 = 34419
 
gl_MAP2_VERTEX_ATTRIB2_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB2_4 = 34418
 
gl_MAP2_VERTEX_ATTRIB1_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB1_4 = 34417
 
gl_MAP2_VERTEX_ATTRIB15_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB15_4 = 34431
 
gl_MAP2_VERTEX_ATTRIB14_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB14_4 = 34430
 
gl_MAP2_VERTEX_ATTRIB13_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB13_4 = 34429
 
gl_MAP2_VERTEX_ATTRIB12_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB12_4 = 34428
 
gl_MAP2_VERTEX_ATTRIB11_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB11_4 = 34427
 
gl_MAP2_VERTEX_ATTRIB10_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB10_4 = 34426
 
gl_MAP2_VERTEX_ATTRIB0_4 :: GLenum
gl_MAP2_VERTEX_ATTRIB0_4 = 34416
 
gl_MAP1_VERTEX_ATTRIB9_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB9_4 = 34409
 
gl_MAP1_VERTEX_ATTRIB8_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB8_4 = 34408
 
gl_MAP1_VERTEX_ATTRIB7_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB7_4 = 34407
 
gl_MAP1_VERTEX_ATTRIB6_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB6_4 = 34406
 
gl_MAP1_VERTEX_ATTRIB5_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB5_4 = 34405
 
gl_MAP1_VERTEX_ATTRIB4_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB4_4 = 34404
 
gl_MAP1_VERTEX_ATTRIB3_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB3_4 = 34403
 
gl_MAP1_VERTEX_ATTRIB2_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB2_4 = 34402
 
gl_MAP1_VERTEX_ATTRIB1_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB1_4 = 34401
 
gl_MAP1_VERTEX_ATTRIB15_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB15_4 = 34415
 
gl_MAP1_VERTEX_ATTRIB14_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB14_4 = 34414
 
gl_MAP1_VERTEX_ATTRIB13_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB13_4 = 34413
 
gl_MAP1_VERTEX_ATTRIB12_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB12_4 = 34412
 
gl_MAP1_VERTEX_ATTRIB11_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB11_4 = 34411
 
gl_MAP1_VERTEX_ATTRIB10_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB10_4 = 34410
 
gl_MAP1_VERTEX_ATTRIB0_4 :: GLenum
gl_MAP1_VERTEX_ATTRIB0_4 = 34400
 
gl_INVERSE_TRANSPOSE :: GLenum
gl_INVERSE_TRANSPOSE = 34349
 
gl_INVERSE :: GLenum
gl_INVERSE = 34347
 
gl_IDENTITY :: GLenum
gl_IDENTITY = 34346
 
gl_CURRENT_MATRIX_STACK_DEPTH :: GLenum
gl_CURRENT_MATRIX_STACK_DEPTH = 34368
 
gl_CURRENT_MATRIX :: GLenum
gl_CURRENT_MATRIX = 34369
 
gl_CURRENT_ATTRIB :: GLenum
gl_CURRENT_ATTRIB = 34342
 
gl_ATTRIB_ARRAY_TYPE :: GLenum
gl_ATTRIB_ARRAY_TYPE = 34341
 
gl_ATTRIB_ARRAY_STRIDE :: GLenum
gl_ATTRIB_ARRAY_STRIDE = 34340
 
gl_ATTRIB_ARRAY_SIZE :: GLenum
gl_ATTRIB_ARRAY_SIZE = 34339
 
gl_ATTRIB_ARRAY_POINTER :: GLenum
gl_ATTRIB_ARRAY_POINTER = 34373