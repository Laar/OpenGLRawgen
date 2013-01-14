{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TransformFeedback2
       (glResumeTransformFeedback, glPauseTransformFeedback,
        glIsTransformFeedback, glGenTransformFeedbacks,
        glDrawTransformFeedback, glDeleteTransformFeedbacks,
        glBindTransformFeedback, gl_TRANSFORM_FEEDBACK,
        gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED,
        gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE, gl_TRANSFORM_FEEDBACK_BINDING)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glResumeTransformFeedback #-}
 
ptr_glResumeTransformFeedback :: FunPtr a
ptr_glResumeTransformFeedback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback2"
        "glResumeTransformFeedbackNV"
 
glResumeTransformFeedback :: IO ()
glResumeTransformFeedback
  = dyn_glResumeTransformFeedback ptr_glResumeTransformFeedback
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glResumeTransformFeedback ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glPauseTransformFeedback #-}
 
ptr_glPauseTransformFeedback :: FunPtr a
ptr_glPauseTransformFeedback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback2"
        "glPauseTransformFeedbackNV"
 
glPauseTransformFeedback :: IO ()
glPauseTransformFeedback
  = dyn_glPauseTransformFeedback ptr_glPauseTransformFeedback
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPauseTransformFeedback ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glIsTransformFeedback #-}
 
ptr_glIsTransformFeedback :: FunPtr a
ptr_glIsTransformFeedback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback2"
        "glIsTransformFeedbackNV"
 
glIsTransformFeedback :: GLuint -> IO GLboolean
glIsTransformFeedback
  = dyn_glIsTransformFeedback ptr_glIsTransformFeedback
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsTransformFeedback
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGenTransformFeedbacks #-}
 
ptr_glGenTransformFeedbacks :: FunPtr a
ptr_glGenTransformFeedbacks
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback2"
        "glGenTransformFeedbacksNV"
 
glGenTransformFeedbacks :: GLsizei -> Ptr GLuint -> IO ()
glGenTransformFeedbacks
  = dyn_glGenTransformFeedbacks ptr_glGenTransformFeedbacks
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenTransformFeedbacks
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDrawTransformFeedback #-}
 
ptr_glDrawTransformFeedback :: FunPtr a
ptr_glDrawTransformFeedback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback2"
        "glDrawTransformFeedbackNV"
 
glDrawTransformFeedback :: GLenum -> GLuint -> IO ()
glDrawTransformFeedback
  = dyn_glDrawTransformFeedback ptr_glDrawTransformFeedback
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawTransformFeedback
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteTransformFeedbacks #-}
 
ptr_glDeleteTransformFeedbacks :: FunPtr a
ptr_glDeleteTransformFeedbacks
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback2"
        "glDeleteTransformFeedbacksNV"
 
glDeleteTransformFeedbacks :: GLsizei -> Ptr GLuint -> IO ()
glDeleteTransformFeedbacks
  = dyn_glDeleteTransformFeedbacks ptr_glDeleteTransformFeedbacks
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDeleteTransformFeedbacks ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBindTransformFeedback #-}
 
ptr_glBindTransformFeedback :: FunPtr a
ptr_glBindTransformFeedback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback2"
        "glBindTransformFeedbackNV"
 
glBindTransformFeedback :: GLenum -> GLuint -> IO ()
glBindTransformFeedback
  = dyn_glBindTransformFeedback ptr_glBindTransformFeedback
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindTransformFeedback
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
gl_TRANSFORM_FEEDBACK :: GLenum
gl_TRANSFORM_FEEDBACK = 36386
 
gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED = 36387
 
gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE = 36388
 
gl_TRANSFORM_FEEDBACK_BINDING :: GLenum
gl_TRANSFORM_FEEDBACK_BINDING = 36389