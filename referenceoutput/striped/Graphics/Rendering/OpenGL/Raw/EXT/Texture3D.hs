{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.Texture3D
       (glTexSubImage3D, glTexImage3D, gl_UNPACK_SKIP_IMAGES,
        gl_UNPACK_IMAGE_HEIGHT, gl_TEXTURE_WRAP_R, gl_TEXTURE_DEPTH,
        gl_TEXTURE_3D, gl_PROXY_TEXTURE_3D, gl_PACK_SKIP_IMAGES,
        gl_PACK_IMAGE_HEIGHT, gl_MAX_3D_TEXTURE_SIZE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexSubImage3D #-}
 
ptr_glTexSubImage3D :: FunPtr a
ptr_glTexSubImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture3D"
        "glTexSubImage3DEXT"
 
glTexSubImage3D ::
                GLenum ->
                  GLint ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTexSubImage3D = dyn_glTexSubImage3D ptr_glTexSubImage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexSubImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLsizei ->
                              GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTexImage3D #-}
 
ptr_glTexImage3D :: FunPtr a
ptr_glTexImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture3D"
        "glTexImage3DEXT"
 
glTexImage3D ::
             GLenum ->
               GLint ->
                 GLenum ->
                   GLsizei ->
                     GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glTexImage3D = dyn_glTexImage3D ptr_glTexImage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLenum ->
                        GLsizei ->
                          GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
gl_UNPACK_SKIP_IMAGES :: GLenum
gl_UNPACK_SKIP_IMAGES = 32877
 
gl_UNPACK_IMAGE_HEIGHT :: GLenum
gl_UNPACK_IMAGE_HEIGHT = 32878
 
gl_TEXTURE_WRAP_R :: GLenum
gl_TEXTURE_WRAP_R = 32882
 
gl_TEXTURE_DEPTH :: GLenum
gl_TEXTURE_DEPTH = 32881
 
gl_TEXTURE_3D :: GLenum
gl_TEXTURE_3D = 32879
 
gl_PROXY_TEXTURE_3D :: GLenum
gl_PROXY_TEXTURE_3D = 32880
 
gl_PACK_SKIP_IMAGES :: GLenum
gl_PACK_SKIP_IMAGES = 32875
 
gl_PACK_IMAGE_HEIGHT :: GLenum
gl_PACK_IMAGE_HEIGHT = 32876
 
gl_MAX_3D_TEXTURE_SIZE :: GLenum
gl_MAX_3D_TEXTURE_SIZE = 32883