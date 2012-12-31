{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.Histogram
       (glResetMinmaxEXT, glResetHistogramEXT, glMinmaxEXT,
        glHistogramEXT, glGetMinmaxParameterivEXT,
        glGetMinmaxParameterfvEXT, glGetMinmaxEXT,
        glGetHistogramParameterivEXT, glGetHistogramParameterfvEXT,
        glGetHistogramEXT, gl_TABLE_TOO_LARGE_EXT, gl_PROXY_HISTOGRAM_EXT,
        gl_MINMAX_SINK_EXT, gl_MINMAX_FORMAT_EXT, gl_MINMAX_EXT,
        gl_HISTOGRAM_WIDTH_EXT, gl_HISTOGRAM_SINK_EXT,
        gl_HISTOGRAM_RED_SIZE_EXT, gl_HISTOGRAM_LUMINANCE_SIZE_EXT,
        gl_HISTOGRAM_GREEN_SIZE_EXT, gl_HISTOGRAM_FORMAT_EXT,
        gl_HISTOGRAM_EXT, gl_HISTOGRAM_BLUE_SIZE_EXT,
        gl_HISTOGRAM_ALPHA_SIZE_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glResetMinmaxEXT #-}
 
ptr_glResetMinmaxEXT :: FunPtr a
ptr_glResetMinmaxEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glResetMinmaxEXT"
 
glResetMinmaxEXT :: GLenum -> IO ()
glResetMinmaxEXT = dyn_glResetMinmaxEXT ptr_glResetMinmaxEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glResetMinmaxEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glResetHistogramEXT #-}
 
ptr_glResetHistogramEXT :: FunPtr a
ptr_glResetHistogramEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glResetHistogramEXT"
 
glResetHistogramEXT :: GLenum -> IO ()
glResetHistogramEXT
  = dyn_glResetHistogramEXT ptr_glResetHistogramEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glResetHistogramEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glMinmaxEXT #-}
 
ptr_glMinmaxEXT :: FunPtr a
ptr_glMinmaxEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glMinmaxEXT"
 
glMinmaxEXT :: GLenum -> GLenum -> GLboolean -> IO ()
glMinmaxEXT = dyn_glMinmaxEXT ptr_glMinmaxEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMinmaxEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glHistogramEXT #-}
 
ptr_glHistogramEXT :: FunPtr a
ptr_glHistogramEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glHistogramEXT"
 
glHistogramEXT :: GLenum -> GLsizei -> GLenum -> GLboolean -> IO ()
glHistogramEXT = dyn_glHistogramEXT ptr_glHistogramEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glHistogramEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLenum -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glGetMinmaxParameterivEXT #-}
 
ptr_glGetMinmaxParameterivEXT :: FunPtr a
ptr_glGetMinmaxParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glGetMinmaxParameterivEXT"
 
glGetMinmaxParameterivEXT :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetMinmaxParameterivEXT
  = dyn_glGetMinmaxParameterivEXT ptr_glGetMinmaxParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMinmaxParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMinmaxParameterfvEXT #-}
 
ptr_glGetMinmaxParameterfvEXT :: FunPtr a
ptr_glGetMinmaxParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glGetMinmaxParameterfvEXT"
 
glGetMinmaxParameterfvEXT ::
                          GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetMinmaxParameterfvEXT
  = dyn_glGetMinmaxParameterfvEXT ptr_glGetMinmaxParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMinmaxParameterfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMinmaxEXT #-}
 
ptr_glGetMinmaxEXT :: FunPtr a
ptr_glGetMinmaxEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glGetMinmaxEXT"
 
glGetMinmaxEXT ::
               GLenum -> GLboolean -> GLenum -> GLenum -> Ptr a -> IO ()
glGetMinmaxEXT = dyn_glGetMinmaxEXT ptr_glGetMinmaxEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMinmaxEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLboolean -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetHistogramParameterivEXT #-}
 
ptr_glGetHistogramParameterivEXT :: FunPtr a
ptr_glGetHistogramParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glGetHistogramParameterivEXT"
 
glGetHistogramParameterivEXT ::
                             GLenum -> GLenum -> Ptr GLint -> IO ()
glGetHistogramParameterivEXT
  = dyn_glGetHistogramParameterivEXT ptr_glGetHistogramParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetHistogramParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetHistogramParameterfvEXT #-}
 
ptr_glGetHistogramParameterfvEXT :: FunPtr a
ptr_glGetHistogramParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glGetHistogramParameterfvEXT"
 
glGetHistogramParameterfvEXT ::
                             GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetHistogramParameterfvEXT
  = dyn_glGetHistogramParameterfvEXT ptr_glGetHistogramParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetHistogramParameterfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetHistogramEXT #-}
 
ptr_glGetHistogramEXT :: FunPtr a
ptr_glGetHistogramEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_histogram"
        "glGetHistogramEXT"
 
glGetHistogramEXT ::
                  GLenum -> GLboolean -> GLenum -> GLenum -> Ptr a -> IO ()
glGetHistogramEXT = dyn_glGetHistogramEXT ptr_glGetHistogramEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetHistogramEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLboolean -> GLenum -> GLenum -> Ptr a -> IO ())
 
gl_TABLE_TOO_LARGE_EXT :: GLenum
gl_TABLE_TOO_LARGE_EXT = 32817
 
gl_PROXY_HISTOGRAM_EXT :: GLenum
gl_PROXY_HISTOGRAM_EXT = 32805
 
gl_MINMAX_SINK_EXT :: GLenum
gl_MINMAX_SINK_EXT = 32816
 
gl_MINMAX_FORMAT_EXT :: GLenum
gl_MINMAX_FORMAT_EXT = 32815
 
gl_MINMAX_EXT :: GLenum
gl_MINMAX_EXT = 32814
 
gl_HISTOGRAM_WIDTH_EXT :: GLenum
gl_HISTOGRAM_WIDTH_EXT = 32806
 
gl_HISTOGRAM_SINK_EXT :: GLenum
gl_HISTOGRAM_SINK_EXT = 32813
 
gl_HISTOGRAM_RED_SIZE_EXT :: GLenum
gl_HISTOGRAM_RED_SIZE_EXT = 32808
 
gl_HISTOGRAM_LUMINANCE_SIZE_EXT :: GLenum
gl_HISTOGRAM_LUMINANCE_SIZE_EXT = 32812
 
gl_HISTOGRAM_GREEN_SIZE_EXT :: GLenum
gl_HISTOGRAM_GREEN_SIZE_EXT = 32809
 
gl_HISTOGRAM_FORMAT_EXT :: GLenum
gl_HISTOGRAM_FORMAT_EXT = 32807
 
gl_HISTOGRAM_EXT :: GLenum
gl_HISTOGRAM_EXT = 32804
 
gl_HISTOGRAM_BLUE_SIZE_EXT :: GLenum
gl_HISTOGRAM_BLUE_SIZE_EXT = 32810
 
gl_HISTOGRAM_ALPHA_SIZE_EXT :: GLenum
gl_HISTOGRAM_ALPHA_SIZE_EXT = 32811