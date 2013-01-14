{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.MultiDrawArrays
       (glMultiDrawElementsEXT, glMultiDrawArraysEXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMultiDrawElementsEXT #-}
 
ptr_glMultiDrawElementsEXT :: FunPtr a
ptr_glMultiDrawElementsEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_multi_draw_arrays"
        "glMultiDrawElementsEXT"
 
glMultiDrawElementsEXT ::
                       GLenum -> Ptr GLsizei -> GLenum -> Ptr (Ptr a) -> GLsizei -> IO ()
glMultiDrawElementsEXT
  = dyn_glMultiDrawElementsEXT ptr_glMultiDrawElementsEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiDrawElementsEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    Ptr GLsizei -> GLenum -> Ptr (Ptr a) -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glMultiDrawArraysEXT #-}
 
ptr_glMultiDrawArraysEXT :: FunPtr a
ptr_glMultiDrawArraysEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_multi_draw_arrays"
        "glMultiDrawArraysEXT"
 
glMultiDrawArraysEXT ::
                     GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ()
glMultiDrawArraysEXT
  = dyn_glMultiDrawArraysEXT ptr_glMultiDrawArraysEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiDrawArraysEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ())