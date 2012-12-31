{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.FramebufferMultisampleCoverage
       (glRenderbufferStorageMultisampleCoverageNV,
        gl_RENDERBUFFER_COVERAGE_SAMPLES_NV,
        gl_RENDERBUFFER_COLOR_SAMPLES_NV, gl_MULTISAMPLE_COVERAGE_MODES_NV,
        gl_MAX_MULTISAMPLE_COVERAGE_MODES_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glRenderbufferStorageMultisampleCoverageNV #-}
 
ptr_glRenderbufferStorageMultisampleCoverageNV :: FunPtr a
ptr_glRenderbufferStorageMultisampleCoverageNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_framebuffer_multisample_coverage"
        "glRenderbufferStorageMultisampleCoverageNV"
 
glRenderbufferStorageMultisampleCoverageNV ::
                                           GLenum ->
                                             GLsizei ->
                                               GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()
glRenderbufferStorageMultisampleCoverageNV
  = dyn_glRenderbufferStorageMultisampleCoverageNV
      ptr_glRenderbufferStorageMultisampleCoverageNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glRenderbufferStorageMultisampleCoverageNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ())
 
gl_RENDERBUFFER_COVERAGE_SAMPLES_NV :: GLenum
gl_RENDERBUFFER_COVERAGE_SAMPLES_NV = 36011
 
gl_RENDERBUFFER_COLOR_SAMPLES_NV :: GLenum
gl_RENDERBUFFER_COLOR_SAMPLES_NV = 36368
 
gl_MULTISAMPLE_COVERAGE_MODES_NV :: GLenum
gl_MULTISAMPLE_COVERAGE_MODES_NV = 36370
 
gl_MAX_MULTISAMPLE_COVERAGE_MODES_NV :: GLenum
gl_MAX_MULTISAMPLE_COVERAGE_MODES_NV = 36369