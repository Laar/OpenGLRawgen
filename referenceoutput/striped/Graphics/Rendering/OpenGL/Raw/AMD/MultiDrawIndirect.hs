{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.MultiDrawIndirect
       (glMultiDrawElementsIndirect, glMultiDrawArraysIndirect) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMultiDrawElementsIndirect #-}
 
ptr_glMultiDrawElementsIndirect :: FunPtr a
ptr_glMultiDrawElementsIndirect
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_multi_draw_indirect"
        "glMultiDrawElementsIndirectAMD"
 
glMultiDrawElementsIndirect ::
                            GLenum -> GLenum -> Ptr a -> GLsizei -> GLsizei -> IO ()
glMultiDrawElementsIndirect
  = dyn_glMultiDrawElementsIndirect ptr_glMultiDrawElementsIndirect
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiDrawElementsIndirect ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr a -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glMultiDrawArraysIndirect #-}
 
ptr_glMultiDrawArraysIndirect :: FunPtr a
ptr_glMultiDrawArraysIndirect
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_multi_draw_indirect"
        "glMultiDrawArraysIndirectAMD"
 
glMultiDrawArraysIndirect ::
                          GLenum -> Ptr a -> GLsizei -> GLsizei -> IO ()
glMultiDrawArraysIndirect
  = dyn_glMultiDrawArraysIndirect ptr_glMultiDrawArraysIndirect
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiDrawArraysIndirect ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr a -> GLsizei -> GLsizei -> IO ())