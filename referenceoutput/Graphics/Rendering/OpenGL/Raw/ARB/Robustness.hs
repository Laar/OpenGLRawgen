{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.Robustness
       (glGetnUniformdvARB, glGetnUniformuivARB, glGetnUniformivARB,
        glGetnUniformfvARB, glGetnCompressedTexImageARB, glReadnPixelsARB,
        glGetnTexImageARB, glGetnMinmaxARB, glGetnHistogramARB,
        glGetnSeparableFilterARB, glGetnConvolutionFilterARB,
        glGetnColorTableARB, glGetnPolygonStippleARB, glGetnPixelMapusvARB,
        glGetnPixelMapuivARB, glGetnPixelMapfvARB, glGetnMapivARB,
        glGetnMapfvARB, glGetnMapdvARB, glGetGraphicsResetStatusARB,
        gl_NO_RESET_NOTIFICATION_ARB, gl_RESET_NOTIFICATION_STRATEGY_ARB,
        gl_UNKNOWN_CONTEXT_RESET_ARB, gl_INNOCENT_CONTEXT_RESET_ARB,
        gl_GUILTY_CONTEXT_RESET_ARB, gl_LOSE_CONTEXT_ON_RESET_ARB,
        gl_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB, gl_NO_ERROR)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11
       (gl_NO_ERROR)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetnUniformdvARB #-}
 
ptr_glGetnUniformdvARB :: FunPtr a
ptr_glGetnUniformdvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnUniformdvARB"
 
glGetnUniformdvARB ::
                   GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()
glGetnUniformdvARB = dyn_glGetnUniformdvARB ptr_glGetnUniformdvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnUniformdvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetnUniformuivARB #-}
 
ptr_glGetnUniformuivARB :: FunPtr a
ptr_glGetnUniformuivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnUniformuivARB"
 
glGetnUniformuivARB ::
                    GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()
glGetnUniformuivARB
  = dyn_glGetnUniformuivARB ptr_glGetnUniformuivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnUniformuivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetnUniformivARB #-}
 
ptr_glGetnUniformivARB :: FunPtr a
ptr_glGetnUniformivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnUniformivARB"
 
glGetnUniformivARB ::
                   GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()
glGetnUniformivARB = dyn_glGetnUniformivARB ptr_glGetnUniformivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnUniformivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetnUniformfvARB #-}
 
ptr_glGetnUniformfvARB :: FunPtr a
ptr_glGetnUniformfvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnUniformfvARB"
 
glGetnUniformfvARB ::
                   GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()
glGetnUniformfvARB = dyn_glGetnUniformfvARB ptr_glGetnUniformfvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnUniformfvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetnCompressedTexImageARB #-}
 
ptr_glGetnCompressedTexImageARB :: FunPtr a
ptr_glGetnCompressedTexImageARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnCompressedTexImageARB"
 
glGetnCompressedTexImageARB ::
                            GLenum -> GLint -> GLsizei -> Ptr a -> IO ()
glGetnCompressedTexImageARB
  = dyn_glGetnCompressedTexImageARB ptr_glGetnCompressedTexImageARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetnCompressedTexImageARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glReadnPixelsARB #-}
 
ptr_glReadnPixelsARB :: FunPtr a
ptr_glReadnPixelsARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glReadnPixelsARB"
 
glReadnPixelsARB ::
                 GLint ->
                   GLint ->
                     GLsizei -> GLsizei -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glReadnPixelsARB = dyn_glReadnPixelsARB ptr_glReadnPixelsARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glReadnPixelsARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint ->
                    GLint ->
                      GLsizei ->
                        GLsizei -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetnTexImageARB #-}
 
ptr_glGetnTexImageARB :: FunPtr a
ptr_glGetnTexImageARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnTexImageARB"
 
glGetnTexImageARB ::
                  GLenum -> GLint -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glGetnTexImageARB = dyn_glGetnTexImageARB ptr_glGetnTexImageARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnTexImageARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetnMinmaxARB #-}
 
ptr_glGetnMinmaxARB :: FunPtr a
ptr_glGetnMinmaxARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnMinmaxARB"
 
glGetnMinmaxARB ::
                GLenum ->
                  GLboolean -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glGetnMinmaxARB = dyn_glGetnMinmaxARB ptr_glGetnMinmaxARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnMinmaxARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLboolean -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetnHistogramARB #-}
 
ptr_glGetnHistogramARB :: FunPtr a
ptr_glGetnHistogramARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnHistogramARB"
 
glGetnHistogramARB ::
                   GLenum ->
                     GLboolean -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glGetnHistogramARB = dyn_glGetnHistogramARB ptr_glGetnHistogramARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnHistogramARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLboolean -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetnSeparableFilterARB #-}
 
ptr_glGetnSeparableFilterARB :: FunPtr a
ptr_glGetnSeparableFilterARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnSeparableFilterARB"
 
glGetnSeparableFilterARB ::
                         GLenum ->
                           GLenum ->
                             GLenum -> GLsizei -> Ptr a -> GLsizei -> Ptr a -> Ptr a -> IO ()
glGetnSeparableFilterARB
  = dyn_glGetnSeparableFilterARB ptr_glGetnSeparableFilterARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetnSeparableFilterARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLenum -> GLsizei -> Ptr a -> GLsizei -> Ptr a -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetnConvolutionFilterARB #-}
 
ptr_glGetnConvolutionFilterARB :: FunPtr a
ptr_glGetnConvolutionFilterARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnConvolutionFilterARB"
 
glGetnConvolutionFilterARB ::
                           GLenum -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glGetnConvolutionFilterARB
  = dyn_glGetnConvolutionFilterARB ptr_glGetnConvolutionFilterARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetnConvolutionFilterARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetnColorTableARB #-}
 
ptr_glGetnColorTableARB :: FunPtr a
ptr_glGetnColorTableARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnColorTableARB"
 
glGetnColorTableARB ::
                    GLenum -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glGetnColorTableARB
  = dyn_glGetnColorTableARB ptr_glGetnColorTableARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnColorTableARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetnPolygonStippleARB #-}
 
ptr_glGetnPolygonStippleARB :: FunPtr a
ptr_glGetnPolygonStippleARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnPolygonStippleARB"
 
glGetnPolygonStippleARB :: GLsizei -> Ptr GLubyte -> IO ()
glGetnPolygonStippleARB
  = dyn_glGetnPolygonStippleARB ptr_glGetnPolygonStippleARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnPolygonStippleARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glGetnPixelMapusvARB #-}
 
ptr_glGetnPixelMapusvARB :: FunPtr a
ptr_glGetnPixelMapusvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnPixelMapusvARB"
 
glGetnPixelMapusvARB :: GLenum -> GLsizei -> Ptr GLushort -> IO ()
glGetnPixelMapusvARB
  = dyn_glGetnPixelMapusvARB ptr_glGetnPixelMapusvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnPixelMapusvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glGetnPixelMapuivARB #-}
 
ptr_glGetnPixelMapuivARB :: FunPtr a
ptr_glGetnPixelMapuivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnPixelMapuivARB"
 
glGetnPixelMapuivARB :: GLenum -> GLsizei -> Ptr GLuint -> IO ()
glGetnPixelMapuivARB
  = dyn_glGetnPixelMapuivARB ptr_glGetnPixelMapuivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnPixelMapuivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetnPixelMapfvARB #-}
 
ptr_glGetnPixelMapfvARB :: FunPtr a
ptr_glGetnPixelMapfvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnPixelMapfvARB"
 
glGetnPixelMapfvARB :: GLenum -> GLsizei -> Ptr GLfloat -> IO ()
glGetnPixelMapfvARB
  = dyn_glGetnPixelMapfvARB ptr_glGetnPixelMapfvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnPixelMapfvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetnMapivARB #-}
 
ptr_glGetnMapivARB :: FunPtr a
ptr_glGetnMapivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnMapivARB"
 
glGetnMapivARB :: GLenum -> GLenum -> GLsizei -> Ptr GLint -> IO ()
glGetnMapivARB = dyn_glGetnMapivARB ptr_glGetnMapivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnMapivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetnMapfvARB #-}
 
ptr_glGetnMapfvARB :: FunPtr a
ptr_glGetnMapfvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnMapfvARB"
 
glGetnMapfvARB ::
               GLenum -> GLenum -> GLsizei -> Ptr GLfloat -> IO ()
glGetnMapfvARB = dyn_glGetnMapfvARB ptr_glGetnMapfvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnMapfvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetnMapdvARB #-}
 
ptr_glGetnMapdvARB :: FunPtr a
ptr_glGetnMapdvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnMapdvARB"
 
glGetnMapdvARB ::
               GLenum -> GLenum -> GLsizei -> Ptr GLdouble -> IO ()
glGetnMapdvARB = dyn_glGetnMapdvARB ptr_glGetnMapdvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnMapdvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetGraphicsResetStatusARB #-}
 
ptr_glGetGraphicsResetStatusARB :: FunPtr a
ptr_glGetGraphicsResetStatusARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetGraphicsResetStatusARB"
 
glGetGraphicsResetStatusARB :: IO GLenum
glGetGraphicsResetStatusARB
  = dyn_glGetGraphicsResetStatusARB ptr_glGetGraphicsResetStatusARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetGraphicsResetStatusARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (IO GLenum)
 
gl_NO_RESET_NOTIFICATION_ARB :: GLenum
gl_NO_RESET_NOTIFICATION_ARB = 33377
 
gl_RESET_NOTIFICATION_STRATEGY_ARB :: GLenum
gl_RESET_NOTIFICATION_STRATEGY_ARB = 33366
 
gl_UNKNOWN_CONTEXT_RESET_ARB :: GLenum
gl_UNKNOWN_CONTEXT_RESET_ARB = 33365
 
gl_INNOCENT_CONTEXT_RESET_ARB :: GLenum
gl_INNOCENT_CONTEXT_RESET_ARB = 33364
 
gl_GUILTY_CONTEXT_RESET_ARB :: GLenum
gl_GUILTY_CONTEXT_RESET_ARB = 33363
 
gl_LOSE_CONTEXT_ON_RESET_ARB :: GLenum
gl_LOSE_CONTEXT_ON_RESET_ARB = 33362
 
gl_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB :: GLbitfield
gl_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB = 4