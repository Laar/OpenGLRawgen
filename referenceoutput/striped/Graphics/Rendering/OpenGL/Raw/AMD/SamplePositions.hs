{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.SamplePositions
       (glSetMultisamplefv, gl_SUBSAMPLE_DISTANCE) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSetMultisamplefv #-}
 
ptr_glSetMultisamplefv :: FunPtr a
ptr_glSetMultisamplefv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_sample_positions"
        "glSetMultisamplefvAMD"
 
glSetMultisamplefv :: GLenum -> GLuint -> Ptr GLfloat -> IO ()
glSetMultisamplefv = dyn_glSetMultisamplefv ptr_glSetMultisamplefv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSetMultisamplefv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
gl_SUBSAMPLE_DISTANCE :: GLenum
gl_SUBSAMPLE_DISTANCE = 34879