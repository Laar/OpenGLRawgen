{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.FramebufferBlit
       (glBlitFramebuffer, gl_READ_FRAMEBUFFER,
        gl_READ_FRAMEBUFFER_BINDING, gl_DRAW_FRAMEBUFFER,
        gl_DRAW_FRAMEBUFFER_BINDING)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glBlitFramebuffer #-}
 
ptr_glBlitFramebuffer :: FunPtr a
ptr_glBlitFramebuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_blit"
        "glBlitFramebufferEXT"
 
glBlitFramebuffer ::
                  GLint ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> IO ()
glBlitFramebuffer = dyn_glBlitFramebuffer ptr_glBlitFramebuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlitFramebuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> IO ())
 
gl_READ_FRAMEBUFFER :: GLenum
gl_READ_FRAMEBUFFER = 36008
 
gl_READ_FRAMEBUFFER_BINDING :: GLenum
gl_READ_FRAMEBUFFER_BINDING = 36010
 
gl_DRAW_FRAMEBUFFER :: GLenum
gl_DRAW_FRAMEBUFFER = 36009
 
gl_DRAW_FRAMEBUFFER_BINDING :: GLenum
gl_DRAW_FRAMEBUFFER_BINDING = 36006