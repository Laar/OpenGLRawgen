{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.SampleShading
       (glMinSampleShadingARB, gl_MIN_SAMPLE_SHADING_VALUE_ARB,
        gl_SAMPLE_SHADING_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMinSampleShadingARB #-}
 
ptr_glMinSampleShadingARB :: FunPtr a
ptr_glMinSampleShadingARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_sample_shading"
        "glMinSampleShadingARB"
 
glMinSampleShadingARB :: GLclampf -> IO ()
glMinSampleShadingARB
  = dyn_glMinSampleShadingARB ptr_glMinSampleShadingARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glMinSampleShadingARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLclampf -> IO ())
 
gl_MIN_SAMPLE_SHADING_VALUE_ARB :: GLenum
gl_MIN_SAMPLE_SHADING_VALUE_ARB = 35895
 
gl_SAMPLE_SHADING_ARB :: GLenum
gl_SAMPLE_SHADING_ARB = 35894