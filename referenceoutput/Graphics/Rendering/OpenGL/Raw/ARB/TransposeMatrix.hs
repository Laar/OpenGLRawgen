{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TransposeMatrix
       (glMultTransposeMatrixfARB, glMultTransposeMatrixdARB,
        glLoadTransposeMatrixfARB, glLoadTransposeMatrixdARB,
        gl_TRANSPOSE_TEXTURE_MATRIX_ARB,
        gl_TRANSPOSE_PROJECTION_MATRIX_ARB,
        gl_TRANSPOSE_MODELVIEW_MATRIX_ARB, gl_TRANSPOSE_COLOR_MATRIX_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMultTransposeMatrixfARB #-}
 
ptr_glMultTransposeMatrixfARB :: FunPtr a
ptr_glMultTransposeMatrixfARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_transpose_matrix"
        "glMultTransposeMatrixfARB"
 
glMultTransposeMatrixfARB :: Ptr GLfloat -> IO ()
glMultTransposeMatrixfARB
  = dyn_glMultTransposeMatrixfARB ptr_glMultTransposeMatrixfARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultTransposeMatrixfARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultTransposeMatrixdARB #-}
 
ptr_glMultTransposeMatrixdARB :: FunPtr a
ptr_glMultTransposeMatrixdARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_transpose_matrix"
        "glMultTransposeMatrixdARB"
 
glMultTransposeMatrixdARB :: Ptr GLdouble -> IO ()
glMultTransposeMatrixdARB
  = dyn_glMultTransposeMatrixdARB ptr_glMultTransposeMatrixdARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultTransposeMatrixdARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glLoadTransposeMatrixfARB #-}
 
ptr_glLoadTransposeMatrixfARB :: FunPtr a
ptr_glLoadTransposeMatrixfARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_transpose_matrix"
        "glLoadTransposeMatrixfARB"
 
glLoadTransposeMatrixfARB :: Ptr GLfloat -> IO ()
glLoadTransposeMatrixfARB
  = dyn_glLoadTransposeMatrixfARB ptr_glLoadTransposeMatrixfARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glLoadTransposeMatrixfARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glLoadTransposeMatrixdARB #-}
 
ptr_glLoadTransposeMatrixdARB :: FunPtr a
ptr_glLoadTransposeMatrixdARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_transpose_matrix"
        "glLoadTransposeMatrixdARB"
 
glLoadTransposeMatrixdARB :: Ptr GLdouble -> IO ()
glLoadTransposeMatrixdARB
  = dyn_glLoadTransposeMatrixdARB ptr_glLoadTransposeMatrixdARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glLoadTransposeMatrixdARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
gl_TRANSPOSE_TEXTURE_MATRIX_ARB :: GLenum
gl_TRANSPOSE_TEXTURE_MATRIX_ARB = 34021
 
gl_TRANSPOSE_PROJECTION_MATRIX_ARB :: GLenum
gl_TRANSPOSE_PROJECTION_MATRIX_ARB = 34020
 
gl_TRANSPOSE_MODELVIEW_MATRIX_ARB :: GLenum
gl_TRANSPOSE_MODELVIEW_MATRIX_ARB = 34019
 
gl_TRANSPOSE_COLOR_MATRIX_ARB :: GLenum
gl_TRANSPOSE_COLOR_MATRIX_ARB = 34022