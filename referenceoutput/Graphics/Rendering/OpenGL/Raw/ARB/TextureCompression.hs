{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureCompression
       (glGetCompressedTexImageARB, glCompressedTexSubImage1DARB,
        glCompressedTexSubImage2DARB, glCompressedTexSubImage3DARB,
        glCompressedTexImage1DARB, glCompressedTexImage2DARB,
        glCompressedTexImage3DARB, gl_COMPRESSED_TEXTURE_FORMATS_ARB,
        gl_NUM_COMPRESSED_TEXTURE_FORMATS_ARB, gl_TEXTURE_COMPRESSED_ARB,
        gl_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB,
        gl_TEXTURE_COMPRESSION_HINT_ARB, gl_COMPRESSED_RGBA_ARB,
        gl_COMPRESSED_RGB_ARB, gl_COMPRESSED_INTENSITY_ARB,
        gl_COMPRESSED_LUMINANCE_ALPHA_ARB, gl_COMPRESSED_LUMINANCE_ARB,
        gl_COMPRESSED_ALPHA_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetCompressedTexImageARB #-}
 
ptr_glGetCompressedTexImageARB :: FunPtr a
ptr_glGetCompressedTexImageARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_compression"
        "glGetCompressedTexImageARB"
 
glGetCompressedTexImageARB :: GLenum -> GLint -> Ptr a -> IO ()
glGetCompressedTexImageARB
  = dyn_glGetCompressedTexImageARB ptr_glGetCompressedTexImageARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCompressedTexImageARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexSubImage1DARB #-}
 
ptr_glCompressedTexSubImage1DARB :: FunPtr a
ptr_glCompressedTexSubImage1DARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_compression"
        "glCompressedTexSubImage1DARB"
 
glCompressedTexSubImage1DARB ::
                             GLenum ->
                               GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTexSubImage1DARB
  = dyn_glCompressedTexSubImage1DARB ptr_glCompressedTexSubImage1DARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTexSubImage1DARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexSubImage2DARB #-}
 
ptr_glCompressedTexSubImage2DARB :: FunPtr a
ptr_glCompressedTexSubImage2DARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_compression"
        "glCompressedTexSubImage2DARB"
 
glCompressedTexSubImage2DARB ::
                             GLenum ->
                               GLint ->
                                 GLint ->
                                   GLint ->
                                     GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTexSubImage2DARB
  = dyn_glCompressedTexSubImage2DARB ptr_glCompressedTexSubImage2DARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTexSubImage2DARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexSubImage3DARB #-}
 
ptr_glCompressedTexSubImage3DARB :: FunPtr a
ptr_glCompressedTexSubImage3DARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_compression"
        "glCompressedTexSubImage3DARB"
 
glCompressedTexSubImage3DARB ::
                             GLenum ->
                               GLint ->
                                 GLint ->
                                   GLint ->
                                     GLint ->
                                       GLsizei ->
                                         GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTexSubImage3DARB
  = dyn_glCompressedTexSubImage3DARB ptr_glCompressedTexSubImage3DARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTexSubImage3DARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLsizei ->
                              GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexImage1DARB #-}
 
ptr_glCompressedTexImage1DARB :: FunPtr a
ptr_glCompressedTexImage1DARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_compression"
        "glCompressedTexImage1DARB"
 
glCompressedTexImage1DARB ::
                          GLenum ->
                            GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTexImage1DARB
  = dyn_glCompressedTexImage1DARB ptr_glCompressedTexImage1DARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTexImage1DARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexImage2DARB #-}
 
ptr_glCompressedTexImage2DARB :: FunPtr a
ptr_glCompressedTexImage2DARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_compression"
        "glCompressedTexImage2DARB"
 
glCompressedTexImage2DARB ::
                          GLenum ->
                            GLint ->
                              GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTexImage2DARB
  = dyn_glCompressedTexImage2DARB ptr_glCompressedTexImage2DARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTexImage2DARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexImage3DARB #-}
 
ptr_glCompressedTexImage3DARB :: FunPtr a
ptr_glCompressedTexImage3DARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_compression"
        "glCompressedTexImage3DARB"
 
glCompressedTexImage3DARB ::
                          GLenum ->
                            GLint ->
                              GLenum ->
                                GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTexImage3DARB
  = dyn_glCompressedTexImage3DARB ptr_glCompressedTexImage3DARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTexImage3DARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLenum ->
                        GLsizei ->
                          GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
gl_COMPRESSED_TEXTURE_FORMATS_ARB :: GLenum
gl_COMPRESSED_TEXTURE_FORMATS_ARB = 34467
 
gl_NUM_COMPRESSED_TEXTURE_FORMATS_ARB :: GLenum
gl_NUM_COMPRESSED_TEXTURE_FORMATS_ARB = 34466
 
gl_TEXTURE_COMPRESSED_ARB :: GLenum
gl_TEXTURE_COMPRESSED_ARB = 34465
 
gl_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB :: GLenum
gl_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB = 34464
 
gl_TEXTURE_COMPRESSION_HINT_ARB :: GLenum
gl_TEXTURE_COMPRESSION_HINT_ARB = 34031
 
gl_COMPRESSED_RGBA_ARB :: GLenum
gl_COMPRESSED_RGBA_ARB = 34030
 
gl_COMPRESSED_RGB_ARB :: GLenum
gl_COMPRESSED_RGB_ARB = 34029
 
gl_COMPRESSED_INTENSITY_ARB :: GLenum
gl_COMPRESSED_INTENSITY_ARB = 34028
 
gl_COMPRESSED_LUMINANCE_ALPHA_ARB :: GLenum
gl_COMPRESSED_LUMINANCE_ALPHA_ARB = 34027
 
gl_COMPRESSED_LUMINANCE_ARB :: GLenum
gl_COMPRESSED_LUMINANCE_ARB = 34026
 
gl_COMPRESSED_ALPHA_ARB :: GLenum
gl_COMPRESSED_ALPHA_ARB = 34025