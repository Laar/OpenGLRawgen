{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.PresentVideo
       (glPresentFrameKeyed, glPresentFrameDualFill, glGetVideouiv,
        glGetVideoui64v, glGetVideoiv, glGetVideoi64v, gl_PRESENT_TIME,
        gl_PRESENT_DURATION, gl_NUM_FILL_STREAMS, gl_FRAME, gl_FIELDS,
        gl_CURRENT_TIME)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPresentFrameKeyed #-}
 
ptr_glPresentFrameKeyed :: FunPtr a
ptr_glPresentFrameKeyed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_present_video"
        "glPresentFrameKeyedNV"
 
glPresentFrameKeyed ::
                    GLuint ->
                      GLuint64 ->
                        GLuint ->
                          GLuint ->
                            GLenum ->
                              GLenum -> GLuint -> GLuint -> GLenum -> GLuint -> GLuint -> IO ()
glPresentFrameKeyed
  = dyn_glPresentFrameKeyed ptr_glPresentFrameKeyed
 
foreign import CALLCONV unsafe "dynamic" dyn_glPresentFrameKeyed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint64 ->
                      GLuint ->
                        GLuint ->
                          GLenum ->
                            GLenum -> GLuint -> GLuint -> GLenum -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glPresentFrameDualFill #-}
 
ptr_glPresentFrameDualFill :: FunPtr a
ptr_glPresentFrameDualFill
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_present_video"
        "glPresentFrameDualFillNV"
 
glPresentFrameDualFill ::
                       GLuint ->
                         GLuint64 ->
                           GLuint ->
                             GLuint ->
                               GLenum ->
                                 GLenum ->
                                   GLuint ->
                                     GLenum ->
                                       GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> IO ()
glPresentFrameDualFill
  = dyn_glPresentFrameDualFill ptr_glPresentFrameDualFill
 
foreign import CALLCONV unsafe "dynamic" dyn_glPresentFrameDualFill
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint64 ->
                      GLuint ->
                        GLuint ->
                          GLenum ->
                            GLenum ->
                              GLuint ->
                                GLenum -> GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glGetVideouiv #-}
 
ptr_glGetVideouiv :: FunPtr a
ptr_glGetVideouiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_present_video"
        "glGetVideouivNV"
 
glGetVideouiv :: GLuint -> GLenum -> Ptr GLuint -> IO ()
glGetVideouiv = dyn_glGetVideouiv ptr_glGetVideouiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVideouiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetVideoui64v #-}
 
ptr_glGetVideoui64v :: FunPtr a
ptr_glGetVideoui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_present_video"
        "glGetVideoui64vNV"
 
glGetVideoui64v :: GLuint -> GLenum -> Ptr GLuint64 -> IO ()
glGetVideoui64v = dyn_glGetVideoui64v ptr_glGetVideoui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVideoui64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glGetVideoiv #-}
 
ptr_glGetVideoiv :: FunPtr a
ptr_glGetVideoiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_present_video"
        "glGetVideoivNV"
 
glGetVideoiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVideoiv = dyn_glGetVideoiv ptr_glGetVideoiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVideoiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetVideoi64v #-}
 
ptr_glGetVideoi64v :: FunPtr a
ptr_glGetVideoi64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_present_video"
        "glGetVideoi64vNV"
 
glGetVideoi64v :: GLuint -> GLenum -> Ptr GLint64 -> IO ()
glGetVideoi64v = dyn_glGetVideoi64v ptr_glGetVideoi64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVideoi64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint64 -> IO ())
 
gl_PRESENT_TIME :: GLenum
gl_PRESENT_TIME = 36394
 
gl_PRESENT_DURATION :: GLenum
gl_PRESENT_DURATION = 36395
 
gl_NUM_FILL_STREAMS :: GLenum
gl_NUM_FILL_STREAMS = 36393
 
gl_FRAME :: GLenum
gl_FRAME = 36390
 
gl_FIELDS :: GLenum
gl_FIELDS = 36391
 
gl_CURRENT_TIME :: GLenum
gl_CURRENT_TIME = 36392