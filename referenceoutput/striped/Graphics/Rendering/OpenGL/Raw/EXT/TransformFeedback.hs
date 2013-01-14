{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TransformFeedback
       (glTransformFeedbackVaryings, glGetTransformFeedbackVarying,
        glEndTransformFeedback, glBindBufferRange, glBindBufferOffset,
        glBindBufferBase, glBeginTransformFeedback,
        gl_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH,
        gl_TRANSFORM_FEEDBACK_VARYINGS,
        gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN,
        gl_TRANSFORM_FEEDBACK_BUFFER_START,
        gl_TRANSFORM_FEEDBACK_BUFFER_SIZE,
        gl_TRANSFORM_FEEDBACK_BUFFER_MODE, gl_TRANSFORM_FEEDBACK_BUFFER,
        gl_TRANSFORM_FEEDBACK_BUFFER_BINDING, gl_SEPARATE_ATTRIBS,
        gl_RASTERIZER_DISCARD, gl_PRIMITIVES_GENERATED,
        gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS,
        gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS,
        gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS,
        gl_INTERLEAVED_ATTRIBS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTransformFeedbackVaryings #-}
 
ptr_glTransformFeedbackVaryings :: FunPtr a
ptr_glTransformFeedbackVaryings
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_transform_feedback"
        "glTransformFeedbackVaryingsEXT"
 
glTransformFeedbackVaryings ::
                            GLuint -> GLsizei -> Ptr (Ptr GLchar) -> GLenum -> IO ()
glTransformFeedbackVaryings
  = dyn_glTransformFeedbackVaryings ptr_glTransformFeedbackVaryings
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTransformFeedbackVaryings ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr (Ptr GLchar) -> GLenum -> IO ())
 
{-# NOINLINE ptr_glGetTransformFeedbackVarying #-}
 
ptr_glGetTransformFeedbackVarying :: FunPtr a
ptr_glGetTransformFeedbackVarying
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_transform_feedback"
        "glGetTransformFeedbackVaryingEXT"
 
glGetTransformFeedbackVarying ::
                              GLuint ->
                                GLuint ->
                                  GLsizei ->
                                    Ptr GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr GLchar -> IO ()
glGetTransformFeedbackVarying
  = dyn_glGetTransformFeedbackVarying
      ptr_glGetTransformFeedbackVarying
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTransformFeedbackVarying ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLsizei ->
                        Ptr GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glEndTransformFeedback #-}
 
ptr_glEndTransformFeedback :: FunPtr a
ptr_glEndTransformFeedback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_transform_feedback"
        "glEndTransformFeedbackEXT"
 
glEndTransformFeedback :: IO ()
glEndTransformFeedback
  = dyn_glEndTransformFeedback ptr_glEndTransformFeedback
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndTransformFeedback
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glBindBufferRange #-}
 
ptr_glBindBufferRange :: FunPtr a
ptr_glBindBufferRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_transform_feedback"
        "glBindBufferRangeEXT"
 
glBindBufferRange ::
                  GLenum -> GLuint -> GLuint -> GLintptr -> GLsizeiptr -> IO ()
glBindBufferRange = dyn_glBindBufferRange ptr_glBindBufferRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindBufferRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLintptr -> GLsizeiptr -> IO ())
 
{-# NOINLINE ptr_glBindBufferOffset #-}
 
ptr_glBindBufferOffset :: FunPtr a
ptr_glBindBufferOffset
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_transform_feedback"
        "glBindBufferOffsetEXT"
 
glBindBufferOffset ::
                   GLenum -> GLuint -> GLuint -> GLintptr -> IO ()
glBindBufferOffset = dyn_glBindBufferOffset ptr_glBindBufferOffset
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindBufferOffset ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLintptr -> IO ())
 
{-# NOINLINE ptr_glBindBufferBase #-}
 
ptr_glBindBufferBase :: FunPtr a
ptr_glBindBufferBase
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_transform_feedback"
        "glBindBufferBaseEXT"
 
glBindBufferBase :: GLenum -> GLuint -> GLuint -> IO ()
glBindBufferBase = dyn_glBindBufferBase ptr_glBindBufferBase
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindBufferBase ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glBeginTransformFeedback #-}
 
ptr_glBeginTransformFeedback :: FunPtr a
ptr_glBeginTransformFeedback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_transform_feedback"
        "glBeginTransformFeedbackEXT"
 
glBeginTransformFeedback :: GLenum -> IO ()
glBeginTransformFeedback
  = dyn_glBeginTransformFeedback ptr_glBeginTransformFeedback
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBeginTransformFeedback ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH :: GLenum
gl_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 35958
 
gl_TRANSFORM_FEEDBACK_VARYINGS :: GLenum
gl_TRANSFORM_FEEDBACK_VARYINGS = 35971
 
gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN :: GLenum
gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 35976
 
gl_TRANSFORM_FEEDBACK_BUFFER_START :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_START = 35972
 
gl_TRANSFORM_FEEDBACK_BUFFER_SIZE :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_SIZE = 35973
 
gl_TRANSFORM_FEEDBACK_BUFFER_MODE :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_MODE = 35967
 
gl_TRANSFORM_FEEDBACK_BUFFER :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER = 35982
 
gl_TRANSFORM_FEEDBACK_BUFFER_BINDING :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_BINDING = 35983
 
gl_SEPARATE_ATTRIBS :: GLenum
gl_SEPARATE_ATTRIBS = 35981
 
gl_RASTERIZER_DISCARD :: GLenum
gl_RASTERIZER_DISCARD = 35977
 
gl_PRIMITIVES_GENERATED :: GLenum
gl_PRIMITIVES_GENERATED = 35975
 
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 35968
 
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 35979
 
gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 35978
 
gl_INTERLEAVED_ATTRIBS :: GLenum
gl_INTERLEAVED_ATTRIBS = 35980