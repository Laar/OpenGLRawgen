{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VideoCapture
       (glVideoCaptureStreamParameterdvNV,
        glVideoCaptureStreamParameterfvNV,
        glVideoCaptureStreamParameterivNV, glVideoCaptureNV,
        glGetVideoCaptureStreamdvNV, glGetVideoCaptureStreamfvNV,
        glGetVideoCaptureStreamivNV, glGetVideoCaptureivNV,
        glEndVideoCaptureNV, glBindVideoCaptureStreamTextureNV,
        glBindVideoCaptureStreamBufferNV, glBeginVideoCaptureNV,
        gl_VIDEO_CAPTURE_SURFACE_ORIGIN_NV,
        gl_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV,
        gl_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV,
        gl_VIDEO_CAPTURE_FRAME_HEIGHT_NV, gl_VIDEO_CAPTURE_FRAME_WIDTH_NV,
        gl_Z4Y12Z4CB12Z4CR12_444_NV,
        gl_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV,
        gl_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV,
        gl_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV,
        gl_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV, gl_YCBAYCR8A_4224_NV,
        gl_YCBYCR8_422_NV, gl_FAILURE_NV, gl_SUCCESS_NV,
        gl_PARTIAL_SUCCESS_NV, gl_VIDEO_BUFFER_INTERNAL_FORMAT_NV,
        gl_VIDEO_COLOR_CONVERSION_OFFSET_NV,
        gl_VIDEO_COLOR_CONVERSION_MIN_NV, gl_VIDEO_COLOR_CONVERSION_MAX_NV,
        gl_VIDEO_COLOR_CONVERSION_MATRIX_NV, gl_VIDEO_BUFFER_PITCH_NV,
        gl_LAST_VIDEO_CAPTURE_STATUS_NV,
        gl_VIDEO_CAPTURE_TO_422_SUPPORTED_NV,
        gl_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV,
        gl_NUM_VIDEO_CAPTURE_STREAMS_NV, gl_FIELD_LOWER_NV,
        gl_FIELD_UPPER_NV, gl_VIDEO_BUFFER_BINDING_NV, gl_VIDEO_BUFFER_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVideoCaptureStreamParameterdvNV #-}
 
ptr_glVideoCaptureStreamParameterdvNV :: FunPtr a
ptr_glVideoCaptureStreamParameterdvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glVideoCaptureStreamParameterdvNV"
 
glVideoCaptureStreamParameterdvNV ::
                                  GLuint -> GLuint -> GLenum -> Ptr GLdouble -> IO ()
glVideoCaptureStreamParameterdvNV
  = dyn_glVideoCaptureStreamParameterdvNV
      ptr_glVideoCaptureStreamParameterdvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVideoCaptureStreamParameterdvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVideoCaptureStreamParameterfvNV #-}
 
ptr_glVideoCaptureStreamParameterfvNV :: FunPtr a
ptr_glVideoCaptureStreamParameterfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glVideoCaptureStreamParameterfvNV"
 
glVideoCaptureStreamParameterfvNV ::
                                  GLuint -> GLuint -> GLenum -> Ptr GLfloat -> IO ()
glVideoCaptureStreamParameterfvNV
  = dyn_glVideoCaptureStreamParameterfvNV
      ptr_glVideoCaptureStreamParameterfvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVideoCaptureStreamParameterfvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVideoCaptureStreamParameterivNV #-}
 
ptr_glVideoCaptureStreamParameterivNV :: FunPtr a
ptr_glVideoCaptureStreamParameterivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glVideoCaptureStreamParameterivNV"
 
glVideoCaptureStreamParameterivNV ::
                                  GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ()
glVideoCaptureStreamParameterivNV
  = dyn_glVideoCaptureStreamParameterivNV
      ptr_glVideoCaptureStreamParameterivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVideoCaptureStreamParameterivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVideoCaptureNV #-}
 
ptr_glVideoCaptureNV :: FunPtr a
ptr_glVideoCaptureNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glVideoCaptureNV"
 
glVideoCaptureNV ::
                 GLuint -> Ptr GLuint -> Ptr GLuint64 -> IO GLenum
glVideoCaptureNV = dyn_glVideoCaptureNV ptr_glVideoCaptureNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVideoCaptureNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> Ptr GLuint64 -> IO GLenum)
 
{-# NOINLINE ptr_glGetVideoCaptureStreamdvNV #-}
 
ptr_glGetVideoCaptureStreamdvNV :: FunPtr a
ptr_glGetVideoCaptureStreamdvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glGetVideoCaptureStreamdvNV"
 
glGetVideoCaptureStreamdvNV ::
                            GLuint -> GLuint -> GLenum -> Ptr GLdouble -> IO ()
glGetVideoCaptureStreamdvNV
  = dyn_glGetVideoCaptureStreamdvNV ptr_glGetVideoCaptureStreamdvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVideoCaptureStreamdvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetVideoCaptureStreamfvNV #-}
 
ptr_glGetVideoCaptureStreamfvNV :: FunPtr a
ptr_glGetVideoCaptureStreamfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glGetVideoCaptureStreamfvNV"
 
glGetVideoCaptureStreamfvNV ::
                            GLuint -> GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetVideoCaptureStreamfvNV
  = dyn_glGetVideoCaptureStreamfvNV ptr_glGetVideoCaptureStreamfvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVideoCaptureStreamfvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetVideoCaptureStreamivNV #-}
 
ptr_glGetVideoCaptureStreamivNV :: FunPtr a
ptr_glGetVideoCaptureStreamivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glGetVideoCaptureStreamivNV"
 
glGetVideoCaptureStreamivNV ::
                            GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVideoCaptureStreamivNV
  = dyn_glGetVideoCaptureStreamivNV ptr_glGetVideoCaptureStreamivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVideoCaptureStreamivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetVideoCaptureivNV #-}
 
ptr_glGetVideoCaptureivNV :: FunPtr a
ptr_glGetVideoCaptureivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glGetVideoCaptureivNV"
 
glGetVideoCaptureivNV :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVideoCaptureivNV
  = dyn_glGetVideoCaptureivNV ptr_glGetVideoCaptureivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVideoCaptureivNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glEndVideoCaptureNV #-}
 
ptr_glEndVideoCaptureNV :: FunPtr a
ptr_glEndVideoCaptureNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glEndVideoCaptureNV"
 
glEndVideoCaptureNV :: GLuint -> IO ()
glEndVideoCaptureNV
  = dyn_glEndVideoCaptureNV ptr_glEndVideoCaptureNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndVideoCaptureNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glBindVideoCaptureStreamTextureNV #-}
 
ptr_glBindVideoCaptureStreamTextureNV :: FunPtr a
ptr_glBindVideoCaptureStreamTextureNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glBindVideoCaptureStreamTextureNV"
 
glBindVideoCaptureStreamTextureNV ::
                                  GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> IO ()
glBindVideoCaptureStreamTextureNV
  = dyn_glBindVideoCaptureStreamTextureNV
      ptr_glBindVideoCaptureStreamTextureNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBindVideoCaptureStreamTextureNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glBindVideoCaptureStreamBufferNV #-}
 
ptr_glBindVideoCaptureStreamBufferNV :: FunPtr a
ptr_glBindVideoCaptureStreamBufferNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glBindVideoCaptureStreamBufferNV"
 
glBindVideoCaptureStreamBufferNV ::
                                 GLuint -> GLuint -> GLenum -> GLintptr -> IO ()
glBindVideoCaptureStreamBufferNV
  = dyn_glBindVideoCaptureStreamBufferNV
      ptr_glBindVideoCaptureStreamBufferNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBindVideoCaptureStreamBufferNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> GLintptr -> IO ())
 
{-# NOINLINE ptr_glBeginVideoCaptureNV #-}
 
ptr_glBeginVideoCaptureNV :: FunPtr a
ptr_glBeginVideoCaptureNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glBeginVideoCaptureNV"
 
glBeginVideoCaptureNV :: GLuint -> IO ()
glBeginVideoCaptureNV
  = dyn_glBeginVideoCaptureNV ptr_glBeginVideoCaptureNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glBeginVideoCaptureNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
gl_VIDEO_CAPTURE_SURFACE_ORIGIN_NV :: GLenum
gl_VIDEO_CAPTURE_SURFACE_ORIGIN_NV = 36924
 
gl_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV :: GLenum
gl_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV = 36923
 
gl_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV :: GLenum
gl_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV = 36922
 
gl_VIDEO_CAPTURE_FRAME_HEIGHT_NV :: GLenum
gl_VIDEO_CAPTURE_FRAME_HEIGHT_NV = 36921
 
gl_VIDEO_CAPTURE_FRAME_WIDTH_NV :: GLenum
gl_VIDEO_CAPTURE_FRAME_WIDTH_NV = 36920
 
gl_Z4Y12Z4CB12Z4CR12_444_NV :: GLenum
gl_Z4Y12Z4CB12Z4CR12_444_NV = 36919
 
gl_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV :: GLenum
gl_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV = 36918
 
gl_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV :: GLenum
gl_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV = 36917
 
gl_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV :: GLenum
gl_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV = 36916
 
gl_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV :: GLenum
gl_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV = 36915
 
gl_YCBAYCR8A_4224_NV :: GLenum
gl_YCBAYCR8A_4224_NV = 36914
 
gl_YCBYCR8_422_NV :: GLenum
gl_YCBYCR8_422_NV = 36913
 
gl_FAILURE_NV :: GLenum
gl_FAILURE_NV = 36912
 
gl_SUCCESS_NV :: GLenum
gl_SUCCESS_NV = 36911
 
gl_PARTIAL_SUCCESS_NV :: GLenum
gl_PARTIAL_SUCCESS_NV = 36910
 
gl_VIDEO_BUFFER_INTERNAL_FORMAT_NV :: GLenum
gl_VIDEO_BUFFER_INTERNAL_FORMAT_NV = 36909
 
gl_VIDEO_COLOR_CONVERSION_OFFSET_NV :: GLenum
gl_VIDEO_COLOR_CONVERSION_OFFSET_NV = 36908
 
gl_VIDEO_COLOR_CONVERSION_MIN_NV :: GLenum
gl_VIDEO_COLOR_CONVERSION_MIN_NV = 36907
 
gl_VIDEO_COLOR_CONVERSION_MAX_NV :: GLenum
gl_VIDEO_COLOR_CONVERSION_MAX_NV = 36906
 
gl_VIDEO_COLOR_CONVERSION_MATRIX_NV :: GLenum
gl_VIDEO_COLOR_CONVERSION_MATRIX_NV = 36905
 
gl_VIDEO_BUFFER_PITCH_NV :: GLenum
gl_VIDEO_BUFFER_PITCH_NV = 36904
 
gl_LAST_VIDEO_CAPTURE_STATUS_NV :: GLenum
gl_LAST_VIDEO_CAPTURE_STATUS_NV = 36903
 
gl_VIDEO_CAPTURE_TO_422_SUPPORTED_NV :: GLenum
gl_VIDEO_CAPTURE_TO_422_SUPPORTED_NV = 36902
 
gl_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV :: GLenum
gl_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV = 36901
 
gl_NUM_VIDEO_CAPTURE_STREAMS_NV :: GLenum
gl_NUM_VIDEO_CAPTURE_STREAMS_NV = 36900
 
gl_FIELD_LOWER_NV :: GLenum
gl_FIELD_LOWER_NV = 36899
 
gl_FIELD_UPPER_NV :: GLenum
gl_FIELD_UPPER_NV = 36898
 
gl_VIDEO_BUFFER_BINDING_NV :: GLenum
gl_VIDEO_BUFFER_BINDING_NV = 36897
 
gl_VIDEO_BUFFER_NV :: GLenum
gl_VIDEO_BUFFER_NV = 36896