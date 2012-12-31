{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.PrimitiveRestart
       (glPrimitiveRestartNV, glPrimitiveRestartIndexNV,
        gl_PRIMITIVE_RESTART_NV, gl_PRIMITIVE_RESTART_INDEX_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPrimitiveRestartNV #-}
 
ptr_glPrimitiveRestartNV :: FunPtr a
ptr_glPrimitiveRestartNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_primitive_restart"
        "glPrimitiveRestartNV"
 
glPrimitiveRestartNV :: IO ()
glPrimitiveRestartNV
  = dyn_glPrimitiveRestartNV ptr_glPrimitiveRestartNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPrimitiveRestartNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glPrimitiveRestartIndexNV #-}
 
ptr_glPrimitiveRestartIndexNV :: FunPtr a
ptr_glPrimitiveRestartIndexNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_primitive_restart"
        "glPrimitiveRestartIndexNV"
 
glPrimitiveRestartIndexNV :: GLuint -> IO ()
glPrimitiveRestartIndexNV
  = dyn_glPrimitiveRestartIndexNV ptr_glPrimitiveRestartIndexNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPrimitiveRestartIndexNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
gl_PRIMITIVE_RESTART_NV :: GLenum
gl_PRIMITIVE_RESTART_NV = 34136
 
gl_PRIMITIVE_RESTART_INDEX_NV :: GLenum
gl_PRIMITIVE_RESTART_INDEX_NV = 34137