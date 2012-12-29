{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.SamplePositions
       (glSetMultisamplefvAMD, gl_SUBSAMPLE_DISTANCE_AMD) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSetMultisamplefvAMD #-}
 
ptr_glSetMultisamplefvAMD :: FunPtr a
ptr_glSetMultisamplefvAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_sample_positions"
        "glSetMultisamplefvAMD"
 
glSetMultisamplefvAMD :: GLenum -> GLuint -> Ptr GLfloat -> IO ()
glSetMultisamplefvAMD
  = dyn_glSetMultisamplefvAMD ptr_glSetMultisamplefvAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glSetMultisamplefvAMD
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
gl_SUBSAMPLE_DISTANCE_AMD :: GLenum
gl_SUBSAMPLE_DISTANCE_AMD = 34879