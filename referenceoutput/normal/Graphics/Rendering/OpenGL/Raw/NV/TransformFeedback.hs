{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TransformFeedback
       (glTransformFeedbackVaryingsNV, glTransformFeedbackStreamAttribsNV,
        glTransformFeedbackAttribsNV, glGetVaryingLocationNV,
        glGetTransformFeedbackVaryingNV, glGetActiveVaryingNV,
        glEndTransformFeedbackNV, glBindBufferRangeNV,
        glBindBufferOffsetNV, glBindBufferBaseNV,
        glBeginTransformFeedbackNV, glActiveVaryingNV, gl_VERTEX_ID_NV,
        gl_TRANSFORM_FEEDBACK_VARYINGS_NV, gl_TRANSFORM_FEEDBACK_RECORD_NV,
        gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV,
        gl_TRANSFORM_FEEDBACK_BUFFER_START_NV,
        gl_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV,
        gl_TRANSFORM_FEEDBACK_BUFFER_NV,
        gl_TRANSFORM_FEEDBACK_BUFFER_MODE_NV,
        gl_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV,
        gl_TRANSFORM_FEEDBACK_ATTRIBS_NV, gl_TEXTURE_COORD_NV,
        gl_SKIP_COMPONENTS4_NV, gl_SKIP_COMPONENTS3_NV,
        gl_SKIP_COMPONENTS2_NV, gl_SKIP_COMPONENTS1_NV,
        gl_SEPARATE_ATTRIBS_NV, gl_RASTERIZER_DISCARD_NV,
        gl_PRIMITIVE_ID_NV, gl_PRIMITIVES_GENERATED_NV, gl_NEXT_BUFFER_NV,
        gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV,
        gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV,
        gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV, gl_LAYER_NV,
        gl_INTERLEAVED_ATTRIBS_NV, gl_GENERIC_ATTRIB_NV,
        gl_CLIP_DISTANCE_NV, gl_BACK_SECONDARY_COLOR_NV,
        gl_BACK_PRIMARY_COLOR_NV, gl_ACTIVE_VARYING_MAX_LENGTH_NV,
        gl_ACTIVE_VARYINGS_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTransformFeedbackVaryingsNV #-}
 
ptr_glTransformFeedbackVaryingsNV :: FunPtr a
ptr_glTransformFeedbackVaryingsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glTransformFeedbackVaryingsNV"
 
glTransformFeedbackVaryingsNV ::
                              GLuint -> GLsizei -> Ptr GLint -> GLenum -> IO ()
glTransformFeedbackVaryingsNV
  = dyn_glTransformFeedbackVaryingsNV
      ptr_glTransformFeedbackVaryingsNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTransformFeedbackVaryingsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glTransformFeedbackStreamAttribsNV #-}
 
ptr_glTransformFeedbackStreamAttribsNV :: FunPtr a
ptr_glTransformFeedbackStreamAttribsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glTransformFeedbackStreamAttribsNV"
 
glTransformFeedbackStreamAttribsNV ::
                                   GLsizei -> Ptr GLint -> GLsizei -> Ptr GLint -> GLenum -> IO ()
glTransformFeedbackStreamAttribsNV
  = dyn_glTransformFeedbackStreamAttribsNV
      ptr_glTransformFeedbackStreamAttribsNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTransformFeedbackStreamAttribsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLint -> GLsizei -> Ptr GLint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glTransformFeedbackAttribsNV #-}
 
ptr_glTransformFeedbackAttribsNV :: FunPtr a
ptr_glTransformFeedbackAttribsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glTransformFeedbackAttribsNV"
 
glTransformFeedbackAttribsNV ::
                             GLuint -> Ptr GLint -> GLenum -> IO ()
glTransformFeedbackAttribsNV
  = dyn_glTransformFeedbackAttribsNV ptr_glTransformFeedbackAttribsNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTransformFeedbackAttribsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glGetVaryingLocationNV #-}
 
ptr_glGetVaryingLocationNV :: FunPtr a
ptr_glGetVaryingLocationNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glGetVaryingLocationNV"
 
glGetVaryingLocationNV :: GLuint -> Ptr GLchar -> IO GLint
glGetVaryingLocationNV
  = dyn_glGetVaryingLocationNV ptr_glGetVaryingLocationNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVaryingLocationNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLchar -> IO GLint)
 
{-# NOINLINE ptr_glGetTransformFeedbackVaryingNV #-}
 
ptr_glGetTransformFeedbackVaryingNV :: FunPtr a
ptr_glGetTransformFeedbackVaryingNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glGetTransformFeedbackVaryingNV"
 
glGetTransformFeedbackVaryingNV ::
                                GLuint -> GLuint -> Ptr GLint -> IO ()
glGetTransformFeedbackVaryingNV
  = dyn_glGetTransformFeedbackVaryingNV
      ptr_glGetTransformFeedbackVaryingNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTransformFeedbackVaryingNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetActiveVaryingNV #-}
 
ptr_glGetActiveVaryingNV :: FunPtr a
ptr_glGetActiveVaryingNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glGetActiveVaryingNV"
 
glGetActiveVaryingNV ::
                     GLuint ->
                       GLuint ->
                         GLsizei ->
                           Ptr GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr GLchar -> IO ()
glGetActiveVaryingNV
  = dyn_glGetActiveVaryingNV ptr_glGetActiveVaryingNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetActiveVaryingNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLsizei ->
                        Ptr GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glEndTransformFeedbackNV #-}
 
ptr_glEndTransformFeedbackNV :: FunPtr a
ptr_glEndTransformFeedbackNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glEndTransformFeedbackNV"
 
glEndTransformFeedbackNV :: IO ()
glEndTransformFeedbackNV
  = dyn_glEndTransformFeedbackNV ptr_glEndTransformFeedbackNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glEndTransformFeedbackNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glBindBufferRangeNV #-}
 
ptr_glBindBufferRangeNV :: FunPtr a
ptr_glBindBufferRangeNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glBindBufferRangeNV"
 
glBindBufferRangeNV ::
                    GLenum -> GLuint -> GLuint -> GLintptr -> GLsizeiptr -> IO ()
glBindBufferRangeNV
  = dyn_glBindBufferRangeNV ptr_glBindBufferRangeNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindBufferRangeNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLintptr -> GLsizeiptr -> IO ())
 
{-# NOINLINE ptr_glBindBufferOffsetNV #-}
 
ptr_glBindBufferOffsetNV :: FunPtr a
ptr_glBindBufferOffsetNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glBindBufferOffsetNV"
 
glBindBufferOffsetNV ::
                     GLenum -> GLuint -> GLuint -> GLintptr -> IO ()
glBindBufferOffsetNV
  = dyn_glBindBufferOffsetNV ptr_glBindBufferOffsetNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindBufferOffsetNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLintptr -> IO ())
 
{-# NOINLINE ptr_glBindBufferBaseNV #-}
 
ptr_glBindBufferBaseNV :: FunPtr a
ptr_glBindBufferBaseNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glBindBufferBaseNV"
 
glBindBufferBaseNV :: GLenum -> GLuint -> GLuint -> IO ()
glBindBufferBaseNV = dyn_glBindBufferBaseNV ptr_glBindBufferBaseNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindBufferBaseNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glBeginTransformFeedbackNV #-}
 
ptr_glBeginTransformFeedbackNV :: FunPtr a
ptr_glBeginTransformFeedbackNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glBeginTransformFeedbackNV"
 
glBeginTransformFeedbackNV :: GLenum -> IO ()
glBeginTransformFeedbackNV
  = dyn_glBeginTransformFeedbackNV ptr_glBeginTransformFeedbackNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBeginTransformFeedbackNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glActiveVaryingNV #-}
 
ptr_glActiveVaryingNV :: FunPtr a
ptr_glActiveVaryingNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_transform_feedback"
        "glActiveVaryingNV"
 
glActiveVaryingNV :: GLuint -> Ptr GLchar -> IO ()
glActiveVaryingNV = dyn_glActiveVaryingNV ptr_glActiveVaryingNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glActiveVaryingNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLchar -> IO ())
 
gl_VERTEX_ID_NV :: GLenum
gl_VERTEX_ID_NV = 35963
 
gl_TRANSFORM_FEEDBACK_VARYINGS_NV :: GLenum
gl_TRANSFORM_FEEDBACK_VARYINGS_NV = 35971
 
gl_TRANSFORM_FEEDBACK_RECORD_NV :: GLenum
gl_TRANSFORM_FEEDBACK_RECORD_NV = 35974
 
gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV :: GLenum
gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV = 35976
 
gl_TRANSFORM_FEEDBACK_BUFFER_START_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_START_NV = 35972
 
gl_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV = 35973
 
gl_TRANSFORM_FEEDBACK_BUFFER_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_NV = 35982
 
gl_TRANSFORM_FEEDBACK_BUFFER_MODE_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_MODE_NV = 35967
 
gl_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV = 35983
 
gl_TRANSFORM_FEEDBACK_ATTRIBS_NV :: GLenum
gl_TRANSFORM_FEEDBACK_ATTRIBS_NV = 35966
 
gl_TEXTURE_COORD_NV :: GLenum
gl_TEXTURE_COORD_NV = 35961
 
gl_SKIP_COMPONENTS4_NV :: GLenum
gl_SKIP_COMPONENTS4_NV = -3
 
gl_SKIP_COMPONENTS3_NV :: GLenum
gl_SKIP_COMPONENTS3_NV = -4
 
gl_SKIP_COMPONENTS2_NV :: GLenum
gl_SKIP_COMPONENTS2_NV = -5
 
gl_SKIP_COMPONENTS1_NV :: GLenum
gl_SKIP_COMPONENTS1_NV = -6
 
gl_SEPARATE_ATTRIBS_NV :: GLenum
gl_SEPARATE_ATTRIBS_NV = 35981
 
gl_RASTERIZER_DISCARD_NV :: GLenum
gl_RASTERIZER_DISCARD_NV = 35977
 
gl_PRIMITIVE_ID_NV :: GLenum
gl_PRIMITIVE_ID_NV = 35964
 
gl_PRIMITIVES_GENERATED_NV :: GLenum
gl_PRIMITIVES_GENERATED_NV = 35975
 
gl_NEXT_BUFFER_NV :: GLenum
gl_NEXT_BUFFER_NV = -2
 
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV = 35968
 
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV = 35979
 
gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV = 35978
 
gl_LAYER_NV :: GLenum
gl_LAYER_NV = 36266
 
gl_INTERLEAVED_ATTRIBS_NV :: GLenum
gl_INTERLEAVED_ATTRIBS_NV = 35980
 
gl_GENERIC_ATTRIB_NV :: GLenum
gl_GENERIC_ATTRIB_NV = 35965
 
gl_CLIP_DISTANCE_NV :: GLenum
gl_CLIP_DISTANCE_NV = 35962
 
gl_BACK_SECONDARY_COLOR_NV :: GLenum
gl_BACK_SECONDARY_COLOR_NV = 35960
 
gl_BACK_PRIMARY_COLOR_NV :: GLenum
gl_BACK_PRIMARY_COLOR_NV = 35959
 
gl_ACTIVE_VARYING_MAX_LENGTH_NV :: GLenum
gl_ACTIVE_VARYING_MAX_LENGTH_NV = 35970
 
gl_ACTIVE_VARYINGS_NV :: GLenum
gl_ACTIVE_VARYINGS_NV = 35969