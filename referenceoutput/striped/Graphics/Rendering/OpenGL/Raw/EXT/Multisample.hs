{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.Multisample
       (glSamplePattern, glSampleMask, gl_SAMPLE_PATTERN,
        gl_SAMPLE_MASK_VALUE, gl_SAMPLE_MASK_INVERT, gl_SAMPLE_MASK,
        gl_SAMPLE_BUFFERS, gl_SAMPLE_ALPHA_TO_ONE, gl_SAMPLE_ALPHA_TO_MASK,
        gl_SAMPLES, gl_MULTISAMPLE, gl_MULTISAMPLE_BIT, gl_4PASS_3,
        gl_4PASS_2, gl_4PASS_1, gl_4PASS_0, gl_2PASS_1, gl_2PASS_0,
        gl_1PASS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSamplePattern #-}
 
ptr_glSamplePattern :: FunPtr a
ptr_glSamplePattern
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_multisample"
        "glSamplePatternEXT"
 
glSamplePattern :: GLenum -> IO ()
glSamplePattern = dyn_glSamplePattern ptr_glSamplePattern
 
foreign import CALLCONV unsafe "dynamic" dyn_glSamplePattern ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glSampleMask #-}
 
ptr_glSampleMask :: FunPtr a
ptr_glSampleMask
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_multisample"
        "glSampleMaskEXT"
 
glSampleMask :: GLclampf -> GLboolean -> IO ()
glSampleMask = dyn_glSampleMask ptr_glSampleMask
 
foreign import CALLCONV unsafe "dynamic" dyn_glSampleMask ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLclampf -> GLboolean -> IO ())
 
gl_SAMPLE_PATTERN :: GLenum
gl_SAMPLE_PATTERN = 32940
 
gl_SAMPLE_MASK_VALUE :: GLenum
gl_SAMPLE_MASK_VALUE = 32938
 
gl_SAMPLE_MASK_INVERT :: GLenum
gl_SAMPLE_MASK_INVERT = 32939
 
gl_SAMPLE_MASK :: GLenum
gl_SAMPLE_MASK = 32928
 
gl_SAMPLE_BUFFERS :: GLenum
gl_SAMPLE_BUFFERS = 32936
 
gl_SAMPLE_ALPHA_TO_ONE :: GLenum
gl_SAMPLE_ALPHA_TO_ONE = 32927
 
gl_SAMPLE_ALPHA_TO_MASK :: GLenum
gl_SAMPLE_ALPHA_TO_MASK = 32926
 
gl_SAMPLES :: GLenum
gl_SAMPLES = 32937
 
gl_MULTISAMPLE :: GLenum
gl_MULTISAMPLE = 32925
 
gl_MULTISAMPLE_BIT :: GLbitfield
gl_MULTISAMPLE_BIT = 536870912
 
gl_4PASS_3 :: GLenum
gl_4PASS_3 = 32935
 
gl_4PASS_2 :: GLenum
gl_4PASS_2 = 32934
 
gl_4PASS_1 :: GLenum
gl_4PASS_1 = 32933
 
gl_4PASS_0 :: GLenum
gl_4PASS_0 = 32932
 
gl_2PASS_1 :: GLenum
gl_2PASS_1 = 32931
 
gl_2PASS_0 :: GLenum
gl_2PASS_0 = 32930
 
gl_1PASS :: GLenum
gl_1PASS = 32929