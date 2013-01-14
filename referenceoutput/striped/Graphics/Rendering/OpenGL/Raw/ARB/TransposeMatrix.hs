{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TransposeMatrix
       (glMultTransposeMatrixf, glMultTransposeMatrixd,
        glLoadTransposeMatrixf, glLoadTransposeMatrixd,
        gl_TRANSPOSE_TEXTURE_MATRIX, gl_TRANSPOSE_PROJECTION_MATRIX,
        gl_TRANSPOSE_MODELVIEW_MATRIX, gl_TRANSPOSE_COLOR_MATRIX)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMultTransposeMatrixf #-}
 
ptr_glMultTransposeMatrixf :: FunPtr a
ptr_glMultTransposeMatrixf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_transpose_matrix"
        "glMultTransposeMatrixfARB"
 
glMultTransposeMatrixf :: Ptr GLfloat -> IO ()
glMultTransposeMatrixf
  = dyn_glMultTransposeMatrixf ptr_glMultTransposeMatrixf
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultTransposeMatrixf
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultTransposeMatrixd #-}
 
ptr_glMultTransposeMatrixd :: FunPtr a
ptr_glMultTransposeMatrixd
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_transpose_matrix"
        "glMultTransposeMatrixdARB"
 
glMultTransposeMatrixd :: Ptr GLdouble -> IO ()
glMultTransposeMatrixd
  = dyn_glMultTransposeMatrixd ptr_glMultTransposeMatrixd
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultTransposeMatrixd
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glLoadTransposeMatrixf #-}
 
ptr_glLoadTransposeMatrixf :: FunPtr a
ptr_glLoadTransposeMatrixf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_transpose_matrix"
        "glLoadTransposeMatrixfARB"
 
glLoadTransposeMatrixf :: Ptr GLfloat -> IO ()
glLoadTransposeMatrixf
  = dyn_glLoadTransposeMatrixf ptr_glLoadTransposeMatrixf
 
foreign import CALLCONV unsafe "dynamic" dyn_glLoadTransposeMatrixf
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glLoadTransposeMatrixd #-}
 
ptr_glLoadTransposeMatrixd :: FunPtr a
ptr_glLoadTransposeMatrixd
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_transpose_matrix"
        "glLoadTransposeMatrixdARB"
 
glLoadTransposeMatrixd :: Ptr GLdouble -> IO ()
glLoadTransposeMatrixd
  = dyn_glLoadTransposeMatrixd ptr_glLoadTransposeMatrixd
 
foreign import CALLCONV unsafe "dynamic" dyn_glLoadTransposeMatrixd
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
gl_TRANSPOSE_TEXTURE_MATRIX :: GLenum
gl_TRANSPOSE_TEXTURE_MATRIX = 34021
 
gl_TRANSPOSE_PROJECTION_MATRIX :: GLenum
gl_TRANSPOSE_PROJECTION_MATRIX = 34020
 
gl_TRANSPOSE_MODELVIEW_MATRIX :: GLenum
gl_TRANSPOSE_MODELVIEW_MATRIX = 34019
 
gl_TRANSPOSE_COLOR_MATRIX :: GLenum
gl_TRANSPOSE_COLOR_MATRIX = 34022