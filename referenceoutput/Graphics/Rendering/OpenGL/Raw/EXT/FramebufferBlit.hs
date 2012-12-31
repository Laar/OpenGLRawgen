{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.FramebufferBlit
       (glBlitFramebufferEXT, gl_READ_FRAMEBUFFER_EXT,
        gl_READ_FRAMEBUFFER_BINDING_EXT, gl_DRAW_FRAMEBUFFER_EXT,
        gl_DRAW_FRAMEBUFFER_BINDING_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glBlitFramebufferEXT #-}
 
ptr_glBlitFramebufferEXT :: FunPtr a
ptr_glBlitFramebufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_blit"
        "glBlitFramebufferEXT"
 
glBlitFramebufferEXT ::
                     GLint ->
                       GLint ->
                         GLint ->
                           GLint ->
                             GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> IO ()
glBlitFramebufferEXT
  = dyn_glBlitFramebufferEXT ptr_glBlitFramebufferEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlitFramebufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> IO ())
 
gl_READ_FRAMEBUFFER_EXT :: GLenum
gl_READ_FRAMEBUFFER_EXT = 36008
 
gl_READ_FRAMEBUFFER_BINDING_EXT :: GLenum
gl_READ_FRAMEBUFFER_BINDING_EXT = 36010
 
gl_DRAW_FRAMEBUFFER_EXT :: GLenum
gl_DRAW_FRAMEBUFFER_EXT = 36009
 
gl_DRAW_FRAMEBUFFER_BINDING_EXT :: GLenum
gl_DRAW_FRAMEBUFFER_BINDING_EXT = 36006