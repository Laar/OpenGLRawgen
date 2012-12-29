{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.DrawBuffersBlend
       (glBlendFuncSeparateiARB, glBlendFunciARB,
        glBlendEquationSeparateiARB, glBlendEquationiARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glBlendFuncSeparateiARB #-}
 
ptr_glBlendFuncSeparateiARB :: FunPtr a
ptr_glBlendFuncSeparateiARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_draw_buffers_blend"
        "glBlendFuncSeparateiARB"
 
glBlendFuncSeparateiARB ::
                        GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glBlendFuncSeparateiARB
  = dyn_glBlendFuncSeparateiARB ptr_glBlendFuncSeparateiARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendFuncSeparateiARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendFunciARB #-}
 
ptr_glBlendFunciARB :: FunPtr a
ptr_glBlendFunciARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_draw_buffers_blend"
        "glBlendFunciARB"
 
glBlendFunciARB :: GLuint -> GLenum -> GLenum -> IO ()
glBlendFunciARB = dyn_glBlendFunciARB ptr_glBlendFunciARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendFunciARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendEquationSeparateiARB #-}
 
ptr_glBlendEquationSeparateiARB :: FunPtr a
ptr_glBlendEquationSeparateiARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_draw_buffers_blend"
        "glBlendEquationSeparateiARB"
 
glBlendEquationSeparateiARB :: GLuint -> GLenum -> GLenum -> IO ()
glBlendEquationSeparateiARB
  = dyn_glBlendEquationSeparateiARB ptr_glBlendEquationSeparateiARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBlendEquationSeparateiARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendEquationiARB #-}
 
ptr_glBlendEquationiARB :: FunPtr a
ptr_glBlendEquationiARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_draw_buffers_blend"
        "glBlendEquationiARB"
 
glBlendEquationiARB :: GLuint -> GLenum -> IO ()
glBlendEquationiARB
  = dyn_glBlendEquationiARB ptr_glBlendEquationiARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendEquationiARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())