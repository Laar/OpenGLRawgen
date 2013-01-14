{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.MatrixPalette
       (glMatrixIndexusvARB, glMatrixIndexuivARB, glMatrixIndexubvARB,
        glMatrixIndexPointerARB, glCurrentPaletteMatrixARB,
        gl_MAX_PALETTE_MATRICES_ARB, gl_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB,
        gl_MATRIX_PALETTE_ARB, gl_MATRIX_INDEX_ARRAY_TYPE_ARB,
        gl_MATRIX_INDEX_ARRAY_STRIDE_ARB, gl_MATRIX_INDEX_ARRAY_SIZE_ARB,
        gl_MATRIX_INDEX_ARRAY_POINTER_ARB, gl_MATRIX_INDEX_ARRAY_ARB,
        gl_CURRENT_PALETTE_MATRIX_ARB, gl_CURRENT_MATRIX_INDEX_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMatrixIndexusvARB #-}
 
ptr_glMatrixIndexusvARB :: FunPtr a
ptr_glMatrixIndexusvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_matrix_palette"
        "glMatrixIndexusvARB"
 
glMatrixIndexusvARB :: GLint -> Ptr GLushort -> IO ()
glMatrixIndexusvARB
  = dyn_glMatrixIndexusvARB ptr_glMatrixIndexusvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixIndexusvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glMatrixIndexuivARB #-}
 
ptr_glMatrixIndexuivARB :: FunPtr a
ptr_glMatrixIndexuivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_matrix_palette"
        "glMatrixIndexuivARB"
 
glMatrixIndexuivARB :: GLint -> Ptr GLuint -> IO ()
glMatrixIndexuivARB
  = dyn_glMatrixIndexuivARB ptr_glMatrixIndexuivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixIndexuivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glMatrixIndexubvARB #-}
 
ptr_glMatrixIndexubvARB :: FunPtr a
ptr_glMatrixIndexubvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_matrix_palette"
        "glMatrixIndexubvARB"
 
glMatrixIndexubvARB :: GLint -> Ptr GLubyte -> IO ()
glMatrixIndexubvARB
  = dyn_glMatrixIndexubvARB ptr_glMatrixIndexubvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixIndexubvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glMatrixIndexPointerARB #-}
 
ptr_glMatrixIndexPointerARB :: FunPtr a
ptr_glMatrixIndexPointerARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_matrix_palette"
        "glMatrixIndexPointerARB"
 
glMatrixIndexPointerARB ::
                        GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glMatrixIndexPointerARB
  = dyn_glMatrixIndexPointerARB ptr_glMatrixIndexPointerARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixIndexPointerARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCurrentPaletteMatrixARB #-}
 
ptr_glCurrentPaletteMatrixARB :: FunPtr a
ptr_glCurrentPaletteMatrixARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_matrix_palette"
        "glCurrentPaletteMatrixARB"
 
glCurrentPaletteMatrixARB :: GLint -> IO ()
glCurrentPaletteMatrixARB
  = dyn_glCurrentPaletteMatrixARB ptr_glCurrentPaletteMatrixARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCurrentPaletteMatrixARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> IO ())
 
gl_MAX_PALETTE_MATRICES_ARB :: GLenum
gl_MAX_PALETTE_MATRICES_ARB = 34882
 
gl_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB :: GLenum
gl_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB = 34881
 
gl_MATRIX_PALETTE_ARB :: GLenum
gl_MATRIX_PALETTE_ARB = 34880
 
gl_MATRIX_INDEX_ARRAY_TYPE_ARB :: GLenum
gl_MATRIX_INDEX_ARRAY_TYPE_ARB = 34887
 
gl_MATRIX_INDEX_ARRAY_STRIDE_ARB :: GLenum
gl_MATRIX_INDEX_ARRAY_STRIDE_ARB = 34888
 
gl_MATRIX_INDEX_ARRAY_SIZE_ARB :: GLenum
gl_MATRIX_INDEX_ARRAY_SIZE_ARB = 34886
 
gl_MATRIX_INDEX_ARRAY_POINTER_ARB :: GLenum
gl_MATRIX_INDEX_ARRAY_POINTER_ARB = 34889
 
gl_MATRIX_INDEX_ARRAY_ARB :: GLenum
gl_MATRIX_INDEX_ARRAY_ARB = 34884
 
gl_CURRENT_PALETTE_MATRIX_ARB :: GLenum
gl_CURRENT_PALETTE_MATRIX_ARB = 34883
 
gl_CURRENT_MATRIX_INDEX_ARB :: GLenum
gl_CURRENT_MATRIX_INDEX_ARB = 34885