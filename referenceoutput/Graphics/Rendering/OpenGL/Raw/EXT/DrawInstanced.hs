{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.DrawInstanced
       (glDrawElementsInstancedEXT, glDrawArraysInstancedEXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glDrawElementsInstancedEXT #-}
 
ptr_glDrawElementsInstancedEXT :: FunPtr a
ptr_glDrawElementsInstancedEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_instanced"
        "glDrawElementsInstancedEXT"
 
glDrawElementsInstancedEXT ::
                           GLenum -> GLsizei -> GLenum -> Ptr a -> GLsizei -> IO ()
glDrawElementsInstancedEXT
  = dyn_glDrawElementsInstancedEXT ptr_glDrawElementsInstancedEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawElementsInstancedEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLenum -> Ptr a -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glDrawArraysInstancedEXT #-}
 
ptr_glDrawArraysInstancedEXT :: FunPtr a
ptr_glDrawArraysInstancedEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_instanced"
        "glDrawArraysInstancedEXT"
 
glDrawArraysInstancedEXT ::
                         GLenum -> GLint -> GLsizei -> GLsizei -> IO ()
glDrawArraysInstancedEXT
  = dyn_glDrawArraysInstancedEXT ptr_glDrawArraysInstancedEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawArraysInstancedEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLsizei -> GLsizei -> IO ())