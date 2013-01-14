{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.FramebufferMultisample
       (glRenderbufferStorageMultisampleEXT, gl_RENDERBUFFER_SAMPLES_EXT,
        gl_MAX_SAMPLES_EXT, gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glRenderbufferStorageMultisampleEXT #-}
 
ptr_glRenderbufferStorageMultisampleEXT :: FunPtr a
ptr_glRenderbufferStorageMultisampleEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_multisample"
        "glRenderbufferStorageMultisampleEXT"
 
glRenderbufferStorageMultisampleEXT ::
                                    GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()
glRenderbufferStorageMultisampleEXT
  = dyn_glRenderbufferStorageMultisampleEXT
      ptr_glRenderbufferStorageMultisampleEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glRenderbufferStorageMultisampleEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ())
 
gl_RENDERBUFFER_SAMPLES_EXT :: GLenum
gl_RENDERBUFFER_SAMPLES_EXT = 36011
 
gl_MAX_SAMPLES_EXT :: GLenum
gl_MAX_SAMPLES_EXT = 36183
 
gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT = 36182