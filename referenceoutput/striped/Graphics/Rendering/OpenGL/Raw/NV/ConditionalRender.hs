{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.ConditionalRender
       (glEndConditionalRender, glBeginConditionalRender, gl_QUERY_WAIT,
        gl_QUERY_NO_WAIT, gl_QUERY_BY_REGION_WAIT,
        gl_QUERY_BY_REGION_NO_WAIT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glEndConditionalRender #-}
 
ptr_glEndConditionalRender :: FunPtr a
ptr_glEndConditionalRender
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_conditional_render"
        "glEndConditionalRenderNV"
 
glEndConditionalRender :: IO ()
glEndConditionalRender
  = dyn_glEndConditionalRender ptr_glEndConditionalRender
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndConditionalRender
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glBeginConditionalRender #-}
 
ptr_glBeginConditionalRender :: FunPtr a
ptr_glBeginConditionalRender
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_conditional_render"
        "glBeginConditionalRenderNV"
 
glBeginConditionalRender :: GLuint -> GLenum -> IO ()
glBeginConditionalRender
  = dyn_glBeginConditionalRender ptr_glBeginConditionalRender
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBeginConditionalRender ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
gl_QUERY_WAIT :: GLenum
gl_QUERY_WAIT = 36371
 
gl_QUERY_NO_WAIT :: GLenum
gl_QUERY_NO_WAIT = 36372
 
gl_QUERY_BY_REGION_WAIT :: GLenum
gl_QUERY_BY_REGION_WAIT = 36373
 
gl_QUERY_BY_REGION_NO_WAIT :: GLenum
gl_QUERY_BY_REGION_NO_WAIT = 36374