{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TextureMultisample
       (glTextureImage3DMultisample, glTextureImage3DMultisampleCoverage,
        glTextureImage2DMultisample, glTextureImage2DMultisampleCoverage,
        glTexImage3DMultisampleCoverage, glTexImage2DMultisampleCoverage,
        gl_TEXTURE_COVERAGE_SAMPLES, gl_TEXTURE_COLOR_SAMPLES)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTextureImage3DMultisample #-}
 
ptr_glTextureImage3DMultisample :: FunPtr a
ptr_glTextureImage3DMultisample
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_texture_multisample"
        "glTextureImage3DMultisampleNV"
 
glTextureImage3DMultisample ::
                            GLuint ->
                              GLenum ->
                                GLsizei ->
                                  GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTextureImage3DMultisample
  = dyn_glTextureImage3DMultisample ptr_glTextureImage3DMultisample
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTextureImage3DMultisample ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLsizei ->
                        GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTextureImage3DMultisampleCoverage #-}
 
ptr_glTextureImage3DMultisampleCoverage :: FunPtr a
ptr_glTextureImage3DMultisampleCoverage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_texture_multisample"
        "glTextureImage3DMultisampleCoverageNV"
 
glTextureImage3DMultisampleCoverage ::
                                    GLuint ->
                                      GLenum ->
                                        GLsizei ->
                                          GLsizei ->
                                            GLint ->
                                              GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTextureImage3DMultisampleCoverage
  = dyn_glTextureImage3DMultisampleCoverage
      ptr_glTextureImage3DMultisampleCoverage
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTextureImage3DMultisampleCoverage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLsizei ->
                        GLsizei ->
                          GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTextureImage2DMultisample #-}
 
ptr_glTextureImage2DMultisample :: FunPtr a
ptr_glTextureImage2DMultisample
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_texture_multisample"
        "glTextureImage2DMultisampleNV"
 
glTextureImage2DMultisample ::
                            GLuint ->
                              GLenum ->
                                GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTextureImage2DMultisample
  = dyn_glTextureImage2DMultisample ptr_glTextureImage2DMultisample
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTextureImage2DMultisample ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTextureImage2DMultisampleCoverage #-}
 
ptr_glTextureImage2DMultisampleCoverage :: FunPtr a
ptr_glTextureImage2DMultisampleCoverage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_texture_multisample"
        "glTextureImage2DMultisampleCoverageNV"
 
glTextureImage2DMultisampleCoverage ::
                                    GLuint ->
                                      GLenum ->
                                        GLsizei ->
                                          GLsizei ->
                                            GLint -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTextureImage2DMultisampleCoverage
  = dyn_glTextureImage2DMultisampleCoverage
      ptr_glTextureImage2DMultisampleCoverage
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTextureImage2DMultisampleCoverage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLsizei ->
                        GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTexImage3DMultisampleCoverage #-}
 
ptr_glTexImage3DMultisampleCoverage :: FunPtr a
ptr_glTexImage3DMultisampleCoverage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_texture_multisample"
        "glTexImage3DMultisampleCoverageNV"
 
glTexImage3DMultisampleCoverage ::
                                GLenum ->
                                  GLsizei ->
                                    GLsizei ->
                                      GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTexImage3DMultisampleCoverage
  = dyn_glTexImage3DMultisampleCoverage
      ptr_glTexImage3DMultisampleCoverage
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTexImage3DMultisampleCoverage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei ->
                      GLsizei ->
                        GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTexImage2DMultisampleCoverage #-}
 
ptr_glTexImage2DMultisampleCoverage :: FunPtr a
ptr_glTexImage2DMultisampleCoverage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_texture_multisample"
        "glTexImage2DMultisampleCoverageNV"
 
glTexImage2DMultisampleCoverage ::
                                GLenum ->
                                  GLsizei ->
                                    GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTexImage2DMultisampleCoverage
  = dyn_glTexImage2DMultisampleCoverage
      ptr_glTexImage2DMultisampleCoverage
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTexImage2DMultisampleCoverage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei ->
                      GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
gl_TEXTURE_COVERAGE_SAMPLES :: GLenum
gl_TEXTURE_COVERAGE_SAMPLES = 36933
 
gl_TEXTURE_COLOR_SAMPLES :: GLenum
gl_TEXTURE_COLOR_SAMPLES = 36934