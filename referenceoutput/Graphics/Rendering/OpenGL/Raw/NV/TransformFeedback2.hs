{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TransformFeedback2
       (glResumeTransformFeedbackNV, glPauseTransformFeedbackNV,
        glIsTransformFeedbackNV, glGenTransformFeedbacksNV,
        glDrawTransformFeedbackNV, glDeleteTransformFeedbacksNV,
        glBindTransformFeedbackNV, gl_TRANSFORM_FEEDBACK_NV,
        gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV,
        gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV,
        gl_TRANSFORM_FEEDBACK_BINDING_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glResumeTransformFeedbackNV #-}
 
ptr_glResumeTransformFeedbackNV :: FunPtr a
ptr_glResumeTransformFeedbackNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback2"
        "glResumeTransformFeedbackNV"
 
glResumeTransformFeedbackNV :: IO ()
glResumeTransformFeedbackNV
  = dyn_glResumeTransformFeedbackNV ptr_glResumeTransformFeedbackNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glResumeTransformFeedbackNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glPauseTransformFeedbackNV #-}
 
ptr_glPauseTransformFeedbackNV :: FunPtr a
ptr_glPauseTransformFeedbackNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback2"
        "glPauseTransformFeedbackNV"
 
glPauseTransformFeedbackNV :: IO ()
glPauseTransformFeedbackNV
  = dyn_glPauseTransformFeedbackNV ptr_glPauseTransformFeedbackNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPauseTransformFeedbackNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glIsTransformFeedbackNV #-}
 
ptr_glIsTransformFeedbackNV :: FunPtr a
ptr_glIsTransformFeedbackNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback2"
        "glIsTransformFeedbackNV"
 
glIsTransformFeedbackNV :: GLuint -> IO GLboolean
glIsTransformFeedbackNV
  = dyn_glIsTransformFeedbackNV ptr_glIsTransformFeedbackNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsTransformFeedbackNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGenTransformFeedbacksNV #-}
 
ptr_glGenTransformFeedbacksNV :: FunPtr a
ptr_glGenTransformFeedbacksNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback2"
        "glGenTransformFeedbacksNV"
 
glGenTransformFeedbacksNV :: GLsizei -> Ptr GLuint -> IO ()
glGenTransformFeedbacksNV
  = dyn_glGenTransformFeedbacksNV ptr_glGenTransformFeedbacksNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGenTransformFeedbacksNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDrawTransformFeedbackNV #-}
 
ptr_glDrawTransformFeedbackNV :: FunPtr a
ptr_glDrawTransformFeedbackNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback2"
        "glDrawTransformFeedbackNV"
 
glDrawTransformFeedbackNV :: GLenum -> GLuint -> IO ()
glDrawTransformFeedbackNV
  = dyn_glDrawTransformFeedbackNV ptr_glDrawTransformFeedbackNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawTransformFeedbackNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteTransformFeedbacksNV #-}
 
ptr_glDeleteTransformFeedbacksNV :: FunPtr a
ptr_glDeleteTransformFeedbacksNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback2"
        "glDeleteTransformFeedbacksNV"
 
glDeleteTransformFeedbacksNV :: GLsizei -> Ptr GLuint -> IO ()
glDeleteTransformFeedbacksNV
  = dyn_glDeleteTransformFeedbacksNV ptr_glDeleteTransformFeedbacksNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDeleteTransformFeedbacksNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBindTransformFeedbackNV #-}
 
ptr_glBindTransformFeedbackNV :: FunPtr a
ptr_glBindTransformFeedbackNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback2"
        "glBindTransformFeedbackNV"
 
glBindTransformFeedbackNV :: GLenum -> GLuint -> IO ()
glBindTransformFeedbackNV
  = dyn_glBindTransformFeedbackNV ptr_glBindTransformFeedbackNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBindTransformFeedbackNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
gl_TRANSFORM_FEEDBACK_NV :: GLenum
gl_TRANSFORM_FEEDBACK_NV = 36386
 
gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV = 36387
 
gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV = 36388
 
gl_TRANSFORM_FEEDBACK_BINDING_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BINDING_NV = 36389