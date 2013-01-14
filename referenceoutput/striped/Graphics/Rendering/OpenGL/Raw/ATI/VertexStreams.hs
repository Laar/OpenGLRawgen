{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.VertexStreams
       (glVertexStream4sv, glVertexStream4s, glVertexStream4iv,
        glVertexStream4i, glVertexStream4fv, glVertexStream4f,
        glVertexStream4dv, glVertexStream4d, glVertexStream3sv,
        glVertexStream3s, glVertexStream3iv, glVertexStream3i,
        glVertexStream3fv, glVertexStream3f, glVertexStream3dv,
        glVertexStream3d, glVertexStream2sv, glVertexStream2s,
        glVertexStream2iv, glVertexStream2i, glVertexStream2fv,
        glVertexStream2f, glVertexStream2dv, glVertexStream2d,
        glVertexStream1sv, glVertexStream1s, glVertexStream1iv,
        glVertexStream1i, glVertexStream1fv, glVertexStream1f,
        glVertexStream1dv, glVertexStream1d, glVertexBlendEnvi,
        glVertexBlendEnvf, glNormalStream3sv, glNormalStream3s,
        glNormalStream3iv, glNormalStream3i, glNormalStream3fv,
        glNormalStream3f, glNormalStream3dv, glNormalStream3d,
        glNormalStream3bv, glNormalStream3b, glClientActiveVertexStream,
        gl_VERTEX_STREAM7, gl_VERTEX_STREAM6, gl_VERTEX_STREAM5,
        gl_VERTEX_STREAM4, gl_VERTEX_STREAM3, gl_VERTEX_STREAM2,
        gl_VERTEX_STREAM1, gl_VERTEX_STREAM0, gl_VERTEX_SOURCE,
        gl_MAX_VERTEX_STREAMS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexStream4sv #-}
 
ptr_glVertexStream4sv :: FunPtr a
ptr_glVertexStream4sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4svATI"
 
glVertexStream4sv :: GLenum -> Ptr GLshort -> IO ()
glVertexStream4sv = dyn_glVertexStream4sv ptr_glVertexStream4sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream4s #-}
 
ptr_glVertexStream4s :: FunPtr a
ptr_glVertexStream4s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4sATI"
 
glVertexStream4s ::
                 GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()
glVertexStream4s = dyn_glVertexStream4s ptr_glVertexStream4s
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream4iv #-}
 
ptr_glVertexStream4iv :: FunPtr a
ptr_glVertexStream4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4ivATI"
 
glVertexStream4iv :: GLenum -> Ptr GLint -> IO ()
glVertexStream4iv = dyn_glVertexStream4iv ptr_glVertexStream4iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream4i #-}
 
ptr_glVertexStream4i :: FunPtr a
ptr_glVertexStream4i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4iATI"
 
glVertexStream4i ::
                 GLenum -> GLint -> GLint -> GLint -> GLint -> IO ()
glVertexStream4i = dyn_glVertexStream4i ptr_glVertexStream4i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream4fv #-}
 
ptr_glVertexStream4fv :: FunPtr a
ptr_glVertexStream4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4fvATI"
 
glVertexStream4fv :: GLenum -> Ptr GLfloat -> IO ()
glVertexStream4fv = dyn_glVertexStream4fv ptr_glVertexStream4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream4f #-}
 
ptr_glVertexStream4f :: FunPtr a
ptr_glVertexStream4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4fATI"
 
glVertexStream4f ::
                 GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glVertexStream4f = dyn_glVertexStream4f ptr_glVertexStream4f
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream4dv #-}
 
ptr_glVertexStream4dv :: FunPtr a
ptr_glVertexStream4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4dvATI"
 
glVertexStream4dv :: GLenum -> Ptr GLdouble -> IO ()
glVertexStream4dv = dyn_glVertexStream4dv ptr_glVertexStream4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexStream4d #-}
 
ptr_glVertexStream4d :: FunPtr a
ptr_glVertexStream4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4dATI"
 
glVertexStream4d ::
                 GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexStream4d = dyn_glVertexStream4d ptr_glVertexStream4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexStream3sv #-}
 
ptr_glVertexStream3sv :: FunPtr a
ptr_glVertexStream3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3svATI"
 
glVertexStream3sv :: GLenum -> Ptr GLshort -> IO ()
glVertexStream3sv = dyn_glVertexStream3sv ptr_glVertexStream3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream3s #-}
 
ptr_glVertexStream3s :: FunPtr a
ptr_glVertexStream3s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3sATI"
 
glVertexStream3s ::
                 GLenum -> GLshort -> GLshort -> GLshort -> IO ()
glVertexStream3s = dyn_glVertexStream3s ptr_glVertexStream3s
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream3iv #-}
 
ptr_glVertexStream3iv :: FunPtr a
ptr_glVertexStream3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3ivATI"
 
glVertexStream3iv :: GLenum -> Ptr GLint -> IO ()
glVertexStream3iv = dyn_glVertexStream3iv ptr_glVertexStream3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream3i #-}
 
ptr_glVertexStream3i :: FunPtr a
ptr_glVertexStream3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3iATI"
 
glVertexStream3i :: GLenum -> GLint -> GLint -> GLint -> IO ()
glVertexStream3i = dyn_glVertexStream3i ptr_glVertexStream3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream3fv #-}
 
ptr_glVertexStream3fv :: FunPtr a
ptr_glVertexStream3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3fvATI"
 
glVertexStream3fv :: GLenum -> Ptr GLfloat -> IO ()
glVertexStream3fv = dyn_glVertexStream3fv ptr_glVertexStream3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream3f #-}
 
ptr_glVertexStream3f :: FunPtr a
ptr_glVertexStream3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3fATI"
 
glVertexStream3f ::
                 GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ()
glVertexStream3f = dyn_glVertexStream3f ptr_glVertexStream3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream3dv #-}
 
ptr_glVertexStream3dv :: FunPtr a
ptr_glVertexStream3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3dvATI"
 
glVertexStream3dv :: GLenum -> Ptr GLdouble -> IO ()
glVertexStream3dv = dyn_glVertexStream3dv ptr_glVertexStream3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexStream3d #-}
 
ptr_glVertexStream3d :: FunPtr a
ptr_glVertexStream3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3dATI"
 
glVertexStream3d ::
                 GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexStream3d = dyn_glVertexStream3d ptr_glVertexStream3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexStream2sv #-}
 
ptr_glVertexStream2sv :: FunPtr a
ptr_glVertexStream2sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2svATI"
 
glVertexStream2sv :: GLenum -> Ptr GLshort -> IO ()
glVertexStream2sv = dyn_glVertexStream2sv ptr_glVertexStream2sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream2s #-}
 
ptr_glVertexStream2s :: FunPtr a
ptr_glVertexStream2s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2sATI"
 
glVertexStream2s :: GLenum -> GLshort -> GLshort -> IO ()
glVertexStream2s = dyn_glVertexStream2s ptr_glVertexStream2s
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream2iv #-}
 
ptr_glVertexStream2iv :: FunPtr a
ptr_glVertexStream2iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2ivATI"
 
glVertexStream2iv :: GLenum -> Ptr GLint -> IO ()
glVertexStream2iv = dyn_glVertexStream2iv ptr_glVertexStream2iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream2i #-}
 
ptr_glVertexStream2i :: FunPtr a
ptr_glVertexStream2i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2iATI"
 
glVertexStream2i :: GLenum -> GLint -> GLint -> IO ()
glVertexStream2i = dyn_glVertexStream2i ptr_glVertexStream2i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream2fv #-}
 
ptr_glVertexStream2fv :: FunPtr a
ptr_glVertexStream2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2fvATI"
 
glVertexStream2fv :: GLenum -> Ptr GLfloat -> IO ()
glVertexStream2fv = dyn_glVertexStream2fv ptr_glVertexStream2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream2f #-}
 
ptr_glVertexStream2f :: FunPtr a
ptr_glVertexStream2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2fATI"
 
glVertexStream2f :: GLenum -> GLfloat -> GLfloat -> IO ()
glVertexStream2f = dyn_glVertexStream2f ptr_glVertexStream2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream2dv #-}
 
ptr_glVertexStream2dv :: FunPtr a
ptr_glVertexStream2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2dvATI"
 
glVertexStream2dv :: GLenum -> Ptr GLdouble -> IO ()
glVertexStream2dv = dyn_glVertexStream2dv ptr_glVertexStream2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexStream2d #-}
 
ptr_glVertexStream2d :: FunPtr a
ptr_glVertexStream2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2dATI"
 
glVertexStream2d :: GLenum -> GLdouble -> GLdouble -> IO ()
glVertexStream2d = dyn_glVertexStream2d ptr_glVertexStream2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexStream1sv #-}
 
ptr_glVertexStream1sv :: FunPtr a
ptr_glVertexStream1sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1svATI"
 
glVertexStream1sv :: GLenum -> Ptr GLshort -> IO ()
glVertexStream1sv = dyn_glVertexStream1sv ptr_glVertexStream1sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream1s #-}
 
ptr_glVertexStream1s :: FunPtr a
ptr_glVertexStream1s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1sATI"
 
glVertexStream1s :: GLenum -> GLshort -> IO ()
glVertexStream1s = dyn_glVertexStream1s ptr_glVertexStream1s
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream1iv #-}
 
ptr_glVertexStream1iv :: FunPtr a
ptr_glVertexStream1iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1ivATI"
 
glVertexStream1iv :: GLenum -> Ptr GLint -> IO ()
glVertexStream1iv = dyn_glVertexStream1iv ptr_glVertexStream1iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream1i #-}
 
ptr_glVertexStream1i :: FunPtr a
ptr_glVertexStream1i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1iATI"
 
glVertexStream1i :: GLenum -> GLint -> IO ()
glVertexStream1i = dyn_glVertexStream1i ptr_glVertexStream1i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream1fv #-}
 
ptr_glVertexStream1fv :: FunPtr a
ptr_glVertexStream1fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1fvATI"
 
glVertexStream1fv :: GLenum -> Ptr GLfloat -> IO ()
glVertexStream1fv = dyn_glVertexStream1fv ptr_glVertexStream1fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream1f #-}
 
ptr_glVertexStream1f :: FunPtr a
ptr_glVertexStream1f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1fATI"
 
glVertexStream1f :: GLenum -> GLfloat -> IO ()
glVertexStream1f = dyn_glVertexStream1f ptr_glVertexStream1f
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream1dv #-}
 
ptr_glVertexStream1dv :: FunPtr a
ptr_glVertexStream1dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1dvATI"
 
glVertexStream1dv :: GLenum -> Ptr GLdouble -> IO ()
glVertexStream1dv = dyn_glVertexStream1dv ptr_glVertexStream1dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexStream1d #-}
 
ptr_glVertexStream1d :: FunPtr a
ptr_glVertexStream1d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1dATI"
 
glVertexStream1d :: GLenum -> GLdouble -> IO ()
glVertexStream1d = dyn_glVertexStream1d ptr_glVertexStream1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexBlendEnvi #-}
 
ptr_glVertexBlendEnvi :: FunPtr a
ptr_glVertexBlendEnvi
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexBlendEnviATI"
 
glVertexBlendEnvi :: GLenum -> GLint -> IO ()
glVertexBlendEnvi = dyn_glVertexBlendEnvi ptr_glVertexBlendEnvi
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexBlendEnvi ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexBlendEnvf #-}
 
ptr_glVertexBlendEnvf :: FunPtr a
ptr_glVertexBlendEnvf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexBlendEnvfATI"
 
glVertexBlendEnvf :: GLenum -> GLfloat -> IO ()
glVertexBlendEnvf = dyn_glVertexBlendEnvf ptr_glVertexBlendEnvf
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexBlendEnvf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glNormalStream3sv #-}
 
ptr_glNormalStream3sv :: FunPtr a
ptr_glNormalStream3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3svATI"
 
glNormalStream3sv :: GLenum -> Ptr GLshort -> IO ()
glNormalStream3sv = dyn_glNormalStream3sv ptr_glNormalStream3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glNormalStream3s #-}
 
ptr_glNormalStream3s :: FunPtr a
ptr_glNormalStream3s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3sATI"
 
glNormalStream3s ::
                 GLenum -> GLshort -> GLshort -> GLshort -> IO ()
glNormalStream3s = dyn_glNormalStream3s ptr_glNormalStream3s
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glNormalStream3iv #-}
 
ptr_glNormalStream3iv :: FunPtr a
ptr_glNormalStream3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3ivATI"
 
glNormalStream3iv :: GLenum -> Ptr GLint -> IO ()
glNormalStream3iv = dyn_glNormalStream3iv ptr_glNormalStream3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glNormalStream3i #-}
 
ptr_glNormalStream3i :: FunPtr a
ptr_glNormalStream3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3iATI"
 
glNormalStream3i :: GLenum -> GLint -> GLint -> GLint -> IO ()
glNormalStream3i = dyn_glNormalStream3i ptr_glNormalStream3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glNormalStream3fv #-}
 
ptr_glNormalStream3fv :: FunPtr a
ptr_glNormalStream3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3fvATI"
 
glNormalStream3fv :: GLenum -> Ptr GLfloat -> IO ()
glNormalStream3fv = dyn_glNormalStream3fv ptr_glNormalStream3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glNormalStream3f #-}
 
ptr_glNormalStream3f :: FunPtr a
ptr_glNormalStream3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3fATI"
 
glNormalStream3f ::
                 GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ()
glNormalStream3f = dyn_glNormalStream3f ptr_glNormalStream3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glNormalStream3dv #-}
 
ptr_glNormalStream3dv :: FunPtr a
ptr_glNormalStream3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3dvATI"
 
glNormalStream3dv :: GLenum -> Ptr GLdouble -> IO ()
glNormalStream3dv = dyn_glNormalStream3dv ptr_glNormalStream3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glNormalStream3d #-}
 
ptr_glNormalStream3d :: FunPtr a
ptr_glNormalStream3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3dATI"
 
glNormalStream3d ::
                 GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ()
glNormalStream3d = dyn_glNormalStream3d ptr_glNormalStream3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glNormalStream3bv #-}
 
ptr_glNormalStream3bv :: FunPtr a
ptr_glNormalStream3bv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3bvATI"
 
glNormalStream3bv :: GLenum -> Ptr GLbyte -> IO ()
glNormalStream3bv = dyn_glNormalStream3bv ptr_glNormalStream3bv
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3bv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glNormalStream3b #-}
 
ptr_glNormalStream3b :: FunPtr a
ptr_glNormalStream3b
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3bATI"
 
glNormalStream3b :: GLenum -> GLbyte -> GLbyte -> GLbyte -> IO ()
glNormalStream3b = dyn_glNormalStream3b ptr_glNormalStream3b
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3b ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLbyte -> GLbyte -> GLbyte -> IO ())
 
{-# NOINLINE ptr_glClientActiveVertexStream #-}
 
ptr_glClientActiveVertexStream :: FunPtr a
ptr_glClientActiveVertexStream
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glClientActiveVertexStreamATI"
 
glClientActiveVertexStream :: GLenum -> IO ()
glClientActiveVertexStream
  = dyn_glClientActiveVertexStream ptr_glClientActiveVertexStream
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glClientActiveVertexStream ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_VERTEX_STREAM7 :: GLenum
gl_VERTEX_STREAM7 = 34675
 
gl_VERTEX_STREAM6 :: GLenum
gl_VERTEX_STREAM6 = 34674
 
gl_VERTEX_STREAM5 :: GLenum
gl_VERTEX_STREAM5 = 34673
 
gl_VERTEX_STREAM4 :: GLenum
gl_VERTEX_STREAM4 = 34672
 
gl_VERTEX_STREAM3 :: GLenum
gl_VERTEX_STREAM3 = 34671
 
gl_VERTEX_STREAM2 :: GLenum
gl_VERTEX_STREAM2 = 34670
 
gl_VERTEX_STREAM1 :: GLenum
gl_VERTEX_STREAM1 = 34669
 
gl_VERTEX_STREAM0 :: GLenum
gl_VERTEX_STREAM0 = 34668
 
gl_VERTEX_SOURCE :: GLenum
gl_VERTEX_SOURCE = 34676
 
gl_MAX_VERTEX_STREAMS :: GLenum
gl_MAX_VERTEX_STREAMS = 34667