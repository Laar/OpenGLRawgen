{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.DrawInstanced
       (glDrawElementsInstanced, glDrawArraysInstanced) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glDrawElementsInstanced #-}
 
ptr_glDrawElementsInstanced :: FunPtr a
ptr_glDrawElementsInstanced
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_instanced"
        "glDrawElementsInstancedEXT"
 
glDrawElementsInstanced ::
                        GLenum -> GLsizei -> GLenum -> Ptr a -> GLsizei -> IO ()
glDrawElementsInstanced
  = dyn_glDrawElementsInstanced ptr_glDrawElementsInstanced
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawElementsInstanced
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLenum -> Ptr a -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glDrawArraysInstanced #-}
 
ptr_glDrawArraysInstanced :: FunPtr a
ptr_glDrawArraysInstanced
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_instanced"
        "glDrawArraysInstancedEXT"
 
glDrawArraysInstanced ::
                      GLenum -> GLint -> GLsizei -> GLsizei -> IO ()
glDrawArraysInstanced
  = dyn_glDrawArraysInstanced ptr_glDrawArraysInstanced
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawArraysInstanced
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLsizei -> GLsizei -> IO ())