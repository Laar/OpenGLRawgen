{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.LightTexture
       (glTextureMaterial, glTextureLight, glApplyTexture,
        gl_TEXTURE_MATERIAL_PARAMETER, gl_TEXTURE_MATERIAL_FACE,
        gl_TEXTURE_LIGHT, gl_TEXTURE_APPLICATION_MODE,
        gl_SHADOW_ATTENUATION, gl_FRAGMENT_NORMAL, gl_FRAGMENT_MATERIAL,
        gl_FRAGMENT_DEPTH, gl_FRAGMENT_COLOR, gl_ATTENUATION)
       where
import Graphics.Rendering.OpenGL.Raw.EXT.FogCoord
       (gl_FRAGMENT_DEPTH)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTextureMaterial #-}
 
ptr_glTextureMaterial :: FunPtr a
ptr_glTextureMaterial
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_light_texture"
        "glTextureMaterialEXT"
 
glTextureMaterial :: GLenum -> GLenum -> IO ()
glTextureMaterial = dyn_glTextureMaterial ptr_glTextureMaterial
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureMaterial ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glTextureLight #-}
 
ptr_glTextureLight :: FunPtr a
ptr_glTextureLight
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_light_texture"
        "glTextureLightEXT"
 
glTextureLight :: GLenum -> IO ()
glTextureLight = dyn_glTextureLight ptr_glTextureLight
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureLight ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glApplyTexture #-}
 
ptr_glApplyTexture :: FunPtr a
ptr_glApplyTexture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_light_texture"
        "glApplyTextureEXT"
 
glApplyTexture :: GLenum -> IO ()
glApplyTexture = dyn_glApplyTexture ptr_glApplyTexture
 
foreign import CALLCONV unsafe "dynamic" dyn_glApplyTexture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_TEXTURE_MATERIAL_PARAMETER :: GLenum
gl_TEXTURE_MATERIAL_PARAMETER = 33618
 
gl_TEXTURE_MATERIAL_FACE :: GLenum
gl_TEXTURE_MATERIAL_FACE = 33617
 
gl_TEXTURE_LIGHT :: GLenum
gl_TEXTURE_LIGHT = 33616
 
gl_TEXTURE_APPLICATION_MODE :: GLenum
gl_TEXTURE_APPLICATION_MODE = 33615
 
gl_SHADOW_ATTENUATION :: GLenum
gl_SHADOW_ATTENUATION = 33614
 
gl_FRAGMENT_NORMAL :: GLenum
gl_FRAGMENT_NORMAL = 33610
 
gl_FRAGMENT_MATERIAL :: GLenum
gl_FRAGMENT_MATERIAL = 33609
 
gl_FRAGMENT_COLOR :: GLenum
gl_FRAGMENT_COLOR = 33612
 
gl_ATTENUATION :: GLenum
gl_ATTENUATION = 33613