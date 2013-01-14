{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.WindowPos
       (glWindowPos3sv, glWindowPos3s, glWindowPos3iv, glWindowPos3i,
        glWindowPos3fv, glWindowPos3f, glWindowPos3dv, glWindowPos3d,
        glWindowPos2sv, glWindowPos2s, glWindowPos2iv, glWindowPos2i,
        glWindowPos2fv, glWindowPos2f, glWindowPos2dv, glWindowPos2d)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glWindowPos3sv #-}
 
ptr_glWindowPos3sv :: FunPtr a
ptr_glWindowPos3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3svARB"
 
glWindowPos3sv :: Ptr GLshort -> IO ()
glWindowPos3sv = dyn_glWindowPos3sv ptr_glWindowPos3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glWindowPos3s #-}
 
ptr_glWindowPos3s :: FunPtr a
ptr_glWindowPos3s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3sARB"
 
glWindowPos3s :: GLshort -> GLshort -> GLshort -> IO ()
glWindowPos3s = dyn_glWindowPos3s ptr_glWindowPos3s
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glWindowPos3iv #-}
 
ptr_glWindowPos3iv :: FunPtr a
ptr_glWindowPos3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3ivARB"
 
glWindowPos3iv :: Ptr GLint -> IO ()
glWindowPos3iv = dyn_glWindowPos3iv ptr_glWindowPos3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glWindowPos3i #-}
 
ptr_glWindowPos3i :: FunPtr a
ptr_glWindowPos3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3iARB"
 
glWindowPos3i :: GLint -> GLint -> GLint -> IO ()
glWindowPos3i = dyn_glWindowPos3i ptr_glWindowPos3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glWindowPos3fv #-}
 
ptr_glWindowPos3fv :: FunPtr a
ptr_glWindowPos3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3fvARB"
 
glWindowPos3fv :: Ptr GLfloat -> IO ()
glWindowPos3fv = dyn_glWindowPos3fv ptr_glWindowPos3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glWindowPos3f #-}
 
ptr_glWindowPos3f :: FunPtr a
ptr_glWindowPos3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3fARB"
 
glWindowPos3f :: GLfloat -> GLfloat -> GLfloat -> IO ()
glWindowPos3f = dyn_glWindowPos3f ptr_glWindowPos3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glWindowPos3dv #-}
 
ptr_glWindowPos3dv :: FunPtr a
ptr_glWindowPos3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3dvARB"
 
glWindowPos3dv :: Ptr GLdouble -> IO ()
glWindowPos3dv = dyn_glWindowPos3dv ptr_glWindowPos3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glWindowPos3d #-}
 
ptr_glWindowPos3d :: FunPtr a
ptr_glWindowPos3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos3dARB"
 
glWindowPos3d :: GLdouble -> GLdouble -> GLdouble -> IO ()
glWindowPos3d = dyn_glWindowPos3d ptr_glWindowPos3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glWindowPos2sv #-}
 
ptr_glWindowPos2sv :: FunPtr a
ptr_glWindowPos2sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2svARB"
 
glWindowPos2sv :: Ptr GLshort -> IO ()
glWindowPos2sv = dyn_glWindowPos2sv ptr_glWindowPos2sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glWindowPos2s #-}
 
ptr_glWindowPos2s :: FunPtr a
ptr_glWindowPos2s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2sARB"
 
glWindowPos2s :: GLshort -> GLshort -> IO ()
glWindowPos2s = dyn_glWindowPos2s ptr_glWindowPos2s
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glWindowPos2iv #-}
 
ptr_glWindowPos2iv :: FunPtr a
ptr_glWindowPos2iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2ivARB"
 
glWindowPos2iv :: Ptr GLint -> IO ()
glWindowPos2iv = dyn_glWindowPos2iv ptr_glWindowPos2iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glWindowPos2i #-}
 
ptr_glWindowPos2i :: FunPtr a
ptr_glWindowPos2i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2iARB"
 
glWindowPos2i :: GLint -> GLint -> IO ()
glWindowPos2i = dyn_glWindowPos2i ptr_glWindowPos2i
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glWindowPos2fv #-}
 
ptr_glWindowPos2fv :: FunPtr a
ptr_glWindowPos2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2fvARB"
 
glWindowPos2fv :: Ptr GLfloat -> IO ()
glWindowPos2fv = dyn_glWindowPos2fv ptr_glWindowPos2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glWindowPos2f #-}
 
ptr_glWindowPos2f :: FunPtr a
ptr_glWindowPos2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2fARB"
 
glWindowPos2f :: GLfloat -> GLfloat -> IO ()
glWindowPos2f = dyn_glWindowPos2f ptr_glWindowPos2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glWindowPos2dv #-}
 
ptr_glWindowPos2dv :: FunPtr a
ptr_glWindowPos2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2dvARB"
 
glWindowPos2dv :: Ptr GLdouble -> IO ()
glWindowPos2dv = dyn_glWindowPos2dv ptr_glWindowPos2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glWindowPos2d #-}
 
ptr_glWindowPos2d :: FunPtr a
ptr_glWindowPos2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_window_pos"
        "glWindowPos2dARB"
 
glWindowPos2d :: GLdouble -> GLdouble -> IO ()
glWindowPos2d = dyn_glWindowPos2d ptr_glWindowPos2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> IO ())