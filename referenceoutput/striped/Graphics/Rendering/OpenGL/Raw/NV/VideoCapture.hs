{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VideoCapture
       (glVideoCaptureStreamParameteriv, glVideoCaptureStreamParameterfv,
        glVideoCaptureStreamParameterdv, glVideoCapture,
        glGetVideoCaptureiv, glGetVideoCaptureStreamiv,
        glGetVideoCaptureStreamfv, glGetVideoCaptureStreamdv,
        glEndVideoCapture, glBindVideoCaptureStreamTexture,
        glBindVideoCaptureStreamBuffer, glBeginVideoCapture,
        gl_Z6Y10Z6CB10Z6Y10Z6CR10_422,
        gl_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224,
        gl_Z4Y12Z4CB12Z4Y12Z4CR12_422, gl_Z4Y12Z4CB12Z4CR12_444,
        gl_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224, gl_YCBYCR8_422,
        gl_YCBAYCR8A_4224, gl_VIDEO_COLOR_CONVERSION_OFFSET,
        gl_VIDEO_COLOR_CONVERSION_MIN, gl_VIDEO_COLOR_CONVERSION_MAX,
        gl_VIDEO_COLOR_CONVERSION_MATRIX,
        gl_VIDEO_CAPTURE_TO_422_SUPPORTED, gl_VIDEO_CAPTURE_SURFACE_ORIGIN,
        gl_VIDEO_CAPTURE_FRAME_WIDTH, gl_VIDEO_CAPTURE_FRAME_HEIGHT,
        gl_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT,
        gl_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT, gl_VIDEO_BUFFER_PITCH,
        gl_VIDEO_BUFFER, gl_VIDEO_BUFFER_INTERNAL_FORMAT,
        gl_VIDEO_BUFFER_BINDING, gl_SUCCESS, gl_PARTIAL_SUCCESS,
        gl_NUM_VIDEO_CAPTURE_STREAMS, gl_NEXT_VIDEO_CAPTURE_BUFFER_STATUS,
        gl_LAST_VIDEO_CAPTURE_STATUS, gl_FIELD_UPPER, gl_FIELD_LOWER,
        gl_FAILURE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVideoCaptureStreamParameteriv #-}
 
ptr_glVideoCaptureStreamParameteriv :: FunPtr a
ptr_glVideoCaptureStreamParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glVideoCaptureStreamParameterivNV"
 
glVideoCaptureStreamParameteriv ::
                                GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ()
glVideoCaptureStreamParameteriv
  = dyn_glVideoCaptureStreamParameteriv
      ptr_glVideoCaptureStreamParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVideoCaptureStreamParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVideoCaptureStreamParameterfv #-}
 
ptr_glVideoCaptureStreamParameterfv :: FunPtr a
ptr_glVideoCaptureStreamParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glVideoCaptureStreamParameterfvNV"
 
glVideoCaptureStreamParameterfv ::
                                GLuint -> GLuint -> GLenum -> Ptr GLfloat -> IO ()
glVideoCaptureStreamParameterfv
  = dyn_glVideoCaptureStreamParameterfv
      ptr_glVideoCaptureStreamParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVideoCaptureStreamParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVideoCaptureStreamParameterdv #-}
 
ptr_glVideoCaptureStreamParameterdv :: FunPtr a
ptr_glVideoCaptureStreamParameterdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glVideoCaptureStreamParameterdvNV"
 
glVideoCaptureStreamParameterdv ::
                                GLuint -> GLuint -> GLenum -> Ptr GLdouble -> IO ()
glVideoCaptureStreamParameterdv
  = dyn_glVideoCaptureStreamParameterdv
      ptr_glVideoCaptureStreamParameterdv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVideoCaptureStreamParameterdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVideoCapture #-}
 
ptr_glVideoCapture :: FunPtr a
ptr_glVideoCapture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glVideoCaptureNV"
 
glVideoCapture :: GLuint -> Ptr GLuint -> Ptr GLuint64 -> IO GLenum
glVideoCapture = dyn_glVideoCapture ptr_glVideoCapture
 
foreign import CALLCONV unsafe "dynamic" dyn_glVideoCapture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> Ptr GLuint64 -> IO GLenum)
 
{-# NOINLINE ptr_glGetVideoCaptureiv #-}
 
ptr_glGetVideoCaptureiv :: FunPtr a
ptr_glGetVideoCaptureiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glGetVideoCaptureivNV"
 
glGetVideoCaptureiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVideoCaptureiv
  = dyn_glGetVideoCaptureiv ptr_glGetVideoCaptureiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVideoCaptureiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetVideoCaptureStreamiv #-}
 
ptr_glGetVideoCaptureStreamiv :: FunPtr a
ptr_glGetVideoCaptureStreamiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glGetVideoCaptureStreamivNV"
 
glGetVideoCaptureStreamiv ::
                          GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVideoCaptureStreamiv
  = dyn_glGetVideoCaptureStreamiv ptr_glGetVideoCaptureStreamiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVideoCaptureStreamiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetVideoCaptureStreamfv #-}
 
ptr_glGetVideoCaptureStreamfv :: FunPtr a
ptr_glGetVideoCaptureStreamfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glGetVideoCaptureStreamfvNV"
 
glGetVideoCaptureStreamfv ::
                          GLuint -> GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetVideoCaptureStreamfv
  = dyn_glGetVideoCaptureStreamfv ptr_glGetVideoCaptureStreamfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVideoCaptureStreamfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetVideoCaptureStreamdv #-}
 
ptr_glGetVideoCaptureStreamdv :: FunPtr a
ptr_glGetVideoCaptureStreamdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glGetVideoCaptureStreamdvNV"
 
glGetVideoCaptureStreamdv ::
                          GLuint -> GLuint -> GLenum -> Ptr GLdouble -> IO ()
glGetVideoCaptureStreamdv
  = dyn_glGetVideoCaptureStreamdv ptr_glGetVideoCaptureStreamdv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVideoCaptureStreamdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glEndVideoCapture #-}
 
ptr_glEndVideoCapture :: FunPtr a
ptr_glEndVideoCapture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glEndVideoCaptureNV"
 
glEndVideoCapture :: GLuint -> IO ()
glEndVideoCapture = dyn_glEndVideoCapture ptr_glEndVideoCapture
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndVideoCapture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glBindVideoCaptureStreamTexture #-}
 
ptr_glBindVideoCaptureStreamTexture :: FunPtr a
ptr_glBindVideoCaptureStreamTexture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glBindVideoCaptureStreamTextureNV"
 
glBindVideoCaptureStreamTexture ::
                                GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> IO ()
glBindVideoCaptureStreamTexture
  = dyn_glBindVideoCaptureStreamTexture
      ptr_glBindVideoCaptureStreamTexture
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBindVideoCaptureStreamTexture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glBindVideoCaptureStreamBuffer #-}
 
ptr_glBindVideoCaptureStreamBuffer :: FunPtr a
ptr_glBindVideoCaptureStreamBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glBindVideoCaptureStreamBufferNV"
 
glBindVideoCaptureStreamBuffer ::
                               GLuint -> GLuint -> GLenum -> GLintptr -> IO ()
glBindVideoCaptureStreamBuffer
  = dyn_glBindVideoCaptureStreamBuffer
      ptr_glBindVideoCaptureStreamBuffer
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBindVideoCaptureStreamBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> GLintptr -> IO ())
 
{-# NOINLINE ptr_glBeginVideoCapture #-}
 
ptr_glBeginVideoCapture :: FunPtr a
ptr_glBeginVideoCapture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_video_capture"
        "glBeginVideoCaptureNV"
 
glBeginVideoCapture :: GLuint -> IO ()
glBeginVideoCapture
  = dyn_glBeginVideoCapture ptr_glBeginVideoCapture
 
foreign import CALLCONV unsafe "dynamic" dyn_glBeginVideoCapture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
gl_Z6Y10Z6CB10Z6Y10Z6CR10_422 :: GLenum
gl_Z6Y10Z6CB10Z6Y10Z6CR10_422 = 36915
 
gl_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224 :: GLenum
gl_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224 = 36916
 
gl_Z4Y12Z4CB12Z4Y12Z4CR12_422 :: GLenum
gl_Z4Y12Z4CB12Z4Y12Z4CR12_422 = 36917
 
gl_Z4Y12Z4CB12Z4CR12_444 :: GLenum
gl_Z4Y12Z4CB12Z4CR12_444 = 36919
 
gl_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224 :: GLenum
gl_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224 = 36918
 
gl_YCBYCR8_422 :: GLenum
gl_YCBYCR8_422 = 36913
 
gl_YCBAYCR8A_4224 :: GLenum
gl_YCBAYCR8A_4224 = 36914
 
gl_VIDEO_COLOR_CONVERSION_OFFSET :: GLenum
gl_VIDEO_COLOR_CONVERSION_OFFSET = 36908
 
gl_VIDEO_COLOR_CONVERSION_MIN :: GLenum
gl_VIDEO_COLOR_CONVERSION_MIN = 36907
 
gl_VIDEO_COLOR_CONVERSION_MAX :: GLenum
gl_VIDEO_COLOR_CONVERSION_MAX = 36906
 
gl_VIDEO_COLOR_CONVERSION_MATRIX :: GLenum
gl_VIDEO_COLOR_CONVERSION_MATRIX = 36905
 
gl_VIDEO_CAPTURE_TO_422_SUPPORTED :: GLenum
gl_VIDEO_CAPTURE_TO_422_SUPPORTED = 36902
 
gl_VIDEO_CAPTURE_SURFACE_ORIGIN :: GLenum
gl_VIDEO_CAPTURE_SURFACE_ORIGIN = 36924
 
gl_VIDEO_CAPTURE_FRAME_WIDTH :: GLenum
gl_VIDEO_CAPTURE_FRAME_WIDTH = 36920
 
gl_VIDEO_CAPTURE_FRAME_HEIGHT :: GLenum
gl_VIDEO_CAPTURE_FRAME_HEIGHT = 36921
 
gl_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT :: GLenum
gl_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT = 36922
 
gl_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT :: GLenum
gl_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT = 36923
 
gl_VIDEO_BUFFER_PITCH :: GLenum
gl_VIDEO_BUFFER_PITCH = 36904
 
gl_VIDEO_BUFFER :: GLenum
gl_VIDEO_BUFFER = 36896
 
gl_VIDEO_BUFFER_INTERNAL_FORMAT :: GLenum
gl_VIDEO_BUFFER_INTERNAL_FORMAT = 36909
 
gl_VIDEO_BUFFER_BINDING :: GLenum
gl_VIDEO_BUFFER_BINDING = 36897
 
gl_SUCCESS :: GLenum
gl_SUCCESS = 36911
 
gl_PARTIAL_SUCCESS :: GLenum
gl_PARTIAL_SUCCESS = 36910
 
gl_NUM_VIDEO_CAPTURE_STREAMS :: GLenum
gl_NUM_VIDEO_CAPTURE_STREAMS = 36900
 
gl_NEXT_VIDEO_CAPTURE_BUFFER_STATUS :: GLenum
gl_NEXT_VIDEO_CAPTURE_BUFFER_STATUS = 36901
 
gl_LAST_VIDEO_CAPTURE_STATUS :: GLenum
gl_LAST_VIDEO_CAPTURE_STATUS = 36903
 
gl_FIELD_UPPER :: GLenum
gl_FIELD_UPPER = 36898
 
gl_FIELD_LOWER :: GLenum
gl_FIELD_LOWER = 36899
 
gl_FAILURE :: GLenum
gl_FAILURE = 36912