{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.Multisample
       (glSampleCoverageARB, gl_SAMPLE_COVERAGE_VALUE_ARB,
        gl_SAMPLE_COVERAGE_INVERT_ARB, gl_SAMPLE_COVERAGE_ARB,
        gl_SAMPLE_BUFFERS_ARB, gl_SAMPLE_ALPHA_TO_ONE_ARB,
        gl_SAMPLE_ALPHA_TO_COVERAGE_ARB, gl_SAMPLES_ARB,
        gl_MULTISAMPLE_BIT_ARB, gl_MULTISAMPLE_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSampleCoverageARB #-}
 
ptr_glSampleCoverageARB :: FunPtr a
ptr_glSampleCoverageARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multisample"
        "glSampleCoverageARB"
 
glSampleCoverageARB :: GLfloat -> GLboolean -> IO ()
glSampleCoverageARB
  = dyn_glSampleCoverageARB ptr_glSampleCoverageARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glSampleCoverageARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLboolean -> IO ())
 
gl_SAMPLE_COVERAGE_VALUE_ARB :: GLenum
gl_SAMPLE_COVERAGE_VALUE_ARB = 32938
 
gl_SAMPLE_COVERAGE_INVERT_ARB :: GLenum
gl_SAMPLE_COVERAGE_INVERT_ARB = 32939
 
gl_SAMPLE_COVERAGE_ARB :: GLenum
gl_SAMPLE_COVERAGE_ARB = 32928
 
gl_SAMPLE_BUFFERS_ARB :: GLenum
gl_SAMPLE_BUFFERS_ARB = 32936
 
gl_SAMPLE_ALPHA_TO_ONE_ARB :: GLenum
gl_SAMPLE_ALPHA_TO_ONE_ARB = 32927
 
gl_SAMPLE_ALPHA_TO_COVERAGE_ARB :: GLenum
gl_SAMPLE_ALPHA_TO_COVERAGE_ARB = 32926
 
gl_SAMPLES_ARB :: GLenum
gl_SAMPLES_ARB = 32937
 
gl_MULTISAMPLE_BIT_ARB :: GLbitfield
gl_MULTISAMPLE_BIT_ARB = 536870912
 
gl_MULTISAMPLE_ARB :: GLenum
gl_MULTISAMPLE_ARB = 32925