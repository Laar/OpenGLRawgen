module Graphics.Rendering.OpenGL.Raw.ARB.TransformFeedback2
       (glResumeTransformFeedback, glPauseTransformFeedback,
        glIsTransformFeedback, glGenTransformFeedbacks,
        glDrawTransformFeedback, glDeleteTransformFeedbacks,
        glBindTransformFeedback, gl_TRANSFORM_FEEDBACK_PAUSED,
        gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED,
        gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE, gl_TRANSFORM_FEEDBACK_BINDING,
        gl_TRANSFORM_FEEDBACK_ACTIVE, gl_TRANSFORM_FEEDBACK)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core40
       (glResumeTransformFeedback, glPauseTransformFeedback,
        glIsTransformFeedback, glGenTransformFeedbacks,
        glDrawTransformFeedback, glDeleteTransformFeedbacks,
        glBindTransformFeedback, gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED,
        gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED,
        gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE, gl_TRANSFORM_FEEDBACK_BINDING,
        gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE, gl_TRANSFORM_FEEDBACK)
 
gl_TRANSFORM_FEEDBACK_PAUSED :: GLenum
gl_TRANSFORM_FEEDBACK_PAUSED = gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED
 
gl_TRANSFORM_FEEDBACK_ACTIVE :: GLenum
gl_TRANSFORM_FEEDBACK_ACTIVE = gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE