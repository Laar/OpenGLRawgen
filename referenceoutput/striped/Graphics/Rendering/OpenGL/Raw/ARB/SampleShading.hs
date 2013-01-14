{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.SampleShading
       (glMinSampleShading, gl_SAMPLE_SHADING,
        gl_MIN_SAMPLE_SHADING_VALUE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMinSampleShading #-}
 
ptr_glMinSampleShading :: FunPtr a
ptr_glMinSampleShading
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_sample_shading"
        "glMinSampleShadingARB"
 
glMinSampleShading :: GLfloat -> IO ()
glMinSampleShading = dyn_glMinSampleShading ptr_glMinSampleShading
 
foreign import CALLCONV unsafe "dynamic" dyn_glMinSampleShading ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
gl_SAMPLE_SHADING :: GLenum
gl_SAMPLE_SHADING = 35894
 
gl_MIN_SAMPLE_SHADING_VALUE :: GLenum
gl_MIN_SAMPLE_SHADING_VALUE = 35895