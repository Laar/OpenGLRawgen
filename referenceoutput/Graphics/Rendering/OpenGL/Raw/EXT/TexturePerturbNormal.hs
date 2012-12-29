{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TexturePerturbNormal
       (glTextureNormalEXT, gl_TEXTURE_NORMAL_EXT, gl_PERTURB_EXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTextureNormalEXT #-}
 
ptr_glTextureNormalEXT :: FunPtr a
ptr_glTextureNormalEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_perturb_normal"
        "glTextureNormalEXT"
 
glTextureNormalEXT :: GLenum -> IO ()
glTextureNormalEXT = dyn_glTextureNormalEXT ptr_glTextureNormalEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureNormalEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_TEXTURE_NORMAL_EXT :: GLenum
gl_TEXTURE_NORMAL_EXT = 34223
 
gl_PERTURB_EXT :: GLenum
gl_PERTURB_EXT = 34222