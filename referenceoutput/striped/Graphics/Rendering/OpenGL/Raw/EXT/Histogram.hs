{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.Histogram
       (glResetMinmax, glResetHistogram, glMinmax, glHistogram,
        glGetMinmaxParameteriv, glGetMinmaxParameterfv, glGetMinmax,
        glGetHistogramParameteriv, glGetHistogramParameterfv,
        glGetHistogram, gl_TABLE_TOO_LARGE, gl_PROXY_HISTOGRAM,
        gl_MINMAX_SINK, gl_MINMAX_FORMAT, gl_MINMAX, gl_HISTOGRAM_WIDTH,
        gl_HISTOGRAM_SINK, gl_HISTOGRAM_RED_SIZE,
        gl_HISTOGRAM_LUMINANCE_SIZE, gl_HISTOGRAM_GREEN_SIZE,
        gl_HISTOGRAM_FORMAT, gl_HISTOGRAM, gl_HISTOGRAM_BLUE_SIZE,
        gl_HISTOGRAM_ALPHA_SIZE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glResetMinmax #-}
 
ptr_glResetMinmax :: FunPtr a
ptr_glResetMinmax
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glResetMinmaxEXT"
 
glResetMinmax :: GLenum -> IO ()
glResetMinmax = dyn_glResetMinmax ptr_glResetMinmax
 
foreign import CALLCONV unsafe "dynamic" dyn_glResetMinmax ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glResetHistogram #-}
 
ptr_glResetHistogram :: FunPtr a
ptr_glResetHistogram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glResetHistogramEXT"
 
glResetHistogram :: GLenum -> IO ()
glResetHistogram = dyn_glResetHistogram ptr_glResetHistogram
 
foreign import CALLCONV unsafe "dynamic" dyn_glResetHistogram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glMinmax #-}
 
ptr_glMinmax :: FunPtr a
ptr_glMinmax
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glMinmaxEXT"
 
glMinmax :: GLenum -> GLenum -> GLboolean -> IO ()
glMinmax = dyn_glMinmax ptr_glMinmax
 
foreign import CALLCONV unsafe "dynamic" dyn_glMinmax ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glHistogram #-}
 
ptr_glHistogram :: FunPtr a
ptr_glHistogram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glHistogramEXT"
 
glHistogram :: GLenum -> GLsizei -> GLenum -> GLboolean -> IO ()
glHistogram = dyn_glHistogram ptr_glHistogram
 
foreign import CALLCONV unsafe "dynamic" dyn_glHistogram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLenum -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glGetMinmaxParameteriv #-}
 
ptr_glGetMinmaxParameteriv :: FunPtr a
ptr_glGetMinmaxParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glGetMinmaxParameterivEXT"
 
glGetMinmaxParameteriv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetMinmaxParameteriv
  = dyn_glGetMinmaxParameteriv ptr_glGetMinmaxParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMinmaxParameteriv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMinmaxParameterfv #-}
 
ptr_glGetMinmaxParameterfv :: FunPtr a
ptr_glGetMinmaxParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glGetMinmaxParameterfvEXT"
 
glGetMinmaxParameterfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetMinmaxParameterfv
  = dyn_glGetMinmaxParameterfv ptr_glGetMinmaxParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMinmaxParameterfv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMinmax #-}
 
ptr_glGetMinmax :: FunPtr a
ptr_glGetMinmax
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glGetMinmaxEXT"
 
glGetMinmax ::
            GLenum -> GLboolean -> GLenum -> GLenum -> Ptr a -> IO ()
glGetMinmax = dyn_glGetMinmax ptr_glGetMinmax
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMinmax ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLboolean -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetHistogramParameteriv #-}
 
ptr_glGetHistogramParameteriv :: FunPtr a
ptr_glGetHistogramParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glGetHistogramParameterivEXT"
 
glGetHistogramParameteriv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetHistogramParameteriv
  = dyn_glGetHistogramParameteriv ptr_glGetHistogramParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetHistogramParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetHistogramParameterfv #-}
 
ptr_glGetHistogramParameterfv :: FunPtr a
ptr_glGetHistogramParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glGetHistogramParameterfvEXT"
 
glGetHistogramParameterfv ::
                          GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetHistogramParameterfv
  = dyn_glGetHistogramParameterfv ptr_glGetHistogramParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetHistogramParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetHistogram #-}
 
ptr_glGetHistogram :: FunPtr a
ptr_glGetHistogram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glGetHistogramEXT"
 
glGetHistogram ::
               GLenum -> GLboolean -> GLenum -> GLenum -> Ptr a -> IO ()
glGetHistogram = dyn_glGetHistogram ptr_glGetHistogram
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetHistogram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLboolean -> GLenum -> GLenum -> Ptr a -> IO ())
 
gl_TABLE_TOO_LARGE :: GLenum
gl_TABLE_TOO_LARGE = 32817
 
gl_PROXY_HISTOGRAM :: GLenum
gl_PROXY_HISTOGRAM = 32805
 
gl_MINMAX_SINK :: GLenum
gl_MINMAX_SINK = 32816
 
gl_MINMAX_FORMAT :: GLenum
gl_MINMAX_FORMAT = 32815
 
gl_MINMAX :: GLenum
gl_MINMAX = 32814
 
gl_HISTOGRAM_WIDTH :: GLenum
gl_HISTOGRAM_WIDTH = 32806
 
gl_HISTOGRAM_SINK :: GLenum
gl_HISTOGRAM_SINK = 32813
 
gl_HISTOGRAM_RED_SIZE :: GLenum
gl_HISTOGRAM_RED_SIZE = 32808
 
gl_HISTOGRAM_LUMINANCE_SIZE :: GLenum
gl_HISTOGRAM_LUMINANCE_SIZE = 32812
 
gl_HISTOGRAM_GREEN_SIZE :: GLenum
gl_HISTOGRAM_GREEN_SIZE = 32809
 
gl_HISTOGRAM_FORMAT :: GLenum
gl_HISTOGRAM_FORMAT = 32807
 
gl_HISTOGRAM :: GLenum
gl_HISTOGRAM = 32804
 
gl_HISTOGRAM_BLUE_SIZE :: GLenum
gl_HISTOGRAM_BLUE_SIZE = 32810
 
gl_HISTOGRAM_ALPHA_SIZE :: GLenum
gl_HISTOGRAM_ALPHA_SIZE = 32811