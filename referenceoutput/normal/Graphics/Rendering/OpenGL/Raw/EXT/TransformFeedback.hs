{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TransformFeedback
       (glTransformFeedbackVaryingsEXT, glGetTransformFeedbackVaryingEXT,
        glEndTransformFeedbackEXT, glBindBufferRangeEXT,
        glBindBufferOffsetEXT, glBindBufferBaseEXT,
        glBeginTransformFeedbackEXT,
        gl_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT,
        gl_TRANSFORM_FEEDBACK_VARYINGS_EXT,
        gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT,
        gl_TRANSFORM_FEEDBACK_BUFFER_START_EXT,
        gl_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT,
        gl_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT,
        gl_TRANSFORM_FEEDBACK_BUFFER_EXT,
        gl_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT, gl_SEPARATE_ATTRIBS_EXT,
        gl_RASTERIZER_DISCARD_EXT, gl_PRIMITIVES_GENERATED_EXT,
        gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT,
        gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT,
        gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT,
        gl_INTERLEAVED_ATTRIBS_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTransformFeedbackVaryingsEXT #-}
 
ptr_glTransformFeedbackVaryingsEXT :: FunPtr a
ptr_glTransformFeedbackVaryingsEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_transform_feedback"
        "glTransformFeedbackVaryingsEXT"
 
glTransformFeedbackVaryingsEXT ::
                               GLuint -> GLsizei -> Ptr (Ptr GLchar) -> GLenum -> IO ()
glTransformFeedbackVaryingsEXT
  = dyn_glTransformFeedbackVaryingsEXT
      ptr_glTransformFeedbackVaryingsEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTransformFeedbackVaryingsEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr (Ptr GLchar) -> GLenum -> IO ())
 
{-# NOINLINE ptr_glGetTransformFeedbackVaryingEXT #-}
 
ptr_glGetTransformFeedbackVaryingEXT :: FunPtr a
ptr_glGetTransformFeedbackVaryingEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_transform_feedback"
        "glGetTransformFeedbackVaryingEXT"
 
glGetTransformFeedbackVaryingEXT ::
                                 GLuint ->
                                   GLuint ->
                                     GLsizei ->
                                       Ptr GLsizei ->
                                         Ptr GLsizei -> Ptr GLenum -> Ptr GLchar -> IO ()
glGetTransformFeedbackVaryingEXT
  = dyn_glGetTransformFeedbackVaryingEXT
      ptr_glGetTransformFeedbackVaryingEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTransformFeedbackVaryingEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLsizei ->
                        Ptr GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glEndTransformFeedbackEXT #-}
 
ptr_glEndTransformFeedbackEXT :: FunPtr a
ptr_glEndTransformFeedbackEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_transform_feedback"
        "glEndTransformFeedbackEXT"
 
glEndTransformFeedbackEXT :: IO ()
glEndTransformFeedbackEXT
  = dyn_glEndTransformFeedbackEXT ptr_glEndTransformFeedbackEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glEndTransformFeedbackEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glBindBufferRangeEXT #-}
 
ptr_glBindBufferRangeEXT :: FunPtr a
ptr_glBindBufferRangeEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_transform_feedback"
        "glBindBufferRangeEXT"
 
glBindBufferRangeEXT ::
                     GLenum -> GLuint -> GLuint -> GLintptr -> GLsizeiptr -> IO ()
glBindBufferRangeEXT
  = dyn_glBindBufferRangeEXT ptr_glBindBufferRangeEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindBufferRangeEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLintptr -> GLsizeiptr -> IO ())
 
{-# NOINLINE ptr_glBindBufferOffsetEXT #-}
 
ptr_glBindBufferOffsetEXT :: FunPtr a
ptr_glBindBufferOffsetEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_transform_feedback"
        "glBindBufferOffsetEXT"
 
glBindBufferOffsetEXT ::
                      GLenum -> GLuint -> GLuint -> GLintptr -> IO ()
glBindBufferOffsetEXT
  = dyn_glBindBufferOffsetEXT ptr_glBindBufferOffsetEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindBufferOffsetEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLintptr -> IO ())
 
{-# NOINLINE ptr_glBindBufferBaseEXT #-}
 
ptr_glBindBufferBaseEXT :: FunPtr a
ptr_glBindBufferBaseEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_transform_feedback"
        "glBindBufferBaseEXT"
 
glBindBufferBaseEXT :: GLenum -> GLuint -> GLuint -> IO ()
glBindBufferBaseEXT
  = dyn_glBindBufferBaseEXT ptr_glBindBufferBaseEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindBufferBaseEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glBeginTransformFeedbackEXT #-}
 
ptr_glBeginTransformFeedbackEXT :: FunPtr a
ptr_glBeginTransformFeedbackEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_transform_feedback"
        "glBeginTransformFeedbackEXT"
 
glBeginTransformFeedbackEXT :: GLenum -> IO ()
glBeginTransformFeedbackEXT
  = dyn_glBeginTransformFeedbackEXT ptr_glBeginTransformFeedbackEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBeginTransformFeedbackEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT = 35958
 
gl_TRANSFORM_FEEDBACK_VARYINGS_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_VARYINGS_EXT = 35971
 
gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT = 35976
 
gl_TRANSFORM_FEEDBACK_BUFFER_START_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_START_EXT = 35972
 
gl_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT = 35973
 
gl_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT = 35967
 
gl_TRANSFORM_FEEDBACK_BUFFER_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_EXT = 35982
 
gl_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT = 35983
 
gl_SEPARATE_ATTRIBS_EXT :: GLenum
gl_SEPARATE_ATTRIBS_EXT = 35981
 
gl_RASTERIZER_DISCARD_EXT :: GLenum
gl_RASTERIZER_DISCARD_EXT = 35977
 
gl_PRIMITIVES_GENERATED_EXT :: GLenum
gl_PRIMITIVES_GENERATED_EXT = 35975
 
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT = 35968
 
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT = 35979
 
gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT = 35978
 
gl_INTERLEAVED_ATTRIBS_EXT :: GLenum
gl_INTERLEAVED_ATTRIBS_EXT = 35980