{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.PrimitiveRestart
       (glPrimitiveRestart, glPrimitiveRestartIndex, gl_PRIMITIVE_RESTART,
        gl_PRIMITIVE_RESTART_INDEX)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPrimitiveRestart #-}
 
ptr_glPrimitiveRestart :: FunPtr a
ptr_glPrimitiveRestart
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_primitive_restart"
        "glPrimitiveRestartNV"
 
glPrimitiveRestart :: IO ()
glPrimitiveRestart = dyn_glPrimitiveRestart ptr_glPrimitiveRestart
 
foreign import CALLCONV unsafe "dynamic" dyn_glPrimitiveRestart ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glPrimitiveRestartIndex #-}
 
ptr_glPrimitiveRestartIndex :: FunPtr a
ptr_glPrimitiveRestartIndex
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_primitive_restart"
        "glPrimitiveRestartIndexNV"
 
glPrimitiveRestartIndex :: GLuint -> IO ()
glPrimitiveRestartIndex
  = dyn_glPrimitiveRestartIndex ptr_glPrimitiveRestartIndex
 
foreign import CALLCONV unsafe "dynamic" dyn_glPrimitiveRestartIndex
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
gl_PRIMITIVE_RESTART :: GLenum
gl_PRIMITIVE_RESTART = 34136
 
gl_PRIMITIVE_RESTART_INDEX :: GLenum
gl_PRIMITIVE_RESTART_INDEX = 34137