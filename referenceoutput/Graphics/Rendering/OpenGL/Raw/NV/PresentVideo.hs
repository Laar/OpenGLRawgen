{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.PresentVideo
       (glPresentFrameKeyedNV, glPresentFrameDualFillNV, glGetVideouivNV,
        glGetVideoui64vNV, glGetVideoivNV, glGetVideoi64vNV,
        gl_PRESENT_TIME_NV, gl_PRESENT_DURATION_NV, gl_NUM_FILL_STREAMS_NV,
        gl_FRAME_NV, gl_FIELDS_NV, gl_CURRENT_TIME_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPresentFrameKeyedNV #-}
 
ptr_glPresentFrameKeyedNV :: FunPtr a
ptr_glPresentFrameKeyedNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_present_video"
        "glPresentFrameKeyedNV"
 
glPresentFrameKeyedNV ::
                      GLuint ->
                        GLuint64 ->
                          GLuint ->
                            GLuint ->
                              GLenum ->
                                GLenum -> GLuint -> GLuint -> GLenum -> GLuint -> GLuint -> IO ()
glPresentFrameKeyedNV
  = dyn_glPresentFrameKeyedNV ptr_glPresentFrameKeyedNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPresentFrameKeyedNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint64 ->
                      GLuint ->
                        GLuint ->
                          GLenum ->
                            GLenum -> GLuint -> GLuint -> GLenum -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glPresentFrameDualFillNV #-}
 
ptr_glPresentFrameDualFillNV :: FunPtr a
ptr_glPresentFrameDualFillNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_present_video"
        "glPresentFrameDualFillNV"
 
glPresentFrameDualFillNV ::
                         GLuint ->
                           GLuint64 ->
                             GLuint ->
                               GLuint ->
                                 GLenum ->
                                   GLenum ->
                                     GLuint ->
                                       GLenum ->
                                         GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> IO ()
glPresentFrameDualFillNV
  = dyn_glPresentFrameDualFillNV ptr_glPresentFrameDualFillNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPresentFrameDualFillNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint64 ->
                      GLuint ->
                        GLuint ->
                          GLenum ->
                            GLenum ->
                              GLuint ->
                                GLenum -> GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glGetVideouivNV #-}
 
ptr_glGetVideouivNV :: FunPtr a
ptr_glGetVideouivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_present_video"
        "glGetVideouivNV"
 
glGetVideouivNV :: GLuint -> GLenum -> Ptr GLuint -> IO ()
glGetVideouivNV = dyn_glGetVideouivNV ptr_glGetVideouivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVideouivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetVideoui64vNV #-}
 
ptr_glGetVideoui64vNV :: FunPtr a
ptr_glGetVideoui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_present_video"
        "glGetVideoui64vNV"
 
glGetVideoui64vNV :: GLuint -> GLenum -> Ptr GLuint64 -> IO ()
glGetVideoui64vNV = dyn_glGetVideoui64vNV ptr_glGetVideoui64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVideoui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glGetVideoivNV #-}
 
ptr_glGetVideoivNV :: FunPtr a
ptr_glGetVideoivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_present_video"
        "glGetVideoivNV"
 
glGetVideoivNV :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVideoivNV = dyn_glGetVideoivNV ptr_glGetVideoivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVideoivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetVideoi64vNV #-}
 
ptr_glGetVideoi64vNV :: FunPtr a
ptr_glGetVideoi64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_present_video"
        "glGetVideoi64vNV"
 
glGetVideoi64vNV :: GLuint -> GLenum -> Ptr GLint64 -> IO ()
glGetVideoi64vNV = dyn_glGetVideoi64vNV ptr_glGetVideoi64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVideoi64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint64 -> IO ())
 
gl_PRESENT_TIME_NV :: GLenum
gl_PRESENT_TIME_NV = 36394
 
gl_PRESENT_DURATION_NV :: GLenum
gl_PRESENT_DURATION_NV = 36395
 
gl_NUM_FILL_STREAMS_NV :: GLenum
gl_NUM_FILL_STREAMS_NV = 36393
 
gl_FRAME_NV :: GLenum
gl_FRAME_NV = 36390
 
gl_FIELDS_NV :: GLenum
gl_FIELDS_NV = 36391
 
gl_CURRENT_TIME_NV :: GLenum
gl_CURRENT_TIME_NV = 36392