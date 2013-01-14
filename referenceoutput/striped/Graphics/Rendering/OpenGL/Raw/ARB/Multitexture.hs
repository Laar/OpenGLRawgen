{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.Multitexture
       (glMultiTexCoord4sv, glMultiTexCoord4s, glMultiTexCoord4iv,
        glMultiTexCoord4i, glMultiTexCoord4fv, glMultiTexCoord4f,
        glMultiTexCoord4dv, glMultiTexCoord4d, glMultiTexCoord3sv,
        glMultiTexCoord3s, glMultiTexCoord3iv, glMultiTexCoord3i,
        glMultiTexCoord3fv, glMultiTexCoord3f, glMultiTexCoord3dv,
        glMultiTexCoord3d, glMultiTexCoord2sv, glMultiTexCoord2s,
        glMultiTexCoord2iv, glMultiTexCoord2i, glMultiTexCoord2fv,
        glMultiTexCoord2f, glMultiTexCoord2dv, glMultiTexCoord2d,
        glMultiTexCoord1sv, glMultiTexCoord1s, glMultiTexCoord1iv,
        glMultiTexCoord1i, glMultiTexCoord1fv, glMultiTexCoord1f,
        glMultiTexCoord1dv, glMultiTexCoord1d, glClientActiveTexture,
        glActiveTexture, gl_TEXTURE9, gl_TEXTURE8, gl_TEXTURE7,
        gl_TEXTURE6, gl_TEXTURE5, gl_TEXTURE4, gl_TEXTURE3, gl_TEXTURE31,
        gl_TEXTURE30, gl_TEXTURE2, gl_TEXTURE29, gl_TEXTURE28,
        gl_TEXTURE27, gl_TEXTURE26, gl_TEXTURE25, gl_TEXTURE24,
        gl_TEXTURE23, gl_TEXTURE22, gl_TEXTURE21, gl_TEXTURE20,
        gl_TEXTURE1, gl_TEXTURE19, gl_TEXTURE18, gl_TEXTURE17,
        gl_TEXTURE16, gl_TEXTURE15, gl_TEXTURE14, gl_TEXTURE13,
        gl_TEXTURE12, gl_TEXTURE11, gl_TEXTURE10, gl_TEXTURE0,
        gl_MAX_TEXTURE_UNITS, gl_CLIENT_ACTIVE_TEXTURE, gl_ACTIVE_TEXTURE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMultiTexCoord4sv #-}
 
ptr_glMultiTexCoord4sv :: FunPtr a
ptr_glMultiTexCoord4sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord4svARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord4sARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord4ivARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord4iARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord4fvARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord4fARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord4dvARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord4dARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord3svARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord3sARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord3ivARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord3iARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord3fvARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord3fARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord3dvARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord3dARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord2svARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord2sARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord2ivARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord2iARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord2fvARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord2fARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord2dvARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord2dARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord1svARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord1sARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord1ivARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord1iARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord1fvARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord1fARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord1dvARB"
 
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
        "GL_ARB_multitexture"
        "glMultiTexCoord1dARB"
 
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
        "GL_ARB_multitexture"
        "glClientActiveTextureARB"
 
glClientActiveTexture :: GLenum -> IO ()
glClientActiveTexture
  = dyn_glClientActiveTexture ptr_glClientActiveTexture
 
foreign import CALLCONV unsafe "dynamic" dyn_glClientActiveTexture
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glActiveTexture #-}
 
ptr_glActiveTexture :: FunPtr a
ptr_glActiveTexture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glActiveTextureARB"
 
glActiveTexture :: GLenum -> IO ()
glActiveTexture = dyn_glActiveTexture ptr_glActiveTexture
 
foreign import CALLCONV unsafe "dynamic" dyn_glActiveTexture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_TEXTURE9 :: GLenum
gl_TEXTURE9 = 33993
 
gl_TEXTURE8 :: GLenum
gl_TEXTURE8 = 33992
 
gl_TEXTURE7 :: GLenum
gl_TEXTURE7 = 33991
 
gl_TEXTURE6 :: GLenum
gl_TEXTURE6 = 33990
 
gl_TEXTURE5 :: GLenum
gl_TEXTURE5 = 33989
 
gl_TEXTURE4 :: GLenum
gl_TEXTURE4 = 33988
 
gl_TEXTURE3 :: GLenum
gl_TEXTURE3 = 33987
 
gl_TEXTURE31 :: GLenum
gl_TEXTURE31 = 34015
 
gl_TEXTURE30 :: GLenum
gl_TEXTURE30 = 34014
 
gl_TEXTURE2 :: GLenum
gl_TEXTURE2 = 33986
 
gl_TEXTURE29 :: GLenum
gl_TEXTURE29 = 34013
 
gl_TEXTURE28 :: GLenum
gl_TEXTURE28 = 34012
 
gl_TEXTURE27 :: GLenum
gl_TEXTURE27 = 34011
 
gl_TEXTURE26 :: GLenum
gl_TEXTURE26 = 34010
 
gl_TEXTURE25 :: GLenum
gl_TEXTURE25 = 34009
 
gl_TEXTURE24 :: GLenum
gl_TEXTURE24 = 34008
 
gl_TEXTURE23 :: GLenum
gl_TEXTURE23 = 34007
 
gl_TEXTURE22 :: GLenum
gl_TEXTURE22 = 34006
 
gl_TEXTURE21 :: GLenum
gl_TEXTURE21 = 34005
 
gl_TEXTURE20 :: GLenum
gl_TEXTURE20 = 34004
 
gl_TEXTURE1 :: GLenum
gl_TEXTURE1 = 33985
 
gl_TEXTURE19 :: GLenum
gl_TEXTURE19 = 34003
 
gl_TEXTURE18 :: GLenum
gl_TEXTURE18 = 34002
 
gl_TEXTURE17 :: GLenum
gl_TEXTURE17 = 34001
 
gl_TEXTURE16 :: GLenum
gl_TEXTURE16 = 34000
 
gl_TEXTURE15 :: GLenum
gl_TEXTURE15 = 33999
 
gl_TEXTURE14 :: GLenum
gl_TEXTURE14 = 33998
 
gl_TEXTURE13 :: GLenum
gl_TEXTURE13 = 33997
 
gl_TEXTURE12 :: GLenum
gl_TEXTURE12 = 33996
 
gl_TEXTURE11 :: GLenum
gl_TEXTURE11 = 33995
 
gl_TEXTURE10 :: GLenum
gl_TEXTURE10 = 33994
 
gl_TEXTURE0 :: GLenum
gl_TEXTURE0 = 33984
 
gl_MAX_TEXTURE_UNITS :: GLenum
gl_MAX_TEXTURE_UNITS = 34018
 
gl_CLIENT_ACTIVE_TEXTURE :: GLenum
gl_CLIENT_ACTIVE_TEXTURE = 34017
 
gl_ACTIVE_TEXTURE :: GLenum
gl_ACTIVE_TEXTURE = 34016