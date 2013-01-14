{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.DrawInstanced
       (glDrawElementsInstancedARB, glDrawArraysInstancedARB) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glDrawElementsInstancedARB #-}
 
ptr_glDrawElementsInstancedARB :: FunPtr a
ptr_glDrawElementsInstancedARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_draw_instanced"
        "glDrawElementsInstancedARB"
 
glDrawElementsInstancedARB ::
                           GLenum -> GLsizei -> GLenum -> Ptr a -> GLsizei -> IO ()
glDrawElementsInstancedARB
  = dyn_glDrawElementsInstancedARB ptr_glDrawElementsInstancedARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawElementsInstancedARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLenum -> Ptr a -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glDrawArraysInstancedARB #-}
 
ptr_glDrawArraysInstancedARB :: FunPtr a
ptr_glDrawArraysInstancedARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_draw_instanced"
        "glDrawArraysInstancedARB"
 
glDrawArraysInstancedARB ::
                         GLenum -> GLint -> GLsizei -> GLsizei -> IO ()
glDrawArraysInstancedARB
  = dyn_glDrawArraysInstancedARB ptr_glDrawArraysInstancedARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawArraysInstancedARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLsizei -> GLsizei -> IO ())