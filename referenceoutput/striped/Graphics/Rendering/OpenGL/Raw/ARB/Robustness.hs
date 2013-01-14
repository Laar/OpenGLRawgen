{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.Robustness
       (glGetnSeparableFilter, glGetnPolygonStipple, glGetnPixelMapusv,
        glGetnPixelMapuiv, glGetnPixelMapfv, glGetnMinmax, glGetnMapiv,
        glGetnMapfv, glGetnMapdv, glGetnHistogram, glGetnConvolutionFilter,
        glGetnColorTable, glReadnPixels, glGetnUniformuiv, glGetnUniformiv,
        glGetnUniformfv, glGetnUniformdv, glGetnTexImage,
        glGetnCompressedTexImage, glGetGraphicsResetStatus,
        gl_UNKNOWN_CONTEXT_RESET, gl_RESET_NOTIFICATION_STRATEGY,
        gl_NO_RESET_NOTIFICATION, gl_NO_ERROR, gl_LOSE_CONTEXT_ON_RESET,
        gl_INNOCENT_CONTEXT_RESET, gl_GUILTY_CONTEXT_RESET,
        gl_CONTEXT_FLAG_ROBUST_ACCESS_BIT)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11
       (gl_NO_ERROR)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetnSeparableFilter #-}
 
ptr_glGetnSeparableFilter :: FunPtr a
ptr_glGetnSeparableFilter
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness_DEPRECATED"
        "glGetnSeparableFilterARB"
 
glGetnSeparableFilter ::
                      GLenum ->
                        GLenum ->
                          GLenum -> GLsizei -> Ptr a -> GLsizei -> Ptr a -> Ptr a -> IO ()
glGetnSeparableFilter
  = dyn_glGetnSeparableFilter ptr_glGetnSeparableFilter
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnSeparableFilter
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLenum -> GLsizei -> Ptr a -> GLsizei -> Ptr a -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetnPolygonStipple #-}
 
ptr_glGetnPolygonStipple :: FunPtr a
ptr_glGetnPolygonStipple
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness_DEPRECATED"
        "glGetnPolygonStippleARB"
 
glGetnPolygonStipple :: GLsizei -> Ptr GLubyte -> IO ()
glGetnPolygonStipple
  = dyn_glGetnPolygonStipple ptr_glGetnPolygonStipple
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnPolygonStipple ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glGetnPixelMapusv #-}
 
ptr_glGetnPixelMapusv :: FunPtr a
ptr_glGetnPixelMapusv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness_DEPRECATED"
        "glGetnPixelMapusvARB"
 
glGetnPixelMapusv :: GLenum -> GLsizei -> Ptr GLushort -> IO ()
glGetnPixelMapusv = dyn_glGetnPixelMapusv ptr_glGetnPixelMapusv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnPixelMapusv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glGetnPixelMapuiv #-}
 
ptr_glGetnPixelMapuiv :: FunPtr a
ptr_glGetnPixelMapuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness_DEPRECATED"
        "glGetnPixelMapuivARB"
 
glGetnPixelMapuiv :: GLenum -> GLsizei -> Ptr GLuint -> IO ()
glGetnPixelMapuiv = dyn_glGetnPixelMapuiv ptr_glGetnPixelMapuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnPixelMapuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetnPixelMapfv #-}
 
ptr_glGetnPixelMapfv :: FunPtr a
ptr_glGetnPixelMapfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness_DEPRECATED"
        "glGetnPixelMapfvARB"
 
glGetnPixelMapfv :: GLenum -> GLsizei -> Ptr GLfloat -> IO ()
glGetnPixelMapfv = dyn_glGetnPixelMapfv ptr_glGetnPixelMapfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnPixelMapfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetnMinmax #-}
 
ptr_glGetnMinmax :: FunPtr a
ptr_glGetnMinmax
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness_DEPRECATED"
        "glGetnMinmaxARB"
 
glGetnMinmax ::
             GLenum ->
               GLboolean -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glGetnMinmax = dyn_glGetnMinmax ptr_glGetnMinmax
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnMinmax ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLboolean -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetnMapiv #-}
 
ptr_glGetnMapiv :: FunPtr a
ptr_glGetnMapiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness_DEPRECATED"
        "glGetnMapivARB"
 
glGetnMapiv :: GLenum -> GLenum -> GLsizei -> Ptr GLint -> IO ()
glGetnMapiv = dyn_glGetnMapiv ptr_glGetnMapiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnMapiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetnMapfv #-}
 
ptr_glGetnMapfv :: FunPtr a
ptr_glGetnMapfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness_DEPRECATED"
        "glGetnMapfvARB"
 
glGetnMapfv :: GLenum -> GLenum -> GLsizei -> Ptr GLfloat -> IO ()
glGetnMapfv = dyn_glGetnMapfv ptr_glGetnMapfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnMapfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetnMapdv #-}
 
ptr_glGetnMapdv :: FunPtr a
ptr_glGetnMapdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness_DEPRECATED"
        "glGetnMapdvARB"
 
glGetnMapdv :: GLenum -> GLenum -> GLsizei -> Ptr GLdouble -> IO ()
glGetnMapdv = dyn_glGetnMapdv ptr_glGetnMapdv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnMapdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetnHistogram #-}
 
ptr_glGetnHistogram :: FunPtr a
ptr_glGetnHistogram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness_DEPRECATED"
        "glGetnHistogramARB"
 
glGetnHistogram ::
                GLenum ->
                  GLboolean -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glGetnHistogram = dyn_glGetnHistogram ptr_glGetnHistogram
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnHistogram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLboolean -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetnConvolutionFilter #-}
 
ptr_glGetnConvolutionFilter :: FunPtr a
ptr_glGetnConvolutionFilter
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness_DEPRECATED"
        "glGetnConvolutionFilterARB"
 
glGetnConvolutionFilter ::
                        GLenum -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glGetnConvolutionFilter
  = dyn_glGetnConvolutionFilter ptr_glGetnConvolutionFilter
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnConvolutionFilter
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetnColorTable #-}
 
ptr_glGetnColorTable :: FunPtr a
ptr_glGetnColorTable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness_DEPRECATED"
        "glGetnColorTableARB"
 
glGetnColorTable ::
                 GLenum -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glGetnColorTable = dyn_glGetnColorTable ptr_glGetnColorTable
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnColorTable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glReadnPixels #-}
 
ptr_glReadnPixels :: FunPtr a
ptr_glReadnPixels
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glReadnPixelsARB"
 
glReadnPixels ::
              GLint ->
                GLint ->
                  GLsizei -> GLsizei -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glReadnPixels = dyn_glReadnPixels ptr_glReadnPixels
 
foreign import CALLCONV unsafe "dynamic" dyn_glReadnPixels ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint ->
                    GLint ->
                      GLsizei ->
                        GLsizei -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetnUniformuiv #-}
 
ptr_glGetnUniformuiv :: FunPtr a
ptr_glGetnUniformuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnUniformuivARB"
 
glGetnUniformuiv ::
                 GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()
glGetnUniformuiv = dyn_glGetnUniformuiv ptr_glGetnUniformuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnUniformuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetnUniformiv #-}
 
ptr_glGetnUniformiv :: FunPtr a
ptr_glGetnUniformiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnUniformivARB"
 
glGetnUniformiv :: GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()
glGetnUniformiv = dyn_glGetnUniformiv ptr_glGetnUniformiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnUniformiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetnUniformfv #-}
 
ptr_glGetnUniformfv :: FunPtr a
ptr_glGetnUniformfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnUniformfvARB"
 
glGetnUniformfv ::
                GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()
glGetnUniformfv = dyn_glGetnUniformfv ptr_glGetnUniformfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnUniformfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetnUniformdv #-}
 
ptr_glGetnUniformdv :: FunPtr a
ptr_glGetnUniformdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnUniformdvARB"
 
glGetnUniformdv ::
                GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()
glGetnUniformdv = dyn_glGetnUniformdv ptr_glGetnUniformdv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnUniformdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetnTexImage #-}
 
ptr_glGetnTexImage :: FunPtr a
ptr_glGetnTexImage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnTexImageARB"
 
glGetnTexImage ::
               GLenum -> GLint -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glGetnTexImage = dyn_glGetnTexImage ptr_glGetnTexImage
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetnTexImage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetnCompressedTexImage #-}
 
ptr_glGetnCompressedTexImage :: FunPtr a
ptr_glGetnCompressedTexImage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetnCompressedTexImageARB"
 
glGetnCompressedTexImage ::
                         GLenum -> GLint -> GLsizei -> Ptr a -> IO ()
glGetnCompressedTexImage
  = dyn_glGetnCompressedTexImage ptr_glGetnCompressedTexImage
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetnCompressedTexImage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetGraphicsResetStatus #-}
 
ptr_glGetGraphicsResetStatus :: FunPtr a
ptr_glGetGraphicsResetStatus
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_robustness"
        "glGetGraphicsResetStatusARB"
 
glGetGraphicsResetStatus :: IO GLenum
glGetGraphicsResetStatus
  = dyn_glGetGraphicsResetStatus ptr_glGetGraphicsResetStatus
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetGraphicsResetStatus ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (IO GLenum)
 
gl_UNKNOWN_CONTEXT_RESET :: GLenum
gl_UNKNOWN_CONTEXT_RESET = 33365
 
gl_RESET_NOTIFICATION_STRATEGY :: GLenum
gl_RESET_NOTIFICATION_STRATEGY = 33366
 
gl_NO_RESET_NOTIFICATION :: GLenum
gl_NO_RESET_NOTIFICATION = 33377
 
gl_LOSE_CONTEXT_ON_RESET :: GLenum
gl_LOSE_CONTEXT_ON_RESET = 33362
 
gl_INNOCENT_CONTEXT_RESET :: GLenum
gl_INNOCENT_CONTEXT_RESET = 33364
 
gl_GUILTY_CONTEXT_RESET :: GLenum
gl_GUILTY_CONTEXT_RESET = 33363
 
gl_CONTEXT_FLAG_ROBUST_ACCESS_BIT :: GLbitfield
gl_CONTEXT_FLAG_ROBUST_ACCESS_BIT = 4