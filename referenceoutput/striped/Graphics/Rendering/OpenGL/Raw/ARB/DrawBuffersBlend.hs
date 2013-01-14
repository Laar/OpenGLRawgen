{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.DrawBuffersBlend
       (glBlendFunci, glBlendFuncSeparatei, glBlendEquationi,
        glBlendEquationSeparatei)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glBlendFunci #-}
 
ptr_glBlendFunci :: FunPtr a
ptr_glBlendFunci
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_draw_buffers_blend"
        "glBlendFunciARB"
 
glBlendFunci :: GLuint -> GLenum -> GLenum -> IO ()
glBlendFunci = dyn_glBlendFunci ptr_glBlendFunci
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendFunci ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendFuncSeparatei #-}
 
ptr_glBlendFuncSeparatei :: FunPtr a
ptr_glBlendFuncSeparatei
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_draw_buffers_blend"
        "glBlendFuncSeparateiARB"
 
glBlendFuncSeparatei ::
                     GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glBlendFuncSeparatei
  = dyn_glBlendFuncSeparatei ptr_glBlendFuncSeparatei
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendFuncSeparatei ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendEquationi #-}
 
ptr_glBlendEquationi :: FunPtr a
ptr_glBlendEquationi
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_draw_buffers_blend"
        "glBlendEquationiARB"
 
glBlendEquationi :: GLuint -> GLenum -> IO ()
glBlendEquationi = dyn_glBlendEquationi ptr_glBlendEquationi
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendEquationi ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendEquationSeparatei #-}
 
ptr_glBlendEquationSeparatei :: FunPtr a
ptr_glBlendEquationSeparatei
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_draw_buffers_blend"
        "glBlendEquationSeparateiARB"
 
glBlendEquationSeparatei :: GLuint -> GLenum -> GLenum -> IO ()
glBlendEquationSeparatei
  = dyn_glBlendEquationSeparatei ptr_glBlendEquationSeparatei
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBlendEquationSeparatei ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> IO ())