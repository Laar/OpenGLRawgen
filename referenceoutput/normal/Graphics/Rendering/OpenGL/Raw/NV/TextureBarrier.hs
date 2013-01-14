{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TextureBarrier
       (glTextureBarrierNV) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTextureBarrierNV #-}
 
ptr_glTextureBarrierNV :: FunPtr a
ptr_glTextureBarrierNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_texture_barrier"
        "glTextureBarrierNV"
 
glTextureBarrierNV :: IO ()
glTextureBarrierNV = dyn_glTextureBarrierNV ptr_glTextureBarrierNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureBarrierNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())