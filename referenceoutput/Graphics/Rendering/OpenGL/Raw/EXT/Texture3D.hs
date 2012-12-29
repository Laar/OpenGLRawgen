{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.Texture3D
       (glTexSubImage3DEXT, glTexImage3DEXT, gl_MAX_3D_TEXTURE_SIZE_EXT,
        gl_TEXTURE_WRAP_R_EXT, gl_TEXTURE_DEPTH_EXT,
        gl_PROXY_TEXTURE_3D_EXT, gl_TEXTURE_3D_EXT,
        gl_UNPACK_IMAGE_HEIGHT_EXT, gl_UNPACK_SKIP_IMAGES_EXT,
        gl_PACK_IMAGE_HEIGHT_EXT, gl_PACK_SKIP_IMAGES_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexSubImage3DEXT #-}
 
ptr_glTexSubImage3DEXT :: FunPtr a
ptr_glTexSubImage3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture3D"
        "glTexSubImage3DEXT"
 
glTexSubImage3DEXT ::
                   GLenum ->
                     GLint ->
                       GLint ->
                         GLint ->
                           GLint ->
                             GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTexSubImage3DEXT = dyn_glTexSubImage3DEXT ptr_glTexSubImage3DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexSubImage3DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLsizei ->
                              GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTexImage3DEXT #-}
 
ptr_glTexImage3DEXT :: FunPtr a
ptr_glTexImage3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture3D"
        "glTexImage3DEXT"
 
glTexImage3DEXT ::
                GLenum ->
                  GLint ->
                    GLenum ->
                      GLsizei ->
                        GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glTexImage3DEXT = dyn_glTexImage3DEXT ptr_glTexImage3DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexImage3DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLenum ->
                        GLsizei ->
                          GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
gl_MAX_3D_TEXTURE_SIZE_EXT :: GLenum
gl_MAX_3D_TEXTURE_SIZE_EXT = 32883
 
gl_TEXTURE_WRAP_R_EXT :: GLenum
gl_TEXTURE_WRAP_R_EXT = 32882
 
gl_TEXTURE_DEPTH_EXT :: GLenum
gl_TEXTURE_DEPTH_EXT = 32881
 
gl_PROXY_TEXTURE_3D_EXT :: GLenum
gl_PROXY_TEXTURE_3D_EXT = 32880
 
gl_TEXTURE_3D_EXT :: GLenum
gl_TEXTURE_3D_EXT = 32879
 
gl_UNPACK_IMAGE_HEIGHT_EXT :: GLenum
gl_UNPACK_IMAGE_HEIGHT_EXT = 32878
 
gl_UNPACK_SKIP_IMAGES_EXT :: GLenum
gl_UNPACK_SKIP_IMAGES_EXT = 32877
 
gl_PACK_IMAGE_HEIGHT_EXT :: GLenum
gl_PACK_IMAGE_HEIGHT_EXT = 32876
 
gl_PACK_SKIP_IMAGES_EXT :: GLenum
gl_PACK_SKIP_IMAGES_EXT = 32875