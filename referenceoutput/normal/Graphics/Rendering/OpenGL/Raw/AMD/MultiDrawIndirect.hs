{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.MultiDrawIndirect
       (glMultiDrawElementsIndirectAMD, glMultiDrawArraysIndirectAMD)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMultiDrawElementsIndirectAMD #-}
 
ptr_glMultiDrawElementsIndirectAMD :: FunPtr a
ptr_glMultiDrawElementsIndirectAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_multi_draw_indirect"
        "glMultiDrawElementsIndirectAMD"
 
glMultiDrawElementsIndirectAMD ::
                               GLenum -> GLenum -> Ptr a -> GLsizei -> GLsizei -> IO ()
glMultiDrawElementsIndirectAMD
  = dyn_glMultiDrawElementsIndirectAMD
      ptr_glMultiDrawElementsIndirectAMD
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiDrawElementsIndirectAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr a -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glMultiDrawArraysIndirectAMD #-}
 
ptr_glMultiDrawArraysIndirectAMD :: FunPtr a
ptr_glMultiDrawArraysIndirectAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_multi_draw_indirect"
        "glMultiDrawArraysIndirectAMD"
 
glMultiDrawArraysIndirectAMD ::
                             GLenum -> Ptr a -> GLsizei -> GLsizei -> IO ()
glMultiDrawArraysIndirectAMD
  = dyn_glMultiDrawArraysIndirectAMD ptr_glMultiDrawArraysIndirectAMD
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiDrawArraysIndirectAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr a -> GLsizei -> GLsizei -> IO ())