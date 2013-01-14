{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TextureBarrier
       (glTextureBarrier) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTextureBarrier #-}
 
ptr_glTextureBarrier :: FunPtr a
ptr_glTextureBarrier
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_texture_barrier"
        "glTextureBarrierNV"
 
glTextureBarrier :: IO ()
glTextureBarrier = dyn_glTextureBarrier ptr_glTextureBarrier
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureBarrier ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())