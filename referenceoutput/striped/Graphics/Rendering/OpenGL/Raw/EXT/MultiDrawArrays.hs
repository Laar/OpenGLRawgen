{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.MultiDrawArrays
       (glMultiDrawElements, glMultiDrawArrays) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMultiDrawElements #-}
 
ptr_glMultiDrawElements :: FunPtr a
ptr_glMultiDrawElements
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_multi_draw_arrays"
        "glMultiDrawElementsEXT"
 
glMultiDrawElements ::
                    GLenum -> Ptr GLsizei -> GLenum -> Ptr (Ptr a) -> GLsizei -> IO ()
glMultiDrawElements
  = dyn_glMultiDrawElements ptr_glMultiDrawElements
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiDrawElements ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    Ptr GLsizei -> GLenum -> Ptr (Ptr a) -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glMultiDrawArrays #-}
 
ptr_glMultiDrawArrays :: FunPtr a
ptr_glMultiDrawArrays
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_multi_draw_arrays"
        "glMultiDrawArraysEXT"
 
glMultiDrawArrays ::
                  GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ()
glMultiDrawArrays = dyn_glMultiDrawArrays ptr_glMultiDrawArrays
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiDrawArrays ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ())