{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TransformFeedback
       (glTransformFeedbackVaryings, glTransformFeedbackStreamAttribs,
        glTransformFeedbackAttribs, glGetVaryingLocation,
        glGetTransformFeedbackVarying, glGetActiveVarying,
        glEndTransformFeedback, glBindBufferRange, glBindBufferOffset,
        glBindBufferBase, glBeginTransformFeedback, glActiveVarying,
        gl_VERTEX_ID, gl_TRANSFORM_FEEDBACK_VARYINGS,
        gl_TRANSFORM_FEEDBACK_RECORD,
        gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN,
        gl_TRANSFORM_FEEDBACK_BUFFER_START,
        gl_TRANSFORM_FEEDBACK_BUFFER_SIZE, gl_TRANSFORM_FEEDBACK_BUFFER,
        gl_TRANSFORM_FEEDBACK_BUFFER_MODE,
        gl_TRANSFORM_FEEDBACK_BUFFER_BINDING,
        gl_TRANSFORM_FEEDBACK_ATTRIBS, gl_TEXTURE_COORD,
        gl_SKIP_COMPONENTS4, gl_SKIP_COMPONENTS3, gl_SKIP_COMPONENTS2,
        gl_SKIP_COMPONENTS1, gl_SEPARATE_ATTRIBS, gl_RASTERIZER_DISCARD,
        gl_PRIMITIVE_ID, gl_PRIMITIVES_GENERATED, gl_NEXT_BUFFER,
        gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS,
        gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS,
        gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS, gl_LAYER,
        gl_INTERLEAVED_ATTRIBS, gl_GENERIC_ATTRIB, gl_CLIP_DISTANCE,
        gl_BACK_SECONDARY_COLOR, gl_BACK_PRIMARY_COLOR,
        gl_ACTIVE_VARYING_MAX_LENGTH, gl_ACTIVE_VARYINGS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTransformFeedbackVaryings #-}
 
ptr_glTransformFeedbackVaryings :: FunPtr a
ptr_glTransformFeedbackVaryings
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glTransformFeedbackVaryingsNV"
 
glTransformFeedbackVaryings ::
                            GLuint -> GLsizei -> Ptr GLint -> GLenum -> IO ()
glTransformFeedbackVaryings
  = dyn_glTransformFeedbackVaryings ptr_glTransformFeedbackVaryings
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTransformFeedbackVaryings ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glTransformFeedbackStreamAttribs #-}
 
ptr_glTransformFeedbackStreamAttribs :: FunPtr a
ptr_glTransformFeedbackStreamAttribs
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glTransformFeedbackStreamAttribsNV"
 
glTransformFeedbackStreamAttribs ::
                                 GLsizei -> Ptr GLint -> GLsizei -> Ptr GLint -> GLenum -> IO ()
glTransformFeedbackStreamAttribs
  = dyn_glTransformFeedbackStreamAttribs
      ptr_glTransformFeedbackStreamAttribs
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTransformFeedbackStreamAttribs ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLint -> GLsizei -> Ptr GLint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glTransformFeedbackAttribs #-}
 
ptr_glTransformFeedbackAttribs :: FunPtr a
ptr_glTransformFeedbackAttribs
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glTransformFeedbackAttribsNV"
 
glTransformFeedbackAttribs ::
                           GLuint -> Ptr GLint -> GLenum -> IO ()
glTransformFeedbackAttribs
  = dyn_glTransformFeedbackAttribs ptr_glTransformFeedbackAttribs
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTransformFeedbackAttribs ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glGetVaryingLocation #-}
 
ptr_glGetVaryingLocation :: FunPtr a
ptr_glGetVaryingLocation
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glGetVaryingLocationNV"
 
glGetVaryingLocation :: GLuint -> Ptr GLchar -> IO GLint
glGetVaryingLocation
  = dyn_glGetVaryingLocation ptr_glGetVaryingLocation
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVaryingLocation ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLchar -> IO GLint)
 
{-# NOINLINE ptr_glGetTransformFeedbackVarying #-}
 
ptr_glGetTransformFeedbackVarying :: FunPtr a
ptr_glGetTransformFeedbackVarying
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glGetTransformFeedbackVaryingNV"
 
glGetTransformFeedbackVarying ::
                              GLuint -> GLuint -> Ptr GLint -> IO ()
glGetTransformFeedbackVarying
  = dyn_glGetTransformFeedbackVarying
      ptr_glGetTransformFeedbackVarying
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTransformFeedbackVarying ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetActiveVarying #-}
 
ptr_glGetActiveVarying :: FunPtr a
ptr_glGetActiveVarying
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glGetActiveVaryingNV"
 
glGetActiveVarying ::
                   GLuint ->
                     GLuint ->
                       GLsizei ->
                         Ptr GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr GLchar -> IO ()
glGetActiveVarying = dyn_glGetActiveVarying ptr_glGetActiveVarying
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetActiveVarying ::
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
        "GL_NV_transform_feedback"
        "glEndTransformFeedbackNV"
 
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
        "GL_NV_transform_feedback"
        "glBindBufferRangeNV"
 
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
        "GL_NV_transform_feedback"
        "glBindBufferOffsetNV"
 
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
        "GL_NV_transform_feedback"
        "glBindBufferBaseNV"
 
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
        "GL_NV_transform_feedback"
        "glBeginTransformFeedbackNV"
 
glBeginTransformFeedback :: GLenum -> IO ()
glBeginTransformFeedback
  = dyn_glBeginTransformFeedback ptr_glBeginTransformFeedback
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBeginTransformFeedback ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glActiveVarying #-}
 
ptr_glActiveVarying :: FunPtr a
ptr_glActiveVarying
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glActiveVaryingNV"
 
glActiveVarying :: GLuint -> Ptr GLchar -> IO ()
glActiveVarying = dyn_glActiveVarying ptr_glActiveVarying
 
foreign import CALLCONV unsafe "dynamic" dyn_glActiveVarying ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLchar -> IO ())
 
gl_VERTEX_ID :: GLenum
gl_VERTEX_ID = 35963
 
gl_TRANSFORM_FEEDBACK_VARYINGS :: GLenum
gl_TRANSFORM_FEEDBACK_VARYINGS = 35971
 
gl_TRANSFORM_FEEDBACK_RECORD :: GLenum
gl_TRANSFORM_FEEDBACK_RECORD = 35974
 
gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN :: GLenum
gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 35976
 
gl_TRANSFORM_FEEDBACK_BUFFER_START :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_START = 35972
 
gl_TRANSFORM_FEEDBACK_BUFFER_SIZE :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_SIZE = 35973
 
gl_TRANSFORM_FEEDBACK_BUFFER :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER = 35982
 
gl_TRANSFORM_FEEDBACK_BUFFER_MODE :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_MODE = 35967
 
gl_TRANSFORM_FEEDBACK_BUFFER_BINDING :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_BINDING = 35983
 
gl_TRANSFORM_FEEDBACK_ATTRIBS :: GLenum
gl_TRANSFORM_FEEDBACK_ATTRIBS = 35966
 
gl_TEXTURE_COORD :: GLenum
gl_TEXTURE_COORD = 35961
 
gl_SKIP_COMPONENTS4 :: GLenum
gl_SKIP_COMPONENTS4 = -3
 
gl_SKIP_COMPONENTS3 :: GLenum
gl_SKIP_COMPONENTS3 = -4
 
gl_SKIP_COMPONENTS2 :: GLenum
gl_SKIP_COMPONENTS2 = -5
 
gl_SKIP_COMPONENTS1 :: GLenum
gl_SKIP_COMPONENTS1 = -6
 
gl_SEPARATE_ATTRIBS :: GLenum
gl_SEPARATE_ATTRIBS = 35981
 
gl_RASTERIZER_DISCARD :: GLenum
gl_RASTERIZER_DISCARD = 35977
 
gl_PRIMITIVE_ID :: GLenum
gl_PRIMITIVE_ID = 35964
 
gl_PRIMITIVES_GENERATED :: GLenum
gl_PRIMITIVES_GENERATED = 35975
 
gl_NEXT_BUFFER :: GLenum
gl_NEXT_BUFFER = -2
 
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 35968
 
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 35979
 
gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 35978
 
gl_LAYER :: GLenum
gl_LAYER = 36266
 
gl_INTERLEAVED_ATTRIBS :: GLenum
gl_INTERLEAVED_ATTRIBS = 35980
 
gl_GENERIC_ATTRIB :: GLenum
gl_GENERIC_ATTRIB = 35965
 
gl_CLIP_DISTANCE :: GLenum
gl_CLIP_DISTANCE = 35962
 
gl_BACK_SECONDARY_COLOR :: GLenum
gl_BACK_SECONDARY_COLOR = 35960
 
gl_BACK_PRIMARY_COLOR :: GLenum
gl_BACK_PRIMARY_COLOR = 35959
 
gl_ACTIVE_VARYING_MAX_LENGTH :: GLenum
gl_ACTIVE_VARYING_MAX_LENGTH = 35970
 
gl_ACTIVE_VARYINGS :: GLenum
gl_ACTIVE_VARYINGS = 35969