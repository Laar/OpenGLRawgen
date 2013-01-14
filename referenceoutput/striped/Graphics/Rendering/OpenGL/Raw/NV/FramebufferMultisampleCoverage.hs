{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.FramebufferMultisampleCoverage
       (glRenderbufferStorageMultisampleCoverage,
        gl_RENDERBUFFER_COVERAGE_SAMPLES, gl_RENDERBUFFER_COLOR_SAMPLES,
        gl_MULTISAMPLE_COVERAGE_MODES, gl_MAX_MULTISAMPLE_COVERAGE_MODES)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glRenderbufferStorageMultisampleCoverage #-}
 
ptr_glRenderbufferStorageMultisampleCoverage :: FunPtr a
ptr_glRenderbufferStorageMultisampleCoverage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_framebuffer_multisample_coverage"
        "glRenderbufferStorageMultisampleCoverageNV"
 
glRenderbufferStorageMultisampleCoverage ::
                                         GLenum ->
                                           GLsizei ->
                                             GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()
glRenderbufferStorageMultisampleCoverage
  = dyn_glRenderbufferStorageMultisampleCoverage
      ptr_glRenderbufferStorageMultisampleCoverage
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glRenderbufferStorageMultisampleCoverage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ())
 
gl_RENDERBUFFER_COVERAGE_SAMPLES :: GLenum
gl_RENDERBUFFER_COVERAGE_SAMPLES = 36011
 
gl_RENDERBUFFER_COLOR_SAMPLES :: GLenum
gl_RENDERBUFFER_COLOR_SAMPLES = 36368
 
gl_MULTISAMPLE_COVERAGE_MODES :: GLenum
gl_MULTISAMPLE_COVERAGE_MODES = 36370
 
gl_MAX_MULTISAMPLE_COVERAGE_MODES :: GLenum
gl_MAX_MULTISAMPLE_COVERAGE_MODES = 36369