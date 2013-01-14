{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureCompression
       (glGetCompressedTexImage, glCompressedTexSubImage3D,
        glCompressedTexSubImage2D, glCompressedTexSubImage1D,
        glCompressedTexImage3D, glCompressedTexImage2D,
        glCompressedTexImage1D, gl_TEXTURE_COMPRESSION_HINT,
        gl_TEXTURE_COMPRESSED_IMAGE_SIZE, gl_TEXTURE_COMPRESSED,
        gl_NUM_COMPRESSED_TEXTURE_FORMATS, gl_COMPRESSED_TEXTURE_FORMATS,
        gl_COMPRESSED_RGB, gl_COMPRESSED_RGBA, gl_COMPRESSED_LUMINANCE,
        gl_COMPRESSED_LUMINANCE_ALPHA, gl_COMPRESSED_INTENSITY,
        gl_COMPRESSED_ALPHA)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetCompressedTexImage #-}
 
ptr_glGetCompressedTexImage :: FunPtr a
ptr_glGetCompressedTexImage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_compression"
        "glGetCompressedTexImageARB"
 
glGetCompressedTexImage :: GLenum -> GLint -> Ptr a -> IO ()
glGetCompressedTexImage
  = dyn_glGetCompressedTexImage ptr_glGetCompressedTexImage
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetCompressedTexImage
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexSubImage3D #-}
 
ptr_glCompressedTexSubImage3D :: FunPtr a
ptr_glCompressedTexSubImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_compression"
        "glCompressedTexSubImage3DARB"
 
glCompressedTexSubImage3D ::
                          GLenum ->
                            GLint ->
                              GLint ->
                                GLint ->
                                  GLint ->
                                    GLsizei ->
                                      GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTexSubImage3D
  = dyn_glCompressedTexSubImage3D ptr_glCompressedTexSubImage3D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTexSubImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLsizei ->
                              GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexSubImage2D #-}
 
ptr_glCompressedTexSubImage2D :: FunPtr a
ptr_glCompressedTexSubImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_compression"
        "glCompressedTexSubImage2DARB"
 
glCompressedTexSubImage2D ::
                          GLenum ->
                            GLint ->
                              GLint ->
                                GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTexSubImage2D
  = dyn_glCompressedTexSubImage2D ptr_glCompressedTexSubImage2D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTexSubImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexSubImage1D #-}
 
ptr_glCompressedTexSubImage1D :: FunPtr a
ptr_glCompressedTexSubImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_compression"
        "glCompressedTexSubImage1DARB"
 
glCompressedTexSubImage1D ::
                          GLenum ->
                            GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTexSubImage1D
  = dyn_glCompressedTexSubImage1D ptr_glCompressedTexSubImage1D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTexSubImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexImage3D #-}
 
ptr_glCompressedTexImage3D :: FunPtr a
ptr_glCompressedTexImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_compression"
        "glCompressedTexImage3DARB"
 
glCompressedTexImage3D ::
                       GLenum ->
                         GLint ->
                           GLenum ->
                             GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTexImage3D
  = dyn_glCompressedTexImage3D ptr_glCompressedTexImage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCompressedTexImage3D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLenum ->
                        GLsizei ->
                          GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexImage2D #-}
 
ptr_glCompressedTexImage2D :: FunPtr a
ptr_glCompressedTexImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_compression"
        "glCompressedTexImage2DARB"
 
glCompressedTexImage2D ::
                       GLenum ->
                         GLint ->
                           GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTexImage2D
  = dyn_glCompressedTexImage2D ptr_glCompressedTexImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCompressedTexImage2D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexImage1D #-}
 
ptr_glCompressedTexImage1D :: FunPtr a
ptr_glCompressedTexImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_compression"
        "glCompressedTexImage1DARB"
 
glCompressedTexImage1D ::
                       GLenum ->
                         GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTexImage1D
  = dyn_glCompressedTexImage1D ptr_glCompressedTexImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCompressedTexImage1D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
gl_TEXTURE_COMPRESSION_HINT :: GLenum
gl_TEXTURE_COMPRESSION_HINT = 34031
 
gl_TEXTURE_COMPRESSED_IMAGE_SIZE :: GLenum
gl_TEXTURE_COMPRESSED_IMAGE_SIZE = 34464
 
gl_TEXTURE_COMPRESSED :: GLenum
gl_TEXTURE_COMPRESSED = 34465
 
gl_NUM_COMPRESSED_TEXTURE_FORMATS :: GLenum
gl_NUM_COMPRESSED_TEXTURE_FORMATS = 34466
 
gl_COMPRESSED_TEXTURE_FORMATS :: GLenum
gl_COMPRESSED_TEXTURE_FORMATS = 34467
 
gl_COMPRESSED_RGB :: GLenum
gl_COMPRESSED_RGB = 34029
 
gl_COMPRESSED_RGBA :: GLenum
gl_COMPRESSED_RGBA = 34030
 
gl_COMPRESSED_LUMINANCE :: GLenum
gl_COMPRESSED_LUMINANCE = 34026
 
gl_COMPRESSED_LUMINANCE_ALPHA :: GLenum
gl_COMPRESSED_LUMINANCE_ALPHA = 34027
 
gl_COMPRESSED_INTENSITY :: GLenum
gl_COMPRESSED_INTENSITY = 34028
 
gl_COMPRESSED_ALPHA :: GLenum
gl_COMPRESSED_ALPHA = 34025