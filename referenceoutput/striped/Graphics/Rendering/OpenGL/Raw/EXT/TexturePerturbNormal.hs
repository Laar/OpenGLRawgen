{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TexturePerturbNormal
       (glTextureNormal, gl_TEXTURE_NORMAL, gl_PERTURB) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTextureNormal #-}
 
ptr_glTextureNormal :: FunPtr a
ptr_glTextureNormal
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_perturb_normal"
        "glTextureNormalEXT"
 
glTextureNormal :: GLenum -> IO ()
glTextureNormal = dyn_glTextureNormal ptr_glTextureNormal
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureNormal ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_TEXTURE_NORMAL :: GLenum
gl_TEXTURE_NORMAL = 34223
 
gl_PERTURB :: GLenum
gl_PERTURB = 34222