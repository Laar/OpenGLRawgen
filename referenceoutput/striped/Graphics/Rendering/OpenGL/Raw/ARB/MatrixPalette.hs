{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.MatrixPalette
       (glMatrixIndexusv, glMatrixIndexuiv, glMatrixIndexubv,
        glMatrixIndexPointer, glCurrentPaletteMatrix,
        gl_MAX_PALETTE_MATRICES, gl_MAX_MATRIX_PALETTE_STACK_DEPTH,
        gl_MATRIX_PALETTE, gl_MATRIX_INDEX_ARRAY_TYPE,
        gl_MATRIX_INDEX_ARRAY_STRIDE, gl_MATRIX_INDEX_ARRAY_SIZE,
        gl_MATRIX_INDEX_ARRAY_POINTER, gl_MATRIX_INDEX_ARRAY,
        gl_CURRENT_PALETTE_MATRIX, gl_CURRENT_MATRIX_INDEX)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMatrixIndexusv #-}
 
ptr_glMatrixIndexusv :: FunPtr a
ptr_glMatrixIndexusv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_matrix_palette"
        "glMatrixIndexusvARB"
 
glMatrixIndexusv :: GLint -> Ptr GLushort -> IO ()
glMatrixIndexusv = dyn_glMatrixIndexusv ptr_glMatrixIndexusv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixIndexusv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glMatrixIndexuiv #-}
 
ptr_glMatrixIndexuiv :: FunPtr a
ptr_glMatrixIndexuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_matrix_palette"
        "glMatrixIndexuivARB"
 
glMatrixIndexuiv :: GLint -> Ptr GLuint -> IO ()
glMatrixIndexuiv = dyn_glMatrixIndexuiv ptr_glMatrixIndexuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixIndexuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glMatrixIndexubv #-}
 
ptr_glMatrixIndexubv :: FunPtr a
ptr_glMatrixIndexubv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_matrix_palette"
        "glMatrixIndexubvARB"
 
glMatrixIndexubv :: GLint -> Ptr GLubyte -> IO ()
glMatrixIndexubv = dyn_glMatrixIndexubv ptr_glMatrixIndexubv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixIndexubv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glMatrixIndexPointer #-}
 
ptr_glMatrixIndexPointer :: FunPtr a
ptr_glMatrixIndexPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_matrix_palette"
        "glMatrixIndexPointerARB"
 
glMatrixIndexPointer ::
                     GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glMatrixIndexPointer
  = dyn_glMatrixIndexPointer ptr_glMatrixIndexPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixIndexPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCurrentPaletteMatrix #-}
 
ptr_glCurrentPaletteMatrix :: FunPtr a
ptr_glCurrentPaletteMatrix
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_matrix_palette"
        "glCurrentPaletteMatrixARB"
 
glCurrentPaletteMatrix :: GLint -> IO ()
glCurrentPaletteMatrix
  = dyn_glCurrentPaletteMatrix ptr_glCurrentPaletteMatrix
 
foreign import CALLCONV unsafe "dynamic" dyn_glCurrentPaletteMatrix
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> IO ())
 
gl_MAX_PALETTE_MATRICES :: GLenum
gl_MAX_PALETTE_MATRICES = 34882
 
gl_MAX_MATRIX_PALETTE_STACK_DEPTH :: GLenum
gl_MAX_MATRIX_PALETTE_STACK_DEPTH = 34881
 
gl_MATRIX_PALETTE :: GLenum
gl_MATRIX_PALETTE = 34880
 
gl_MATRIX_INDEX_ARRAY_TYPE :: GLenum
gl_MATRIX_INDEX_ARRAY_TYPE = 34887
 
gl_MATRIX_INDEX_ARRAY_STRIDE :: GLenum
gl_MATRIX_INDEX_ARRAY_STRIDE = 34888
 
gl_MATRIX_INDEX_ARRAY_SIZE :: GLenum
gl_MATRIX_INDEX_ARRAY_SIZE = 34886
 
gl_MATRIX_INDEX_ARRAY_POINTER :: GLenum
gl_MATRIX_INDEX_ARRAY_POINTER = 34889
 
gl_MATRIX_INDEX_ARRAY :: GLenum
gl_MATRIX_INDEX_ARRAY = 34884
 
gl_CURRENT_PALETTE_MATRIX :: GLenum
gl_CURRENT_PALETTE_MATRIX = 34883
 
gl_CURRENT_MATRIX_INDEX :: GLenum
gl_CURRENT_MATRIX_INDEX = 34885