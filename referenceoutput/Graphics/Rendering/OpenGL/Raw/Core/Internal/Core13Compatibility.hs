{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core13Compatibility
       (glMultTransposeMatrixd, glMultTransposeMatrixf,
        glLoadTransposeMatrixd, glLoadTransposeMatrixf, glMultiTexCoord4sv,
        glMultiTexCoord4s, glMultiTexCoord4iv, glMultiTexCoord4i,
        glMultiTexCoord4fv, glMultiTexCoord4f, glMultiTexCoord4dv,
        glMultiTexCoord4d, glMultiTexCoord3sv, glMultiTexCoord3s,
        glMultiTexCoord3iv, glMultiTexCoord3i, glMultiTexCoord3fv,
        glMultiTexCoord3f, glMultiTexCoord3dv, glMultiTexCoord3d,
        glMultiTexCoord2sv, glMultiTexCoord2s, glMultiTexCoord2iv,
        glMultiTexCoord2i, glMultiTexCoord2fv, glMultiTexCoord2f,
        glMultiTexCoord2dv, glMultiTexCoord2d, glMultiTexCoord1sv,
        glMultiTexCoord1s, glMultiTexCoord1iv, glMultiTexCoord1i,
        glMultiTexCoord1fv, glMultiTexCoord1f, glMultiTexCoord1dv,
        glMultiTexCoord1d, glClientActiveTexture, gl_DOT3_RGBA,
        gl_DOT3_RGB, gl_PREVIOUS, gl_PRIMARY_COLOR, gl_CONSTANT,
        gl_SUBTRACT, gl_INTERPOLATE, gl_ADD_SIGNED, gl_RGB_SCALE,
        gl_OPERAND2_ALPHA, gl_OPERAND1_ALPHA, gl_OPERAND0_ALPHA,
        gl_OPERAND2_RGB, gl_OPERAND1_RGB, gl_OPERAND0_RGB,
        gl_SOURCE2_ALPHA, gl_SOURCE1_ALPHA, gl_SOURCE0_ALPHA,
        gl_SOURCE2_RGB, gl_SOURCE1_RGB, gl_SOURCE0_RGB, gl_COMBINE_ALPHA,
        gl_COMBINE_RGB, gl_COMBINE, gl_COMPRESSED_INTENSITY,
        gl_COMPRESSED_LUMINANCE_ALPHA, gl_COMPRESSED_LUMINANCE,
        gl_COMPRESSED_ALPHA, gl_REFLECTION_MAP, gl_NORMAL_MAP,
        gl_MULTISAMPLE_BIT, gl_TRANSPOSE_COLOR_MATRIX,
        gl_TRANSPOSE_TEXTURE_MATRIX, gl_TRANSPOSE_PROJECTION_MATRIX,
        gl_TRANSPOSE_MODELVIEW_MATRIX, gl_MAX_TEXTURE_UNITS,
        gl_CLIENT_ACTIVE_TEXTURE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMultTransposeMatrixd #-}
 
ptr_glMultTransposeMatrixd :: FunPtr a
ptr_glMultTransposeMatrixd
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultTransposeMatrixd"
 
glMultTransposeMatrixd :: Ptr GLdouble -> IO ()
glMultTransposeMatrixd
  = dyn_glMultTransposeMatrixd ptr_glMultTransposeMatrixd
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultTransposeMatrixd
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultTransposeMatrixf #-}
 
ptr_glMultTransposeMatrixf :: FunPtr a
ptr_glMultTransposeMatrixf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultTransposeMatrixf"
 
glMultTransposeMatrixf :: Ptr GLfloat -> IO ()
glMultTransposeMatrixf
  = dyn_glMultTransposeMatrixf ptr_glMultTransposeMatrixf
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultTransposeMatrixf
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glLoadTransposeMatrixd #-}
 
ptr_glLoadTransposeMatrixd :: FunPtr a
ptr_glLoadTransposeMatrixd
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glLoadTransposeMatrixd"
 
glLoadTransposeMatrixd :: Ptr GLdouble -> IO ()
glLoadTransposeMatrixd
  = dyn_glLoadTransposeMatrixd ptr_glLoadTransposeMatrixd
 
foreign import CALLCONV unsafe "dynamic" dyn_glLoadTransposeMatrixd
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glLoadTransposeMatrixf #-}
 
ptr_glLoadTransposeMatrixf :: FunPtr a
ptr_glLoadTransposeMatrixf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glLoadTransposeMatrixf"
 
glLoadTransposeMatrixf :: Ptr GLfloat -> IO ()
glLoadTransposeMatrixf
  = dyn_glLoadTransposeMatrixf ptr_glLoadTransposeMatrixf
 
foreign import CALLCONV unsafe "dynamic" dyn_glLoadTransposeMatrixf
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4sv #-}
 
ptr_glMultiTexCoord4sv :: FunPtr a
ptr_glMultiTexCoord4sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord4sv"
 
glMultiTexCoord4sv :: GLenum -> Ptr GLshort -> IO ()
glMultiTexCoord4sv = dyn_glMultiTexCoord4sv ptr_glMultiTexCoord4sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4s #-}
 
ptr_glMultiTexCoord4s :: FunPtr a
ptr_glMultiTexCoord4s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord4s"
 
glMultiTexCoord4s ::
                  GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()
glMultiTexCoord4s = dyn_glMultiTexCoord4s ptr_glMultiTexCoord4s
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4iv #-}
 
ptr_glMultiTexCoord4iv :: FunPtr a
ptr_glMultiTexCoord4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord4iv"
 
glMultiTexCoord4iv :: GLenum -> Ptr GLint -> IO ()
glMultiTexCoord4iv = dyn_glMultiTexCoord4iv ptr_glMultiTexCoord4iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4i #-}
 
ptr_glMultiTexCoord4i :: FunPtr a
ptr_glMultiTexCoord4i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord4i"
 
glMultiTexCoord4i ::
                  GLenum -> GLint -> GLint -> GLint -> GLint -> IO ()
glMultiTexCoord4i = dyn_glMultiTexCoord4i ptr_glMultiTexCoord4i
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4fv #-}
 
ptr_glMultiTexCoord4fv :: FunPtr a
ptr_glMultiTexCoord4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord4fv"
 
glMultiTexCoord4fv :: GLenum -> Ptr GLfloat -> IO ()
glMultiTexCoord4fv = dyn_glMultiTexCoord4fv ptr_glMultiTexCoord4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4f #-}
 
ptr_glMultiTexCoord4f :: FunPtr a
ptr_glMultiTexCoord4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord4f"
 
glMultiTexCoord4f ::
                  GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glMultiTexCoord4f = dyn_glMultiTexCoord4f ptr_glMultiTexCoord4f
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4dv #-}
 
ptr_glMultiTexCoord4dv :: FunPtr a
ptr_glMultiTexCoord4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord4dv"
 
glMultiTexCoord4dv :: GLenum -> Ptr GLdouble -> IO ()
glMultiTexCoord4dv = dyn_glMultiTexCoord4dv ptr_glMultiTexCoord4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4d #-}
 
ptr_glMultiTexCoord4d :: FunPtr a
ptr_glMultiTexCoord4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord4d"
 
glMultiTexCoord4d ::
                  GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glMultiTexCoord4d = dyn_glMultiTexCoord4d ptr_glMultiTexCoord4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3sv #-}
 
ptr_glMultiTexCoord3sv :: FunPtr a
ptr_glMultiTexCoord3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord3sv"
 
glMultiTexCoord3sv :: GLenum -> Ptr GLshort -> IO ()
glMultiTexCoord3sv = dyn_glMultiTexCoord3sv ptr_glMultiTexCoord3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3s #-}
 
ptr_glMultiTexCoord3s :: FunPtr a
ptr_glMultiTexCoord3s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord3s"
 
glMultiTexCoord3s ::
                  GLenum -> GLshort -> GLshort -> GLshort -> IO ()
glMultiTexCoord3s = dyn_glMultiTexCoord3s ptr_glMultiTexCoord3s
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3iv #-}
 
ptr_glMultiTexCoord3iv :: FunPtr a
ptr_glMultiTexCoord3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord3iv"
 
glMultiTexCoord3iv :: GLenum -> Ptr GLint -> IO ()
glMultiTexCoord3iv = dyn_glMultiTexCoord3iv ptr_glMultiTexCoord3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3i #-}
 
ptr_glMultiTexCoord3i :: FunPtr a
ptr_glMultiTexCoord3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord3i"
 
glMultiTexCoord3i :: GLenum -> GLint -> GLint -> GLint -> IO ()
glMultiTexCoord3i = dyn_glMultiTexCoord3i ptr_glMultiTexCoord3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3fv #-}
 
ptr_glMultiTexCoord3fv :: FunPtr a
ptr_glMultiTexCoord3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord3fv"
 
glMultiTexCoord3fv :: GLenum -> Ptr GLfloat -> IO ()
glMultiTexCoord3fv = dyn_glMultiTexCoord3fv ptr_glMultiTexCoord3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3f #-}
 
ptr_glMultiTexCoord3f :: FunPtr a
ptr_glMultiTexCoord3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord3f"
 
glMultiTexCoord3f ::
                  GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ()
glMultiTexCoord3f = dyn_glMultiTexCoord3f ptr_glMultiTexCoord3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3dv #-}
 
ptr_glMultiTexCoord3dv :: FunPtr a
ptr_glMultiTexCoord3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord3dv"
 
glMultiTexCoord3dv :: GLenum -> Ptr GLdouble -> IO ()
glMultiTexCoord3dv = dyn_glMultiTexCoord3dv ptr_glMultiTexCoord3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3d #-}
 
ptr_glMultiTexCoord3d :: FunPtr a
ptr_glMultiTexCoord3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord3d"
 
glMultiTexCoord3d ::
                  GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ()
glMultiTexCoord3d = dyn_glMultiTexCoord3d ptr_glMultiTexCoord3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2sv #-}
 
ptr_glMultiTexCoord2sv :: FunPtr a
ptr_glMultiTexCoord2sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord2sv"
 
glMultiTexCoord2sv :: GLenum -> Ptr GLshort -> IO ()
glMultiTexCoord2sv = dyn_glMultiTexCoord2sv ptr_glMultiTexCoord2sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2s #-}
 
ptr_glMultiTexCoord2s :: FunPtr a
ptr_glMultiTexCoord2s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord2s"
 
glMultiTexCoord2s :: GLenum -> GLshort -> GLshort -> IO ()
glMultiTexCoord2s = dyn_glMultiTexCoord2s ptr_glMultiTexCoord2s
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2iv #-}
 
ptr_glMultiTexCoord2iv :: FunPtr a
ptr_glMultiTexCoord2iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord2iv"
 
glMultiTexCoord2iv :: GLenum -> Ptr GLint -> IO ()
glMultiTexCoord2iv = dyn_glMultiTexCoord2iv ptr_glMultiTexCoord2iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2i #-}
 
ptr_glMultiTexCoord2i :: FunPtr a
ptr_glMultiTexCoord2i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord2i"
 
glMultiTexCoord2i :: GLenum -> GLint -> GLint -> IO ()
glMultiTexCoord2i = dyn_glMultiTexCoord2i ptr_glMultiTexCoord2i
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2fv #-}
 
ptr_glMultiTexCoord2fv :: FunPtr a
ptr_glMultiTexCoord2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord2fv"
 
glMultiTexCoord2fv :: GLenum -> Ptr GLfloat -> IO ()
glMultiTexCoord2fv = dyn_glMultiTexCoord2fv ptr_glMultiTexCoord2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2f #-}
 
ptr_glMultiTexCoord2f :: FunPtr a
ptr_glMultiTexCoord2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord2f"
 
glMultiTexCoord2f :: GLenum -> GLfloat -> GLfloat -> IO ()
glMultiTexCoord2f = dyn_glMultiTexCoord2f ptr_glMultiTexCoord2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2dv #-}
 
ptr_glMultiTexCoord2dv :: FunPtr a
ptr_glMultiTexCoord2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord2dv"
 
glMultiTexCoord2dv :: GLenum -> Ptr GLdouble -> IO ()
glMultiTexCoord2dv = dyn_glMultiTexCoord2dv ptr_glMultiTexCoord2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2d #-}
 
ptr_glMultiTexCoord2d :: FunPtr a
ptr_glMultiTexCoord2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord2d"
 
glMultiTexCoord2d :: GLenum -> GLdouble -> GLdouble -> IO ()
glMultiTexCoord2d = dyn_glMultiTexCoord2d ptr_glMultiTexCoord2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1sv #-}
 
ptr_glMultiTexCoord1sv :: FunPtr a
ptr_glMultiTexCoord1sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord1sv"
 
glMultiTexCoord1sv :: GLenum -> Ptr GLshort -> IO ()
glMultiTexCoord1sv = dyn_glMultiTexCoord1sv ptr_glMultiTexCoord1sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1s #-}
 
ptr_glMultiTexCoord1s :: FunPtr a
ptr_glMultiTexCoord1s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord1s"
 
glMultiTexCoord1s :: GLenum -> GLshort -> IO ()
glMultiTexCoord1s = dyn_glMultiTexCoord1s ptr_glMultiTexCoord1s
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1iv #-}
 
ptr_glMultiTexCoord1iv :: FunPtr a
ptr_glMultiTexCoord1iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord1iv"
 
glMultiTexCoord1iv :: GLenum -> Ptr GLint -> IO ()
glMultiTexCoord1iv = dyn_glMultiTexCoord1iv ptr_glMultiTexCoord1iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1i #-}
 
ptr_glMultiTexCoord1i :: FunPtr a
ptr_glMultiTexCoord1i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord1i"
 
glMultiTexCoord1i :: GLenum -> GLint -> IO ()
glMultiTexCoord1i = dyn_glMultiTexCoord1i ptr_glMultiTexCoord1i
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1fv #-}
 
ptr_glMultiTexCoord1fv :: FunPtr a
ptr_glMultiTexCoord1fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord1fv"
 
glMultiTexCoord1fv :: GLenum -> Ptr GLfloat -> IO ()
glMultiTexCoord1fv = dyn_glMultiTexCoord1fv ptr_glMultiTexCoord1fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1f #-}
 
ptr_glMultiTexCoord1f :: FunPtr a
ptr_glMultiTexCoord1f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord1f"
 
glMultiTexCoord1f :: GLenum -> GLfloat -> IO ()
glMultiTexCoord1f = dyn_glMultiTexCoord1f ptr_glMultiTexCoord1f
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1dv #-}
 
ptr_glMultiTexCoord1dv :: FunPtr a
ptr_glMultiTexCoord1dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord1dv"
 
glMultiTexCoord1dv :: GLenum -> Ptr GLdouble -> IO ()
glMultiTexCoord1dv = dyn_glMultiTexCoord1dv ptr_glMultiTexCoord1dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1d #-}
 
ptr_glMultiTexCoord1d :: FunPtr a
ptr_glMultiTexCoord1d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glMultiTexCoord1d"
 
glMultiTexCoord1d :: GLenum -> GLdouble -> IO ()
glMultiTexCoord1d = dyn_glMultiTexCoord1d ptr_glMultiTexCoord1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glClientActiveTexture #-}
 
ptr_glClientActiveTexture :: FunPtr a
ptr_glClientActiveTexture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3_DEPRECATED"
        "glClientActiveTexture"
 
glClientActiveTexture :: GLenum -> IO ()
glClientActiveTexture
  = dyn_glClientActiveTexture ptr_glClientActiveTexture
 
foreign import CALLCONV unsafe "dynamic" dyn_glClientActiveTexture
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_DOT3_RGBA :: GLenum
gl_DOT3_RGBA = 34479
 
gl_DOT3_RGB :: GLenum
gl_DOT3_RGB = 34478
 
gl_PREVIOUS :: GLenum
gl_PREVIOUS = 34168
 
gl_PRIMARY_COLOR :: GLenum
gl_PRIMARY_COLOR = 34167
 
gl_CONSTANT :: GLenum
gl_CONSTANT = 34166
 
gl_SUBTRACT :: GLenum
gl_SUBTRACT = 34023
 
gl_INTERPOLATE :: GLenum
gl_INTERPOLATE = 34165
 
gl_ADD_SIGNED :: GLenum
gl_ADD_SIGNED = 34164
 
gl_RGB_SCALE :: GLenum
gl_RGB_SCALE = 34163
 
gl_OPERAND2_ALPHA :: GLenum
gl_OPERAND2_ALPHA = 34202
 
gl_OPERAND1_ALPHA :: GLenum
gl_OPERAND1_ALPHA = 34201
 
gl_OPERAND0_ALPHA :: GLenum
gl_OPERAND0_ALPHA = 34200
 
gl_OPERAND2_RGB :: GLenum
gl_OPERAND2_RGB = 34194
 
gl_OPERAND1_RGB :: GLenum
gl_OPERAND1_RGB = 34193
 
gl_OPERAND0_RGB :: GLenum
gl_OPERAND0_RGB = 34192
 
gl_SOURCE2_ALPHA :: GLenum
gl_SOURCE2_ALPHA = 34186
 
gl_SOURCE1_ALPHA :: GLenum
gl_SOURCE1_ALPHA = 34185
 
gl_SOURCE0_ALPHA :: GLenum
gl_SOURCE0_ALPHA = 34184
 
gl_SOURCE2_RGB :: GLenum
gl_SOURCE2_RGB = 34178
 
gl_SOURCE1_RGB :: GLenum
gl_SOURCE1_RGB = 34177
 
gl_SOURCE0_RGB :: GLenum
gl_SOURCE0_RGB = 34176
 
gl_COMBINE_ALPHA :: GLenum
gl_COMBINE_ALPHA = 34162
 
gl_COMBINE_RGB :: GLenum
gl_COMBINE_RGB = 34161
 
gl_COMBINE :: GLenum
gl_COMBINE = 34160
 
gl_COMPRESSED_INTENSITY :: GLenum
gl_COMPRESSED_INTENSITY = 34028
 
gl_COMPRESSED_LUMINANCE_ALPHA :: GLenum
gl_COMPRESSED_LUMINANCE_ALPHA = 34027
 
gl_COMPRESSED_LUMINANCE :: GLenum
gl_COMPRESSED_LUMINANCE = 34026
 
gl_COMPRESSED_ALPHA :: GLenum
gl_COMPRESSED_ALPHA = 34025
 
gl_REFLECTION_MAP :: GLenum
gl_REFLECTION_MAP = 34066
 
gl_NORMAL_MAP :: GLenum
gl_NORMAL_MAP = 34065
 
gl_MULTISAMPLE_BIT :: GLbitfield
gl_MULTISAMPLE_BIT = 536870912
 
gl_TRANSPOSE_COLOR_MATRIX :: GLenum
gl_TRANSPOSE_COLOR_MATRIX = 34022
 
gl_TRANSPOSE_TEXTURE_MATRIX :: GLenum
gl_TRANSPOSE_TEXTURE_MATRIX = 34021
 
gl_TRANSPOSE_PROJECTION_MATRIX :: GLenum
gl_TRANSPOSE_PROJECTION_MATRIX = 34020
 
gl_TRANSPOSE_MODELVIEW_MATRIX :: GLenum
gl_TRANSPOSE_MODELVIEW_MATRIX = 34019
 
gl_MAX_TEXTURE_UNITS :: GLenum
gl_MAX_TEXTURE_UNITS = 34018
 
gl_CLIENT_ACTIVE_TEXTURE :: GLenum
gl_CLIENT_ACTIVE_TEXTURE = 34017