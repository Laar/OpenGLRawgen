{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.Convolution
       (glSeparableFilter2DEXT, glGetSeparableFilterEXT,
        glGetConvolutionParameterivEXT, glGetConvolutionParameterfvEXT,
        glGetConvolutionFilterEXT, glCopyConvolutionFilter2DEXT,
        glCopyConvolutionFilter1DEXT, glConvolutionParameterivEXT,
        glConvolutionParameteriEXT, glConvolutionParameterfvEXT,
        glConvolutionParameterfEXT, glConvolutionFilter2DEXT,
        glConvolutionFilter1DEXT, gl_SEPARABLE_2D_EXT, gl_REDUCE_EXT,
        gl_POST_CONVOLUTION_RED_SCALE_EXT,
        gl_POST_CONVOLUTION_RED_BIAS_EXT,
        gl_POST_CONVOLUTION_GREEN_SCALE_EXT,
        gl_POST_CONVOLUTION_GREEN_BIAS_EXT,
        gl_POST_CONVOLUTION_BLUE_SCALE_EXT,
        gl_POST_CONVOLUTION_BLUE_BIAS_EXT,
        gl_POST_CONVOLUTION_ALPHA_SCALE_EXT,
        gl_POST_CONVOLUTION_ALPHA_BIAS_EXT, gl_MAX_CONVOLUTION_WIDTH_EXT,
        gl_MAX_CONVOLUTION_HEIGHT_EXT, gl_CONVOLUTION_WIDTH_EXT,
        gl_CONVOLUTION_HEIGHT_EXT, gl_CONVOLUTION_FORMAT_EXT,
        gl_CONVOLUTION_FILTER_SCALE_EXT, gl_CONVOLUTION_FILTER_BIAS_EXT,
        gl_CONVOLUTION_BORDER_MODE_EXT, gl_CONVOLUTION_2D_EXT,
        gl_CONVOLUTION_1D_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSeparableFilter2DEXT #-}
 
ptr_glSeparableFilter2DEXT :: FunPtr a
ptr_glSeparableFilter2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_convolution"
        "glSeparableFilter2DEXT"
 
glSeparableFilter2DEXT ::
                       GLenum ->
                         GLenum ->
                           GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> Ptr a -> IO ()
glSeparableFilter2DEXT
  = dyn_glSeparableFilter2DEXT ptr_glSeparableFilter2DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSeparableFilter2DEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetSeparableFilterEXT #-}
 
ptr_glGetSeparableFilterEXT :: FunPtr a
ptr_glGetSeparableFilterEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_convolution"
        "glGetSeparableFilterEXT"
 
glGetSeparableFilterEXT ::
                        GLenum -> GLenum -> GLenum -> Ptr a -> Ptr a -> Ptr a -> IO ()
glGetSeparableFilterEXT
  = dyn_glGetSeparableFilterEXT ptr_glGetSeparableFilterEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetSeparableFilterEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr a -> Ptr a -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetConvolutionParameterivEXT #-}
 
ptr_glGetConvolutionParameterivEXT :: FunPtr a
ptr_glGetConvolutionParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_convolution"
        "glGetConvolutionParameterivEXT"
 
glGetConvolutionParameterivEXT ::
                               GLenum -> GLenum -> Ptr GLint -> IO ()
glGetConvolutionParameterivEXT
  = dyn_glGetConvolutionParameterivEXT
      ptr_glGetConvolutionParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetConvolutionParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetConvolutionParameterfvEXT #-}
 
ptr_glGetConvolutionParameterfvEXT :: FunPtr a
ptr_glGetConvolutionParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_convolution"
        "glGetConvolutionParameterfvEXT"
 
glGetConvolutionParameterfvEXT ::
                               GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetConvolutionParameterfvEXT
  = dyn_glGetConvolutionParameterfvEXT
      ptr_glGetConvolutionParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetConvolutionParameterfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetConvolutionFilterEXT #-}
 
ptr_glGetConvolutionFilterEXT :: FunPtr a
ptr_glGetConvolutionFilterEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_convolution"
        "glGetConvolutionFilterEXT"
 
glGetConvolutionFilterEXT ::
                          GLenum -> GLenum -> GLenum -> Ptr a -> IO ()
glGetConvolutionFilterEXT
  = dyn_glGetConvolutionFilterEXT ptr_glGetConvolutionFilterEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetConvolutionFilterEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCopyConvolutionFilter2DEXT #-}
 
ptr_glCopyConvolutionFilter2DEXT :: FunPtr a
ptr_glCopyConvolutionFilter2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_convolution"
        "glCopyConvolutionFilter2DEXT"
 
glCopyConvolutionFilter2DEXT ::
                             GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyConvolutionFilter2DEXT
  = dyn_glCopyConvolutionFilter2DEXT ptr_glCopyConvolutionFilter2DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyConvolutionFilter2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyConvolutionFilter1DEXT #-}
 
ptr_glCopyConvolutionFilter1DEXT :: FunPtr a
ptr_glCopyConvolutionFilter1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_convolution"
        "glCopyConvolutionFilter1DEXT"
 
glCopyConvolutionFilter1DEXT ::
                             GLenum -> GLenum -> GLint -> GLint -> GLsizei -> IO ()
glCopyConvolutionFilter1DEXT
  = dyn_glCopyConvolutionFilter1DEXT ptr_glCopyConvolutionFilter1DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyConvolutionFilter1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glConvolutionParameterivEXT #-}
 
ptr_glConvolutionParameterivEXT :: FunPtr a
ptr_glConvolutionParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_convolution"
        "glConvolutionParameterivEXT"
 
glConvolutionParameterivEXT ::
                            GLenum -> GLenum -> Ptr GLint -> IO ()
glConvolutionParameterivEXT
  = dyn_glConvolutionParameterivEXT ptr_glConvolutionParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glConvolutionParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glConvolutionParameteriEXT #-}
 
ptr_glConvolutionParameteriEXT :: FunPtr a
ptr_glConvolutionParameteriEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_convolution"
        "glConvolutionParameteriEXT"
 
glConvolutionParameteriEXT :: GLenum -> GLenum -> GLint -> IO ()
glConvolutionParameteriEXT
  = dyn_glConvolutionParameteriEXT ptr_glConvolutionParameteriEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glConvolutionParameteriEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glConvolutionParameterfvEXT #-}
 
ptr_glConvolutionParameterfvEXT :: FunPtr a
ptr_glConvolutionParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_convolution"
        "glConvolutionParameterfvEXT"
 
glConvolutionParameterfvEXT ::
                            GLenum -> GLenum -> Ptr GLfloat -> IO ()
glConvolutionParameterfvEXT
  = dyn_glConvolutionParameterfvEXT ptr_glConvolutionParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glConvolutionParameterfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glConvolutionParameterfEXT #-}
 
ptr_glConvolutionParameterfEXT :: FunPtr a
ptr_glConvolutionParameterfEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_convolution"
        "glConvolutionParameterfEXT"
 
glConvolutionParameterfEXT :: GLenum -> GLenum -> GLfloat -> IO ()
glConvolutionParameterfEXT
  = dyn_glConvolutionParameterfEXT ptr_glConvolutionParameterfEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glConvolutionParameterfEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glConvolutionFilter2DEXT #-}
 
ptr_glConvolutionFilter2DEXT :: FunPtr a
ptr_glConvolutionFilter2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_convolution"
        "glConvolutionFilter2DEXT"
 
glConvolutionFilter2DEXT ::
                         GLenum ->
                           GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glConvolutionFilter2DEXT
  = dyn_glConvolutionFilter2DEXT ptr_glConvolutionFilter2DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glConvolutionFilter2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glConvolutionFilter1DEXT #-}
 
ptr_glConvolutionFilter1DEXT :: FunPtr a
ptr_glConvolutionFilter1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_convolution"
        "glConvolutionFilter1DEXT"
 
glConvolutionFilter1DEXT ::
                         GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glConvolutionFilter1DEXT
  = dyn_glConvolutionFilter1DEXT ptr_glConvolutionFilter1DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glConvolutionFilter1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
gl_SEPARABLE_2D_EXT :: GLenum
gl_SEPARABLE_2D_EXT = 32786
 
gl_REDUCE_EXT :: GLenum
gl_REDUCE_EXT = 32790
 
gl_POST_CONVOLUTION_RED_SCALE_EXT :: GLenum
gl_POST_CONVOLUTION_RED_SCALE_EXT = 32796
 
gl_POST_CONVOLUTION_RED_BIAS_EXT :: GLenum
gl_POST_CONVOLUTION_RED_BIAS_EXT = 32800
 
gl_POST_CONVOLUTION_GREEN_SCALE_EXT :: GLenum
gl_POST_CONVOLUTION_GREEN_SCALE_EXT = 32797
 
gl_POST_CONVOLUTION_GREEN_BIAS_EXT :: GLenum
gl_POST_CONVOLUTION_GREEN_BIAS_EXT = 32801
 
gl_POST_CONVOLUTION_BLUE_SCALE_EXT :: GLenum
gl_POST_CONVOLUTION_BLUE_SCALE_EXT = 32798
 
gl_POST_CONVOLUTION_BLUE_BIAS_EXT :: GLenum
gl_POST_CONVOLUTION_BLUE_BIAS_EXT = 32802
 
gl_POST_CONVOLUTION_ALPHA_SCALE_EXT :: GLenum
gl_POST_CONVOLUTION_ALPHA_SCALE_EXT = 32799
 
gl_POST_CONVOLUTION_ALPHA_BIAS_EXT :: GLenum
gl_POST_CONVOLUTION_ALPHA_BIAS_EXT = 32803
 
gl_MAX_CONVOLUTION_WIDTH_EXT :: GLenum
gl_MAX_CONVOLUTION_WIDTH_EXT = 32794
 
gl_MAX_CONVOLUTION_HEIGHT_EXT :: GLenum
gl_MAX_CONVOLUTION_HEIGHT_EXT = 32795
 
gl_CONVOLUTION_WIDTH_EXT :: GLenum
gl_CONVOLUTION_WIDTH_EXT = 32792
 
gl_CONVOLUTION_HEIGHT_EXT :: GLenum
gl_CONVOLUTION_HEIGHT_EXT = 32793
 
gl_CONVOLUTION_FORMAT_EXT :: GLenum
gl_CONVOLUTION_FORMAT_EXT = 32791
 
gl_CONVOLUTION_FILTER_SCALE_EXT :: GLenum
gl_CONVOLUTION_FILTER_SCALE_EXT = 32788
 
gl_CONVOLUTION_FILTER_BIAS_EXT :: GLenum
gl_CONVOLUTION_FILTER_BIAS_EXT = 32789
 
gl_CONVOLUTION_BORDER_MODE_EXT :: GLenum
gl_CONVOLUTION_BORDER_MODE_EXT = 32787
 
gl_CONVOLUTION_2D_EXT :: GLenum
gl_CONVOLUTION_2D_EXT = 32785
 
gl_CONVOLUTION_1D_EXT :: GLenum
gl_CONVOLUTION_1D_EXT = 32784