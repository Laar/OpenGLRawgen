{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.WindowPos
       (glWindowPos3svARB, glWindowPos3sARB, glWindowPos3ivARB,
        glWindowPos3iARB, glWindowPos3fvARB, glWindowPos3fARB,
        glWindowPos3dvARB, glWindowPos3dARB, glWindowPos2svARB,
        glWindowPos2sARB, glWindowPos2ivARB, glWindowPos2iARB,
        glWindowPos2fvARB, glWindowPos2fARB, glWindowPos2dvARB,
        glWindowPos2dARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glWindowPos3svARB #-}
 
ptr_glWindowPos3svARB :: FunPtr a
ptr_glWindowPos3svARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3svARB"
 
glWindowPos3svARB :: Ptr GLshort -> IO ()
glWindowPos3svARB = dyn_glWindowPos3svARB ptr_glWindowPos3svARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3svARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glWindowPos3sARB #-}
 
ptr_glWindowPos3sARB :: FunPtr a
ptr_glWindowPos3sARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3sARB"
 
glWindowPos3sARB :: GLshort -> GLshort -> GLshort -> IO ()
glWindowPos3sARB = dyn_glWindowPos3sARB ptr_glWindowPos3sARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3sARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glWindowPos3ivARB #-}
 
ptr_glWindowPos3ivARB :: FunPtr a
ptr_glWindowPos3ivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3ivARB"
 
glWindowPos3ivARB :: Ptr GLint -> IO ()
glWindowPos3ivARB = dyn_glWindowPos3ivARB ptr_glWindowPos3ivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3ivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glWindowPos3iARB #-}
 
ptr_glWindowPos3iARB :: FunPtr a
ptr_glWindowPos3iARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3iARB"
 
glWindowPos3iARB :: GLint -> GLint -> GLint -> IO ()
glWindowPos3iARB = dyn_glWindowPos3iARB ptr_glWindowPos3iARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3iARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glWindowPos3fvARB #-}
 
ptr_glWindowPos3fvARB :: FunPtr a
ptr_glWindowPos3fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3fvARB"
 
glWindowPos3fvARB :: Ptr GLfloat -> IO ()
glWindowPos3fvARB = dyn_glWindowPos3fvARB ptr_glWindowPos3fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3fvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glWindowPos3fARB #-}
 
ptr_glWindowPos3fARB :: FunPtr a
ptr_glWindowPos3fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3fARB"
 
glWindowPos3fARB :: GLfloat -> GLfloat -> GLfloat -> IO ()
glWindowPos3fARB = dyn_glWindowPos3fARB ptr_glWindowPos3fARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glWindowPos3dvARB #-}
 
ptr_glWindowPos3dvARB :: FunPtr a
ptr_glWindowPos3dvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3dvARB"
 
glWindowPos3dvARB :: Ptr GLdouble -> IO ()
glWindowPos3dvARB = dyn_glWindowPos3dvARB ptr_glWindowPos3dvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3dvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glWindowPos3dARB #-}
 
ptr_glWindowPos3dARB :: FunPtr a
ptr_glWindowPos3dARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3dARB"
 
glWindowPos3dARB :: GLdouble -> GLdouble -> GLdouble -> IO ()
glWindowPos3dARB = dyn_glWindowPos3dARB ptr_glWindowPos3dARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3dARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glWindowPos2svARB #-}
 
ptr_glWindowPos2svARB :: FunPtr a
ptr_glWindowPos2svARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2svARB"
 
glWindowPos2svARB :: Ptr GLshort -> IO ()
glWindowPos2svARB = dyn_glWindowPos2svARB ptr_glWindowPos2svARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2svARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glWindowPos2sARB #-}
 
ptr_glWindowPos2sARB :: FunPtr a
ptr_glWindowPos2sARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2sARB"
 
glWindowPos2sARB :: GLshort -> GLshort -> IO ()
glWindowPos2sARB = dyn_glWindowPos2sARB ptr_glWindowPos2sARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2sARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glWindowPos2ivARB #-}
 
ptr_glWindowPos2ivARB :: FunPtr a
ptr_glWindowPos2ivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2ivARB"
 
glWindowPos2ivARB :: Ptr GLint -> IO ()
glWindowPos2ivARB = dyn_glWindowPos2ivARB ptr_glWindowPos2ivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2ivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glWindowPos2iARB #-}
 
ptr_glWindowPos2iARB :: FunPtr a
ptr_glWindowPos2iARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2iARB"
 
glWindowPos2iARB :: GLint -> GLint -> IO ()
glWindowPos2iARB = dyn_glWindowPos2iARB ptr_glWindowPos2iARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2iARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glWindowPos2fvARB #-}
 
ptr_glWindowPos2fvARB :: FunPtr a
ptr_glWindowPos2fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2fvARB"
 
glWindowPos2fvARB :: Ptr GLfloat -> IO ()
glWindowPos2fvARB = dyn_glWindowPos2fvARB ptr_glWindowPos2fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2fvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glWindowPos2fARB #-}
 
ptr_glWindowPos2fARB :: FunPtr a
ptr_glWindowPos2fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2fARB"
 
glWindowPos2fARB :: GLfloat -> GLfloat -> IO ()
glWindowPos2fARB = dyn_glWindowPos2fARB ptr_glWindowPos2fARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glWindowPos2dvARB #-}
 
ptr_glWindowPos2dvARB :: FunPtr a
ptr_glWindowPos2dvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2dvARB"
 
glWindowPos2dvARB :: Ptr GLdouble -> IO ()
glWindowPos2dvARB = dyn_glWindowPos2dvARB ptr_glWindowPos2dvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2dvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glWindowPos2dARB #-}
 
ptr_glWindowPos2dARB :: FunPtr a
ptr_glWindowPos2dARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2dARB"
 
glWindowPos2dARB :: GLdouble -> GLdouble -> IO ()
glWindowPos2dARB = dyn_glWindowPos2dARB ptr_glWindowPos2dARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2dARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> IO ())