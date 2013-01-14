{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.FramebufferMultisample
       (glRenderbufferStorageMultisample, gl_RENDERBUFFER_SAMPLES,
        gl_MAX_SAMPLES, gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glRenderbufferStorageMultisample #-}
 
ptr_glRenderbufferStorageMultisample :: FunPtr a
ptr_glRenderbufferStorageMultisample
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_multisample"
        "glRenderbufferStorageMultisampleEXT"
 
glRenderbufferStorageMultisample ::
                                 GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()
glRenderbufferStorageMultisample
  = dyn_glRenderbufferStorageMultisample
      ptr_glRenderbufferStorageMultisample
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glRenderbufferStorageMultisample ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ())
 
gl_RENDERBUFFER_SAMPLES :: GLenum
gl_RENDERBUFFER_SAMPLES = 36011
 
gl_MAX_SAMPLES :: GLenum
gl_MAX_SAMPLES = 36183
 
gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 36182