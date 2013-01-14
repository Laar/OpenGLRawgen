{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.Multitexture
       (glMultiTexCoord4svARB, glMultiTexCoord4sARB,
        glMultiTexCoord4ivARB, glMultiTexCoord4iARB, glMultiTexCoord4fvARB,
        glMultiTexCoord4fARB, glMultiTexCoord4dvARB, glMultiTexCoord4dARB,
        glMultiTexCoord3svARB, glMultiTexCoord3sARB, glMultiTexCoord3ivARB,
        glMultiTexCoord3iARB, glMultiTexCoord3fvARB, glMultiTexCoord3fARB,
        glMultiTexCoord3dvARB, glMultiTexCoord3dARB, glMultiTexCoord2svARB,
        glMultiTexCoord2sARB, glMultiTexCoord2ivARB, glMultiTexCoord2iARB,
        glMultiTexCoord2fvARB, glMultiTexCoord2fARB, glMultiTexCoord2dvARB,
        glMultiTexCoord2dARB, glMultiTexCoord1svARB, glMultiTexCoord1sARB,
        glMultiTexCoord1ivARB, glMultiTexCoord1iARB, glMultiTexCoord1fvARB,
        glMultiTexCoord1fARB, glMultiTexCoord1dvARB, glMultiTexCoord1dARB,
        glClientActiveTextureARB, glActiveTextureARB, gl_TEXTURE9_ARB,
        gl_TEXTURE8_ARB, gl_TEXTURE7_ARB, gl_TEXTURE6_ARB, gl_TEXTURE5_ARB,
        gl_TEXTURE4_ARB, gl_TEXTURE3_ARB, gl_TEXTURE31_ARB,
        gl_TEXTURE30_ARB, gl_TEXTURE2_ARB, gl_TEXTURE29_ARB,
        gl_TEXTURE28_ARB, gl_TEXTURE27_ARB, gl_TEXTURE26_ARB,
        gl_TEXTURE25_ARB, gl_TEXTURE24_ARB, gl_TEXTURE23_ARB,
        gl_TEXTURE22_ARB, gl_TEXTURE21_ARB, gl_TEXTURE20_ARB,
        gl_TEXTURE1_ARB, gl_TEXTURE19_ARB, gl_TEXTURE18_ARB,
        gl_TEXTURE17_ARB, gl_TEXTURE16_ARB, gl_TEXTURE15_ARB,
        gl_TEXTURE14_ARB, gl_TEXTURE13_ARB, gl_TEXTURE12_ARB,
        gl_TEXTURE11_ARB, gl_TEXTURE10_ARB, gl_TEXTURE0_ARB,
        gl_MAX_TEXTURE_UNITS_ARB, gl_CLIENT_ACTIVE_TEXTURE_ARB,
        gl_ACTIVE_TEXTURE_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMultiTexCoord4svARB #-}
 
ptr_glMultiTexCoord4svARB :: FunPtr a
ptr_glMultiTexCoord4svARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord4svARB"
 
glMultiTexCoord4svARB :: GLenum -> Ptr GLshort -> IO ()
glMultiTexCoord4svARB
  = dyn_glMultiTexCoord4svARB ptr_glMultiTexCoord4svARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4svARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4sARB #-}
 
ptr_glMultiTexCoord4sARB :: FunPtr a
ptr_glMultiTexCoord4sARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord4sARB"
 
glMultiTexCoord4sARB ::
                     GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()
glMultiTexCoord4sARB
  = dyn_glMultiTexCoord4sARB ptr_glMultiTexCoord4sARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4sARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4ivARB #-}
 
ptr_glMultiTexCoord4ivARB :: FunPtr a
ptr_glMultiTexCoord4ivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord4ivARB"
 
glMultiTexCoord4ivARB :: GLenum -> Ptr GLint -> IO ()
glMultiTexCoord4ivARB
  = dyn_glMultiTexCoord4ivARB ptr_glMultiTexCoord4ivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4ivARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4iARB #-}
 
ptr_glMultiTexCoord4iARB :: FunPtr a
ptr_glMultiTexCoord4iARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord4iARB"
 
glMultiTexCoord4iARB ::
                     GLenum -> GLint -> GLint -> GLint -> GLint -> IO ()
glMultiTexCoord4iARB
  = dyn_glMultiTexCoord4iARB ptr_glMultiTexCoord4iARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4iARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4fvARB #-}
 
ptr_glMultiTexCoord4fvARB :: FunPtr a
ptr_glMultiTexCoord4fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord4fvARB"
 
glMultiTexCoord4fvARB :: GLenum -> Ptr GLfloat -> IO ()
glMultiTexCoord4fvARB
  = dyn_glMultiTexCoord4fvARB ptr_glMultiTexCoord4fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4fvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4fARB #-}
 
ptr_glMultiTexCoord4fARB :: FunPtr a
ptr_glMultiTexCoord4fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord4fARB"
 
glMultiTexCoord4fARB ::
                     GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glMultiTexCoord4fARB
  = dyn_glMultiTexCoord4fARB ptr_glMultiTexCoord4fARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4dvARB #-}
 
ptr_glMultiTexCoord4dvARB :: FunPtr a
ptr_glMultiTexCoord4dvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord4dvARB"
 
glMultiTexCoord4dvARB :: GLenum -> Ptr GLdouble -> IO ()
glMultiTexCoord4dvARB
  = dyn_glMultiTexCoord4dvARB ptr_glMultiTexCoord4dvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4dvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4dARB #-}
 
ptr_glMultiTexCoord4dARB :: FunPtr a
ptr_glMultiTexCoord4dARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord4dARB"
 
glMultiTexCoord4dARB ::
                     GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glMultiTexCoord4dARB
  = dyn_glMultiTexCoord4dARB ptr_glMultiTexCoord4dARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4dARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3svARB #-}
 
ptr_glMultiTexCoord3svARB :: FunPtr a
ptr_glMultiTexCoord3svARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord3svARB"
 
glMultiTexCoord3svARB :: GLenum -> Ptr GLshort -> IO ()
glMultiTexCoord3svARB
  = dyn_glMultiTexCoord3svARB ptr_glMultiTexCoord3svARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3svARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3sARB #-}
 
ptr_glMultiTexCoord3sARB :: FunPtr a
ptr_glMultiTexCoord3sARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord3sARB"
 
glMultiTexCoord3sARB ::
                     GLenum -> GLshort -> GLshort -> GLshort -> IO ()
glMultiTexCoord3sARB
  = dyn_glMultiTexCoord3sARB ptr_glMultiTexCoord3sARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3sARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3ivARB #-}
 
ptr_glMultiTexCoord3ivARB :: FunPtr a
ptr_glMultiTexCoord3ivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord3ivARB"
 
glMultiTexCoord3ivARB :: GLenum -> Ptr GLint -> IO ()
glMultiTexCoord3ivARB
  = dyn_glMultiTexCoord3ivARB ptr_glMultiTexCoord3ivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3ivARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3iARB #-}
 
ptr_glMultiTexCoord3iARB :: FunPtr a
ptr_glMultiTexCoord3iARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord3iARB"
 
glMultiTexCoord3iARB :: GLenum -> GLint -> GLint -> GLint -> IO ()
glMultiTexCoord3iARB
  = dyn_glMultiTexCoord3iARB ptr_glMultiTexCoord3iARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3iARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3fvARB #-}
 
ptr_glMultiTexCoord3fvARB :: FunPtr a
ptr_glMultiTexCoord3fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord3fvARB"
 
glMultiTexCoord3fvARB :: GLenum -> Ptr GLfloat -> IO ()
glMultiTexCoord3fvARB
  = dyn_glMultiTexCoord3fvARB ptr_glMultiTexCoord3fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3fvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3fARB #-}
 
ptr_glMultiTexCoord3fARB :: FunPtr a
ptr_glMultiTexCoord3fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord3fARB"
 
glMultiTexCoord3fARB ::
                     GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ()
glMultiTexCoord3fARB
  = dyn_glMultiTexCoord3fARB ptr_glMultiTexCoord3fARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3dvARB #-}
 
ptr_glMultiTexCoord3dvARB :: FunPtr a
ptr_glMultiTexCoord3dvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord3dvARB"
 
glMultiTexCoord3dvARB :: GLenum -> Ptr GLdouble -> IO ()
glMultiTexCoord3dvARB
  = dyn_glMultiTexCoord3dvARB ptr_glMultiTexCoord3dvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3dvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3dARB #-}
 
ptr_glMultiTexCoord3dARB :: FunPtr a
ptr_glMultiTexCoord3dARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord3dARB"
 
glMultiTexCoord3dARB ::
                     GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ()
glMultiTexCoord3dARB
  = dyn_glMultiTexCoord3dARB ptr_glMultiTexCoord3dARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3dARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2svARB #-}
 
ptr_glMultiTexCoord2svARB :: FunPtr a
ptr_glMultiTexCoord2svARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord2svARB"
 
glMultiTexCoord2svARB :: GLenum -> Ptr GLshort -> IO ()
glMultiTexCoord2svARB
  = dyn_glMultiTexCoord2svARB ptr_glMultiTexCoord2svARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2svARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2sARB #-}
 
ptr_glMultiTexCoord2sARB :: FunPtr a
ptr_glMultiTexCoord2sARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord2sARB"
 
glMultiTexCoord2sARB :: GLenum -> GLshort -> GLshort -> IO ()
glMultiTexCoord2sARB
  = dyn_glMultiTexCoord2sARB ptr_glMultiTexCoord2sARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2sARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2ivARB #-}
 
ptr_glMultiTexCoord2ivARB :: FunPtr a
ptr_glMultiTexCoord2ivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord2ivARB"
 
glMultiTexCoord2ivARB :: GLenum -> Ptr GLint -> IO ()
glMultiTexCoord2ivARB
  = dyn_glMultiTexCoord2ivARB ptr_glMultiTexCoord2ivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2ivARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2iARB #-}
 
ptr_glMultiTexCoord2iARB :: FunPtr a
ptr_glMultiTexCoord2iARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord2iARB"
 
glMultiTexCoord2iARB :: GLenum -> GLint -> GLint -> IO ()
glMultiTexCoord2iARB
  = dyn_glMultiTexCoord2iARB ptr_glMultiTexCoord2iARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2iARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2fvARB #-}
 
ptr_glMultiTexCoord2fvARB :: FunPtr a
ptr_glMultiTexCoord2fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord2fvARB"
 
glMultiTexCoord2fvARB :: GLenum -> Ptr GLfloat -> IO ()
glMultiTexCoord2fvARB
  = dyn_glMultiTexCoord2fvARB ptr_glMultiTexCoord2fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2fvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2fARB #-}
 
ptr_glMultiTexCoord2fARB :: FunPtr a
ptr_glMultiTexCoord2fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord2fARB"
 
glMultiTexCoord2fARB :: GLenum -> GLfloat -> GLfloat -> IO ()
glMultiTexCoord2fARB
  = dyn_glMultiTexCoord2fARB ptr_glMultiTexCoord2fARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2dvARB #-}
 
ptr_glMultiTexCoord2dvARB :: FunPtr a
ptr_glMultiTexCoord2dvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord2dvARB"
 
glMultiTexCoord2dvARB :: GLenum -> Ptr GLdouble -> IO ()
glMultiTexCoord2dvARB
  = dyn_glMultiTexCoord2dvARB ptr_glMultiTexCoord2dvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2dvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2dARB #-}
 
ptr_glMultiTexCoord2dARB :: FunPtr a
ptr_glMultiTexCoord2dARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord2dARB"
 
glMultiTexCoord2dARB :: GLenum -> GLdouble -> GLdouble -> IO ()
glMultiTexCoord2dARB
  = dyn_glMultiTexCoord2dARB ptr_glMultiTexCoord2dARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2dARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1svARB #-}
 
ptr_glMultiTexCoord1svARB :: FunPtr a
ptr_glMultiTexCoord1svARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord1svARB"
 
glMultiTexCoord1svARB :: GLenum -> Ptr GLshort -> IO ()
glMultiTexCoord1svARB
  = dyn_glMultiTexCoord1svARB ptr_glMultiTexCoord1svARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1svARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1sARB #-}
 
ptr_glMultiTexCoord1sARB :: FunPtr a
ptr_glMultiTexCoord1sARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord1sARB"
 
glMultiTexCoord1sARB :: GLenum -> GLshort -> IO ()
glMultiTexCoord1sARB
  = dyn_glMultiTexCoord1sARB ptr_glMultiTexCoord1sARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1sARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1ivARB #-}
 
ptr_glMultiTexCoord1ivARB :: FunPtr a
ptr_glMultiTexCoord1ivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord1ivARB"
 
glMultiTexCoord1ivARB :: GLenum -> Ptr GLint -> IO ()
glMultiTexCoord1ivARB
  = dyn_glMultiTexCoord1ivARB ptr_glMultiTexCoord1ivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1ivARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1iARB #-}
 
ptr_glMultiTexCoord1iARB :: FunPtr a
ptr_glMultiTexCoord1iARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord1iARB"
 
glMultiTexCoord1iARB :: GLenum -> GLint -> IO ()
glMultiTexCoord1iARB
  = dyn_glMultiTexCoord1iARB ptr_glMultiTexCoord1iARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1iARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1fvARB #-}
 
ptr_glMultiTexCoord1fvARB :: FunPtr a
ptr_glMultiTexCoord1fvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord1fvARB"
 
glMultiTexCoord1fvARB :: GLenum -> Ptr GLfloat -> IO ()
glMultiTexCoord1fvARB
  = dyn_glMultiTexCoord1fvARB ptr_glMultiTexCoord1fvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1fvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1fARB #-}
 
ptr_glMultiTexCoord1fARB :: FunPtr a
ptr_glMultiTexCoord1fARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord1fARB"
 
glMultiTexCoord1fARB :: GLenum -> GLfloat -> IO ()
glMultiTexCoord1fARB
  = dyn_glMultiTexCoord1fARB ptr_glMultiTexCoord1fARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1fARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1dvARB #-}
 
ptr_glMultiTexCoord1dvARB :: FunPtr a
ptr_glMultiTexCoord1dvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord1dvARB"
 
glMultiTexCoord1dvARB :: GLenum -> Ptr GLdouble -> IO ()
glMultiTexCoord1dvARB
  = dyn_glMultiTexCoord1dvARB ptr_glMultiTexCoord1dvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1dvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1dARB #-}
 
ptr_glMultiTexCoord1dARB :: FunPtr a
ptr_glMultiTexCoord1dARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glMultiTexCoord1dARB"
 
glMultiTexCoord1dARB :: GLenum -> GLdouble -> IO ()
glMultiTexCoord1dARB
  = dyn_glMultiTexCoord1dARB ptr_glMultiTexCoord1dARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1dARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glClientActiveTextureARB #-}
 
ptr_glClientActiveTextureARB :: FunPtr a
ptr_glClientActiveTextureARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glClientActiveTextureARB"
 
glClientActiveTextureARB :: GLenum -> IO ()
glClientActiveTextureARB
  = dyn_glClientActiveTextureARB ptr_glClientActiveTextureARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glClientActiveTextureARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glActiveTextureARB #-}
 
ptr_glActiveTextureARB :: FunPtr a
ptr_glActiveTextureARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multitexture"
        "glActiveTextureARB"
 
glActiveTextureARB :: GLenum -> IO ()
glActiveTextureARB = dyn_glActiveTextureARB ptr_glActiveTextureARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glActiveTextureARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_TEXTURE9_ARB :: GLenum
gl_TEXTURE9_ARB = 33993
 
gl_TEXTURE8_ARB :: GLenum
gl_TEXTURE8_ARB = 33992
 
gl_TEXTURE7_ARB :: GLenum
gl_TEXTURE7_ARB = 33991
 
gl_TEXTURE6_ARB :: GLenum
gl_TEXTURE6_ARB = 33990
 
gl_TEXTURE5_ARB :: GLenum
gl_TEXTURE5_ARB = 33989
 
gl_TEXTURE4_ARB :: GLenum
gl_TEXTURE4_ARB = 33988
 
gl_TEXTURE3_ARB :: GLenum
gl_TEXTURE3_ARB = 33987
 
gl_TEXTURE31_ARB :: GLenum
gl_TEXTURE31_ARB = 34015
 
gl_TEXTURE30_ARB :: GLenum
gl_TEXTURE30_ARB = 34014
 
gl_TEXTURE2_ARB :: GLenum
gl_TEXTURE2_ARB = 33986
 
gl_TEXTURE29_ARB :: GLenum
gl_TEXTURE29_ARB = 34013
 
gl_TEXTURE28_ARB :: GLenum
gl_TEXTURE28_ARB = 34012
 
gl_TEXTURE27_ARB :: GLenum
gl_TEXTURE27_ARB = 34011
 
gl_TEXTURE26_ARB :: GLenum
gl_TEXTURE26_ARB = 34010
 
gl_TEXTURE25_ARB :: GLenum
gl_TEXTURE25_ARB = 34009
 
gl_TEXTURE24_ARB :: GLenum
gl_TEXTURE24_ARB = 34008
 
gl_TEXTURE23_ARB :: GLenum
gl_TEXTURE23_ARB = 34007
 
gl_TEXTURE22_ARB :: GLenum
gl_TEXTURE22_ARB = 34006
 
gl_TEXTURE21_ARB :: GLenum
gl_TEXTURE21_ARB = 34005
 
gl_TEXTURE20_ARB :: GLenum
gl_TEXTURE20_ARB = 34004
 
gl_TEXTURE1_ARB :: GLenum
gl_TEXTURE1_ARB = 33985
 
gl_TEXTURE19_ARB :: GLenum
gl_TEXTURE19_ARB = 34003
 
gl_TEXTURE18_ARB :: GLenum
gl_TEXTURE18_ARB = 34002
 
gl_TEXTURE17_ARB :: GLenum
gl_TEXTURE17_ARB = 34001
 
gl_TEXTURE16_ARB :: GLenum
gl_TEXTURE16_ARB = 34000
 
gl_TEXTURE15_ARB :: GLenum
gl_TEXTURE15_ARB = 33999
 
gl_TEXTURE14_ARB :: GLenum
gl_TEXTURE14_ARB = 33998
 
gl_TEXTURE13_ARB :: GLenum
gl_TEXTURE13_ARB = 33997
 
gl_TEXTURE12_ARB :: GLenum
gl_TEXTURE12_ARB = 33996
 
gl_TEXTURE11_ARB :: GLenum
gl_TEXTURE11_ARB = 33995
 
gl_TEXTURE10_ARB :: GLenum
gl_TEXTURE10_ARB = 33994
 
gl_TEXTURE0_ARB :: GLenum
gl_TEXTURE0_ARB = 33984
 
gl_MAX_TEXTURE_UNITS_ARB :: GLenum
gl_MAX_TEXTURE_UNITS_ARB = 34018
 
gl_CLIENT_ACTIVE_TEXTURE_ARB :: GLenum
gl_CLIENT_ACTIVE_TEXTURE_ARB = 34017
 
gl_ACTIVE_TEXTURE_ARB :: GLenum
gl_ACTIVE_TEXTURE_ARB = 34016