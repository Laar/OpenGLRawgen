{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.ConditionalRender
       (glEndConditionalRenderNV, glBeginConditionalRenderNV,
        gl_QUERY_BY_REGION_NO_WAIT_NV, gl_QUERY_BY_REGION_WAIT_NV,
        gl_QUERY_NO_WAIT_NV, gl_QUERY_WAIT_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glEndConditionalRenderNV #-}
 
ptr_glEndConditionalRenderNV :: FunPtr a
ptr_glEndConditionalRenderNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_conditional_render"
        "glEndConditionalRenderNV"
 
glEndConditionalRenderNV :: IO ()
glEndConditionalRenderNV
  = dyn_glEndConditionalRenderNV ptr_glEndConditionalRenderNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glEndConditionalRenderNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glBeginConditionalRenderNV #-}
 
ptr_glBeginConditionalRenderNV :: FunPtr a
ptr_glBeginConditionalRenderNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_conditional_render"
        "glBeginConditionalRenderNV"
 
glBeginConditionalRenderNV :: GLuint -> GLenum -> IO ()
glBeginConditionalRenderNV
  = dyn_glBeginConditionalRenderNV ptr_glBeginConditionalRenderNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBeginConditionalRenderNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
gl_QUERY_BY_REGION_NO_WAIT_NV :: GLenum
gl_QUERY_BY_REGION_NO_WAIT_NV = 36374
 
gl_QUERY_BY_REGION_WAIT_NV :: GLenum
gl_QUERY_BY_REGION_WAIT_NV = 36373
 
gl_QUERY_NO_WAIT_NV :: GLenum
gl_QUERY_NO_WAIT_NV = 36372
 
gl_QUERY_WAIT_NV :: GLenum
gl_QUERY_WAIT_NV = 36371