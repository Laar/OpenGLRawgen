{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.VertexStreams
       (glVertexStream4svATI, glVertexStream4sATI, glVertexStream4ivATI,
        glVertexStream4iATI, glVertexStream4fvATI, glVertexStream4fATI,
        glVertexStream4dvATI, glVertexStream4dATI, glVertexStream3svATI,
        glVertexStream3sATI, glVertexStream3ivATI, glVertexStream3iATI,
        glVertexStream3fvATI, glVertexStream3fATI, glVertexStream3dvATI,
        glVertexStream3dATI, glVertexStream2svATI, glVertexStream2sATI,
        glVertexStream2ivATI, glVertexStream2iATI, glVertexStream2fvATI,
        glVertexStream2fATI, glVertexStream2dvATI, glVertexStream2dATI,
        glVertexStream1svATI, glVertexStream1sATI, glVertexStream1ivATI,
        glVertexStream1iATI, glVertexStream1fvATI, glVertexStream1fATI,
        glVertexStream1dvATI, glVertexStream1dATI, glVertexBlendEnviATI,
        glVertexBlendEnvfATI, glNormalStream3svATI, glNormalStream3sATI,
        glNormalStream3ivATI, glNormalStream3iATI, glNormalStream3fvATI,
        glNormalStream3fATI, glNormalStream3dvATI, glNormalStream3dATI,
        glNormalStream3bvATI, glNormalStream3bATI,
        glClientActiveVertexStreamATI, gl_VERTEX_STREAM7_ATI,
        gl_VERTEX_STREAM6_ATI, gl_VERTEX_STREAM5_ATI,
        gl_VERTEX_STREAM4_ATI, gl_VERTEX_STREAM3_ATI,
        gl_VERTEX_STREAM2_ATI, gl_VERTEX_STREAM1_ATI,
        gl_VERTEX_STREAM0_ATI, gl_VERTEX_SOURCE_ATI,
        gl_MAX_VERTEX_STREAMS_ATI)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexStream4svATI #-}
 
ptr_glVertexStream4svATI :: FunPtr a
ptr_glVertexStream4svATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4svATI"
 
glVertexStream4svATI :: GLenum -> Ptr GLshort -> IO ()
glVertexStream4svATI
  = dyn_glVertexStream4svATI ptr_glVertexStream4svATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4svATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream4sATI #-}
 
ptr_glVertexStream4sATI :: FunPtr a
ptr_glVertexStream4sATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4sATI"
 
glVertexStream4sATI ::
                    GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> IO ()
glVertexStream4sATI
  = dyn_glVertexStream4sATI ptr_glVertexStream4sATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4sATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream4ivATI #-}
 
ptr_glVertexStream4ivATI :: FunPtr a
ptr_glVertexStream4ivATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4ivATI"
 
glVertexStream4ivATI :: GLenum -> Ptr GLint -> IO ()
glVertexStream4ivATI
  = dyn_glVertexStream4ivATI ptr_glVertexStream4ivATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4ivATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream4iATI #-}
 
ptr_glVertexStream4iATI :: FunPtr a
ptr_glVertexStream4iATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4iATI"
 
glVertexStream4iATI ::
                    GLenum -> GLint -> GLint -> GLint -> GLint -> IO ()
glVertexStream4iATI
  = dyn_glVertexStream4iATI ptr_glVertexStream4iATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4iATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream4fvATI #-}
 
ptr_glVertexStream4fvATI :: FunPtr a
ptr_glVertexStream4fvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4fvATI"
 
glVertexStream4fvATI :: GLenum -> Ptr GLfloat -> IO ()
glVertexStream4fvATI
  = dyn_glVertexStream4fvATI ptr_glVertexStream4fvATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4fvATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream4fATI #-}
 
ptr_glVertexStream4fATI :: FunPtr a
ptr_glVertexStream4fATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4fATI"
 
glVertexStream4fATI ::
                    GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glVertexStream4fATI
  = dyn_glVertexStream4fATI ptr_glVertexStream4fATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4fATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream4dvATI #-}
 
ptr_glVertexStream4dvATI :: FunPtr a
ptr_glVertexStream4dvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4dvATI"
 
glVertexStream4dvATI :: GLenum -> Ptr GLdouble -> IO ()
glVertexStream4dvATI
  = dyn_glVertexStream4dvATI ptr_glVertexStream4dvATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4dvATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexStream4dATI #-}
 
ptr_glVertexStream4dATI :: FunPtr a
ptr_glVertexStream4dATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream4dATI"
 
glVertexStream4dATI ::
                    GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexStream4dATI
  = dyn_glVertexStream4dATI ptr_glVertexStream4dATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream4dATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexStream3svATI #-}
 
ptr_glVertexStream3svATI :: FunPtr a
ptr_glVertexStream3svATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3svATI"
 
glVertexStream3svATI :: GLenum -> Ptr GLshort -> IO ()
glVertexStream3svATI
  = dyn_glVertexStream3svATI ptr_glVertexStream3svATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3svATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream3sATI #-}
 
ptr_glVertexStream3sATI :: FunPtr a
ptr_glVertexStream3sATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3sATI"
 
glVertexStream3sATI ::
                    GLenum -> GLshort -> GLshort -> GLshort -> IO ()
glVertexStream3sATI
  = dyn_glVertexStream3sATI ptr_glVertexStream3sATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3sATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream3ivATI #-}
 
ptr_glVertexStream3ivATI :: FunPtr a
ptr_glVertexStream3ivATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3ivATI"
 
glVertexStream3ivATI :: GLenum -> Ptr GLint -> IO ()
glVertexStream3ivATI
  = dyn_glVertexStream3ivATI ptr_glVertexStream3ivATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3ivATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream3iATI #-}
 
ptr_glVertexStream3iATI :: FunPtr a
ptr_glVertexStream3iATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3iATI"
 
glVertexStream3iATI :: GLenum -> GLint -> GLint -> GLint -> IO ()
glVertexStream3iATI
  = dyn_glVertexStream3iATI ptr_glVertexStream3iATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3iATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream3fvATI #-}
 
ptr_glVertexStream3fvATI :: FunPtr a
ptr_glVertexStream3fvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3fvATI"
 
glVertexStream3fvATI :: GLenum -> Ptr GLfloat -> IO ()
glVertexStream3fvATI
  = dyn_glVertexStream3fvATI ptr_glVertexStream3fvATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3fvATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream3fATI #-}
 
ptr_glVertexStream3fATI :: FunPtr a
ptr_glVertexStream3fATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3fATI"
 
glVertexStream3fATI ::
                    GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ()
glVertexStream3fATI
  = dyn_glVertexStream3fATI ptr_glVertexStream3fATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3fATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream3dvATI #-}
 
ptr_glVertexStream3dvATI :: FunPtr a
ptr_glVertexStream3dvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3dvATI"
 
glVertexStream3dvATI :: GLenum -> Ptr GLdouble -> IO ()
glVertexStream3dvATI
  = dyn_glVertexStream3dvATI ptr_glVertexStream3dvATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3dvATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexStream3dATI #-}
 
ptr_glVertexStream3dATI :: FunPtr a
ptr_glVertexStream3dATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream3dATI"
 
glVertexStream3dATI ::
                    GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexStream3dATI
  = dyn_glVertexStream3dATI ptr_glVertexStream3dATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream3dATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexStream2svATI #-}
 
ptr_glVertexStream2svATI :: FunPtr a
ptr_glVertexStream2svATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2svATI"
 
glVertexStream2svATI :: GLenum -> Ptr GLshort -> IO ()
glVertexStream2svATI
  = dyn_glVertexStream2svATI ptr_glVertexStream2svATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2svATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream2sATI #-}
 
ptr_glVertexStream2sATI :: FunPtr a
ptr_glVertexStream2sATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2sATI"
 
glVertexStream2sATI :: GLenum -> GLshort -> GLshort -> IO ()
glVertexStream2sATI
  = dyn_glVertexStream2sATI ptr_glVertexStream2sATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2sATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream2ivATI #-}
 
ptr_glVertexStream2ivATI :: FunPtr a
ptr_glVertexStream2ivATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2ivATI"
 
glVertexStream2ivATI :: GLenum -> Ptr GLint -> IO ()
glVertexStream2ivATI
  = dyn_glVertexStream2ivATI ptr_glVertexStream2ivATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2ivATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream2iATI #-}
 
ptr_glVertexStream2iATI :: FunPtr a
ptr_glVertexStream2iATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2iATI"
 
glVertexStream2iATI :: GLenum -> GLint -> GLint -> IO ()
glVertexStream2iATI
  = dyn_glVertexStream2iATI ptr_glVertexStream2iATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2iATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream2fvATI #-}
 
ptr_glVertexStream2fvATI :: FunPtr a
ptr_glVertexStream2fvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2fvATI"
 
glVertexStream2fvATI :: GLenum -> Ptr GLfloat -> IO ()
glVertexStream2fvATI
  = dyn_glVertexStream2fvATI ptr_glVertexStream2fvATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2fvATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream2fATI #-}
 
ptr_glVertexStream2fATI :: FunPtr a
ptr_glVertexStream2fATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2fATI"
 
glVertexStream2fATI :: GLenum -> GLfloat -> GLfloat -> IO ()
glVertexStream2fATI
  = dyn_glVertexStream2fATI ptr_glVertexStream2fATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2fATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream2dvATI #-}
 
ptr_glVertexStream2dvATI :: FunPtr a
ptr_glVertexStream2dvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2dvATI"
 
glVertexStream2dvATI :: GLenum -> Ptr GLdouble -> IO ()
glVertexStream2dvATI
  = dyn_glVertexStream2dvATI ptr_glVertexStream2dvATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2dvATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexStream2dATI #-}
 
ptr_glVertexStream2dATI :: FunPtr a
ptr_glVertexStream2dATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream2dATI"
 
glVertexStream2dATI :: GLenum -> GLdouble -> GLdouble -> IO ()
glVertexStream2dATI
  = dyn_glVertexStream2dATI ptr_glVertexStream2dATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream2dATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexStream1svATI #-}
 
ptr_glVertexStream1svATI :: FunPtr a
ptr_glVertexStream1svATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1svATI"
 
glVertexStream1svATI :: GLenum -> Ptr GLshort -> IO ()
glVertexStream1svATI
  = dyn_glVertexStream1svATI ptr_glVertexStream1svATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1svATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream1sATI #-}
 
ptr_glVertexStream1sATI :: FunPtr a
ptr_glVertexStream1sATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1sATI"
 
glVertexStream1sATI :: GLenum -> GLshort -> IO ()
glVertexStream1sATI
  = dyn_glVertexStream1sATI ptr_glVertexStream1sATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1sATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexStream1ivATI #-}
 
ptr_glVertexStream1ivATI :: FunPtr a
ptr_glVertexStream1ivATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1ivATI"
 
glVertexStream1ivATI :: GLenum -> Ptr GLint -> IO ()
glVertexStream1ivATI
  = dyn_glVertexStream1ivATI ptr_glVertexStream1ivATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1ivATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream1iATI #-}
 
ptr_glVertexStream1iATI :: FunPtr a
ptr_glVertexStream1iATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1iATI"
 
glVertexStream1iATI :: GLenum -> GLint -> IO ()
glVertexStream1iATI
  = dyn_glVertexStream1iATI ptr_glVertexStream1iATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1iATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexStream1fvATI #-}
 
ptr_glVertexStream1fvATI :: FunPtr a
ptr_glVertexStream1fvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1fvATI"
 
glVertexStream1fvATI :: GLenum -> Ptr GLfloat -> IO ()
glVertexStream1fvATI
  = dyn_glVertexStream1fvATI ptr_glVertexStream1fvATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1fvATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream1fATI #-}
 
ptr_glVertexStream1fATI :: FunPtr a
ptr_glVertexStream1fATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1fATI"
 
glVertexStream1fATI :: GLenum -> GLfloat -> IO ()
glVertexStream1fATI
  = dyn_glVertexStream1fATI ptr_glVertexStream1fATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1fATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexStream1dvATI #-}
 
ptr_glVertexStream1dvATI :: FunPtr a
ptr_glVertexStream1dvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1dvATI"
 
glVertexStream1dvATI :: GLenum -> Ptr GLdouble -> IO ()
glVertexStream1dvATI
  = dyn_glVertexStream1dvATI ptr_glVertexStream1dvATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1dvATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexStream1dATI #-}
 
ptr_glVertexStream1dATI :: FunPtr a
ptr_glVertexStream1dATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexStream1dATI"
 
glVertexStream1dATI :: GLenum -> GLdouble -> IO ()
glVertexStream1dATI
  = dyn_glVertexStream1dATI ptr_glVertexStream1dATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexStream1dATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexBlendEnviATI #-}
 
ptr_glVertexBlendEnviATI :: FunPtr a
ptr_glVertexBlendEnviATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexBlendEnviATI"
 
glVertexBlendEnviATI :: GLenum -> GLint -> IO ()
glVertexBlendEnviATI
  = dyn_glVertexBlendEnviATI ptr_glVertexBlendEnviATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexBlendEnviATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexBlendEnvfATI #-}
 
ptr_glVertexBlendEnvfATI :: FunPtr a
ptr_glVertexBlendEnvfATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glVertexBlendEnvfATI"
 
glVertexBlendEnvfATI :: GLenum -> GLfloat -> IO ()
glVertexBlendEnvfATI
  = dyn_glVertexBlendEnvfATI ptr_glVertexBlendEnvfATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexBlendEnvfATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glNormalStream3svATI #-}
 
ptr_glNormalStream3svATI :: FunPtr a
ptr_glNormalStream3svATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3svATI"
 
glNormalStream3svATI :: GLenum -> Ptr GLshort -> IO ()
glNormalStream3svATI
  = dyn_glNormalStream3svATI ptr_glNormalStream3svATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3svATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glNormalStream3sATI #-}
 
ptr_glNormalStream3sATI :: FunPtr a
ptr_glNormalStream3sATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3sATI"
 
glNormalStream3sATI ::
                    GLenum -> GLshort -> GLshort -> GLshort -> IO ()
glNormalStream3sATI
  = dyn_glNormalStream3sATI ptr_glNormalStream3sATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3sATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glNormalStream3ivATI #-}
 
ptr_glNormalStream3ivATI :: FunPtr a
ptr_glNormalStream3ivATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3ivATI"
 
glNormalStream3ivATI :: GLenum -> Ptr GLint -> IO ()
glNormalStream3ivATI
  = dyn_glNormalStream3ivATI ptr_glNormalStream3ivATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3ivATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glNormalStream3iATI #-}
 
ptr_glNormalStream3iATI :: FunPtr a
ptr_glNormalStream3iATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3iATI"
 
glNormalStream3iATI :: GLenum -> GLint -> GLint -> GLint -> IO ()
glNormalStream3iATI
  = dyn_glNormalStream3iATI ptr_glNormalStream3iATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3iATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glNormalStream3fvATI #-}
 
ptr_glNormalStream3fvATI :: FunPtr a
ptr_glNormalStream3fvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3fvATI"
 
glNormalStream3fvATI :: GLenum -> Ptr GLfloat -> IO ()
glNormalStream3fvATI
  = dyn_glNormalStream3fvATI ptr_glNormalStream3fvATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3fvATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glNormalStream3fATI #-}
 
ptr_glNormalStream3fATI :: FunPtr a
ptr_glNormalStream3fATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3fATI"
 
glNormalStream3fATI ::
                    GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ()
glNormalStream3fATI
  = dyn_glNormalStream3fATI ptr_glNormalStream3fATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3fATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glNormalStream3dvATI #-}
 
ptr_glNormalStream3dvATI :: FunPtr a
ptr_glNormalStream3dvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3dvATI"
 
glNormalStream3dvATI :: GLenum -> Ptr GLdouble -> IO ()
glNormalStream3dvATI
  = dyn_glNormalStream3dvATI ptr_glNormalStream3dvATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3dvATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glNormalStream3dATI #-}
 
ptr_glNormalStream3dATI :: FunPtr a
ptr_glNormalStream3dATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3dATI"
 
glNormalStream3dATI ::
                    GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ()
glNormalStream3dATI
  = dyn_glNormalStream3dATI ptr_glNormalStream3dATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3dATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glNormalStream3bvATI #-}
 
ptr_glNormalStream3bvATI :: FunPtr a
ptr_glNormalStream3bvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3bvATI"
 
glNormalStream3bvATI :: GLenum -> Ptr GLbyte -> IO ()
glNormalStream3bvATI
  = dyn_glNormalStream3bvATI ptr_glNormalStream3bvATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3bvATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glNormalStream3bATI #-}
 
ptr_glNormalStream3bATI :: FunPtr a
ptr_glNormalStream3bATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glNormalStream3bATI"
 
glNormalStream3bATI ::
                    GLenum -> GLbyte -> GLbyte -> GLbyte -> IO ()
glNormalStream3bATI
  = dyn_glNormalStream3bATI ptr_glNormalStream3bATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalStream3bATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLbyte -> GLbyte -> GLbyte -> IO ())
 
{-# NOINLINE ptr_glClientActiveVertexStreamATI #-}
 
ptr_glClientActiveVertexStreamATI :: FunPtr a
ptr_glClientActiveVertexStreamATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_streams"
        "glClientActiveVertexStreamATI"
 
glClientActiveVertexStreamATI :: GLenum -> IO ()
glClientActiveVertexStreamATI
  = dyn_glClientActiveVertexStreamATI
      ptr_glClientActiveVertexStreamATI
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glClientActiveVertexStreamATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_VERTEX_STREAM7_ATI :: GLenum
gl_VERTEX_STREAM7_ATI = 34675
 
gl_VERTEX_STREAM6_ATI :: GLenum
gl_VERTEX_STREAM6_ATI = 34674
 
gl_VERTEX_STREAM5_ATI :: GLenum
gl_VERTEX_STREAM5_ATI = 34673
 
gl_VERTEX_STREAM4_ATI :: GLenum
gl_VERTEX_STREAM4_ATI = 34672
 
gl_VERTEX_STREAM3_ATI :: GLenum
gl_VERTEX_STREAM3_ATI = 34671
 
gl_VERTEX_STREAM2_ATI :: GLenum
gl_VERTEX_STREAM2_ATI = 34670
 
gl_VERTEX_STREAM1_ATI :: GLenum
gl_VERTEX_STREAM1_ATI = 34669
 
gl_VERTEX_STREAM0_ATI :: GLenum
gl_VERTEX_STREAM0_ATI = 34668
 
gl_VERTEX_SOURCE_ATI :: GLenum
gl_VERTEX_SOURCE_ATI = 34676
 
gl_MAX_VERTEX_STREAMS_ATI :: GLenum
gl_MAX_VERTEX_STREAMS_ATI = 34667