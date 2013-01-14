{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.Multisample
       (glSampleCoverage, gl_SAMPLE_COVERAGE_VALUE,
        gl_SAMPLE_COVERAGE_INVERT, gl_SAMPLE_COVERAGE, gl_SAMPLE_BUFFERS,
        gl_SAMPLE_ALPHA_TO_ONE, gl_SAMPLE_ALPHA_TO_COVERAGE, gl_SAMPLES,
        gl_MULTISAMPLE_BIT, gl_MULTISAMPLE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSampleCoverage #-}
 
ptr_glSampleCoverage :: FunPtr a
ptr_glSampleCoverage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_multisample"
        "glSampleCoverageARB"
 
glSampleCoverage :: GLfloat -> GLboolean -> IO ()
glSampleCoverage = dyn_glSampleCoverage ptr_glSampleCoverage
 
foreign import CALLCONV unsafe "dynamic" dyn_glSampleCoverage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLboolean -> IO ())
 
gl_SAMPLE_COVERAGE_VALUE :: GLenum
gl_SAMPLE_COVERAGE_VALUE = 32938
 
gl_SAMPLE_COVERAGE_INVERT :: GLenum
gl_SAMPLE_COVERAGE_INVERT = 32939
 
gl_SAMPLE_COVERAGE :: GLenum
gl_SAMPLE_COVERAGE = 32928
 
gl_SAMPLE_BUFFERS :: GLenum
gl_SAMPLE_BUFFERS = 32936
 
gl_SAMPLE_ALPHA_TO_ONE :: GLenum
gl_SAMPLE_ALPHA_TO_ONE = 32927
 
gl_SAMPLE_ALPHA_TO_COVERAGE :: GLenum
gl_SAMPLE_ALPHA_TO_COVERAGE = 32926
 
gl_SAMPLES :: GLenum
gl_SAMPLES = 32937
 
gl_MULTISAMPLE_BIT :: GLbitfield
gl_MULTISAMPLE_BIT = 536870912
 
gl_MULTISAMPLE :: GLenum
gl_MULTISAMPLE = 32925