{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core12Compatibility
       (glResetMinmax, glResetHistogram, glMinmax, glHistogram,
        glGetMinmaxParameteriv, glGetMinmaxParameterfv, glGetMinmax,
        glGetHistogramParameteriv, glGetHistogramParameterfv,
        glGetHistogram, glSeparableFilter2D, glGetSeparableFilter,
        glGetConvolutionParameteriv, glGetConvolutionParameterfv,
        glGetConvolutionFilter, glCopyConvolutionFilter2D,
        glCopyConvolutionFilter1D, glConvolutionParameteriv,
        glConvolutionParameteri, glConvolutionParameterfv,
        glConvolutionParameterf, glConvolutionFilter2D,
        glConvolutionFilter1D, glCopyColorSubTable, glColorSubTable,
        glGetColorTableParameteriv, glGetColorTableParameterfv,
        glGetColorTable, glCopyColorTable, glColorTableParameteriv,
        glColorTableParameterfv, glColorTable, gl_ALIASED_POINT_SIZE_RANGE,
        gl_SEPARATE_SPECULAR_COLOR, gl_SINGLE_COLOR,
        gl_LIGHT_MODEL_COLOR_CONTROL, gl_RESCALE_NORMAL,
        gl_CONVOLUTION_BORDER_COLOR, gl_REPLICATE_BORDER,
        gl_CONSTANT_BORDER, gl_COLOR_TABLE_INTENSITY_SIZE,
        gl_COLOR_TABLE_LUMINANCE_SIZE, gl_COLOR_TABLE_ALPHA_SIZE,
        gl_COLOR_TABLE_BLUE_SIZE, gl_COLOR_TABLE_GREEN_SIZE,
        gl_COLOR_TABLE_RED_SIZE, gl_COLOR_TABLE_WIDTH,
        gl_COLOR_TABLE_FORMAT, gl_COLOR_TABLE_BIAS, gl_COLOR_TABLE_SCALE,
        gl_PROXY_POST_COLOR_MATRIX_COLOR_TABLE,
        gl_PROXY_POST_CONVOLUTION_COLOR_TABLE, gl_PROXY_COLOR_TABLE,
        gl_POST_COLOR_MATRIX_COLOR_TABLE, gl_POST_CONVOLUTION_COLOR_TABLE,
        gl_COLOR_TABLE, gl_POST_COLOR_MATRIX_ALPHA_BIAS,
        gl_POST_COLOR_MATRIX_BLUE_BIAS, gl_POST_COLOR_MATRIX_GREEN_BIAS,
        gl_POST_COLOR_MATRIX_RED_BIAS, gl_POST_COLOR_MATRIX_ALPHA_SCALE,
        gl_POST_COLOR_MATRIX_BLUE_SCALE, gl_POST_COLOR_MATRIX_GREEN_SCALE,
        gl_POST_COLOR_MATRIX_RED_SCALE, gl_MAX_COLOR_MATRIX_STACK_DEPTH,
        gl_COLOR_MATRIX_STACK_DEPTH, gl_COLOR_MATRIX, gl_TABLE_TOO_LARGE,
        gl_MINMAX_SINK, gl_MINMAX_FORMAT, gl_MINMAX, gl_HISTOGRAM_SINK,
        gl_HISTOGRAM_LUMINANCE_SIZE, gl_HISTOGRAM_ALPHA_SIZE,
        gl_HISTOGRAM_BLUE_SIZE, gl_HISTOGRAM_GREEN_SIZE,
        gl_HISTOGRAM_RED_SIZE, gl_HISTOGRAM_FORMAT, gl_HISTOGRAM_WIDTH,
        gl_PROXY_HISTOGRAM, gl_HISTOGRAM, gl_POST_CONVOLUTION_ALPHA_BIAS,
        gl_POST_CONVOLUTION_BLUE_BIAS, gl_POST_CONVOLUTION_GREEN_BIAS,
        gl_POST_CONVOLUTION_RED_BIAS, gl_POST_CONVOLUTION_ALPHA_SCALE,
        gl_POST_CONVOLUTION_BLUE_SCALE, gl_POST_CONVOLUTION_GREEN_SCALE,
        gl_POST_CONVOLUTION_RED_SCALE, gl_MAX_CONVOLUTION_HEIGHT,
        gl_MAX_CONVOLUTION_WIDTH, gl_CONVOLUTION_HEIGHT,
        gl_CONVOLUTION_WIDTH, gl_CONVOLUTION_FORMAT, gl_REDUCE,
        gl_CONVOLUTION_FILTER_BIAS, gl_CONVOLUTION_FILTER_SCALE,
        gl_CONVOLUTION_BORDER_MODE, gl_SEPARABLE_2D, gl_CONVOLUTION_2D,
        gl_CONVOLUTION_1D)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glResetMinmax #-}
 
ptr_glResetMinmax :: FunPtr a
ptr_glResetMinmax
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glResetMinmax"
 
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
        "GL_VERSION_1_2_DEPRECATED"
        "glResetHistogram"
 
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
        "GL_VERSION_1_2_DEPRECATED"
        "glMinmax"
 
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
        "GL_VERSION_1_2_DEPRECATED"
        "glHistogram"
 
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
        "GL_VERSION_1_2_DEPRECATED"
        "glGetMinmaxParameteriv"
 
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
        "GL_VERSION_1_2_DEPRECATED"
        "glGetMinmaxParameterfv"
 
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
        "GL_VERSION_1_2_DEPRECATED"
        "glGetMinmax"
 
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
        "GL_VERSION_1_2_DEPRECATED"
        "glGetHistogramParameteriv"
 
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
        "GL_VERSION_1_2_DEPRECATED"
        "glGetHistogramParameterfv"
 
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
        "GL_VERSION_1_2_DEPRECATED"
        "glGetHistogram"
 
glGetHistogram ::
               GLenum -> GLboolean -> GLenum -> GLenum -> Ptr a -> IO ()
glGetHistogram = dyn_glGetHistogram ptr_glGetHistogram
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetHistogram ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLboolean -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glSeparableFilter2D #-}
 
ptr_glSeparableFilter2D :: FunPtr a
ptr_glSeparableFilter2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glSeparableFilter2D"
 
glSeparableFilter2D ::
                    GLenum ->
                      GLenum ->
                        GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> Ptr a -> IO ()
glSeparableFilter2D
  = dyn_glSeparableFilter2D ptr_glSeparableFilter2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glSeparableFilter2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetSeparableFilter #-}
 
ptr_glGetSeparableFilter :: FunPtr a
ptr_glGetSeparableFilter
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glGetSeparableFilter"
 
glGetSeparableFilter ::
                     GLenum -> GLenum -> GLenum -> Ptr a -> Ptr a -> Ptr a -> IO ()
glGetSeparableFilter
  = dyn_glGetSeparableFilter ptr_glGetSeparableFilter
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetSeparableFilter ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr a -> Ptr a -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetConvolutionParameteriv #-}
 
ptr_glGetConvolutionParameteriv :: FunPtr a
ptr_glGetConvolutionParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glGetConvolutionParameteriv"
 
glGetConvolutionParameteriv ::
                            GLenum -> GLenum -> Ptr GLint -> IO ()
glGetConvolutionParameteriv
  = dyn_glGetConvolutionParameteriv ptr_glGetConvolutionParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetConvolutionParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetConvolutionParameterfv #-}
 
ptr_glGetConvolutionParameterfv :: FunPtr a
ptr_glGetConvolutionParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glGetConvolutionParameterfv"
 
glGetConvolutionParameterfv ::
                            GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetConvolutionParameterfv
  = dyn_glGetConvolutionParameterfv ptr_glGetConvolutionParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetConvolutionParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetConvolutionFilter #-}
 
ptr_glGetConvolutionFilter :: FunPtr a
ptr_glGetConvolutionFilter
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glGetConvolutionFilter"
 
glGetConvolutionFilter ::
                       GLenum -> GLenum -> GLenum -> Ptr a -> IO ()
glGetConvolutionFilter
  = dyn_glGetConvolutionFilter ptr_glGetConvolutionFilter
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetConvolutionFilter
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCopyConvolutionFilter2D #-}
 
ptr_glCopyConvolutionFilter2D :: FunPtr a
ptr_glCopyConvolutionFilter2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glCopyConvolutionFilter2D"
 
glCopyConvolutionFilter2D ::
                          GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyConvolutionFilter2D
  = dyn_glCopyConvolutionFilter2D ptr_glCopyConvolutionFilter2D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyConvolutionFilter2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyConvolutionFilter1D #-}
 
ptr_glCopyConvolutionFilter1D :: FunPtr a
ptr_glCopyConvolutionFilter1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glCopyConvolutionFilter1D"
 
glCopyConvolutionFilter1D ::
                          GLenum -> GLenum -> GLint -> GLint -> GLsizei -> IO ()
glCopyConvolutionFilter1D
  = dyn_glCopyConvolutionFilter1D ptr_glCopyConvolutionFilter1D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyConvolutionFilter1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glConvolutionParameteriv #-}
 
ptr_glConvolutionParameteriv :: FunPtr a
ptr_glConvolutionParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glConvolutionParameteriv"
 
glConvolutionParameteriv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glConvolutionParameteriv
  = dyn_glConvolutionParameteriv ptr_glConvolutionParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glConvolutionParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glConvolutionParameteri #-}
 
ptr_glConvolutionParameteri :: FunPtr a
ptr_glConvolutionParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glConvolutionParameteri"
 
glConvolutionParameteri :: GLenum -> GLenum -> GLint -> IO ()
glConvolutionParameteri
  = dyn_glConvolutionParameteri ptr_glConvolutionParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glConvolutionParameteri
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glConvolutionParameterfv #-}
 
ptr_glConvolutionParameterfv :: FunPtr a
ptr_glConvolutionParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glConvolutionParameterfv"
 
glConvolutionParameterfv ::
                         GLenum -> GLenum -> Ptr GLfloat -> IO ()
glConvolutionParameterfv
  = dyn_glConvolutionParameterfv ptr_glConvolutionParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glConvolutionParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glConvolutionParameterf #-}
 
ptr_glConvolutionParameterf :: FunPtr a
ptr_glConvolutionParameterf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glConvolutionParameterf"
 
glConvolutionParameterf :: GLenum -> GLenum -> GLfloat -> IO ()
glConvolutionParameterf
  = dyn_glConvolutionParameterf ptr_glConvolutionParameterf
 
foreign import CALLCONV unsafe "dynamic" dyn_glConvolutionParameterf
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glConvolutionFilter2D #-}
 
ptr_glConvolutionFilter2D :: FunPtr a
ptr_glConvolutionFilter2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glConvolutionFilter2D"
 
glConvolutionFilter2D ::
                      GLenum ->
                        GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glConvolutionFilter2D
  = dyn_glConvolutionFilter2D ptr_glConvolutionFilter2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glConvolutionFilter2D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glConvolutionFilter1D #-}
 
ptr_glConvolutionFilter1D :: FunPtr a
ptr_glConvolutionFilter1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glConvolutionFilter1D"
 
glConvolutionFilter1D ::
                      GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glConvolutionFilter1D
  = dyn_glConvolutionFilter1D ptr_glConvolutionFilter1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glConvolutionFilter1D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCopyColorSubTable #-}
 
ptr_glCopyColorSubTable :: FunPtr a
ptr_glCopyColorSubTable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glCopyColorSubTable"
 
glCopyColorSubTable ::
                    GLenum -> GLsizei -> GLint -> GLint -> GLsizei -> IO ()
glCopyColorSubTable
  = dyn_glCopyColorSubTable ptr_glCopyColorSubTable
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyColorSubTable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glColorSubTable #-}
 
ptr_glColorSubTable :: FunPtr a
ptr_glColorSubTable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glColorSubTable"
 
glColorSubTable ::
                GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glColorSubTable = dyn_glColorSubTable ptr_glColorSubTable
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorSubTable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetColorTableParameteriv #-}
 
ptr_glGetColorTableParameteriv :: FunPtr a
ptr_glGetColorTableParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glGetColorTableParameteriv"
 
glGetColorTableParameteriv ::
                           GLenum -> GLenum -> Ptr GLint -> IO ()
glGetColorTableParameteriv
  = dyn_glGetColorTableParameteriv ptr_glGetColorTableParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetColorTableParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetColorTableParameterfv #-}
 
ptr_glGetColorTableParameterfv :: FunPtr a
ptr_glGetColorTableParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glGetColorTableParameterfv"
 
glGetColorTableParameterfv ::
                           GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetColorTableParameterfv
  = dyn_glGetColorTableParameterfv ptr_glGetColorTableParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetColorTableParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetColorTable #-}
 
ptr_glGetColorTable :: FunPtr a
ptr_glGetColorTable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glGetColorTable"
 
glGetColorTable :: GLenum -> GLenum -> GLenum -> Ptr a -> IO ()
glGetColorTable = dyn_glGetColorTable ptr_glGetColorTable
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetColorTable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCopyColorTable #-}
 
ptr_glCopyColorTable :: FunPtr a
ptr_glCopyColorTable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glCopyColorTable"
 
glCopyColorTable ::
                 GLenum -> GLenum -> GLint -> GLint -> GLsizei -> IO ()
glCopyColorTable = dyn_glCopyColorTable ptr_glCopyColorTable
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyColorTable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glColorTableParameteriv #-}
 
ptr_glColorTableParameteriv :: FunPtr a
ptr_glColorTableParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glColorTableParameteriv"
 
glColorTableParameteriv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glColorTableParameteriv
  = dyn_glColorTableParameteriv ptr_glColorTableParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorTableParameteriv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glColorTableParameterfv #-}
 
ptr_glColorTableParameterfv :: FunPtr a
ptr_glColorTableParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glColorTableParameterfv"
 
glColorTableParameterfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glColorTableParameterfv
  = dyn_glColorTableParameterfv ptr_glColorTableParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorTableParameterfv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glColorTable #-}
 
ptr_glColorTable :: FunPtr a
ptr_glColorTable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2_DEPRECATED"
        "glColorTable"
 
glColorTable ::
             GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glColorTable = dyn_glColorTable ptr_glColorTable
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorTable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
gl_ALIASED_POINT_SIZE_RANGE :: GLenum
gl_ALIASED_POINT_SIZE_RANGE = 33901
 
gl_SEPARATE_SPECULAR_COLOR :: GLenum
gl_SEPARATE_SPECULAR_COLOR = 33274
 
gl_SINGLE_COLOR :: GLenum
gl_SINGLE_COLOR = 33273
 
gl_LIGHT_MODEL_COLOR_CONTROL :: GLenum
gl_LIGHT_MODEL_COLOR_CONTROL = 33272
 
gl_RESCALE_NORMAL :: GLenum
gl_RESCALE_NORMAL = 32826
 
gl_CONVOLUTION_BORDER_COLOR :: GLenum
gl_CONVOLUTION_BORDER_COLOR = 33108
 
gl_REPLICATE_BORDER :: GLenum
gl_REPLICATE_BORDER = 33107
 
gl_CONSTANT_BORDER :: GLenum
gl_CONSTANT_BORDER = 33105
 
gl_COLOR_TABLE_INTENSITY_SIZE :: GLenum
gl_COLOR_TABLE_INTENSITY_SIZE = 32991
 
gl_COLOR_TABLE_LUMINANCE_SIZE :: GLenum
gl_COLOR_TABLE_LUMINANCE_SIZE = 32990
 
gl_COLOR_TABLE_ALPHA_SIZE :: GLenum
gl_COLOR_TABLE_ALPHA_SIZE = 32989
 
gl_COLOR_TABLE_BLUE_SIZE :: GLenum
gl_COLOR_TABLE_BLUE_SIZE = 32988
 
gl_COLOR_TABLE_GREEN_SIZE :: GLenum
gl_COLOR_TABLE_GREEN_SIZE = 32987
 
gl_COLOR_TABLE_RED_SIZE :: GLenum
gl_COLOR_TABLE_RED_SIZE = 32986
 
gl_COLOR_TABLE_WIDTH :: GLenum
gl_COLOR_TABLE_WIDTH = 32985
 
gl_COLOR_TABLE_FORMAT :: GLenum
gl_COLOR_TABLE_FORMAT = 32984
 
gl_COLOR_TABLE_BIAS :: GLenum
gl_COLOR_TABLE_BIAS = 32983
 
gl_COLOR_TABLE_SCALE :: GLenum
gl_COLOR_TABLE_SCALE = 32982
 
gl_PROXY_POST_COLOR_MATRIX_COLOR_TABLE :: GLenum
gl_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = 32981
 
gl_PROXY_POST_CONVOLUTION_COLOR_TABLE :: GLenum
gl_PROXY_POST_CONVOLUTION_COLOR_TABLE = 32980
 
gl_PROXY_COLOR_TABLE :: GLenum
gl_PROXY_COLOR_TABLE = 32979
 
gl_POST_COLOR_MATRIX_COLOR_TABLE :: GLenum
gl_POST_COLOR_MATRIX_COLOR_TABLE = 32978
 
gl_POST_CONVOLUTION_COLOR_TABLE :: GLenum
gl_POST_CONVOLUTION_COLOR_TABLE = 32977
 
gl_COLOR_TABLE :: GLenum
gl_COLOR_TABLE = 32976
 
gl_POST_COLOR_MATRIX_ALPHA_BIAS :: GLenum
gl_POST_COLOR_MATRIX_ALPHA_BIAS = 32955
 
gl_POST_COLOR_MATRIX_BLUE_BIAS :: GLenum
gl_POST_COLOR_MATRIX_BLUE_BIAS = 32954
 
gl_POST_COLOR_MATRIX_GREEN_BIAS :: GLenum
gl_POST_COLOR_MATRIX_GREEN_BIAS = 32953
 
gl_POST_COLOR_MATRIX_RED_BIAS :: GLenum
gl_POST_COLOR_MATRIX_RED_BIAS = 32952
 
gl_POST_COLOR_MATRIX_ALPHA_SCALE :: GLenum
gl_POST_COLOR_MATRIX_ALPHA_SCALE = 32951
 
gl_POST_COLOR_MATRIX_BLUE_SCALE :: GLenum
gl_POST_COLOR_MATRIX_BLUE_SCALE = 32950
 
gl_POST_COLOR_MATRIX_GREEN_SCALE :: GLenum
gl_POST_COLOR_MATRIX_GREEN_SCALE = 32949
 
gl_POST_COLOR_MATRIX_RED_SCALE :: GLenum
gl_POST_COLOR_MATRIX_RED_SCALE = 32948
 
gl_MAX_COLOR_MATRIX_STACK_DEPTH :: GLenum
gl_MAX_COLOR_MATRIX_STACK_DEPTH = 32947
 
gl_COLOR_MATRIX_STACK_DEPTH :: GLenum
gl_COLOR_MATRIX_STACK_DEPTH = 32946
 
gl_COLOR_MATRIX :: GLenum
gl_COLOR_MATRIX = 32945
 
gl_TABLE_TOO_LARGE :: GLenum
gl_TABLE_TOO_LARGE = 32817
 
gl_MINMAX_SINK :: GLenum
gl_MINMAX_SINK = 32816
 
gl_MINMAX_FORMAT :: GLenum
gl_MINMAX_FORMAT = 32815
 
gl_MINMAX :: GLenum
gl_MINMAX = 32814
 
gl_HISTOGRAM_SINK :: GLenum
gl_HISTOGRAM_SINK = 32813
 
gl_HISTOGRAM_LUMINANCE_SIZE :: GLenum
gl_HISTOGRAM_LUMINANCE_SIZE = 32812
 
gl_HISTOGRAM_ALPHA_SIZE :: GLenum
gl_HISTOGRAM_ALPHA_SIZE = 32811
 
gl_HISTOGRAM_BLUE_SIZE :: GLenum
gl_HISTOGRAM_BLUE_SIZE = 32810
 
gl_HISTOGRAM_GREEN_SIZE :: GLenum
gl_HISTOGRAM_GREEN_SIZE = 32809
 
gl_HISTOGRAM_RED_SIZE :: GLenum
gl_HISTOGRAM_RED_SIZE = 32808
 
gl_HISTOGRAM_FORMAT :: GLenum
gl_HISTOGRAM_FORMAT = 32807
 
gl_HISTOGRAM_WIDTH :: GLenum
gl_HISTOGRAM_WIDTH = 32806
 
gl_PROXY_HISTOGRAM :: GLenum
gl_PROXY_HISTOGRAM = 32805
 
gl_HISTOGRAM :: GLenum
gl_HISTOGRAM = 32804
 
gl_POST_CONVOLUTION_ALPHA_BIAS :: GLenum
gl_POST_CONVOLUTION_ALPHA_BIAS = 32803
 
gl_POST_CONVOLUTION_BLUE_BIAS :: GLenum
gl_POST_CONVOLUTION_BLUE_BIAS = 32802
 
gl_POST_CONVOLUTION_GREEN_BIAS :: GLenum
gl_POST_CONVOLUTION_GREEN_BIAS = 32801
 
gl_POST_CONVOLUTION_RED_BIAS :: GLenum
gl_POST_CONVOLUTION_RED_BIAS = 32800
 
gl_POST_CONVOLUTION_ALPHA_SCALE :: GLenum
gl_POST_CONVOLUTION_ALPHA_SCALE = 32799
 
gl_POST_CONVOLUTION_BLUE_SCALE :: GLenum
gl_POST_CONVOLUTION_BLUE_SCALE = 32798
 
gl_POST_CONVOLUTION_GREEN_SCALE :: GLenum
gl_POST_CONVOLUTION_GREEN_SCALE = 32797
 
gl_POST_CONVOLUTION_RED_SCALE :: GLenum
gl_POST_CONVOLUTION_RED_SCALE = 32796
 
gl_MAX_CONVOLUTION_HEIGHT :: GLenum
gl_MAX_CONVOLUTION_HEIGHT = 32795
 
gl_MAX_CONVOLUTION_WIDTH :: GLenum
gl_MAX_CONVOLUTION_WIDTH = 32794
 
gl_CONVOLUTION_HEIGHT :: GLenum
gl_CONVOLUTION_HEIGHT = 32793
 
gl_CONVOLUTION_WIDTH :: GLenum
gl_CONVOLUTION_WIDTH = 32792
 
gl_CONVOLUTION_FORMAT :: GLenum
gl_CONVOLUTION_FORMAT = 32791
 
gl_REDUCE :: GLenum
gl_REDUCE = 32790
 
gl_CONVOLUTION_FILTER_BIAS :: GLenum
gl_CONVOLUTION_FILTER_BIAS = 32789
 
gl_CONVOLUTION_FILTER_SCALE :: GLenum
gl_CONVOLUTION_FILTER_SCALE = 32788
 
gl_CONVOLUTION_BORDER_MODE :: GLenum
gl_CONVOLUTION_BORDER_MODE = 32787
 
gl_SEPARABLE_2D :: GLenum
gl_SEPARABLE_2D = 32786
 
gl_CONVOLUTION_2D :: GLenum
gl_CONVOLUTION_2D = 32785
 
gl_CONVOLUTION_1D :: GLenum
gl_CONVOLUTION_1D = 32784