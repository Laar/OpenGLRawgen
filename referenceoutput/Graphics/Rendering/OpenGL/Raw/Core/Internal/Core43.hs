{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core43
       (glVertexBindingDivisor, glVertexAttribLFormat,
        glVertexAttribIFormat, glVertexAttribFormat, glVertexAttribBinding,
        glVertexArrayVertexBindingDivisorEXT,
        glVertexArrayVertexAttribLFormatEXT,
        glVertexArrayVertexAttribIFormatEXT,
        glVertexArrayVertexAttribFormatEXT,
        glVertexArrayVertexAttribBindingEXT,
        glVertexArrayBindVertexBufferEXT, glTextureView,
        glTextureStorage3DMultisampleEXT, glTextureStorage2DMultisampleEXT,
        glTextureBufferRangeEXT, glTexStorage3DMultisample,
        glTexStorage2DMultisample, glTexBufferRange,
        glShaderStorageBlockBinding, glPushDebugGroup, glPopDebugGroup,
        glObjectPtrLabel, glObjectLabel, glNamedFramebufferParameteriEXT,
        glMultiDrawElementsIndirect, glMultiDrawArraysIndirect,
        glInvalidateTexSubImage, glInvalidateTexImage,
        glInvalidateSubFramebuffer, glInvalidateFramebuffer,
        glInvalidateBufferSubData, glInvalidateBufferData,
        glGetProgramResourceiv, glGetProgramResourceName,
        glGetProgramResourceLocationIndex, glGetProgramResourceLocation,
        glGetProgramResourceIndex, glGetProgramInterfaceiv,
        glGetObjectPtrLabel, glGetObjectLabel,
        glGetNamedFramebufferParameterivEXT, glGetInternalformati64v,
        glGetFramebufferParameteriv, glGetDebugMessageLog,
        glFramebufferParameteri, glDispatchComputeIndirect,
        glDispatchCompute, glDebugMessageInsert, glDebugMessageControl,
        glDebugMessageCallback, glCopyImageSubData,
        glClearNamedBufferSubDataEXT, glClearNamedBufferDataEXT,
        glClearBufferSubData, glClearBufferData, glBindVertexBuffer,
        gl_VIEW_COMPATIBILITY_CLASS, gl_VIEW_CLASS_S3TC_DXT5_RGBA,
        gl_VIEW_CLASS_S3TC_DXT3_RGBA, gl_VIEW_CLASS_S3TC_DXT1_RGBA,
        gl_VIEW_CLASS_S3TC_DXT1_RGB, gl_VIEW_CLASS_RGTC2_RG,
        gl_VIEW_CLASS_RGTC1_RED, gl_VIEW_CLASS_BPTC_UNORM,
        gl_VIEW_CLASS_BPTC_FLOAT, gl_VIEW_CLASS_96_BITS,
        gl_VIEW_CLASS_8_BITS, gl_VIEW_CLASS_64_BITS, gl_VIEW_CLASS_48_BITS,
        gl_VIEW_CLASS_32_BITS, gl_VIEW_CLASS_24_BITS,
        gl_VIEW_CLASS_16_BITS, gl_VIEW_CLASS_128_BITS, gl_VERTEX_TEXTURE,
        gl_VERTEX_SUBROUTINE_UNIFORM, gl_VERTEX_SUBROUTINE,
        gl_VERTEX_BINDING_STRIDE, gl_VERTEX_BINDING_OFFSET,
        gl_VERTEX_BINDING_DIVISOR, gl_VERTEX_ATTRIB_RELATIVE_OFFSET,
        gl_VERTEX_ATTRIB_BINDING, gl_VERTEX_ATTRIB_ARRAY_LONG,
        gl_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER, gl_UNIFORM_BLOCK,
        gl_UNIFORM, gl_TYPE, gl_TRANSFORM_FEEDBACK_VARYING,
        gl_TOP_LEVEL_ARRAY_STRIDE, gl_TOP_LEVEL_ARRAY_SIZE,
        gl_TEXTURE_VIEW_NUM_LEVELS, gl_TEXTURE_VIEW_NUM_LAYERS,
        gl_TEXTURE_VIEW_MIN_LEVEL, gl_TEXTURE_VIEW_MIN_LAYER,
        gl_TEXTURE_VIEW, gl_TEXTURE_SHADOW, gl_TEXTURE_IMMUTABLE_LEVELS,
        gl_TEXTURE_IMAGE_TYPE, gl_TEXTURE_IMAGE_FORMAT,
        gl_TEXTURE_GATHER_SHADOW, gl_TEXTURE_GATHER,
        gl_TEXTURE_COMPRESSED_BLOCK_WIDTH,
        gl_TEXTURE_COMPRESSED_BLOCK_SIZE,
        gl_TEXTURE_COMPRESSED_BLOCK_HEIGHT, gl_TEXTURE_BUFFER_SIZE,
        gl_TEXTURE_BUFFER_OFFSET_ALIGNMENT, gl_TEXTURE_BUFFER_OFFSET,
        gl_TESS_EVALUATION_TEXTURE, gl_TESS_EVALUATION_SUBROUTINE_UNIFORM,
        gl_TESS_EVALUATION_SUBROUTINE, gl_TESS_CONTROL_TEXTURE,
        gl_TESS_CONTROL_SUBROUTINE_UNIFORM, gl_TESS_CONTROL_SUBROUTINE,
        gl_STENCIL_RENDERABLE, gl_STENCIL_COMPONENTS, gl_STACK_UNDERFLOW,
        gl_STACK_OVERFLOW, gl_SRGB_WRITE, gl_SRGB_READ,
        gl_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE,
        gl_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST,
        gl_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE,
        gl_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST,
        gl_SHADER_STORAGE_BUFFER_START, gl_SHADER_STORAGE_BUFFER_SIZE,
        gl_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT,
        gl_SHADER_STORAGE_BUFFER_BINDING, gl_SHADER_STORAGE_BUFFER,
        gl_SHADER_STORAGE_BLOCK, gl_SHADER_STORAGE_BARRIER_BIT,
        gl_SHADER_IMAGE_STORE, gl_SHADER_IMAGE_LOAD,
        gl_SHADER_IMAGE_ATOMIC, gl_SHADER, gl_SAMPLER,
        gl_REFERENCED_BY_VERTEX_SHADER,
        gl_REFERENCED_BY_TESS_EVALUATION_SHADER,
        gl_REFERENCED_BY_TESS_CONTROL_SHADER,
        gl_REFERENCED_BY_GEOMETRY_SHADER, gl_REFERENCED_BY_FRAGMENT_SHADER,
        gl_REFERENCED_BY_COMPUTE_SHADER, gl_READ_PIXELS_TYPE,
        gl_READ_PIXELS_FORMAT, gl_READ_PIXELS, gl_QUERY,
        gl_PROGRAM_PIPELINE, gl_PROGRAM_OUTPUT, gl_PROGRAM_INPUT,
        gl_PROGRAM, gl_PRIMITIVE_RESTART_FIXED_INDEX, gl_OFFSET,
        gl_NUM_SHADING_LANGUAGE_VERSIONS, gl_NUM_ACTIVE_VARIABLES,
        gl_NAME_LENGTH, gl_MIPMAP, gl_MAX_WIDTH,
        gl_MAX_VERTEX_SHADER_STORAGE_BLOCKS,
        gl_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET,
        gl_MAX_VERTEX_ATTRIB_BINDINGS, gl_MAX_UNIFORM_LOCATIONS,
        gl_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS,
        gl_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS,
        gl_MAX_SHADER_STORAGE_BUFFER_BINDINGS,
        gl_MAX_SHADER_STORAGE_BLOCK_SIZE,
        gl_MAX_NUM_COMPATIBLE_SUBROUTINES, gl_MAX_NUM_ACTIVE_VARIABLES,
        gl_MAX_NAME_LENGTH, gl_MAX_LAYERS, gl_MAX_LABEL_LENGTH,
        gl_MAX_HEIGHT, gl_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS,
        gl_MAX_FRAMEBUFFER_WIDTH, gl_MAX_FRAMEBUFFER_SAMPLES,
        gl_MAX_FRAMEBUFFER_LAYERS, gl_MAX_FRAMEBUFFER_HEIGHT,
        gl_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS, gl_MAX_ELEMENT_INDEX,
        gl_MAX_DEPTH, gl_MAX_DEBUG_MESSAGE_LENGTH,
        gl_MAX_DEBUG_LOGGED_MESSAGES, gl_MAX_DEBUG_GROUP_STACK_DEPTH,
        gl_MAX_COMPUTE_WORK_GROUP_SIZE, gl_MAX_COMPUTE_WORK_GROUP_COUNT,
        gl_MAX_COMPUTE_UNIFORM_COMPONENTS, gl_MAX_COMPUTE_UNIFORM_BLOCKS,
        gl_MAX_COMPUTE_TEXTURE_IMAGE_UNITS,
        gl_MAX_COMPUTE_SHARED_MEMORY_SIZE,
        gl_MAX_COMPUTE_SHADER_STORAGE_BLOCKS,
        gl_MAX_COMPUTE_LOCAL_INVOCATIONS, gl_MAX_COMPUTE_IMAGE_UNIFORMS,
        gl_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS,
        gl_MAX_COMPUTE_ATOMIC_COUNTERS,
        gl_MAX_COMBINED_SHADER_STORAGE_BLOCKS,
        gl_MAX_COMBINED_SHADER_OUTPUT_RESOURCES,
        gl_MAX_COMBINED_DIMENSIONS,
        gl_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS, gl_MATRIX_STRIDE,
        gl_MANUAL_GENERATE_MIPMAP, gl_LOCATION_INDEX, gl_LOCATION,
        gl_IS_ROW_MAJOR, gl_IS_PER_PATCH, gl_INTERNALFORMAT_SUPPORTED,
        gl_INTERNALFORMAT_STENCIL_TYPE, gl_INTERNALFORMAT_STENCIL_SIZE,
        gl_INTERNALFORMAT_SHARED_SIZE, gl_INTERNALFORMAT_RED_TYPE,
        gl_INTERNALFORMAT_RED_SIZE, gl_INTERNALFORMAT_PREFERRED,
        gl_INTERNALFORMAT_GREEN_TYPE, gl_INTERNALFORMAT_GREEN_SIZE,
        gl_INTERNALFORMAT_DEPTH_TYPE, gl_INTERNALFORMAT_DEPTH_SIZE,
        gl_INTERNALFORMAT_BLUE_TYPE, gl_INTERNALFORMAT_BLUE_SIZE,
        gl_INTERNALFORMAT_ALPHA_TYPE, gl_INTERNALFORMAT_ALPHA_SIZE,
        gl_IMAGE_TEXEL_SIZE, gl_IMAGE_PIXEL_TYPE, gl_IMAGE_PIXEL_FORMAT,
        gl_IMAGE_COMPATIBILITY_CLASS, gl_IMAGE_CLASS_4_X_8,
        gl_IMAGE_CLASS_4_X_32, gl_IMAGE_CLASS_4_X_16, gl_IMAGE_CLASS_2_X_8,
        gl_IMAGE_CLASS_2_X_32, gl_IMAGE_CLASS_2_X_16, gl_IMAGE_CLASS_1_X_8,
        gl_IMAGE_CLASS_1_X_32, gl_IMAGE_CLASS_1_X_16,
        gl_IMAGE_CLASS_11_11_10, gl_IMAGE_CLASS_10_10_10_2,
        gl_GET_TEXTURE_IMAGE_TYPE, gl_GET_TEXTURE_IMAGE_FORMAT,
        gl_GEOMETRY_TEXTURE, gl_GEOMETRY_SUBROUTINE_UNIFORM,
        gl_GEOMETRY_SUBROUTINE, gl_FULL_SUPPORT,
        gl_FRAMEBUFFER_RENDERABLE_LAYERED, gl_FRAMEBUFFER_RENDERABLE,
        gl_FRAMEBUFFER_DEFAULT_WIDTH, gl_FRAMEBUFFER_DEFAULT_SAMPLES,
        gl_FRAMEBUFFER_DEFAULT_LAYERS, gl_FRAMEBUFFER_DEFAULT_HEIGHT,
        gl_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS,
        gl_FRAMEBUFFER_BLEND, gl_FRAGMENT_TEXTURE,
        gl_FRAGMENT_SUBROUTINE_UNIFORM, gl_FRAGMENT_SUBROUTINE, gl_FILTER,
        gl_DISPLAY_LIST, gl_DISPATCH_INDIRECT_BUFFER_BINDING,
        gl_DISPATCH_INDIRECT_BUFFER, gl_DEPTH_STENCIL_TEXTURE_MODE,
        gl_DEPTH_RENDERABLE, gl_DEPTH_COMPONENTS,
        gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR, gl_DEBUG_TYPE_PUSH_GROUP,
        gl_DEBUG_TYPE_PORTABILITY, gl_DEBUG_TYPE_POP_GROUP,
        gl_DEBUG_TYPE_PERFORMANCE, gl_DEBUG_TYPE_OTHER,
        gl_DEBUG_TYPE_MARKER, gl_DEBUG_TYPE_ERROR,
        gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR, gl_DEBUG_SOURCE_WINDOW_SYSTEM,
        gl_DEBUG_SOURCE_THIRD_PARTY, gl_DEBUG_SOURCE_SHADER_COMPILER,
        gl_DEBUG_SOURCE_OTHER, gl_DEBUG_SOURCE_APPLICATION,
        gl_DEBUG_SOURCE_API, gl_DEBUG_SEVERITY_NOTIFICATION,
        gl_DEBUG_SEVERITY_MEDIUM, gl_DEBUG_SEVERITY_LOW,
        gl_DEBUG_SEVERITY_HIGH, gl_DEBUG_OUTPUT_SYNCHRONOUS,
        gl_DEBUG_OUTPUT, gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH,
        gl_DEBUG_LOGGED_MESSAGES, gl_DEBUG_GROUP_STACK_DEPTH,
        gl_DEBUG_CALLBACK_USER_PARAM, gl_DEBUG_CALLBACK_FUNCTION,
        gl_CONTEXT_FLAG_DEBUG_BIT, gl_COMPUTE_TEXTURE,
        gl_COMPUTE_SUBROUTINE_UNIFORM, gl_COMPUTE_SUBROUTINE,
        gl_COMPUTE_SHADER, gl_COMPUTE_LOCAL_WORK_SIZE,
        gl_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2,
        gl_COMPRESSED_SRGB8_ETC2, gl_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC,
        gl_COMPRESSED_SIGNED_RG11_EAC, gl_COMPRESSED_SIGNED_R11_EAC,
        gl_COMPRESSED_RGBA8_ETC2_EAC,
        gl_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2,
        gl_COMPRESSED_RGB8_ETC2, gl_COMPRESSED_RG11_EAC,
        gl_COMPRESSED_R11_EAC, gl_COLOR_RENDERABLE, gl_COLOR_ENCODING,
        gl_COLOR_COMPONENTS, gl_CLEAR_BUFFER, gl_CAVEAT_SUPPORT,
        gl_BUFFER_VARIABLE, gl_BUFFER_DATA_SIZE, gl_BUFFER_BINDING,
        gl_BUFFER, gl_BLOCK_INDEX, gl_AUTO_GENERATE_MIPMAP,
        gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER,
        gl_ATOMIC_COUNTER_BUFFER_INDEX, gl_ARRAY_STRIDE, gl_ARRAY_SIZE,
        gl_ANY_SAMPLES_PASSED_CONSERVATIVE, gl_ACTIVE_VARIABLES,
        gl_ACTIVE_RESOURCES)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core42
       (gl_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS)
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11
       (gl_STACK_UNDERFLOW, gl_STACK_OVERFLOW)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexBindingDivisor #-}
 
ptr_glVertexBindingDivisor :: FunPtr a
ptr_glVertexBindingDivisor
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glVertexBindingDivisor"
 
glVertexBindingDivisor :: GLuint -> GLuint -> IO ()
glVertexBindingDivisor
  = dyn_glVertexBindingDivisor ptr_glVertexBindingDivisor
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexBindingDivisor
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribLFormat #-}
 
ptr_glVertexAttribLFormat :: FunPtr a
ptr_glVertexAttribLFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glVertexAttribLFormat"
 
glVertexAttribLFormat ::
                      GLuint -> GLint -> GLenum -> GLuint -> IO ()
glVertexAttribLFormat
  = dyn_glVertexAttribLFormat ptr_glVertexAttribLFormat
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribLFormat
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribIFormat #-}
 
ptr_glVertexAttribIFormat :: FunPtr a
ptr_glVertexAttribIFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glVertexAttribIFormat"
 
glVertexAttribIFormat ::
                      GLuint -> GLint -> GLenum -> GLuint -> IO ()
glVertexAttribIFormat
  = dyn_glVertexAttribIFormat ptr_glVertexAttribIFormat
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribIFormat
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribFormat #-}
 
ptr_glVertexAttribFormat :: FunPtr a
ptr_glVertexAttribFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glVertexAttribFormat"
 
glVertexAttribFormat ::
                     GLuint -> GLint -> GLenum -> GLboolean -> GLuint -> IO ()
glVertexAttribFormat
  = dyn_glVertexAttribFormat ptr_glVertexAttribFormat
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribFormat ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLboolean -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribBinding #-}
 
ptr_glVertexAttribBinding :: FunPtr a
ptr_glVertexAttribBinding
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glVertexAttribBinding"
 
glVertexAttribBinding :: GLuint -> GLuint -> IO ()
glVertexAttribBinding
  = dyn_glVertexAttribBinding ptr_glVertexAttribBinding
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribBinding
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexArrayVertexBindingDivisorEXT #-}
 
ptr_glVertexArrayVertexBindingDivisorEXT :: FunPtr a
ptr_glVertexArrayVertexBindingDivisorEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glVertexArrayVertexBindingDivisorEXT"
 
glVertexArrayVertexBindingDivisorEXT ::
                                     GLuint -> GLuint -> GLuint -> IO ()
glVertexArrayVertexBindingDivisorEXT
  = dyn_glVertexArrayVertexBindingDivisorEXT
      ptr_glVertexArrayVertexBindingDivisorEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexArrayVertexBindingDivisorEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexArrayVertexAttribLFormatEXT #-}
 
ptr_glVertexArrayVertexAttribLFormatEXT :: FunPtr a
ptr_glVertexArrayVertexAttribLFormatEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glVertexArrayVertexAttribLFormatEXT"
 
glVertexArrayVertexAttribLFormatEXT ::
                                    GLuint -> GLuint -> GLint -> GLenum -> GLuint -> IO ()
glVertexArrayVertexAttribLFormatEXT
  = dyn_glVertexArrayVertexAttribLFormatEXT
      ptr_glVertexArrayVertexAttribLFormatEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexArrayVertexAttribLFormatEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLint -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexArrayVertexAttribIFormatEXT #-}
 
ptr_glVertexArrayVertexAttribIFormatEXT :: FunPtr a
ptr_glVertexArrayVertexAttribIFormatEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glVertexArrayVertexAttribIFormatEXT"
 
glVertexArrayVertexAttribIFormatEXT ::
                                    GLuint -> GLuint -> GLint -> GLenum -> GLuint -> IO ()
glVertexArrayVertexAttribIFormatEXT
  = dyn_glVertexArrayVertexAttribIFormatEXT
      ptr_glVertexArrayVertexAttribIFormatEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexArrayVertexAttribIFormatEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLint -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexArrayVertexAttribFormatEXT #-}
 
ptr_glVertexArrayVertexAttribFormatEXT :: FunPtr a
ptr_glVertexArrayVertexAttribFormatEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glVertexArrayVertexAttribFormatEXT"
 
glVertexArrayVertexAttribFormatEXT ::
                                   GLuint ->
                                     GLuint -> GLint -> GLenum -> GLboolean -> GLuint -> IO ()
glVertexArrayVertexAttribFormatEXT
  = dyn_glVertexArrayVertexAttribFormatEXT
      ptr_glVertexArrayVertexAttribFormatEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexArrayVertexAttribFormatEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint -> GLint -> GLenum -> GLboolean -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexArrayVertexAttribBindingEXT #-}
 
ptr_glVertexArrayVertexAttribBindingEXT :: FunPtr a
ptr_glVertexArrayVertexAttribBindingEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glVertexArrayVertexAttribBindingEXT"
 
glVertexArrayVertexAttribBindingEXT ::
                                    GLuint -> GLuint -> GLuint -> IO ()
glVertexArrayVertexAttribBindingEXT
  = dyn_glVertexArrayVertexAttribBindingEXT
      ptr_glVertexArrayVertexAttribBindingEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexArrayVertexAttribBindingEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexArrayBindVertexBufferEXT #-}
 
ptr_glVertexArrayBindVertexBufferEXT :: FunPtr a
ptr_glVertexArrayBindVertexBufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glVertexArrayBindVertexBufferEXT"
 
glVertexArrayBindVertexBufferEXT ::
                                 GLuint -> GLuint -> GLuint -> GLintptr -> GLsizei -> IO ()
glVertexArrayBindVertexBufferEXT
  = dyn_glVertexArrayBindVertexBufferEXT
      ptr_glVertexArrayBindVertexBufferEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexArrayBindVertexBufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> GLintptr -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glTextureView #-}
 
ptr_glTextureView :: FunPtr a
ptr_glTextureView
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glTextureView"
 
glTextureView ::
              GLuint ->
                GLenum ->
                  GLuint -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glTextureView = dyn_glTextureView ptr_glTextureView
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureView ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLuint -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glTextureStorage3DMultisampleEXT #-}
 
ptr_glTextureStorage3DMultisampleEXT :: FunPtr a
ptr_glTextureStorage3DMultisampleEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glTextureStorage3DMultisampleEXT"
 
glTextureStorage3DMultisampleEXT ::
                                 GLuint ->
                                   GLenum ->
                                     GLsizei ->
                                       GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTextureStorage3DMultisampleEXT
  = dyn_glTextureStorage3DMultisampleEXT
      ptr_glTextureStorage3DMultisampleEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTextureStorage3DMultisampleEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLsizei ->
                        GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTextureStorage2DMultisampleEXT #-}
 
ptr_glTextureStorage2DMultisampleEXT :: FunPtr a
ptr_glTextureStorage2DMultisampleEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glTextureStorage2DMultisampleEXT"
 
glTextureStorage2DMultisampleEXT ::
                                 GLuint ->
                                   GLenum ->
                                     GLsizei -> GLenum -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTextureStorage2DMultisampleEXT
  = dyn_glTextureStorage2DMultisampleEXT
      ptr_glTextureStorage2DMultisampleEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTextureStorage2DMultisampleEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLsizei -> GLenum -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTextureBufferRangeEXT #-}
 
ptr_glTextureBufferRangeEXT :: FunPtr a
ptr_glTextureBufferRangeEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glTextureBufferRangeEXT"
 
glTextureBufferRangeEXT ::
                        GLuint ->
                          GLenum -> GLenum -> GLuint -> GLintptr -> GLsizeiptr -> IO ()
glTextureBufferRangeEXT
  = dyn_glTextureBufferRangeEXT ptr_glTextureBufferRangeEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureBufferRangeEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum -> GLenum -> GLuint -> GLintptr -> GLsizeiptr -> IO ())
 
{-# NOINLINE ptr_glTexStorage3DMultisample #-}
 
ptr_glTexStorage3DMultisample :: FunPtr a
ptr_glTexStorage3DMultisample
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glTexStorage3DMultisample"
 
glTexStorage3DMultisample ::
                          GLenum ->
                            GLsizei ->
                              GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTexStorage3DMultisample
  = dyn_glTexStorage3DMultisample ptr_glTexStorage3DMultisample
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTexStorage3DMultisample ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei ->
                      GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTexStorage2DMultisample #-}
 
ptr_glTexStorage2DMultisample :: FunPtr a
ptr_glTexStorage2DMultisample
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glTexStorage2DMultisample"
 
glTexStorage2DMultisample ::
                          GLenum ->
                            GLsizei -> GLenum -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTexStorage2DMultisample
  = dyn_glTexStorage2DMultisample ptr_glTexStorage2DMultisample
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTexStorage2DMultisample ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei -> GLenum -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTexBufferRange #-}
 
ptr_glTexBufferRange :: FunPtr a
ptr_glTexBufferRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glTexBufferRange"
 
glTexBufferRange ::
                 GLenum -> GLenum -> GLuint -> GLintptr -> GLsizeiptr -> IO ()
glTexBufferRange = dyn_glTexBufferRange ptr_glTexBufferRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexBufferRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLintptr -> GLsizeiptr -> IO ())
 
{-# NOINLINE ptr_glShaderStorageBlockBinding #-}
 
ptr_glShaderStorageBlockBinding :: FunPtr a
ptr_glShaderStorageBlockBinding
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glShaderStorageBlockBinding"
 
glShaderStorageBlockBinding :: GLuint -> GLuint -> GLuint -> IO ()
glShaderStorageBlockBinding
  = dyn_glShaderStorageBlockBinding ptr_glShaderStorageBlockBinding
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glShaderStorageBlockBinding ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glPushDebugGroup #-}
 
ptr_glPushDebugGroup :: FunPtr a
ptr_glPushDebugGroup
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glPushDebugGroup"
 
glPushDebugGroup ::
                 GLenum -> GLuint -> GLsizei -> Ptr GLchar -> IO ()
glPushDebugGroup = dyn_glPushDebugGroup ptr_glPushDebugGroup
 
foreign import CALLCONV unsafe "dynamic" dyn_glPushDebugGroup ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glPopDebugGroup #-}
 
ptr_glPopDebugGroup :: FunPtr a
ptr_glPopDebugGroup
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glPopDebugGroup"
 
glPopDebugGroup :: IO ()
glPopDebugGroup = dyn_glPopDebugGroup ptr_glPopDebugGroup
 
foreign import CALLCONV unsafe "dynamic" dyn_glPopDebugGroup ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glObjectPtrLabel #-}
 
ptr_glObjectPtrLabel :: FunPtr a
ptr_glObjectPtrLabel
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glObjectPtrLabel"
 
glObjectPtrLabel :: Ptr (Ptr a) -> GLsizei -> Ptr GLchar -> IO ()
glObjectPtrLabel = dyn_glObjectPtrLabel ptr_glObjectPtrLabel
 
foreign import CALLCONV unsafe "dynamic" dyn_glObjectPtrLabel ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr (Ptr a) -> GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glObjectLabel #-}
 
ptr_glObjectLabel :: FunPtr a
ptr_glObjectLabel
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glObjectLabel"
 
glObjectLabel :: GLenum -> GLuint -> GLsizei -> Ptr GLchar -> IO ()
glObjectLabel = dyn_glObjectLabel ptr_glObjectLabel
 
foreign import CALLCONV unsafe "dynamic" dyn_glObjectLabel ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferParameteriEXT #-}
 
ptr_glNamedFramebufferParameteriEXT :: FunPtr a
ptr_glNamedFramebufferParameteriEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glNamedFramebufferParameteriEXT"
 
glNamedFramebufferParameteriEXT ::
                                GLuint -> GLenum -> GLint -> IO ()
glNamedFramebufferParameteriEXT
  = dyn_glNamedFramebufferParameteriEXT
      ptr_glNamedFramebufferParameteriEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferParameteriEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiDrawElementsIndirect #-}
 
ptr_glMultiDrawElementsIndirect :: FunPtr a
ptr_glMultiDrawElementsIndirect
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glMultiDrawElementsIndirect"
 
glMultiDrawElementsIndirect ::
                            GLenum -> GLenum -> Ptr (Ptr a) -> GLsizei -> GLsizei -> IO ()
glMultiDrawElementsIndirect
  = dyn_glMultiDrawElementsIndirect ptr_glMultiDrawElementsIndirect
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiDrawElementsIndirect ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr (Ptr a) -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glMultiDrawArraysIndirect #-}
 
ptr_glMultiDrawArraysIndirect :: FunPtr a
ptr_glMultiDrawArraysIndirect
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glMultiDrawArraysIndirect"
 
glMultiDrawArraysIndirect ::
                          GLenum -> Ptr (Ptr a) -> GLsizei -> GLsizei -> IO ()
glMultiDrawArraysIndirect
  = dyn_glMultiDrawArraysIndirect ptr_glMultiDrawArraysIndirect
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiDrawArraysIndirect ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr (Ptr a) -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glInvalidateTexSubImage #-}
 
ptr_glInvalidateTexSubImage :: FunPtr a
ptr_glInvalidateTexSubImage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glInvalidateTexSubImage"
 
glInvalidateTexSubImage ::
                        GLuint ->
                          GLint ->
                            GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> IO ()
glInvalidateTexSubImage
  = dyn_glInvalidateTexSubImage ptr_glInvalidateTexSubImage
 
foreign import CALLCONV unsafe "dynamic" dyn_glInvalidateTexSubImage
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint ->
                      GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glInvalidateTexImage #-}
 
ptr_glInvalidateTexImage :: FunPtr a
ptr_glInvalidateTexImage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glInvalidateTexImage"
 
glInvalidateTexImage :: GLuint -> GLint -> IO ()
glInvalidateTexImage
  = dyn_glInvalidateTexImage ptr_glInvalidateTexImage
 
foreign import CALLCONV unsafe "dynamic" dyn_glInvalidateTexImage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glInvalidateSubFramebuffer #-}
 
ptr_glInvalidateSubFramebuffer :: FunPtr a
ptr_glInvalidateSubFramebuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glInvalidateSubFramebuffer"
 
glInvalidateSubFramebuffer ::
                           GLenum ->
                             GLsizei ->
                               Ptr GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glInvalidateSubFramebuffer
  = dyn_glInvalidateSubFramebuffer ptr_glInvalidateSubFramebuffer
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glInvalidateSubFramebuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei ->
                      Ptr GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glInvalidateFramebuffer #-}
 
ptr_glInvalidateFramebuffer :: FunPtr a
ptr_glInvalidateFramebuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glInvalidateFramebuffer"
 
glInvalidateFramebuffer :: GLenum -> GLsizei -> Ptr GLenum -> IO ()
glInvalidateFramebuffer
  = dyn_glInvalidateFramebuffer ptr_glInvalidateFramebuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glInvalidateFramebuffer
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr GLenum -> IO ())
 
{-# NOINLINE ptr_glInvalidateBufferSubData #-}
 
ptr_glInvalidateBufferSubData :: FunPtr a
ptr_glInvalidateBufferSubData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glInvalidateBufferSubData"
 
glInvalidateBufferSubData ::
                          GLuint -> GLintptr -> GLsizeiptr -> IO ()
glInvalidateBufferSubData
  = dyn_glInvalidateBufferSubData ptr_glInvalidateBufferSubData
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glInvalidateBufferSubData ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLintptr -> GLsizeiptr -> IO ())
 
{-# NOINLINE ptr_glInvalidateBufferData #-}
 
ptr_glInvalidateBufferData :: FunPtr a
ptr_glInvalidateBufferData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glInvalidateBufferData"
 
glInvalidateBufferData :: GLuint -> IO ()
glInvalidateBufferData
  = dyn_glInvalidateBufferData ptr_glInvalidateBufferData
 
foreign import CALLCONV unsafe "dynamic" dyn_glInvalidateBufferData
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glGetProgramResourceiv #-}
 
ptr_glGetProgramResourceiv :: FunPtr a
ptr_glGetProgramResourceiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glGetProgramResourceiv"
 
glGetProgramResourceiv ::
                       GLuint ->
                         GLenum ->
                           GLuint ->
                             GLsizei ->
                               Ptr GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> IO ()
glGetProgramResourceiv
  = dyn_glGetProgramResourceiv ptr_glGetProgramResourceiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramResourceiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLuint ->
                        GLsizei ->
                          Ptr GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetProgramResourceName #-}
 
ptr_glGetProgramResourceName :: FunPtr a
ptr_glGetProgramResourceName
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glGetProgramResourceName"
 
glGetProgramResourceName ::
                         GLuint ->
                           GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetProgramResourceName
  = dyn_glGetProgramResourceName ptr_glGetProgramResourceName
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramResourceName ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetProgramResourceLocationIndex #-}
 
ptr_glGetProgramResourceLocationIndex :: FunPtr a
ptr_glGetProgramResourceLocationIndex
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glGetProgramResourceLocationIndex"
 
glGetProgramResourceLocationIndex ::
                                  GLuint -> GLenum -> Ptr GLchar -> IO GLint
glGetProgramResourceLocationIndex
  = dyn_glGetProgramResourceLocationIndex
      ptr_glGetProgramResourceLocationIndex
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramResourceLocationIndex ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLchar -> IO GLint)
 
{-# NOINLINE ptr_glGetProgramResourceLocation #-}
 
ptr_glGetProgramResourceLocation :: FunPtr a
ptr_glGetProgramResourceLocation
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glGetProgramResourceLocation"
 
glGetProgramResourceLocation ::
                             GLuint -> GLenum -> Ptr GLchar -> IO GLint
glGetProgramResourceLocation
  = dyn_glGetProgramResourceLocation ptr_glGetProgramResourceLocation
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramResourceLocation ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLchar -> IO GLint)
 
{-# NOINLINE ptr_glGetProgramResourceIndex #-}
 
ptr_glGetProgramResourceIndex :: FunPtr a
ptr_glGetProgramResourceIndex
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glGetProgramResourceIndex"
 
glGetProgramResourceIndex ::
                          GLuint -> GLenum -> Ptr GLchar -> IO GLuint
glGetProgramResourceIndex
  = dyn_glGetProgramResourceIndex ptr_glGetProgramResourceIndex
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramResourceIndex ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLchar -> IO GLuint)
 
{-# NOINLINE ptr_glGetProgramInterfaceiv #-}
 
ptr_glGetProgramInterfaceiv :: FunPtr a
ptr_glGetProgramInterfaceiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glGetProgramInterfaceiv"
 
glGetProgramInterfaceiv ::
                        GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetProgramInterfaceiv
  = dyn_glGetProgramInterfaceiv ptr_glGetProgramInterfaceiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramInterfaceiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetObjectPtrLabel #-}
 
ptr_glGetObjectPtrLabel :: FunPtr a
ptr_glGetObjectPtrLabel
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glGetObjectPtrLabel"
 
glGetObjectPtrLabel ::
                    Ptr (Ptr a) -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetObjectPtrLabel
  = dyn_glGetObjectPtrLabel ptr_glGetObjectPtrLabel
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetObjectPtrLabel ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr (Ptr a) -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetObjectLabel #-}
 
ptr_glGetObjectLabel :: FunPtr a
ptr_glGetObjectLabel
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glGetObjectLabel"
 
glGetObjectLabel ::
                 GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetObjectLabel = dyn_glGetObjectLabel ptr_glGetObjectLabel
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetObjectLabel ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetNamedFramebufferParameterivEXT #-}
 
ptr_glGetNamedFramebufferParameterivEXT :: FunPtr a
ptr_glGetNamedFramebufferParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glGetNamedFramebufferParameterivEXT"
 
glGetNamedFramebufferParameterivEXT ::
                                    GLuint -> GLenum -> Ptr GLint -> IO ()
glGetNamedFramebufferParameterivEXT
  = dyn_glGetNamedFramebufferParameterivEXT
      ptr_glGetNamedFramebufferParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedFramebufferParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetInternalformati64v #-}
 
ptr_glGetInternalformati64v :: FunPtr a
ptr_glGetInternalformati64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glGetInternalformati64v"
 
glGetInternalformati64v ::
                        GLenum -> GLenum -> GLenum -> GLsizei -> Ptr GLint64 -> IO ()
glGetInternalformati64v
  = dyn_glGetInternalformati64v ptr_glGetInternalformati64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetInternalformati64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLsizei -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glGetFramebufferParameteriv #-}
 
ptr_glGetFramebufferParameteriv :: FunPtr a
ptr_glGetFramebufferParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glGetFramebufferParameteriv"
 
glGetFramebufferParameteriv ::
                            GLenum -> GLenum -> Ptr GLint -> IO ()
glGetFramebufferParameteriv
  = dyn_glGetFramebufferParameteriv ptr_glGetFramebufferParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetFramebufferParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetDebugMessageLog #-}
 
ptr_glGetDebugMessageLog :: FunPtr a
ptr_glGetDebugMessageLog
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glGetDebugMessageLog"
 
glGetDebugMessageLog ::
                     GLuint ->
                       GLsizei ->
                         Ptr GLenum ->
                           Ptr GLenum ->
                             Ptr GLuint -> Ptr GLenum -> Ptr GLsizei -> Ptr GLchar -> IO GLuint
glGetDebugMessageLog
  = dyn_glGetDebugMessageLog ptr_glGetDebugMessageLog
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetDebugMessageLog ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei ->
                      Ptr GLenum ->
                        Ptr GLenum ->
                          Ptr GLuint -> Ptr GLenum -> Ptr GLsizei -> Ptr GLchar -> IO GLuint)
 
{-# NOINLINE ptr_glFramebufferParameteri #-}
 
ptr_glFramebufferParameteri :: FunPtr a
ptr_glFramebufferParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glFramebufferParameteri"
 
glFramebufferParameteri :: GLenum -> GLenum -> GLint -> IO ()
glFramebufferParameteri
  = dyn_glFramebufferParameteri ptr_glFramebufferParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glFramebufferParameteri
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glDispatchComputeIndirect #-}
 
ptr_glDispatchComputeIndirect :: FunPtr a
ptr_glDispatchComputeIndirect
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glDispatchComputeIndirect"
 
glDispatchComputeIndirect :: GLintptr -> IO ()
glDispatchComputeIndirect
  = dyn_glDispatchComputeIndirect ptr_glDispatchComputeIndirect
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDispatchComputeIndirect ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLintptr -> IO ())
 
{-# NOINLINE ptr_glDispatchCompute #-}
 
ptr_glDispatchCompute :: FunPtr a
ptr_glDispatchCompute
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glDispatchCompute"
 
glDispatchCompute :: GLuint -> GLuint -> GLuint -> IO ()
glDispatchCompute = dyn_glDispatchCompute ptr_glDispatchCompute
 
foreign import CALLCONV unsafe "dynamic" dyn_glDispatchCompute ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glDebugMessageInsert #-}
 
ptr_glDebugMessageInsert :: FunPtr a
ptr_glDebugMessageInsert
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glDebugMessageInsert"
 
glDebugMessageInsert ::
                     GLenum ->
                       GLenum -> GLuint -> GLenum -> GLsizei -> Ptr GLchar -> IO ()
glDebugMessageInsert
  = dyn_glDebugMessageInsert ptr_glDebugMessageInsert
 
foreign import CALLCONV unsafe "dynamic" dyn_glDebugMessageInsert ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum -> GLuint -> GLenum -> GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glDebugMessageControl #-}
 
ptr_glDebugMessageControl :: FunPtr a
ptr_glDebugMessageControl
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glDebugMessageControl"
 
glDebugMessageControl ::
                      GLenum ->
                        GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> IO ()
glDebugMessageControl
  = dyn_glDebugMessageControl ptr_glDebugMessageControl
 
foreign import CALLCONV unsafe "dynamic" dyn_glDebugMessageControl
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glDebugMessageCallback #-}
 
ptr_glDebugMessageCallback :: FunPtr a
ptr_glDebugMessageCallback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glDebugMessageCallback"
 
glDebugMessageCallback :: GLdebugproc -> Ptr (Ptr a) -> IO ()
glDebugMessageCallback
  = dyn_glDebugMessageCallback ptr_glDebugMessageCallback
 
foreign import CALLCONV unsafe "dynamic" dyn_glDebugMessageCallback
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdebugproc -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glCopyImageSubData #-}
 
ptr_glCopyImageSubData :: FunPtr a
ptr_glCopyImageSubData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glCopyImageSubData"
 
glCopyImageSubData ::
                   GLuint ->
                     GLenum ->
                       GLint ->
                         GLint ->
                           GLint ->
                             GLint ->
                               GLuint ->
                                 GLenum ->
                                   GLint ->
                                     GLint ->
                                       GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> IO ()
glCopyImageSubData = dyn_glCopyImageSubData ptr_glCopyImageSubData
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyImageSubData ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLuint ->
                                GLenum ->
                                  GLint ->
                                    GLint ->
                                      GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glClearNamedBufferSubDataEXT #-}
 
ptr_glClearNamedBufferSubDataEXT :: FunPtr a
ptr_glClearNamedBufferSubDataEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glClearNamedBufferSubDataEXT"
 
glClearNamedBufferSubDataEXT ::
                             GLuint ->
                               GLenum ->
                                 GLenum ->
                                   GLenum -> GLsizeiptr -> GLsizeiptr -> Ptr (Ptr a) -> IO ()
glClearNamedBufferSubDataEXT
  = dyn_glClearNamedBufferSubDataEXT ptr_glClearNamedBufferSubDataEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glClearNamedBufferSubDataEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLenum ->
                        GLenum -> GLsizeiptr -> GLsizeiptr -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glClearNamedBufferDataEXT #-}
 
ptr_glClearNamedBufferDataEXT :: FunPtr a
ptr_glClearNamedBufferDataEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glClearNamedBufferDataEXT"
 
glClearNamedBufferDataEXT ::
                          GLuint -> GLenum -> GLenum -> GLenum -> Ptr (Ptr a) -> IO ()
glClearNamedBufferDataEXT
  = dyn_glClearNamedBufferDataEXT ptr_glClearNamedBufferDataEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glClearNamedBufferDataEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glClearBufferSubData #-}
 
ptr_glClearBufferSubData :: FunPtr a
ptr_glClearBufferSubData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glClearBufferSubData"
 
glClearBufferSubData ::
                     GLenum ->
                       GLenum ->
                         GLintptr -> GLsizeiptr -> GLenum -> GLenum -> Ptr (Ptr a) -> IO ()
glClearBufferSubData
  = dyn_glClearBufferSubData ptr_glClearBufferSubData
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearBufferSubData ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLintptr -> GLsizeiptr -> GLenum -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glClearBufferData #-}
 
ptr_glClearBufferData :: FunPtr a
ptr_glClearBufferData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glClearBufferData"
 
glClearBufferData ::
                  GLenum -> GLenum -> GLenum -> GLenum -> Ptr (Ptr a) -> IO ()
glClearBufferData = dyn_glClearBufferData ptr_glClearBufferData
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearBufferData ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glBindVertexBuffer #-}
 
ptr_glBindVertexBuffer :: FunPtr a
ptr_glBindVertexBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_3"
        "glBindVertexBuffer"
 
glBindVertexBuffer ::
                   GLuint -> GLuint -> GLintptr -> GLsizei -> IO ()
glBindVertexBuffer = dyn_glBindVertexBuffer ptr_glBindVertexBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindVertexBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLintptr -> GLsizei -> IO ())
 
gl_VIEW_COMPATIBILITY_CLASS :: GLenum
gl_VIEW_COMPATIBILITY_CLASS = 33462
 
gl_VIEW_CLASS_S3TC_DXT5_RGBA :: GLenum
gl_VIEW_CLASS_S3TC_DXT5_RGBA = 33487
 
gl_VIEW_CLASS_S3TC_DXT3_RGBA :: GLenum
gl_VIEW_CLASS_S3TC_DXT3_RGBA = 33486
 
gl_VIEW_CLASS_S3TC_DXT1_RGBA :: GLenum
gl_VIEW_CLASS_S3TC_DXT1_RGBA = 33485
 
gl_VIEW_CLASS_S3TC_DXT1_RGB :: GLenum
gl_VIEW_CLASS_S3TC_DXT1_RGB = 33484
 
gl_VIEW_CLASS_RGTC2_RG :: GLenum
gl_VIEW_CLASS_RGTC2_RG = 33489
 
gl_VIEW_CLASS_RGTC1_RED :: GLenum
gl_VIEW_CLASS_RGTC1_RED = 33488
 
gl_VIEW_CLASS_BPTC_UNORM :: GLenum
gl_VIEW_CLASS_BPTC_UNORM = 33490
 
gl_VIEW_CLASS_BPTC_FLOAT :: GLenum
gl_VIEW_CLASS_BPTC_FLOAT = 33491
 
gl_VIEW_CLASS_96_BITS :: GLenum
gl_VIEW_CLASS_96_BITS = 33477
 
gl_VIEW_CLASS_8_BITS :: GLenum
gl_VIEW_CLASS_8_BITS = 33483
 
gl_VIEW_CLASS_64_BITS :: GLenum
gl_VIEW_CLASS_64_BITS = 33478
 
gl_VIEW_CLASS_48_BITS :: GLenum
gl_VIEW_CLASS_48_BITS = 33479
 
gl_VIEW_CLASS_32_BITS :: GLenum
gl_VIEW_CLASS_32_BITS = 33480
 
gl_VIEW_CLASS_24_BITS :: GLenum
gl_VIEW_CLASS_24_BITS = 33481
 
gl_VIEW_CLASS_16_BITS :: GLenum
gl_VIEW_CLASS_16_BITS = 33482
 
gl_VIEW_CLASS_128_BITS :: GLenum
gl_VIEW_CLASS_128_BITS = 33476
 
gl_VERTEX_TEXTURE :: GLenum
gl_VERTEX_TEXTURE = 33435
 
gl_VERTEX_SUBROUTINE_UNIFORM :: GLenum
gl_VERTEX_SUBROUTINE_UNIFORM = 37614
 
gl_VERTEX_SUBROUTINE :: GLenum
gl_VERTEX_SUBROUTINE = 37608
 
gl_VERTEX_BINDING_STRIDE :: GLenum
gl_VERTEX_BINDING_STRIDE = 33496
 
gl_VERTEX_BINDING_OFFSET :: GLenum
gl_VERTEX_BINDING_OFFSET = 33495
 
gl_VERTEX_BINDING_DIVISOR :: GLenum
gl_VERTEX_BINDING_DIVISOR = 33494
 
gl_VERTEX_ATTRIB_RELATIVE_OFFSET :: GLenum
gl_VERTEX_ATTRIB_RELATIVE_OFFSET = 33493
 
gl_VERTEX_ATTRIB_BINDING :: GLenum
gl_VERTEX_ATTRIB_BINDING = 33492
 
gl_VERTEX_ATTRIB_ARRAY_LONG :: GLenum
gl_VERTEX_ATTRIB_ARRAY_LONG = 34638
 
gl_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER :: GLenum
gl_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = 37100
 
gl_UNIFORM_BLOCK :: GLenum
gl_UNIFORM_BLOCK = 37602
 
gl_UNIFORM :: GLenum
gl_UNIFORM = 37601
 
gl_TYPE :: GLenum
gl_TYPE = 37626
 
gl_TRANSFORM_FEEDBACK_VARYING :: GLenum
gl_TRANSFORM_FEEDBACK_VARYING = 37620
 
gl_TOP_LEVEL_ARRAY_STRIDE :: GLenum
gl_TOP_LEVEL_ARRAY_STRIDE = 37645
 
gl_TOP_LEVEL_ARRAY_SIZE :: GLenum
gl_TOP_LEVEL_ARRAY_SIZE = 37644
 
gl_TEXTURE_VIEW_NUM_LEVELS :: GLenum
gl_TEXTURE_VIEW_NUM_LEVELS = 33500
 
gl_TEXTURE_VIEW_NUM_LAYERS :: GLenum
gl_TEXTURE_VIEW_NUM_LAYERS = 33502
 
gl_TEXTURE_VIEW_MIN_LEVEL :: GLenum
gl_TEXTURE_VIEW_MIN_LEVEL = 33499
 
gl_TEXTURE_VIEW_MIN_LAYER :: GLenum
gl_TEXTURE_VIEW_MIN_LAYER = 33501
 
gl_TEXTURE_VIEW :: GLenum
gl_TEXTURE_VIEW = 33461
 
gl_TEXTURE_SHADOW :: GLenum
gl_TEXTURE_SHADOW = 33441
 
gl_TEXTURE_IMMUTABLE_LEVELS :: GLenum
gl_TEXTURE_IMMUTABLE_LEVELS = 33503
 
gl_TEXTURE_IMAGE_TYPE :: GLenum
gl_TEXTURE_IMAGE_TYPE = 33424
 
gl_TEXTURE_IMAGE_FORMAT :: GLenum
gl_TEXTURE_IMAGE_FORMAT = 33423
 
gl_TEXTURE_GATHER_SHADOW :: GLenum
gl_TEXTURE_GATHER_SHADOW = 33443
 
gl_TEXTURE_GATHER :: GLenum
gl_TEXTURE_GATHER = 33442
 
gl_TEXTURE_COMPRESSED_BLOCK_WIDTH :: GLenum
gl_TEXTURE_COMPRESSED_BLOCK_WIDTH = 33457
 
gl_TEXTURE_COMPRESSED_BLOCK_SIZE :: GLenum
gl_TEXTURE_COMPRESSED_BLOCK_SIZE = 33459
 
gl_TEXTURE_COMPRESSED_BLOCK_HEIGHT :: GLenum
gl_TEXTURE_COMPRESSED_BLOCK_HEIGHT = 33458
 
gl_TEXTURE_BUFFER_SIZE :: GLenum
gl_TEXTURE_BUFFER_SIZE = 37278
 
gl_TEXTURE_BUFFER_OFFSET_ALIGNMENT :: GLenum
gl_TEXTURE_BUFFER_OFFSET_ALIGNMENT = 37279
 
gl_TEXTURE_BUFFER_OFFSET :: GLenum
gl_TEXTURE_BUFFER_OFFSET = 37277
 
gl_TESS_EVALUATION_TEXTURE :: GLenum
gl_TESS_EVALUATION_TEXTURE = 33437
 
gl_TESS_EVALUATION_SUBROUTINE_UNIFORM :: GLenum
gl_TESS_EVALUATION_SUBROUTINE_UNIFORM = 37616
 
gl_TESS_EVALUATION_SUBROUTINE :: GLenum
gl_TESS_EVALUATION_SUBROUTINE = 37610
 
gl_TESS_CONTROL_TEXTURE :: GLenum
gl_TESS_CONTROL_TEXTURE = 33436
 
gl_TESS_CONTROL_SUBROUTINE_UNIFORM :: GLenum
gl_TESS_CONTROL_SUBROUTINE_UNIFORM = 37615
 
gl_TESS_CONTROL_SUBROUTINE :: GLenum
gl_TESS_CONTROL_SUBROUTINE = 37609
 
gl_STENCIL_RENDERABLE :: GLenum
gl_STENCIL_RENDERABLE = 33416
 
gl_STENCIL_COMPONENTS :: GLenum
gl_STENCIL_COMPONENTS = 33413
 
gl_SRGB_WRITE :: GLenum
gl_SRGB_WRITE = 33432
 
gl_SRGB_READ :: GLenum
gl_SRGB_READ = 33431
 
gl_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE :: GLenum
gl_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = 33455
 
gl_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST :: GLenum
gl_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST = 33453
 
gl_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE :: GLenum
gl_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE = 33454
 
gl_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST :: GLenum
gl_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST = 33452
 
gl_SHADER_STORAGE_BUFFER_START :: GLenum
gl_SHADER_STORAGE_BUFFER_START = 37076
 
gl_SHADER_STORAGE_BUFFER_SIZE :: GLenum
gl_SHADER_STORAGE_BUFFER_SIZE = 37077
 
gl_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT :: GLenum
gl_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = 37087
 
gl_SHADER_STORAGE_BUFFER_BINDING :: GLenum
gl_SHADER_STORAGE_BUFFER_BINDING = 37075
 
gl_SHADER_STORAGE_BUFFER :: GLenum
gl_SHADER_STORAGE_BUFFER = 37074
 
gl_SHADER_STORAGE_BLOCK :: GLenum
gl_SHADER_STORAGE_BLOCK = 37606
 
gl_SHADER_STORAGE_BARRIER_BIT :: GLbitfield
gl_SHADER_STORAGE_BARRIER_BIT = 8192
 
gl_SHADER_IMAGE_STORE :: GLenum
gl_SHADER_IMAGE_STORE = 33445
 
gl_SHADER_IMAGE_LOAD :: GLenum
gl_SHADER_IMAGE_LOAD = 33444
 
gl_SHADER_IMAGE_ATOMIC :: GLenum
gl_SHADER_IMAGE_ATOMIC = 33446
 
gl_SHADER :: GLenum
gl_SHADER = 33505
 
gl_SAMPLER :: GLenum
gl_SAMPLER = 33510
 
gl_REFERENCED_BY_VERTEX_SHADER :: GLenum
gl_REFERENCED_BY_VERTEX_SHADER = 37638
 
gl_REFERENCED_BY_TESS_EVALUATION_SHADER :: GLenum
gl_REFERENCED_BY_TESS_EVALUATION_SHADER = 37640
 
gl_REFERENCED_BY_TESS_CONTROL_SHADER :: GLenum
gl_REFERENCED_BY_TESS_CONTROL_SHADER = 37639
 
gl_REFERENCED_BY_GEOMETRY_SHADER :: GLenum
gl_REFERENCED_BY_GEOMETRY_SHADER = 37641
 
gl_REFERENCED_BY_FRAGMENT_SHADER :: GLenum
gl_REFERENCED_BY_FRAGMENT_SHADER = 37642
 
gl_REFERENCED_BY_COMPUTE_SHADER :: GLenum
gl_REFERENCED_BY_COMPUTE_SHADER = 37643
 
gl_READ_PIXELS_TYPE :: GLenum
gl_READ_PIXELS_TYPE = 33422
 
gl_READ_PIXELS_FORMAT :: GLenum
gl_READ_PIXELS_FORMAT = 33421
 
gl_READ_PIXELS :: GLenum
gl_READ_PIXELS = 33420
 
gl_QUERY :: GLenum
gl_QUERY = 33507
 
gl_PROGRAM_PIPELINE :: GLenum
gl_PROGRAM_PIPELINE = 33508
 
gl_PROGRAM_OUTPUT :: GLenum
gl_PROGRAM_OUTPUT = 37604
 
gl_PROGRAM_INPUT :: GLenum
gl_PROGRAM_INPUT = 37603
 
gl_PROGRAM :: GLenum
gl_PROGRAM = 33506
 
gl_PRIMITIVE_RESTART_FIXED_INDEX :: GLenum
gl_PRIMITIVE_RESTART_FIXED_INDEX = 36201
 
gl_OFFSET :: GLenum
gl_OFFSET = 37628
 
gl_NUM_SHADING_LANGUAGE_VERSIONS :: GLenum
gl_NUM_SHADING_LANGUAGE_VERSIONS = 33513
 
gl_NUM_ACTIVE_VARIABLES :: GLenum
gl_NUM_ACTIVE_VARIABLES = 37636
 
gl_NAME_LENGTH :: GLenum
gl_NAME_LENGTH = 37625
 
gl_MIPMAP :: GLenum
gl_MIPMAP = 33427
 
gl_MAX_WIDTH :: GLenum
gl_MAX_WIDTH = 33406
 
gl_MAX_VERTEX_SHADER_STORAGE_BLOCKS :: GLenum
gl_MAX_VERTEX_SHADER_STORAGE_BLOCKS = 37078
 
gl_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET :: GLenum
gl_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = 33497
 
gl_MAX_VERTEX_ATTRIB_BINDINGS :: GLenum
gl_MAX_VERTEX_ATTRIB_BINDINGS = 33498
 
gl_MAX_UNIFORM_LOCATIONS :: GLenum
gl_MAX_UNIFORM_LOCATIONS = 33390
 
gl_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS :: GLenum
gl_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = 37081
 
gl_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS :: GLenum
gl_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = 37080
 
gl_MAX_SHADER_STORAGE_BUFFER_BINDINGS :: GLenum
gl_MAX_SHADER_STORAGE_BUFFER_BINDINGS = 37085
 
gl_MAX_SHADER_STORAGE_BLOCK_SIZE :: GLenum
gl_MAX_SHADER_STORAGE_BLOCK_SIZE = 37086
 
gl_MAX_NUM_COMPATIBLE_SUBROUTINES :: GLenum
gl_MAX_NUM_COMPATIBLE_SUBROUTINES = 37624
 
gl_MAX_NUM_ACTIVE_VARIABLES :: GLenum
gl_MAX_NUM_ACTIVE_VARIABLES = 37623
 
gl_MAX_NAME_LENGTH :: GLenum
gl_MAX_NAME_LENGTH = 37622
 
gl_MAX_LAYERS :: GLenum
gl_MAX_LAYERS = 33409
 
gl_MAX_LABEL_LENGTH :: GLenum
gl_MAX_LABEL_LENGTH = 33512
 
gl_MAX_HEIGHT :: GLenum
gl_MAX_HEIGHT = 33407
 
gl_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS :: GLenum
gl_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = 37079
 
gl_MAX_FRAMEBUFFER_WIDTH :: GLenum
gl_MAX_FRAMEBUFFER_WIDTH = 37653
 
gl_MAX_FRAMEBUFFER_SAMPLES :: GLenum
gl_MAX_FRAMEBUFFER_SAMPLES = 37656
 
gl_MAX_FRAMEBUFFER_LAYERS :: GLenum
gl_MAX_FRAMEBUFFER_LAYERS = 37655
 
gl_MAX_FRAMEBUFFER_HEIGHT :: GLenum
gl_MAX_FRAMEBUFFER_HEIGHT = 37654
 
gl_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS :: GLenum
gl_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = 37082
 
gl_MAX_ELEMENT_INDEX :: GLenum
gl_MAX_ELEMENT_INDEX = 36203
 
gl_MAX_DEPTH :: GLenum
gl_MAX_DEPTH = 33408
 
gl_MAX_DEBUG_MESSAGE_LENGTH :: GLenum
gl_MAX_DEBUG_MESSAGE_LENGTH = 37187
 
gl_MAX_DEBUG_LOGGED_MESSAGES :: GLenum
gl_MAX_DEBUG_LOGGED_MESSAGES = 37188
 
gl_MAX_DEBUG_GROUP_STACK_DEPTH :: GLenum
gl_MAX_DEBUG_GROUP_STACK_DEPTH = 33388
 
gl_MAX_COMPUTE_WORK_GROUP_SIZE :: GLenum
gl_MAX_COMPUTE_WORK_GROUP_SIZE = 37311
 
gl_MAX_COMPUTE_WORK_GROUP_COUNT :: GLenum
gl_MAX_COMPUTE_WORK_GROUP_COUNT = 37310
 
gl_MAX_COMPUTE_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMPUTE_UNIFORM_COMPONENTS = 33379
 
gl_MAX_COMPUTE_UNIFORM_BLOCKS :: GLenum
gl_MAX_COMPUTE_UNIFORM_BLOCKS = 37307
 
gl_MAX_COMPUTE_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = 37308
 
gl_MAX_COMPUTE_SHARED_MEMORY_SIZE :: GLenum
gl_MAX_COMPUTE_SHARED_MEMORY_SIZE = 33378
 
gl_MAX_COMPUTE_SHADER_STORAGE_BLOCKS :: GLenum
gl_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = 37083
 
gl_MAX_COMPUTE_LOCAL_INVOCATIONS :: GLenum
gl_MAX_COMPUTE_LOCAL_INVOCATIONS = 37099
 
gl_MAX_COMPUTE_IMAGE_UNIFORMS :: GLenum
gl_MAX_COMPUTE_IMAGE_UNIFORMS = 37309
 
gl_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = 33380
 
gl_MAX_COMPUTE_ATOMIC_COUNTERS :: GLenum
gl_MAX_COMPUTE_ATOMIC_COUNTERS = 33381
 
gl_MAX_COMBINED_SHADER_STORAGE_BLOCKS :: GLenum
gl_MAX_COMBINED_SHADER_STORAGE_BLOCKS = 37084
 
gl_MAX_COMBINED_SHADER_OUTPUT_RESOURCES :: GLenum
gl_MAX_COMBINED_SHADER_OUTPUT_RESOURCES
  = gl_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
 
gl_MAX_COMBINED_DIMENSIONS :: GLenum
gl_MAX_COMBINED_DIMENSIONS = 33410
 
gl_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = 33382
 
gl_MATRIX_STRIDE :: GLenum
gl_MATRIX_STRIDE = 37631
 
gl_MANUAL_GENERATE_MIPMAP :: GLenum
gl_MANUAL_GENERATE_MIPMAP = 33428
 
gl_LOCATION_INDEX :: GLenum
gl_LOCATION_INDEX = 37647
 
gl_LOCATION :: GLenum
gl_LOCATION = 37646
 
gl_IS_ROW_MAJOR :: GLenum
gl_IS_ROW_MAJOR = 37632
 
gl_IS_PER_PATCH :: GLenum
gl_IS_PER_PATCH = 37607
 
gl_INTERNALFORMAT_SUPPORTED :: GLenum
gl_INTERNALFORMAT_SUPPORTED = 33391
 
gl_INTERNALFORMAT_STENCIL_TYPE :: GLenum
gl_INTERNALFORMAT_STENCIL_TYPE = 33405
 
gl_INTERNALFORMAT_STENCIL_SIZE :: GLenum
gl_INTERNALFORMAT_STENCIL_SIZE = 33398
 
gl_INTERNALFORMAT_SHARED_SIZE :: GLenum
gl_INTERNALFORMAT_SHARED_SIZE = 33399
 
gl_INTERNALFORMAT_RED_TYPE :: GLenum
gl_INTERNALFORMAT_RED_TYPE = 33400
 
gl_INTERNALFORMAT_RED_SIZE :: GLenum
gl_INTERNALFORMAT_RED_SIZE = 33393
 
gl_INTERNALFORMAT_PREFERRED :: GLenum
gl_INTERNALFORMAT_PREFERRED = 33392
 
gl_INTERNALFORMAT_GREEN_TYPE :: GLenum
gl_INTERNALFORMAT_GREEN_TYPE = 33401
 
gl_INTERNALFORMAT_GREEN_SIZE :: GLenum
gl_INTERNALFORMAT_GREEN_SIZE = 33394
 
gl_INTERNALFORMAT_DEPTH_TYPE :: GLenum
gl_INTERNALFORMAT_DEPTH_TYPE = 33404
 
gl_INTERNALFORMAT_DEPTH_SIZE :: GLenum
gl_INTERNALFORMAT_DEPTH_SIZE = 33397
 
gl_INTERNALFORMAT_BLUE_TYPE :: GLenum
gl_INTERNALFORMAT_BLUE_TYPE = 33402
 
gl_INTERNALFORMAT_BLUE_SIZE :: GLenum
gl_INTERNALFORMAT_BLUE_SIZE = 33395
 
gl_INTERNALFORMAT_ALPHA_TYPE :: GLenum
gl_INTERNALFORMAT_ALPHA_TYPE = 33403
 
gl_INTERNALFORMAT_ALPHA_SIZE :: GLenum
gl_INTERNALFORMAT_ALPHA_SIZE = 33396
 
gl_IMAGE_TEXEL_SIZE :: GLenum
gl_IMAGE_TEXEL_SIZE = 33447
 
gl_IMAGE_PIXEL_TYPE :: GLenum
gl_IMAGE_PIXEL_TYPE = 33450
 
gl_IMAGE_PIXEL_FORMAT :: GLenum
gl_IMAGE_PIXEL_FORMAT = 33449
 
gl_IMAGE_COMPATIBILITY_CLASS :: GLenum
gl_IMAGE_COMPATIBILITY_CLASS = 33448
 
gl_IMAGE_CLASS_4_X_8 :: GLenum
gl_IMAGE_CLASS_4_X_8 = 33471
 
gl_IMAGE_CLASS_4_X_32 :: GLenum
gl_IMAGE_CLASS_4_X_32 = 33465
 
gl_IMAGE_CLASS_4_X_16 :: GLenum
gl_IMAGE_CLASS_4_X_16 = 33468
 
gl_IMAGE_CLASS_2_X_8 :: GLenum
gl_IMAGE_CLASS_2_X_8 = 33472
 
gl_IMAGE_CLASS_2_X_32 :: GLenum
gl_IMAGE_CLASS_2_X_32 = 33466
 
gl_IMAGE_CLASS_2_X_16 :: GLenum
gl_IMAGE_CLASS_2_X_16 = 33469
 
gl_IMAGE_CLASS_1_X_8 :: GLenum
gl_IMAGE_CLASS_1_X_8 = 33473
 
gl_IMAGE_CLASS_1_X_32 :: GLenum
gl_IMAGE_CLASS_1_X_32 = 33467
 
gl_IMAGE_CLASS_1_X_16 :: GLenum
gl_IMAGE_CLASS_1_X_16 = 33470
 
gl_IMAGE_CLASS_11_11_10 :: GLenum
gl_IMAGE_CLASS_11_11_10 = 33474
 
gl_IMAGE_CLASS_10_10_10_2 :: GLenum
gl_IMAGE_CLASS_10_10_10_2 = 33475
 
gl_GET_TEXTURE_IMAGE_TYPE :: GLenum
gl_GET_TEXTURE_IMAGE_TYPE = 33426
 
gl_GET_TEXTURE_IMAGE_FORMAT :: GLenum
gl_GET_TEXTURE_IMAGE_FORMAT = 33425
 
gl_GEOMETRY_TEXTURE :: GLenum
gl_GEOMETRY_TEXTURE = 33438
 
gl_GEOMETRY_SUBROUTINE_UNIFORM :: GLenum
gl_GEOMETRY_SUBROUTINE_UNIFORM = 37617
 
gl_GEOMETRY_SUBROUTINE :: GLenum
gl_GEOMETRY_SUBROUTINE = 37611
 
gl_FULL_SUPPORT :: GLenum
gl_FULL_SUPPORT = 33463
 
gl_FRAMEBUFFER_RENDERABLE_LAYERED :: GLenum
gl_FRAMEBUFFER_RENDERABLE_LAYERED = 33418
 
gl_FRAMEBUFFER_RENDERABLE :: GLenum
gl_FRAMEBUFFER_RENDERABLE = 33417
 
gl_FRAMEBUFFER_DEFAULT_WIDTH :: GLenum
gl_FRAMEBUFFER_DEFAULT_WIDTH = 37648
 
gl_FRAMEBUFFER_DEFAULT_SAMPLES :: GLenum
gl_FRAMEBUFFER_DEFAULT_SAMPLES = 37651
 
gl_FRAMEBUFFER_DEFAULT_LAYERS :: GLenum
gl_FRAMEBUFFER_DEFAULT_LAYERS = 37650
 
gl_FRAMEBUFFER_DEFAULT_HEIGHT :: GLenum
gl_FRAMEBUFFER_DEFAULT_HEIGHT = 37649
 
gl_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS :: GLenum
gl_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = 37652
 
gl_FRAMEBUFFER_BLEND :: GLenum
gl_FRAMEBUFFER_BLEND = 33419
 
gl_FRAGMENT_TEXTURE :: GLenum
gl_FRAGMENT_TEXTURE = 33439
 
gl_FRAGMENT_SUBROUTINE_UNIFORM :: GLenum
gl_FRAGMENT_SUBROUTINE_UNIFORM = 37618
 
gl_FRAGMENT_SUBROUTINE :: GLenum
gl_FRAGMENT_SUBROUTINE = 37612
 
gl_FILTER :: GLenum
gl_FILTER = 33434
 
gl_DISPLAY_LIST :: GLenum
gl_DISPLAY_LIST = 33511
 
gl_DISPATCH_INDIRECT_BUFFER_BINDING :: GLenum
gl_DISPATCH_INDIRECT_BUFFER_BINDING = 37103
 
gl_DISPATCH_INDIRECT_BUFFER :: GLenum
gl_DISPATCH_INDIRECT_BUFFER = 37102
 
gl_DEPTH_STENCIL_TEXTURE_MODE :: GLenum
gl_DEPTH_STENCIL_TEXTURE_MODE = 37098
 
gl_DEPTH_RENDERABLE :: GLenum
gl_DEPTH_RENDERABLE = 33415
 
gl_DEPTH_COMPONENTS :: GLenum
gl_DEPTH_COMPONENTS = 33412
 
gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR :: GLenum
gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR = 33358
 
gl_DEBUG_TYPE_PUSH_GROUP :: GLenum
gl_DEBUG_TYPE_PUSH_GROUP = 33385
 
gl_DEBUG_TYPE_PORTABILITY :: GLenum
gl_DEBUG_TYPE_PORTABILITY = 33359
 
gl_DEBUG_TYPE_POP_GROUP :: GLenum
gl_DEBUG_TYPE_POP_GROUP = 33386
 
gl_DEBUG_TYPE_PERFORMANCE :: GLenum
gl_DEBUG_TYPE_PERFORMANCE = 33360
 
gl_DEBUG_TYPE_OTHER :: GLenum
gl_DEBUG_TYPE_OTHER = 33361
 
gl_DEBUG_TYPE_MARKER :: GLenum
gl_DEBUG_TYPE_MARKER = 33384
 
gl_DEBUG_TYPE_ERROR :: GLenum
gl_DEBUG_TYPE_ERROR = 33356
 
gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR :: GLenum
gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR = 33357
 
gl_DEBUG_SOURCE_WINDOW_SYSTEM :: GLenum
gl_DEBUG_SOURCE_WINDOW_SYSTEM = 33351
 
gl_DEBUG_SOURCE_THIRD_PARTY :: GLenum
gl_DEBUG_SOURCE_THIRD_PARTY = 33353
 
gl_DEBUG_SOURCE_SHADER_COMPILER :: GLenum
gl_DEBUG_SOURCE_SHADER_COMPILER = 33352
 
gl_DEBUG_SOURCE_OTHER :: GLenum
gl_DEBUG_SOURCE_OTHER = 33355
 
gl_DEBUG_SOURCE_APPLICATION :: GLenum
gl_DEBUG_SOURCE_APPLICATION = 33354
 
gl_DEBUG_SOURCE_API :: GLenum
gl_DEBUG_SOURCE_API = 33350
 
gl_DEBUG_SEVERITY_NOTIFICATION :: GLenum
gl_DEBUG_SEVERITY_NOTIFICATION = 33387
 
gl_DEBUG_SEVERITY_MEDIUM :: GLenum
gl_DEBUG_SEVERITY_MEDIUM = 37191
 
gl_DEBUG_SEVERITY_LOW :: GLenum
gl_DEBUG_SEVERITY_LOW = 37192
 
gl_DEBUG_SEVERITY_HIGH :: GLenum
gl_DEBUG_SEVERITY_HIGH = 37190
 
gl_DEBUG_OUTPUT_SYNCHRONOUS :: GLenum
gl_DEBUG_OUTPUT_SYNCHRONOUS = 33346
 
gl_DEBUG_OUTPUT :: GLenum
gl_DEBUG_OUTPUT = 37600
 
gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH :: GLenum
gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH = 33347
 
gl_DEBUG_LOGGED_MESSAGES :: GLenum
gl_DEBUG_LOGGED_MESSAGES = 37189
 
gl_DEBUG_GROUP_STACK_DEPTH :: GLenum
gl_DEBUG_GROUP_STACK_DEPTH = 33389
 
gl_DEBUG_CALLBACK_USER_PARAM :: GLenum
gl_DEBUG_CALLBACK_USER_PARAM = 33349
 
gl_DEBUG_CALLBACK_FUNCTION :: GLenum
gl_DEBUG_CALLBACK_FUNCTION = 33348
 
gl_CONTEXT_FLAG_DEBUG_BIT :: GLbitfield
gl_CONTEXT_FLAG_DEBUG_BIT = 2
 
gl_COMPUTE_TEXTURE :: GLenum
gl_COMPUTE_TEXTURE = 33440
 
gl_COMPUTE_SUBROUTINE_UNIFORM :: GLenum
gl_COMPUTE_SUBROUTINE_UNIFORM = 37619
 
gl_COMPUTE_SUBROUTINE :: GLenum
gl_COMPUTE_SUBROUTINE = 37613
 
gl_COMPUTE_SHADER :: GLenum
gl_COMPUTE_SHADER = 37305
 
gl_COMPUTE_LOCAL_WORK_SIZE :: GLenum
gl_COMPUTE_LOCAL_WORK_SIZE = 33383
 
gl_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 :: GLenum
gl_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 37495
 
gl_COMPRESSED_SRGB8_ETC2 :: GLenum
gl_COMPRESSED_SRGB8_ETC2 = 37493
 
gl_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 37497
 
gl_COMPRESSED_SIGNED_RG11_EAC :: GLenum
gl_COMPRESSED_SIGNED_RG11_EAC = 37491
 
gl_COMPRESSED_SIGNED_R11_EAC :: GLenum
gl_COMPRESSED_SIGNED_R11_EAC = 37489
 
gl_COMPRESSED_RGBA8_ETC2_EAC :: GLenum
gl_COMPRESSED_RGBA8_ETC2_EAC = 37496
 
gl_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 :: GLenum
gl_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 37494
 
gl_COMPRESSED_RGB8_ETC2 :: GLenum
gl_COMPRESSED_RGB8_ETC2 = 37492
 
gl_COMPRESSED_RG11_EAC :: GLenum
gl_COMPRESSED_RG11_EAC = 37490
 
gl_COMPRESSED_R11_EAC :: GLenum
gl_COMPRESSED_R11_EAC = 37488
 
gl_COLOR_RENDERABLE :: GLenum
gl_COLOR_RENDERABLE = 33414
 
gl_COLOR_ENCODING :: GLenum
gl_COLOR_ENCODING = 33430
 
gl_COLOR_COMPONENTS :: GLenum
gl_COLOR_COMPONENTS = 33411
 
gl_CLEAR_BUFFER :: GLenum
gl_CLEAR_BUFFER = 33460
 
gl_CAVEAT_SUPPORT :: GLenum
gl_CAVEAT_SUPPORT = 33464
 
gl_BUFFER_VARIABLE :: GLenum
gl_BUFFER_VARIABLE = 37605
 
gl_BUFFER_DATA_SIZE :: GLenum
gl_BUFFER_DATA_SIZE = 37635
 
gl_BUFFER_BINDING :: GLenum
gl_BUFFER_BINDING = 37634
 
gl_BUFFER :: GLenum
gl_BUFFER = 33504
 
gl_BLOCK_INDEX :: GLenum
gl_BLOCK_INDEX = 37629
 
gl_AUTO_GENERATE_MIPMAP :: GLenum
gl_AUTO_GENERATE_MIPMAP = 33429
 
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = 37101
 
gl_ATOMIC_COUNTER_BUFFER_INDEX :: GLenum
gl_ATOMIC_COUNTER_BUFFER_INDEX = 37633
 
gl_ARRAY_STRIDE :: GLenum
gl_ARRAY_STRIDE = 37630
 
gl_ARRAY_SIZE :: GLenum
gl_ARRAY_SIZE = 37627
 
gl_ANY_SAMPLES_PASSED_CONSERVATIVE :: GLenum
gl_ANY_SAMPLES_PASSED_CONSERVATIVE = 36202
 
gl_ACTIVE_VARIABLES :: GLenum
gl_ACTIVE_VARIABLES = 37637
 
gl_ACTIVE_RESOURCES :: GLenum
gl_ACTIVE_RESOURCES = 37621