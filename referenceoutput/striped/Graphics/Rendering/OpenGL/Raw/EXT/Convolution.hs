{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.Convolution
       (glSeparableFilter2D, glGetSeparableFilter,
        glGetConvolutionParameteriv, glGetConvolutionParameterfv,
        glGetConvolutionFilter, glCopyConvolutionFilter2D,
        glCopyConvolutionFilter1D, glConvolutionParameteriv,
        glConvolutionParameteri, glConvolutionParameterfv,
        glConvolutionParameterf, glConvolutionFilter2D,
        glConvolutionFilter1D, gl_SEPARABLE_2D, gl_REDUCE,
        gl_POST_CONVOLUTION_RED_SCALE, gl_POST_CONVOLUTION_RED_BIAS,
        gl_POST_CONVOLUTION_GREEN_SCALE, gl_POST_CONVOLUTION_GREEN_BIAS,
        gl_POST_CONVOLUTION_BLUE_SCALE, gl_POST_CONVOLUTION_BLUE_BIAS,
        gl_POST_CONVOLUTION_ALPHA_SCALE, gl_POST_CONVOLUTION_ALPHA_BIAS,
        gl_MAX_CONVOLUTION_WIDTH, gl_MAX_CONVOLUTION_HEIGHT,
        gl_CONVOLUTION_WIDTH, gl_CONVOLUTION_HEIGHT, gl_CONVOLUTION_FORMAT,
        gl_CONVOLUTION_FILTER_SCALE, gl_CONVOLUTION_FILTER_BIAS,
        gl_CONVOLUTION_BORDER_MODE, gl_CONVOLUTION_2D, gl_CONVOLUTION_1D)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSeparableFilter2D #-}
 
ptr_glSeparableFilter2D :: FunPtr a
ptr_glSeparableFilter2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_convolution"
        "glSeparableFilter2DEXT"
 
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
        "GL_EXT_convolution"
        "glGetSeparableFilterEXT"
 
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
        "GL_EXT_convolution"
        "glGetConvolutionParameterivEXT"
 
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
        "GL_EXT_convolution"
        "glGetConvolutionParameterfvEXT"
 
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
        "GL_EXT_convolution"
        "glGetConvolutionFilterEXT"
 
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
        "GL_EXT_convolution"
        "glCopyConvolutionFilter2DEXT"
 
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
        "GL_EXT_convolution"
        "glCopyConvolutionFilter1DEXT"
 
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
        "GL_EXT_convolution"
        "glConvolutionParameterivEXT"
 
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
        "GL_EXT_convolution"
        "glConvolutionParameteriEXT"
 
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
        "GL_EXT_convolution"
        "glConvolutionParameterfvEXT"
 
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
        "GL_EXT_convolution"
        "glConvolutionParameterfEXT"
 
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
        "GL_EXT_convolution"
        "glConvolutionFilter2DEXT"
 
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
        "GL_EXT_convolution"
        "glConvolutionFilter1DEXT"
 
glConvolutionFilter1D ::
                      GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glConvolutionFilter1D
  = dyn_glConvolutionFilter1D ptr_glConvolutionFilter1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glConvolutionFilter1D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
gl_SEPARABLE_2D :: GLenum
gl_SEPARABLE_2D = 32786
 
gl_REDUCE :: GLenum
gl_REDUCE = 32790
 
gl_POST_CONVOLUTION_RED_SCALE :: GLenum
gl_POST_CONVOLUTION_RED_SCALE = 32796
 
gl_POST_CONVOLUTION_RED_BIAS :: GLenum
gl_POST_CONVOLUTION_RED_BIAS = 32800
 
gl_POST_CONVOLUTION_GREEN_SCALE :: GLenum
gl_POST_CONVOLUTION_GREEN_SCALE = 32797
 
gl_POST_CONVOLUTION_GREEN_BIAS :: GLenum
gl_POST_CONVOLUTION_GREEN_BIAS = 32801
 
gl_POST_CONVOLUTION_BLUE_SCALE :: GLenum
gl_POST_CONVOLUTION_BLUE_SCALE = 32798
 
gl_POST_CONVOLUTION_BLUE_BIAS :: GLenum
gl_POST_CONVOLUTION_BLUE_BIAS = 32802
 
gl_POST_CONVOLUTION_ALPHA_SCALE :: GLenum
gl_POST_CONVOLUTION_ALPHA_SCALE = 32799
 
gl_POST_CONVOLUTION_ALPHA_BIAS :: GLenum
gl_POST_CONVOLUTION_ALPHA_BIAS = 32803
 
gl_MAX_CONVOLUTION_WIDTH :: GLenum
gl_MAX_CONVOLUTION_WIDTH = 32794
 
gl_MAX_CONVOLUTION_HEIGHT :: GLenum
gl_MAX_CONVOLUTION_HEIGHT = 32795
 
gl_CONVOLUTION_WIDTH :: GLenum
gl_CONVOLUTION_WIDTH = 32792
 
gl_CONVOLUTION_HEIGHT :: GLenum
gl_CONVOLUTION_HEIGHT = 32793
 
gl_CONVOLUTION_FORMAT :: GLenum
gl_CONVOLUTION_FORMAT = 32791
 
gl_CONVOLUTION_FILTER_SCALE :: GLenum
gl_CONVOLUTION_FILTER_SCALE = 32788
 
gl_CONVOLUTION_FILTER_BIAS :: GLenum
gl_CONVOLUTION_FILTER_BIAS = 32789
 
gl_CONVOLUTION_BORDER_MODE :: GLenum
gl_CONVOLUTION_BORDER_MODE = 32787
 
gl_CONVOLUTION_2D :: GLenum
gl_CONVOLUTION_2D = 32785
 
gl_CONVOLUTION_1D :: GLenum
gl_CONVOLUTION_1D = 32784