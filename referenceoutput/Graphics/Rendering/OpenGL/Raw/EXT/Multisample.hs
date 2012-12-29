{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.Multisample
       (glSamplePatternEXT, glSampleMaskEXT, gl_MULTISAMPLE_BIT_EXT,
        gl_SAMPLE_PATTERN_EXT, gl_SAMPLE_MASK_INVERT_EXT,
        gl_SAMPLE_MASK_VALUE_EXT, gl_SAMPLES_EXT, gl_SAMPLE_BUFFERS_EXT,
        gl_4PASS_3_EXT, gl_4PASS_2_EXT, gl_4PASS_1_EXT, gl_4PASS_0_EXT,
        gl_2PASS_1_EXT, gl_2PASS_0_EXT, gl_1PASS_EXT, gl_SAMPLE_MASK_EXT,
        gl_SAMPLE_ALPHA_TO_ONE_EXT, gl_SAMPLE_ALPHA_TO_MASK_EXT,
        gl_MULTISAMPLE_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSamplePatternEXT #-}
 
ptr_glSamplePatternEXT :: FunPtr a
ptr_glSamplePatternEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_multisample"
        "glSamplePatternEXT"
 
glSamplePatternEXT :: GLenum -> IO ()
glSamplePatternEXT = dyn_glSamplePatternEXT ptr_glSamplePatternEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSamplePatternEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glSampleMaskEXT #-}
 
ptr_glSampleMaskEXT :: FunPtr a
ptr_glSampleMaskEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_multisample"
        "glSampleMaskEXT"
 
glSampleMaskEXT :: GLclampf -> GLboolean -> IO ()
glSampleMaskEXT = dyn_glSampleMaskEXT ptr_glSampleMaskEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSampleMaskEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLclampf -> GLboolean -> IO ())
 
gl_MULTISAMPLE_BIT_EXT :: GLbitfield
gl_MULTISAMPLE_BIT_EXT = 536870912
 
gl_SAMPLE_PATTERN_EXT :: GLenum
gl_SAMPLE_PATTERN_EXT = 32940
 
gl_SAMPLE_MASK_INVERT_EXT :: GLenum
gl_SAMPLE_MASK_INVERT_EXT = 32939
 
gl_SAMPLE_MASK_VALUE_EXT :: GLenum
gl_SAMPLE_MASK_VALUE_EXT = 32938
 
gl_SAMPLES_EXT :: GLenum
gl_SAMPLES_EXT = 32937
 
gl_SAMPLE_BUFFERS_EXT :: GLenum
gl_SAMPLE_BUFFERS_EXT = 32936
 
gl_4PASS_3_EXT :: GLenum
gl_4PASS_3_EXT = 32935
 
gl_4PASS_2_EXT :: GLenum
gl_4PASS_2_EXT = 32934
 
gl_4PASS_1_EXT :: GLenum
gl_4PASS_1_EXT = 32933
 
gl_4PASS_0_EXT :: GLenum
gl_4PASS_0_EXT = 32932
 
gl_2PASS_1_EXT :: GLenum
gl_2PASS_1_EXT = 32931
 
gl_2PASS_0_EXT :: GLenum
gl_2PASS_0_EXT = 32930
 
gl_1PASS_EXT :: GLenum
gl_1PASS_EXT = 32929
 
gl_SAMPLE_MASK_EXT :: GLenum
gl_SAMPLE_MASK_EXT = 32928
 
gl_SAMPLE_ALPHA_TO_ONE_EXT :: GLenum
gl_SAMPLE_ALPHA_TO_ONE_EXT = 32927
 
gl_SAMPLE_ALPHA_TO_MASK_EXT :: GLenum
gl_SAMPLE_ALPHA_TO_MASK_EXT = 32926
 
gl_MULTISAMPLE_EXT :: GLenum
gl_MULTISAMPLE_EXT = 32925