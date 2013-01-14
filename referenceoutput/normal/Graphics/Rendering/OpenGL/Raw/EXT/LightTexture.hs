{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.LightTexture
       (glTextureMaterialEXT, glTextureLightEXT, glApplyTextureEXT,
        gl_TEXTURE_MATERIAL_PARAMETER_EXT, gl_TEXTURE_MATERIAL_FACE_EXT,
        gl_TEXTURE_LIGHT_EXT, gl_TEXTURE_APPLICATION_MODE_EXT,
        gl_SHADOW_ATTENUATION_EXT, gl_FRAGMENT_NORMAL_EXT,
        gl_FRAGMENT_MATERIAL_EXT, gl_FRAGMENT_DEPTH_EXT,
        gl_FRAGMENT_COLOR_EXT, gl_ATTENUATION_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.EXT.FogCoord
       (gl_FRAGMENT_DEPTH_EXT)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTextureMaterialEXT #-}
 
ptr_glTextureMaterialEXT :: FunPtr a
ptr_glTextureMaterialEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_light_texture"
        "glTextureMaterialEXT"
 
glTextureMaterialEXT :: GLenum -> GLenum -> IO ()
glTextureMaterialEXT
  = dyn_glTextureMaterialEXT ptr_glTextureMaterialEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureMaterialEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glTextureLightEXT #-}
 
ptr_glTextureLightEXT :: FunPtr a
ptr_glTextureLightEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_light_texture"
        "glTextureLightEXT"
 
glTextureLightEXT :: GLenum -> IO ()
glTextureLightEXT = dyn_glTextureLightEXT ptr_glTextureLightEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureLightEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glApplyTextureEXT #-}
 
ptr_glApplyTextureEXT :: FunPtr a
ptr_glApplyTextureEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_light_texture"
        "glApplyTextureEXT"
 
glApplyTextureEXT :: GLenum -> IO ()
glApplyTextureEXT = dyn_glApplyTextureEXT ptr_glApplyTextureEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glApplyTextureEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_TEXTURE_MATERIAL_PARAMETER_EXT :: GLenum
gl_TEXTURE_MATERIAL_PARAMETER_EXT = 33618
 
gl_TEXTURE_MATERIAL_FACE_EXT :: GLenum
gl_TEXTURE_MATERIAL_FACE_EXT = 33617
 
gl_TEXTURE_LIGHT_EXT :: GLenum
gl_TEXTURE_LIGHT_EXT = 33616
 
gl_TEXTURE_APPLICATION_MODE_EXT :: GLenum
gl_TEXTURE_APPLICATION_MODE_EXT = 33615
 
gl_SHADOW_ATTENUATION_EXT :: GLenum
gl_SHADOW_ATTENUATION_EXT = 33614
 
gl_FRAGMENT_NORMAL_EXT :: GLenum
gl_FRAGMENT_NORMAL_EXT = 33610
 
gl_FRAGMENT_MATERIAL_EXT :: GLenum
gl_FRAGMENT_MATERIAL_EXT = 33609
 
gl_FRAGMENT_COLOR_EXT :: GLenum
gl_FRAGMENT_COLOR_EXT = 33612
 
gl_ATTENUATION_EXT :: GLenum
gl_ATTENUATION_EXT = 33613