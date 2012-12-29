{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TextureMultisample
       (glTextureImage3DMultisampleCoverageNV,
        glTextureImage2DMultisampleCoverageNV,
        glTextureImage3DMultisampleNV, glTextureImage2DMultisampleNV,
        glTexImage3DMultisampleCoverageNV,
        glTexImage2DMultisampleCoverageNV, gl_TEXTURE_COLOR_SAMPLES_NV,
        gl_TEXTURE_COVERAGE_SAMPLES_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTextureImage3DMultisampleCoverageNV #-}
 
ptr_glTextureImage3DMultisampleCoverageNV :: FunPtr a
ptr_glTextureImage3DMultisampleCoverageNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_texture_multisample"
        "glTextureImage3DMultisampleCoverageNV"
 
glTextureImage3DMultisampleCoverageNV ::
                                      GLuint ->
                                        GLenum ->
                                          GLsizei ->
                                            GLsizei ->
                                              GLint ->
                                                GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTextureImage3DMultisampleCoverageNV
  = dyn_glTextureImage3DMultisampleCoverageNV
      ptr_glTextureImage3DMultisampleCoverageNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTextureImage3DMultisampleCoverageNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLsizei ->
                        GLsizei ->
                          GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTextureImage2DMultisampleCoverageNV #-}
 
ptr_glTextureImage2DMultisampleCoverageNV :: FunPtr a
ptr_glTextureImage2DMultisampleCoverageNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_texture_multisample"
        "glTextureImage2DMultisampleCoverageNV"
 
glTextureImage2DMultisampleCoverageNV ::
                                      GLuint ->
                                        GLenum ->
                                          GLsizei ->
                                            GLsizei ->
                                              GLint -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTextureImage2DMultisampleCoverageNV
  = dyn_glTextureImage2DMultisampleCoverageNV
      ptr_glTextureImage2DMultisampleCoverageNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTextureImage2DMultisampleCoverageNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLsizei ->
                        GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTextureImage3DMultisampleNV #-}
 
ptr_glTextureImage3DMultisampleNV :: FunPtr a
ptr_glTextureImage3DMultisampleNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_texture_multisample"
        "glTextureImage3DMultisampleNV"
 
glTextureImage3DMultisampleNV ::
                              GLuint ->
                                GLenum ->
                                  GLsizei ->
                                    GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTextureImage3DMultisampleNV
  = dyn_glTextureImage3DMultisampleNV
      ptr_glTextureImage3DMultisampleNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTextureImage3DMultisampleNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLsizei ->
                        GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTextureImage2DMultisampleNV #-}
 
ptr_glTextureImage2DMultisampleNV :: FunPtr a
ptr_glTextureImage2DMultisampleNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_texture_multisample"
        "glTextureImage2DMultisampleNV"
 
glTextureImage2DMultisampleNV ::
                              GLuint ->
                                GLenum ->
                                  GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTextureImage2DMultisampleNV
  = dyn_glTextureImage2DMultisampleNV
      ptr_glTextureImage2DMultisampleNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTextureImage2DMultisampleNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTexImage3DMultisampleCoverageNV #-}
 
ptr_glTexImage3DMultisampleCoverageNV :: FunPtr a
ptr_glTexImage3DMultisampleCoverageNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_texture_multisample"
        "glTexImage3DMultisampleCoverageNV"
 
glTexImage3DMultisampleCoverageNV ::
                                  GLenum ->
                                    GLsizei ->
                                      GLsizei ->
                                        GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTexImage3DMultisampleCoverageNV
  = dyn_glTexImage3DMultisampleCoverageNV
      ptr_glTexImage3DMultisampleCoverageNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTexImage3DMultisampleCoverageNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei ->
                      GLsizei ->
                        GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTexImage2DMultisampleCoverageNV #-}
 
ptr_glTexImage2DMultisampleCoverageNV :: FunPtr a
ptr_glTexImage2DMultisampleCoverageNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_texture_multisample"
        "glTexImage2DMultisampleCoverageNV"
 
glTexImage2DMultisampleCoverageNV ::
                                  GLenum ->
                                    GLsizei ->
                                      GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTexImage2DMultisampleCoverageNV
  = dyn_glTexImage2DMultisampleCoverageNV
      ptr_glTexImage2DMultisampleCoverageNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTexImage2DMultisampleCoverageNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei ->
                      GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
gl_TEXTURE_COLOR_SAMPLES_NV :: GLenum
gl_TEXTURE_COLOR_SAMPLES_NV = 36934
 
gl_TEXTURE_COVERAGE_SAMPLES_NV :: GLenum
gl_TEXTURE_COVERAGE_SAMPLES_NV = 36933