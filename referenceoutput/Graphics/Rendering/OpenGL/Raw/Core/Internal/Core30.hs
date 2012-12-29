{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core30
       (glGetStringi, glClearBufferfi, glClearBufferfv, glClearBufferuiv,
        glClearBufferiv, glGetTexParameterIuiv, glGetTexParameterIiv,
        glTexParameterIuiv, glTexParameterIiv, glUniform4uiv,
        glUniform3uiv, glUniform2uiv, glUniform1uiv, glUniform4ui,
        glUniform3ui, glUniform2ui, glUniform1ui, glGetFragDataLocation,
        glBindFragDataLocation, glGetUniformuiv, glVertexAttribI4usv,
        glVertexAttribI4ubv, glVertexAttribI4sv, glVertexAttribI4bv,
        glVertexAttribI4uiv, glVertexAttribI3uiv, glVertexAttribI2uiv,
        glVertexAttribI1uiv, glVertexAttribI4iv, glVertexAttribI3iv,
        glVertexAttribI2iv, glVertexAttribI1iv, glVertexAttribI4ui,
        glVertexAttribI3ui, glVertexAttribI2ui, glVertexAttribI1ui,
        glVertexAttribI4i, glVertexAttribI3i, glVertexAttribI2i,
        glVertexAttribI1i, glGetVertexAttribIuiv, glGetVertexAttribIiv,
        glVertexAttribIPointer, glEndConditionalRender,
        glBeginConditionalRender, glClampColor,
        glGetTransformFeedbackVarying, glTransformFeedbackVaryings,
        glBindBufferBase, glBindBufferRange, glEndTransformFeedback,
        glBeginTransformFeedback, glIsEnabledi, glDisablei, glEnablei,
        glGetIntegeri_v, glGetBooleani_v, glColorMaski, glIsVertexArray,
        glGenVertexArrays, glDeleteVertexArrays, glBindVertexArray,
        glFlushMappedBufferRange, glMapBufferRange,
        glFramebufferTextureLayer, glRenderbufferStorageMultisample,
        glBlitFramebuffer, glGenerateMipmap,
        glGetFramebufferAttachmentParameteriv, glFramebufferRenderbuffer,
        glFramebufferTexture3D, glFramebufferTexture2D,
        glFramebufferTexture1D, glCheckFramebufferStatus,
        glGenFramebuffers, glDeleteFramebuffers, glBindFramebuffer,
        glIsFramebuffer, glGetRenderbufferParameteriv,
        glRenderbufferStorage, glGenRenderbuffers, glDeleteRenderbuffers,
        glBindRenderbuffer, glIsRenderbuffer, gl_VERTEX_ARRAY_BINDING,
        gl_RG32UI, gl_RG32I, gl_RG16UI, gl_RG16I, gl_RG8UI, gl_RG8I,
        gl_R32UI, gl_R32I, gl_R16UI, gl_R16I, gl_R8UI, gl_R8I, gl_RG32F,
        gl_RG16F, gl_R32F, gl_R16F, gl_RG16, gl_RG8, gl_R16, gl_R8,
        gl_RG_INTEGER, gl_RG, gl_COMPRESSED_SIGNED_RG_RGTC2,
        gl_COMPRESSED_RG_RGTC2, gl_COMPRESSED_SIGNED_RED_RGTC1,
        gl_COMPRESSED_RED_RGTC1, gl_MAP_UNSYNCHRONIZED_BIT,
        gl_MAP_FLUSH_EXPLICIT_BIT, gl_MAP_INVALIDATE_BUFFER_BIT,
        gl_MAP_INVALIDATE_RANGE_BIT, gl_MAP_WRITE_BIT, gl_MAP_READ_BIT,
        gl_HALF_FLOAT, gl_FRAMEBUFFER_SRGB, gl_MAX_SAMPLES,
        gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE,
        gl_RENDERBUFFER_STENCIL_SIZE, gl_RENDERBUFFER_DEPTH_SIZE,
        gl_RENDERBUFFER_ALPHA_SIZE, gl_RENDERBUFFER_BLUE_SIZE,
        gl_RENDERBUFFER_GREEN_SIZE, gl_RENDERBUFFER_RED_SIZE,
        gl_STENCIL_INDEX16, gl_STENCIL_INDEX8, gl_STENCIL_INDEX4,
        gl_STENCIL_INDEX1, gl_RENDERBUFFER_INTERNAL_FORMAT,
        gl_RENDERBUFFER_HEIGHT, gl_RENDERBUFFER_WIDTH, gl_RENDERBUFFER,
        gl_FRAMEBUFFER, gl_STENCIL_ATTACHMENT, gl_DEPTH_ATTACHMENT,
        gl_COLOR_ATTACHMENT15, gl_COLOR_ATTACHMENT14,
        gl_COLOR_ATTACHMENT13, gl_COLOR_ATTACHMENT12,
        gl_COLOR_ATTACHMENT11, gl_COLOR_ATTACHMENT10, gl_COLOR_ATTACHMENT9,
        gl_COLOR_ATTACHMENT8, gl_COLOR_ATTACHMENT7, gl_COLOR_ATTACHMENT6,
        gl_COLOR_ATTACHMENT5, gl_COLOR_ATTACHMENT4, gl_COLOR_ATTACHMENT3,
        gl_COLOR_ATTACHMENT2, gl_COLOR_ATTACHMENT1, gl_COLOR_ATTACHMENT0,
        gl_MAX_COLOR_ATTACHMENTS, gl_FRAMEBUFFER_UNSUPPORTED,
        gl_FRAMEBUFFER_INCOMPLETE_READ_BUFFER,
        gl_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER,
        gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT,
        gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT, gl_FRAMEBUFFER_COMPLETE,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL,
        gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME,
        gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE, gl_RENDERBUFFER_SAMPLES,
        gl_READ_FRAMEBUFFER_BINDING, gl_DRAW_FRAMEBUFFER,
        gl_READ_FRAMEBUFFER, gl_RENDERBUFFER_BINDING,
        gl_DRAW_FRAMEBUFFER_BINDING, gl_FRAMEBUFFER_BINDING,
        gl_UNSIGNED_NORMALIZED, gl_TEXTURE_DEPTH_TYPE,
        gl_TEXTURE_ALPHA_TYPE, gl_TEXTURE_BLUE_TYPE, gl_TEXTURE_GREEN_TYPE,
        gl_TEXTURE_RED_TYPE, gl_TEXTURE_STENCIL_SIZE, gl_DEPTH24_STENCIL8,
        gl_UNSIGNED_INT_24_8, gl_DEPTH_STENCIL, gl_MAX_RENDERBUFFER_SIZE,
        gl_INDEX, gl_DEPTH_STENCIL_ATTACHMENT, gl_FRAMEBUFFER_UNDEFINED,
        gl_FRAMEBUFFER_DEFAULT, gl_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE,
        gl_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE,
        gl_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE,
        gl_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE,
        gl_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE,
        gl_FRAMEBUFFER_ATTACHMENT_RED_SIZE,
        gl_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE,
        gl_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING,
        gl_INVALID_FRAMEBUFFER_OPERATION,
        gl_FLOAT_32_UNSIGNED_INT_24_8_REV, gl_DEPTH32F_STENCIL8,
        gl_DEPTH_COMPONENT32F, gl_BUFFER_MAP_OFFSET, gl_BUFFER_MAP_LENGTH,
        gl_BUFFER_ACCESS_FLAGS, gl_QUERY_BY_REGION_NO_WAIT,
        gl_QUERY_BY_REGION_WAIT, gl_QUERY_NO_WAIT, gl_QUERY_WAIT,
        gl_UNSIGNED_INT_SAMPLER_2D_ARRAY, gl_UNSIGNED_INT_SAMPLER_1D_ARRAY,
        gl_UNSIGNED_INT_SAMPLER_CUBE, gl_UNSIGNED_INT_SAMPLER_3D,
        gl_UNSIGNED_INT_SAMPLER_2D, gl_UNSIGNED_INT_SAMPLER_1D,
        gl_INT_SAMPLER_2D_ARRAY, gl_INT_SAMPLER_1D_ARRAY,
        gl_INT_SAMPLER_CUBE, gl_INT_SAMPLER_3D, gl_INT_SAMPLER_2D,
        gl_INT_SAMPLER_1D, gl_UNSIGNED_INT_VEC4, gl_UNSIGNED_INT_VEC3,
        gl_UNSIGNED_INT_VEC2, gl_SAMPLER_CUBE_SHADOW,
        gl_SAMPLER_2D_ARRAY_SHADOW, gl_SAMPLER_1D_ARRAY_SHADOW,
        gl_SAMPLER_2D_ARRAY, gl_SAMPLER_1D_ARRAY, gl_BGRA_INTEGER,
        gl_BGR_INTEGER, gl_RGBA_INTEGER, gl_RGB_INTEGER, gl_BLUE_INTEGER,
        gl_GREEN_INTEGER, gl_RED_INTEGER, gl_RGB8I, gl_RGBA8I, gl_RGB16I,
        gl_RGBA16I, gl_RGB32I, gl_RGBA32I, gl_RGB8UI, gl_RGBA8UI,
        gl_RGB16UI, gl_RGBA16UI, gl_RGB32UI, gl_RGBA32UI,
        gl_TRANSFORM_FEEDBACK_BUFFER_BINDING, gl_TRANSFORM_FEEDBACK_BUFFER,
        gl_SEPARATE_ATTRIBS, gl_INTERLEAVED_ATTRIBS,
        gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS,
        gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS,
        gl_RASTERIZER_DISCARD, gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN,
        gl_PRIMITIVES_GENERATED, gl_TRANSFORM_FEEDBACK_BUFFER_SIZE,
        gl_TRANSFORM_FEEDBACK_BUFFER_START, gl_TRANSFORM_FEEDBACK_VARYINGS,
        gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS,
        gl_TRANSFORM_FEEDBACK_BUFFER_MODE,
        gl_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH, gl_TEXTURE_SHARED_SIZE,
        gl_UNSIGNED_INT_5_9_9_9_REV, gl_RGB9_E5,
        gl_UNSIGNED_INT_10F_11F_11F_REV, gl_R11F_G11F_B10F,
        gl_TEXTURE_BINDING_2D_ARRAY, gl_TEXTURE_BINDING_1D_ARRAY,
        gl_PROXY_TEXTURE_2D_ARRAY, gl_TEXTURE_2D_ARRAY,
        gl_PROXY_TEXTURE_1D_ARRAY, gl_TEXTURE_1D_ARRAY,
        gl_MAX_VARYING_COMPONENTS, gl_FIXED_ONLY, gl_CLAMP_READ_COLOR,
        gl_MAX_PROGRAM_TEXEL_OFFSET, gl_MIN_PROGRAM_TEXEL_OFFSET,
        gl_MAX_ARRAY_TEXTURE_LAYERS, gl_VERTEX_ATTRIB_ARRAY_INTEGER,
        gl_RGB16F, gl_RGBA16F, gl_RGB32F, gl_RGBA32F,
        gl_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT, gl_COMPRESSED_RG,
        gl_COMPRESSED_RED, gl_CONTEXT_FLAGS, gl_NUM_EXTENSIONS,
        gl_MINOR_VERSION, gl_MAJOR_VERSION, gl_MAX_CLIP_DISTANCES,
        gl_CLIP_DISTANCE7, gl_CLIP_DISTANCE6, gl_CLIP_DISTANCE5,
        gl_CLIP_DISTANCE4, gl_CLIP_DISTANCE3, gl_CLIP_DISTANCE2,
        gl_CLIP_DISTANCE1, gl_CLIP_DISTANCE0, gl_COMPARE_REF_TO_TEXTURE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetStringi #-}
 
ptr_glGetStringi :: FunPtr a
ptr_glGetStringi
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGetStringi"
 
glGetStringi :: GLenum -> GLuint -> IO (Ptr GLchar)
glGetStringi = dyn_glGetStringi ptr_glGetStringi
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetStringi ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO (Ptr GLchar))
 
{-# NOINLINE ptr_glClearBufferfi #-}
 
ptr_glClearBufferfi :: FunPtr a
ptr_glClearBufferfi
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glClearBufferfi"
 
glClearBufferfi :: GLenum -> GLint -> GLfloat -> GLint -> IO ()
glClearBufferfi = dyn_glClearBufferfi ptr_glClearBufferfi
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearBufferfi ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLfloat -> GLint -> IO ())
 
{-# NOINLINE ptr_glClearBufferfv #-}
 
ptr_glClearBufferfv :: FunPtr a
ptr_glClearBufferfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glClearBufferfv"
 
glClearBufferfv :: GLenum -> GLint -> Ptr GLfloat -> IO ()
glClearBufferfv = dyn_glClearBufferfv ptr_glClearBufferfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearBufferfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glClearBufferuiv #-}
 
ptr_glClearBufferuiv :: FunPtr a
ptr_glClearBufferuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glClearBufferuiv"
 
glClearBufferuiv :: GLenum -> GLint -> Ptr GLuint -> IO ()
glClearBufferuiv = dyn_glClearBufferuiv ptr_glClearBufferuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearBufferuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glClearBufferiv #-}
 
ptr_glClearBufferiv :: FunPtr a
ptr_glClearBufferiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glClearBufferiv"
 
glClearBufferiv :: GLenum -> GLint -> Ptr GLint -> IO ()
glClearBufferiv = dyn_glClearBufferiv ptr_glClearBufferiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearBufferiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTexParameterIuiv #-}
 
ptr_glGetTexParameterIuiv :: FunPtr a
ptr_glGetTexParameterIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGetTexParameterIuiv"
 
glGetTexParameterIuiv :: GLenum -> GLenum -> Ptr GLuint -> IO ()
glGetTexParameterIuiv
  = dyn_glGetTexParameterIuiv ptr_glGetTexParameterIuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexParameterIuiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetTexParameterIiv #-}
 
ptr_glGetTexParameterIiv :: FunPtr a
ptr_glGetTexParameterIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGetTexParameterIiv"
 
glGetTexParameterIiv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetTexParameterIiv
  = dyn_glGetTexParameterIiv ptr_glGetTexParameterIiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexParameterIiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTexParameterIuiv #-}
 
ptr_glTexParameterIuiv :: FunPtr a
ptr_glTexParameterIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glTexParameterIuiv"
 
glTexParameterIuiv :: GLenum -> GLenum -> Ptr GLuint -> IO ()
glTexParameterIuiv = dyn_glTexParameterIuiv ptr_glTexParameterIuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexParameterIuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glTexParameterIiv #-}
 
ptr_glTexParameterIiv :: FunPtr a
ptr_glTexParameterIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glTexParameterIiv"
 
glTexParameterIiv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glTexParameterIiv = dyn_glTexParameterIiv ptr_glTexParameterIiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexParameterIiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glUniform4uiv #-}
 
ptr_glUniform4uiv :: FunPtr a
ptr_glUniform4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glUniform4uiv"
 
glUniform4uiv :: GLint -> GLsizei -> Ptr GLuint -> IO ()
glUniform4uiv = dyn_glUniform4uiv ptr_glUniform4uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform3uiv #-}
 
ptr_glUniform3uiv :: FunPtr a
ptr_glUniform3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glUniform3uiv"
 
glUniform3uiv :: GLint -> GLsizei -> Ptr GLuint -> IO ()
glUniform3uiv = dyn_glUniform3uiv ptr_glUniform3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform2uiv #-}
 
ptr_glUniform2uiv :: FunPtr a
ptr_glUniform2uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glUniform2uiv"
 
glUniform2uiv :: GLint -> GLsizei -> Ptr GLuint -> IO ()
glUniform2uiv = dyn_glUniform2uiv ptr_glUniform2uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform1uiv #-}
 
ptr_glUniform1uiv :: FunPtr a
ptr_glUniform1uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glUniform1uiv"
 
glUniform1uiv :: GLint -> GLsizei -> Ptr GLuint -> IO ()
glUniform1uiv = dyn_glUniform1uiv ptr_glUniform1uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform4ui #-}
 
ptr_glUniform4ui :: FunPtr a
ptr_glUniform4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glUniform4ui"
 
glUniform4ui ::
             GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glUniform4ui = dyn_glUniform4ui ptr_glUniform4ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform3ui #-}
 
ptr_glUniform3ui :: FunPtr a
ptr_glUniform3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glUniform3ui"
 
glUniform3ui :: GLint -> GLuint -> GLuint -> GLuint -> IO ()
glUniform3ui = dyn_glUniform3ui ptr_glUniform3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform2ui #-}
 
ptr_glUniform2ui :: FunPtr a
ptr_glUniform2ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glUniform2ui"
 
glUniform2ui :: GLint -> GLuint -> GLuint -> IO ()
glUniform2ui = dyn_glUniform2ui ptr_glUniform2ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform1ui #-}
 
ptr_glUniform1ui :: FunPtr a
ptr_glUniform1ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glUniform1ui"
 
glUniform1ui :: GLint -> GLuint -> IO ()
glUniform1ui = dyn_glUniform1ui ptr_glUniform1ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glGetFragDataLocation #-}
 
ptr_glGetFragDataLocation :: FunPtr a
ptr_glGetFragDataLocation
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGetFragDataLocation"
 
glGetFragDataLocation :: GLuint -> Ptr GLchar -> IO GLint
glGetFragDataLocation
  = dyn_glGetFragDataLocation ptr_glGetFragDataLocation
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetFragDataLocation
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLchar -> IO GLint)
 
{-# NOINLINE ptr_glBindFragDataLocation #-}
 
ptr_glBindFragDataLocation :: FunPtr a
ptr_glBindFragDataLocation
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glBindFragDataLocation"
 
glBindFragDataLocation :: GLuint -> GLuint -> Ptr GLchar -> IO ()
glBindFragDataLocation
  = dyn_glBindFragDataLocation ptr_glBindFragDataLocation
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindFragDataLocation
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetUniformuiv #-}
 
ptr_glGetUniformuiv :: FunPtr a
ptr_glGetUniformuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGetUniformuiv"
 
glGetUniformuiv :: GLuint -> GLint -> Ptr GLuint -> IO ()
glGetUniformuiv = dyn_glGetUniformuiv ptr_glGetUniformuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4usv #-}
 
ptr_glVertexAttribI4usv :: FunPtr a
ptr_glVertexAttribI4usv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI4usv"
 
glVertexAttribI4usv :: GLuint -> Ptr GLushort -> IO ()
glVertexAttribI4usv
  = dyn_glVertexAttribI4usv ptr_glVertexAttribI4usv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4usv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4ubv #-}
 
ptr_glVertexAttribI4ubv :: FunPtr a
ptr_glVertexAttribI4ubv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI4ubv"
 
glVertexAttribI4ubv :: GLuint -> Ptr GLubyte -> IO ()
glVertexAttribI4ubv
  = dyn_glVertexAttribI4ubv ptr_glVertexAttribI4ubv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4ubv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4sv #-}
 
ptr_glVertexAttribI4sv :: FunPtr a
ptr_glVertexAttribI4sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI4sv"
 
glVertexAttribI4sv :: GLuint -> Ptr GLshort -> IO ()
glVertexAttribI4sv = dyn_glVertexAttribI4sv ptr_glVertexAttribI4sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4bv #-}
 
ptr_glVertexAttribI4bv :: FunPtr a
ptr_glVertexAttribI4bv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI4bv"
 
glVertexAttribI4bv :: GLuint -> Ptr GLbyte -> IO ()
glVertexAttribI4bv = dyn_glVertexAttribI4bv ptr_glVertexAttribI4bv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4bv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4uiv #-}
 
ptr_glVertexAttribI4uiv :: FunPtr a
ptr_glVertexAttribI4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI4uiv"
 
glVertexAttribI4uiv :: GLuint -> Ptr GLuint -> IO ()
glVertexAttribI4uiv
  = dyn_glVertexAttribI4uiv ptr_glVertexAttribI4uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI3uiv #-}
 
ptr_glVertexAttribI3uiv :: FunPtr a
ptr_glVertexAttribI3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI3uiv"
 
glVertexAttribI3uiv :: GLuint -> Ptr GLuint -> IO ()
glVertexAttribI3uiv
  = dyn_glVertexAttribI3uiv ptr_glVertexAttribI3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI3uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI2uiv #-}
 
ptr_glVertexAttribI2uiv :: FunPtr a
ptr_glVertexAttribI2uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI2uiv"
 
glVertexAttribI2uiv :: GLuint -> Ptr GLuint -> IO ()
glVertexAttribI2uiv
  = dyn_glVertexAttribI2uiv ptr_glVertexAttribI2uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI2uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI1uiv #-}
 
ptr_glVertexAttribI1uiv :: FunPtr a
ptr_glVertexAttribI1uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI1uiv"
 
glVertexAttribI1uiv :: GLuint -> Ptr GLuint -> IO ()
glVertexAttribI1uiv
  = dyn_glVertexAttribI1uiv ptr_glVertexAttribI1uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI1uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4iv #-}
 
ptr_glVertexAttribI4iv :: FunPtr a
ptr_glVertexAttribI4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI4iv"
 
glVertexAttribI4iv :: GLuint -> Ptr GLint -> IO ()
glVertexAttribI4iv = dyn_glVertexAttribI4iv ptr_glVertexAttribI4iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI3iv #-}
 
ptr_glVertexAttribI3iv :: FunPtr a
ptr_glVertexAttribI3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI3iv"
 
glVertexAttribI3iv :: GLuint -> Ptr GLint -> IO ()
glVertexAttribI3iv = dyn_glVertexAttribI3iv ptr_glVertexAttribI3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI2iv #-}
 
ptr_glVertexAttribI2iv :: FunPtr a
ptr_glVertexAttribI2iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI2iv"
 
glVertexAttribI2iv :: GLuint -> Ptr GLint -> IO ()
glVertexAttribI2iv = dyn_glVertexAttribI2iv ptr_glVertexAttribI2iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI2iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI1iv #-}
 
ptr_glVertexAttribI1iv :: FunPtr a
ptr_glVertexAttribI1iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI1iv"
 
glVertexAttribI1iv :: GLuint -> Ptr GLint -> IO ()
glVertexAttribI1iv = dyn_glVertexAttribI1iv ptr_glVertexAttribI1iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI1iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4ui #-}
 
ptr_glVertexAttribI4ui :: FunPtr a
ptr_glVertexAttribI4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI4ui"
 
glVertexAttribI4ui ::
                   GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glVertexAttribI4ui = dyn_glVertexAttribI4ui ptr_glVertexAttribI4ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI3ui #-}
 
ptr_glVertexAttribI3ui :: FunPtr a
ptr_glVertexAttribI3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI3ui"
 
glVertexAttribI3ui :: GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glVertexAttribI3ui = dyn_glVertexAttribI3ui ptr_glVertexAttribI3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI2ui #-}
 
ptr_glVertexAttribI2ui :: FunPtr a
ptr_glVertexAttribI2ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI2ui"
 
glVertexAttribI2ui :: GLuint -> GLuint -> GLuint -> IO ()
glVertexAttribI2ui = dyn_glVertexAttribI2ui ptr_glVertexAttribI2ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI2ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI1ui #-}
 
ptr_glVertexAttribI1ui :: FunPtr a
ptr_glVertexAttribI1ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI1ui"
 
glVertexAttribI1ui :: GLuint -> GLuint -> IO ()
glVertexAttribI1ui = dyn_glVertexAttribI1ui ptr_glVertexAttribI1ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI1ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4i #-}
 
ptr_glVertexAttribI4i :: FunPtr a
ptr_glVertexAttribI4i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI4i"
 
glVertexAttribI4i ::
                  GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
glVertexAttribI4i = dyn_glVertexAttribI4i ptr_glVertexAttribI4i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI3i #-}
 
ptr_glVertexAttribI3i :: FunPtr a
ptr_glVertexAttribI3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI3i"
 
glVertexAttribI3i :: GLuint -> GLint -> GLint -> GLint -> IO ()
glVertexAttribI3i = dyn_glVertexAttribI3i ptr_glVertexAttribI3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI2i #-}
 
ptr_glVertexAttribI2i :: FunPtr a
ptr_glVertexAttribI2i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI2i"
 
glVertexAttribI2i :: GLuint -> GLint -> GLint -> IO ()
glVertexAttribI2i = dyn_glVertexAttribI2i ptr_glVertexAttribI2i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI2i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI1i #-}
 
ptr_glVertexAttribI1i :: FunPtr a
ptr_glVertexAttribI1i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribI1i"
 
glVertexAttribI1i :: GLuint -> GLint -> IO ()
glVertexAttribI1i = dyn_glVertexAttribI1i ptr_glVertexAttribI1i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI1i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribIuiv #-}
 
ptr_glGetVertexAttribIuiv :: FunPtr a
ptr_glGetVertexAttribIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGetVertexAttribIuiv"
 
glGetVertexAttribIuiv :: GLuint -> GLenum -> Ptr GLuint -> IO ()
glGetVertexAttribIuiv
  = dyn_glGetVertexAttribIuiv ptr_glGetVertexAttribIuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribIuiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribIiv #-}
 
ptr_glGetVertexAttribIiv :: FunPtr a
ptr_glGetVertexAttribIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGetVertexAttribIiv"
 
glGetVertexAttribIiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVertexAttribIiv
  = dyn_glGetVertexAttribIiv ptr_glGetVertexAttribIiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribIiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribIPointer #-}
 
ptr_glVertexAttribIPointer :: FunPtr a
ptr_glVertexAttribIPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glVertexAttribIPointer"
 
glVertexAttribIPointer ::
                       GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glVertexAttribIPointer
  = dyn_glVertexAttribIPointer ptr_glVertexAttribIPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribIPointer
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glEndConditionalRender #-}
 
ptr_glEndConditionalRender :: FunPtr a
ptr_glEndConditionalRender
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glEndConditionalRender"
 
glEndConditionalRender :: IO ()
glEndConditionalRender
  = dyn_glEndConditionalRender ptr_glEndConditionalRender
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndConditionalRender
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glBeginConditionalRender #-}
 
ptr_glBeginConditionalRender :: FunPtr a
ptr_glBeginConditionalRender
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glBeginConditionalRender"
 
glBeginConditionalRender :: GLuint -> GLenum -> IO ()
glBeginConditionalRender
  = dyn_glBeginConditionalRender ptr_glBeginConditionalRender
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBeginConditionalRender ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glClampColor #-}
 
ptr_glClampColor :: FunPtr a
ptr_glClampColor
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glClampColor"
 
glClampColor :: GLenum -> GLenum -> IO ()
glClampColor = dyn_glClampColor ptr_glClampColor
 
foreign import CALLCONV unsafe "dynamic" dyn_glClampColor ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glGetTransformFeedbackVarying #-}
 
ptr_glGetTransformFeedbackVarying :: FunPtr a
ptr_glGetTransformFeedbackVarying
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGetTransformFeedbackVarying"
 
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
 
{-# NOINLINE ptr_glTransformFeedbackVaryings #-}
 
ptr_glTransformFeedbackVaryings :: FunPtr a
ptr_glTransformFeedbackVaryings
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glTransformFeedbackVaryings"
 
glTransformFeedbackVaryings ::
                            GLuint -> GLsizei -> Ptr (Ptr GLchar) -> GLenum -> IO ()
glTransformFeedbackVaryings
  = dyn_glTransformFeedbackVaryings ptr_glTransformFeedbackVaryings
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTransformFeedbackVaryings ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr (Ptr GLchar) -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBindBufferBase #-}
 
ptr_glBindBufferBase :: FunPtr a
ptr_glBindBufferBase
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glBindBufferBase"
 
glBindBufferBase :: GLenum -> GLuint -> GLuint -> IO ()
glBindBufferBase = dyn_glBindBufferBase ptr_glBindBufferBase
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindBufferBase ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glBindBufferRange #-}
 
ptr_glBindBufferRange :: FunPtr a
ptr_glBindBufferRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glBindBufferRange"
 
glBindBufferRange ::
                  GLenum -> GLuint -> GLuint -> GLintptr -> GLsizeiptr -> IO ()
glBindBufferRange = dyn_glBindBufferRange ptr_glBindBufferRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindBufferRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLintptr -> GLsizeiptr -> IO ())
 
{-# NOINLINE ptr_glEndTransformFeedback #-}
 
ptr_glEndTransformFeedback :: FunPtr a
ptr_glEndTransformFeedback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glEndTransformFeedback"
 
glEndTransformFeedback :: IO ()
glEndTransformFeedback
  = dyn_glEndTransformFeedback ptr_glEndTransformFeedback
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndTransformFeedback
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glBeginTransformFeedback #-}
 
ptr_glBeginTransformFeedback :: FunPtr a
ptr_glBeginTransformFeedback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glBeginTransformFeedback"
 
glBeginTransformFeedback :: GLenum -> IO ()
glBeginTransformFeedback
  = dyn_glBeginTransformFeedback ptr_glBeginTransformFeedback
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBeginTransformFeedback ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glIsEnabledi #-}
 
ptr_glIsEnabledi :: FunPtr a
ptr_glIsEnabledi
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glIsEnabledi"
 
glIsEnabledi :: GLenum -> GLuint -> IO GLboolean
glIsEnabledi = dyn_glIsEnabledi ptr_glIsEnabledi
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsEnabledi ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glDisablei #-}
 
ptr_glDisablei :: FunPtr a
ptr_glDisablei
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glDisablei"
 
glDisablei :: GLenum -> GLuint -> IO ()
glDisablei = dyn_glDisablei ptr_glDisablei
 
foreign import CALLCONV unsafe "dynamic" dyn_glDisablei ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glEnablei #-}
 
ptr_glEnablei :: FunPtr a
ptr_glEnablei
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glEnablei"
 
glEnablei :: GLenum -> GLuint -> IO ()
glEnablei = dyn_glEnablei ptr_glEnablei
 
foreign import CALLCONV unsafe "dynamic" dyn_glEnablei ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glGetIntegeri_v #-}
 
ptr_glGetIntegeri_v :: FunPtr a
ptr_glGetIntegeri_v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGetIntegeri_v"
 
glGetIntegeri_v :: GLenum -> GLuint -> Ptr GLint -> IO ()
glGetIntegeri_v = dyn_glGetIntegeri_v ptr_glGetIntegeri_v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetIntegeri_v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetBooleani_v #-}
 
ptr_glGetBooleani_v :: FunPtr a
ptr_glGetBooleani_v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGetBooleani_v"
 
glGetBooleani_v :: GLenum -> GLuint -> Ptr GLboolean -> IO ()
glGetBooleani_v = dyn_glGetBooleani_v ptr_glGetBooleani_v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetBooleani_v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLboolean -> IO ())
 
{-# NOINLINE ptr_glColorMaski #-}
 
ptr_glColorMaski :: FunPtr a
ptr_glColorMaski
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glColorMaski"
 
glColorMaski ::
             GLuint -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ()
glColorMaski = dyn_glColorMaski ptr_glColorMaski
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorMaski ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glIsVertexArray #-}
 
ptr_glIsVertexArray :: FunPtr a
ptr_glIsVertexArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glIsVertexArray"
 
glIsVertexArray :: GLuint -> IO GLboolean
glIsVertexArray = dyn_glIsVertexArray ptr_glIsVertexArray
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsVertexArray ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGenVertexArrays #-}
 
ptr_glGenVertexArrays :: FunPtr a
ptr_glGenVertexArrays
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGenVertexArrays"
 
glGenVertexArrays :: GLsizei -> Ptr GLuint -> IO ()
glGenVertexArrays = dyn_glGenVertexArrays ptr_glGenVertexArrays
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenVertexArrays ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteVertexArrays #-}
 
ptr_glDeleteVertexArrays :: FunPtr a
ptr_glDeleteVertexArrays
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glDeleteVertexArrays"
 
glDeleteVertexArrays :: GLsizei -> Ptr GLuint -> IO ()
glDeleteVertexArrays
  = dyn_glDeleteVertexArrays ptr_glDeleteVertexArrays
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteVertexArrays ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBindVertexArray #-}
 
ptr_glBindVertexArray :: FunPtr a
ptr_glBindVertexArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glBindVertexArray"
 
glBindVertexArray :: GLuint -> IO ()
glBindVertexArray = dyn_glBindVertexArray ptr_glBindVertexArray
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindVertexArray ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glFlushMappedBufferRange #-}
 
ptr_glFlushMappedBufferRange :: FunPtr a
ptr_glFlushMappedBufferRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glFlushMappedBufferRange"
 
glFlushMappedBufferRange ::
                         GLenum -> GLintptr -> GLsizeiptr -> IO ()
glFlushMappedBufferRange
  = dyn_glFlushMappedBufferRange ptr_glFlushMappedBufferRange
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFlushMappedBufferRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLintptr -> GLsizeiptr -> IO ())
 
{-# NOINLINE ptr_glMapBufferRange #-}
 
ptr_glMapBufferRange :: FunPtr a
ptr_glMapBufferRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glMapBufferRange"
 
glMapBufferRange ::
                 GLenum -> GLintptr -> GLsizeiptr -> GLbitfield -> IO (Ptr a)
glMapBufferRange = dyn_glMapBufferRange ptr_glMapBufferRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapBufferRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLintptr -> GLsizeiptr -> GLbitfield -> IO (Ptr a))
 
{-# NOINLINE ptr_glFramebufferTextureLayer #-}
 
ptr_glFramebufferTextureLayer :: FunPtr a
ptr_glFramebufferTextureLayer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glFramebufferTextureLayer"
 
glFramebufferTextureLayer ::
                          GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()
glFramebufferTextureLayer
  = dyn_glFramebufferTextureLayer ptr_glFramebufferTextureLayer
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferTextureLayer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glRenderbufferStorageMultisample #-}
 
ptr_glRenderbufferStorageMultisample :: FunPtr a
ptr_glRenderbufferStorageMultisample
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glRenderbufferStorageMultisample"
 
glRenderbufferStorageMultisample ::
                                 GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()
glRenderbufferStorageMultisample
  = dyn_glRenderbufferStorageMultisample
      ptr_glRenderbufferStorageMultisample
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glRenderbufferStorageMultisample ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glBlitFramebuffer #-}
 
ptr_glBlitFramebuffer :: FunPtr a
ptr_glBlitFramebuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glBlitFramebuffer"
 
glBlitFramebuffer ::
                  GLint ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> IO ()
glBlitFramebuffer = dyn_glBlitFramebuffer ptr_glBlitFramebuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlitFramebuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> IO ())
 
{-# NOINLINE ptr_glGenerateMipmap #-}
 
ptr_glGenerateMipmap :: FunPtr a
ptr_glGenerateMipmap
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGenerateMipmap"
 
glGenerateMipmap :: GLenum -> IO ()
glGenerateMipmap = dyn_glGenerateMipmap ptr_glGenerateMipmap
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenerateMipmap ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glGetFramebufferAttachmentParameteriv #-}
 
ptr_glGetFramebufferAttachmentParameteriv :: FunPtr a
ptr_glGetFramebufferAttachmentParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGetFramebufferAttachmentParameteriv"
 
glGetFramebufferAttachmentParameteriv ::
                                      GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetFramebufferAttachmentParameteriv
  = dyn_glGetFramebufferAttachmentParameteriv
      ptr_glGetFramebufferAttachmentParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetFramebufferAttachmentParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferRenderbuffer #-}
 
ptr_glFramebufferRenderbuffer :: FunPtr a
ptr_glFramebufferRenderbuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glFramebufferRenderbuffer"
 
glFramebufferRenderbuffer ::
                          GLenum -> GLenum -> GLenum -> GLuint -> IO ()
glFramebufferRenderbuffer
  = dyn_glFramebufferRenderbuffer ptr_glFramebufferRenderbuffer
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferRenderbuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glFramebufferTexture3D #-}
 
ptr_glFramebufferTexture3D :: FunPtr a
ptr_glFramebufferTexture3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glFramebufferTexture3D"
 
glFramebufferTexture3D ::
                       GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()
glFramebufferTexture3D
  = dyn_glFramebufferTexture3D ptr_glFramebufferTexture3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glFramebufferTexture3D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferTexture2D #-}
 
ptr_glFramebufferTexture2D :: FunPtr a
ptr_glFramebufferTexture2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glFramebufferTexture2D"
 
glFramebufferTexture2D ::
                       GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO ()
glFramebufferTexture2D
  = dyn_glFramebufferTexture2D ptr_glFramebufferTexture2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glFramebufferTexture2D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferTexture1D #-}
 
ptr_glFramebufferTexture1D :: FunPtr a
ptr_glFramebufferTexture1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glFramebufferTexture1D"
 
glFramebufferTexture1D ::
                       GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO ()
glFramebufferTexture1D
  = dyn_glFramebufferTexture1D ptr_glFramebufferTexture1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glFramebufferTexture1D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glCheckFramebufferStatus #-}
 
ptr_glCheckFramebufferStatus :: FunPtr a
ptr_glCheckFramebufferStatus
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glCheckFramebufferStatus"
 
glCheckFramebufferStatus :: GLenum -> IO GLenum
glCheckFramebufferStatus
  = dyn_glCheckFramebufferStatus ptr_glCheckFramebufferStatus
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCheckFramebufferStatus ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLenum)
 
{-# NOINLINE ptr_glGenFramebuffers #-}
 
ptr_glGenFramebuffers :: FunPtr a
ptr_glGenFramebuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGenFramebuffers"
 
glGenFramebuffers :: GLsizei -> Ptr GLuint -> IO ()
glGenFramebuffers = dyn_glGenFramebuffers ptr_glGenFramebuffers
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenFramebuffers ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteFramebuffers #-}
 
ptr_glDeleteFramebuffers :: FunPtr a
ptr_glDeleteFramebuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glDeleteFramebuffers"
 
glDeleteFramebuffers :: GLsizei -> Ptr GLuint -> IO ()
glDeleteFramebuffers
  = dyn_glDeleteFramebuffers ptr_glDeleteFramebuffers
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteFramebuffers ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBindFramebuffer #-}
 
ptr_glBindFramebuffer :: FunPtr a
ptr_glBindFramebuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glBindFramebuffer"
 
glBindFramebuffer :: GLenum -> GLuint -> IO ()
glBindFramebuffer = dyn_glBindFramebuffer ptr_glBindFramebuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindFramebuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glIsFramebuffer #-}
 
ptr_glIsFramebuffer :: FunPtr a
ptr_glIsFramebuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glIsFramebuffer"
 
glIsFramebuffer :: GLuint -> IO GLboolean
glIsFramebuffer = dyn_glIsFramebuffer ptr_glIsFramebuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsFramebuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetRenderbufferParameteriv #-}
 
ptr_glGetRenderbufferParameteriv :: FunPtr a
ptr_glGetRenderbufferParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGetRenderbufferParameteriv"
 
glGetRenderbufferParameteriv ::
                             GLenum -> GLenum -> Ptr GLint -> IO ()
glGetRenderbufferParameteriv
  = dyn_glGetRenderbufferParameteriv ptr_glGetRenderbufferParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetRenderbufferParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glRenderbufferStorage #-}
 
ptr_glRenderbufferStorage :: FunPtr a
ptr_glRenderbufferStorage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glRenderbufferStorage"
 
glRenderbufferStorage ::
                      GLenum -> GLenum -> GLsizei -> GLsizei -> IO ()
glRenderbufferStorage
  = dyn_glRenderbufferStorage ptr_glRenderbufferStorage
 
foreign import CALLCONV unsafe "dynamic" dyn_glRenderbufferStorage
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glGenRenderbuffers #-}
 
ptr_glGenRenderbuffers :: FunPtr a
ptr_glGenRenderbuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glGenRenderbuffers"
 
glGenRenderbuffers :: GLsizei -> Ptr GLuint -> IO ()
glGenRenderbuffers = dyn_glGenRenderbuffers ptr_glGenRenderbuffers
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenRenderbuffers ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteRenderbuffers #-}
 
ptr_glDeleteRenderbuffers :: FunPtr a
ptr_glDeleteRenderbuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glDeleteRenderbuffers"
 
glDeleteRenderbuffers :: GLsizei -> Ptr GLuint -> IO ()
glDeleteRenderbuffers
  = dyn_glDeleteRenderbuffers ptr_glDeleteRenderbuffers
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteRenderbuffers
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBindRenderbuffer #-}
 
ptr_glBindRenderbuffer :: FunPtr a
ptr_glBindRenderbuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glBindRenderbuffer"
 
glBindRenderbuffer :: GLenum -> GLuint -> IO ()
glBindRenderbuffer = dyn_glBindRenderbuffer ptr_glBindRenderbuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindRenderbuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glIsRenderbuffer #-}
 
ptr_glIsRenderbuffer :: FunPtr a
ptr_glIsRenderbuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_0"
        "glIsRenderbuffer"
 
glIsRenderbuffer :: GLuint -> IO GLboolean
glIsRenderbuffer = dyn_glIsRenderbuffer ptr_glIsRenderbuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsRenderbuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
gl_VERTEX_ARRAY_BINDING :: GLenum
gl_VERTEX_ARRAY_BINDING = 34229
 
gl_RG32UI :: GLenum
gl_RG32UI = 33340
 
gl_RG32I :: GLenum
gl_RG32I = 33339
 
gl_RG16UI :: GLenum
gl_RG16UI = 33338
 
gl_RG16I :: GLenum
gl_RG16I = 33337
 
gl_RG8UI :: GLenum
gl_RG8UI = 33336
 
gl_RG8I :: GLenum
gl_RG8I = 33335
 
gl_R32UI :: GLenum
gl_R32UI = 33334
 
gl_R32I :: GLenum
gl_R32I = 33333
 
gl_R16UI :: GLenum
gl_R16UI = 33332
 
gl_R16I :: GLenum
gl_R16I = 33331
 
gl_R8UI :: GLenum
gl_R8UI = 33330
 
gl_R8I :: GLenum
gl_R8I = 33329
 
gl_RG32F :: GLenum
gl_RG32F = 33328
 
gl_RG16F :: GLenum
gl_RG16F = 33327
 
gl_R32F :: GLenum
gl_R32F = 33326
 
gl_R16F :: GLenum
gl_R16F = 33325
 
gl_RG16 :: GLenum
gl_RG16 = 33324
 
gl_RG8 :: GLenum
gl_RG8 = 33323
 
gl_R16 :: GLenum
gl_R16 = 33322
 
gl_R8 :: GLenum
gl_R8 = 33321
 
gl_RG_INTEGER :: GLenum
gl_RG_INTEGER = 33320
 
gl_RG :: GLenum
gl_RG = 33319
 
gl_COMPRESSED_SIGNED_RG_RGTC2 :: GLenum
gl_COMPRESSED_SIGNED_RG_RGTC2 = 36286
 
gl_COMPRESSED_RG_RGTC2 :: GLenum
gl_COMPRESSED_RG_RGTC2 = 36285
 
gl_COMPRESSED_SIGNED_RED_RGTC1 :: GLenum
gl_COMPRESSED_SIGNED_RED_RGTC1 = 36284
 
gl_COMPRESSED_RED_RGTC1 :: GLenum
gl_COMPRESSED_RED_RGTC1 = 36283
 
gl_MAP_UNSYNCHRONIZED_BIT :: GLbitfield
gl_MAP_UNSYNCHRONIZED_BIT = 32
 
gl_MAP_FLUSH_EXPLICIT_BIT :: GLbitfield
gl_MAP_FLUSH_EXPLICIT_BIT = 16
 
gl_MAP_INVALIDATE_BUFFER_BIT :: GLbitfield
gl_MAP_INVALIDATE_BUFFER_BIT = 8
 
gl_MAP_INVALIDATE_RANGE_BIT :: GLbitfield
gl_MAP_INVALIDATE_RANGE_BIT = 4
 
gl_MAP_WRITE_BIT :: GLbitfield
gl_MAP_WRITE_BIT = 2
 
gl_MAP_READ_BIT :: GLbitfield
gl_MAP_READ_BIT = 1
 
gl_HALF_FLOAT :: GLenum
gl_HALF_FLOAT = 5131
 
gl_FRAMEBUFFER_SRGB :: GLenum
gl_FRAMEBUFFER_SRGB = 36281
 
gl_MAX_SAMPLES :: GLenum
gl_MAX_SAMPLES = 36183
 
gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 36182
 
gl_RENDERBUFFER_STENCIL_SIZE :: GLenum
gl_RENDERBUFFER_STENCIL_SIZE = 36181
 
gl_RENDERBUFFER_DEPTH_SIZE :: GLenum
gl_RENDERBUFFER_DEPTH_SIZE = 36180
 
gl_RENDERBUFFER_ALPHA_SIZE :: GLenum
gl_RENDERBUFFER_ALPHA_SIZE = 36179
 
gl_RENDERBUFFER_BLUE_SIZE :: GLenum
gl_RENDERBUFFER_BLUE_SIZE = 36178
 
gl_RENDERBUFFER_GREEN_SIZE :: GLenum
gl_RENDERBUFFER_GREEN_SIZE = 36177
 
gl_RENDERBUFFER_RED_SIZE :: GLenum
gl_RENDERBUFFER_RED_SIZE = 36176
 
gl_STENCIL_INDEX16 :: GLenum
gl_STENCIL_INDEX16 = 36169
 
gl_STENCIL_INDEX8 :: GLenum
gl_STENCIL_INDEX8 = 36168
 
gl_STENCIL_INDEX4 :: GLenum
gl_STENCIL_INDEX4 = 36167
 
gl_STENCIL_INDEX1 :: GLenum
gl_STENCIL_INDEX1 = 36166
 
gl_RENDERBUFFER_INTERNAL_FORMAT :: GLenum
gl_RENDERBUFFER_INTERNAL_FORMAT = 36164
 
gl_RENDERBUFFER_HEIGHT :: GLenum
gl_RENDERBUFFER_HEIGHT = 36163
 
gl_RENDERBUFFER_WIDTH :: GLenum
gl_RENDERBUFFER_WIDTH = 36162
 
gl_RENDERBUFFER :: GLenum
gl_RENDERBUFFER = 36161
 
gl_FRAMEBUFFER :: GLenum
gl_FRAMEBUFFER = 36160
 
gl_STENCIL_ATTACHMENT :: GLenum
gl_STENCIL_ATTACHMENT = 36128
 
gl_DEPTH_ATTACHMENT :: GLenum
gl_DEPTH_ATTACHMENT = 36096
 
gl_COLOR_ATTACHMENT15 :: GLenum
gl_COLOR_ATTACHMENT15 = 36079
 
gl_COLOR_ATTACHMENT14 :: GLenum
gl_COLOR_ATTACHMENT14 = 36078
 
gl_COLOR_ATTACHMENT13 :: GLenum
gl_COLOR_ATTACHMENT13 = 36077
 
gl_COLOR_ATTACHMENT12 :: GLenum
gl_COLOR_ATTACHMENT12 = 36076
 
gl_COLOR_ATTACHMENT11 :: GLenum
gl_COLOR_ATTACHMENT11 = 36075
 
gl_COLOR_ATTACHMENT10 :: GLenum
gl_COLOR_ATTACHMENT10 = 36074
 
gl_COLOR_ATTACHMENT9 :: GLenum
gl_COLOR_ATTACHMENT9 = 36073
 
gl_COLOR_ATTACHMENT8 :: GLenum
gl_COLOR_ATTACHMENT8 = 36072
 
gl_COLOR_ATTACHMENT7 :: GLenum
gl_COLOR_ATTACHMENT7 = 36071
 
gl_COLOR_ATTACHMENT6 :: GLenum
gl_COLOR_ATTACHMENT6 = 36070
 
gl_COLOR_ATTACHMENT5 :: GLenum
gl_COLOR_ATTACHMENT5 = 36069
 
gl_COLOR_ATTACHMENT4 :: GLenum
gl_COLOR_ATTACHMENT4 = 36068
 
gl_COLOR_ATTACHMENT3 :: GLenum
gl_COLOR_ATTACHMENT3 = 36067
 
gl_COLOR_ATTACHMENT2 :: GLenum
gl_COLOR_ATTACHMENT2 = 36066
 
gl_COLOR_ATTACHMENT1 :: GLenum
gl_COLOR_ATTACHMENT1 = 36065
 
gl_COLOR_ATTACHMENT0 :: GLenum
gl_COLOR_ATTACHMENT0 = 36064
 
gl_MAX_COLOR_ATTACHMENTS :: GLenum
gl_MAX_COLOR_ATTACHMENTS = 36063
 
gl_FRAMEBUFFER_UNSUPPORTED :: GLenum
gl_FRAMEBUFFER_UNSUPPORTED = 36061
 
gl_FRAMEBUFFER_INCOMPLETE_READ_BUFFER :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_READ_BUFFER = 36060
 
gl_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = 36059
 
gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 36055
 
gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 36054
 
gl_FRAMEBUFFER_COMPLETE :: GLenum
gl_FRAMEBUFFER_COMPLETE = 36053
 
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 36052
 
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 36051
 
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 36050
 
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 36049
 
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 36048
 
gl_RENDERBUFFER_SAMPLES :: GLenum
gl_RENDERBUFFER_SAMPLES = 36011
 
gl_READ_FRAMEBUFFER_BINDING :: GLenum
gl_READ_FRAMEBUFFER_BINDING = 36010
 
gl_DRAW_FRAMEBUFFER :: GLenum
gl_DRAW_FRAMEBUFFER = 36009
 
gl_READ_FRAMEBUFFER :: GLenum
gl_READ_FRAMEBUFFER = 36008
 
gl_RENDERBUFFER_BINDING :: GLenum
gl_RENDERBUFFER_BINDING = 36007
 
gl_DRAW_FRAMEBUFFER_BINDING :: GLenum
gl_DRAW_FRAMEBUFFER_BINDING = gl_FRAMEBUFFER_BINDING
 
gl_FRAMEBUFFER_BINDING :: GLenum
gl_FRAMEBUFFER_BINDING = 36006
 
gl_UNSIGNED_NORMALIZED :: GLenum
gl_UNSIGNED_NORMALIZED = 35863
 
gl_TEXTURE_DEPTH_TYPE :: GLenum
gl_TEXTURE_DEPTH_TYPE = 35862
 
gl_TEXTURE_ALPHA_TYPE :: GLenum
gl_TEXTURE_ALPHA_TYPE = 35859
 
gl_TEXTURE_BLUE_TYPE :: GLenum
gl_TEXTURE_BLUE_TYPE = 35858
 
gl_TEXTURE_GREEN_TYPE :: GLenum
gl_TEXTURE_GREEN_TYPE = 35857
 
gl_TEXTURE_RED_TYPE :: GLenum
gl_TEXTURE_RED_TYPE = 35856
 
gl_TEXTURE_STENCIL_SIZE :: GLenum
gl_TEXTURE_STENCIL_SIZE = 35057
 
gl_DEPTH24_STENCIL8 :: GLenum
gl_DEPTH24_STENCIL8 = 35056
 
gl_UNSIGNED_INT_24_8 :: GLenum
gl_UNSIGNED_INT_24_8 = 34042
 
gl_DEPTH_STENCIL :: GLenum
gl_DEPTH_STENCIL = 34041
 
gl_MAX_RENDERBUFFER_SIZE :: GLenum
gl_MAX_RENDERBUFFER_SIZE = 34024
 
gl_INDEX :: GLenum
gl_INDEX = 33314
 
gl_DEPTH_STENCIL_ATTACHMENT :: GLenum
gl_DEPTH_STENCIL_ATTACHMENT = 33306
 
gl_FRAMEBUFFER_UNDEFINED :: GLenum
gl_FRAMEBUFFER_UNDEFINED = 33305
 
gl_FRAMEBUFFER_DEFAULT :: GLenum
gl_FRAMEBUFFER_DEFAULT = 33304
 
gl_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 33303
 
gl_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 33302
 
gl_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 33301
 
gl_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 33300
 
gl_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 33299
 
gl_FRAMEBUFFER_ATTACHMENT_RED_SIZE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_RED_SIZE = 33298
 
gl_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 33297
 
gl_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 33296
 
gl_INVALID_FRAMEBUFFER_OPERATION :: GLenum
gl_INVALID_FRAMEBUFFER_OPERATION = 1286
 
gl_FLOAT_32_UNSIGNED_INT_24_8_REV :: GLenum
gl_FLOAT_32_UNSIGNED_INT_24_8_REV = 36269
 
gl_DEPTH32F_STENCIL8 :: GLenum
gl_DEPTH32F_STENCIL8 = 36013
 
gl_DEPTH_COMPONENT32F :: GLenum
gl_DEPTH_COMPONENT32F = 36012
 
gl_BUFFER_MAP_OFFSET :: GLenum
gl_BUFFER_MAP_OFFSET = 37153
 
gl_BUFFER_MAP_LENGTH :: GLenum
gl_BUFFER_MAP_LENGTH = 37152
 
gl_BUFFER_ACCESS_FLAGS :: GLenum
gl_BUFFER_ACCESS_FLAGS = 37151
 
gl_QUERY_BY_REGION_NO_WAIT :: GLenum
gl_QUERY_BY_REGION_NO_WAIT = 36374
 
gl_QUERY_BY_REGION_WAIT :: GLenum
gl_QUERY_BY_REGION_WAIT = 36373
 
gl_QUERY_NO_WAIT :: GLenum
gl_QUERY_NO_WAIT = 36372
 
gl_QUERY_WAIT :: GLenum
gl_QUERY_WAIT = 36371
 
gl_UNSIGNED_INT_SAMPLER_2D_ARRAY :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_ARRAY = 36311
 
gl_UNSIGNED_INT_SAMPLER_1D_ARRAY :: GLenum
gl_UNSIGNED_INT_SAMPLER_1D_ARRAY = 36310
 
gl_UNSIGNED_INT_SAMPLER_CUBE :: GLenum
gl_UNSIGNED_INT_SAMPLER_CUBE = 36308
 
gl_UNSIGNED_INT_SAMPLER_3D :: GLenum
gl_UNSIGNED_INT_SAMPLER_3D = 36307
 
gl_UNSIGNED_INT_SAMPLER_2D :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D = 36306
 
gl_UNSIGNED_INT_SAMPLER_1D :: GLenum
gl_UNSIGNED_INT_SAMPLER_1D = 36305
 
gl_INT_SAMPLER_2D_ARRAY :: GLenum
gl_INT_SAMPLER_2D_ARRAY = 36303
 
gl_INT_SAMPLER_1D_ARRAY :: GLenum
gl_INT_SAMPLER_1D_ARRAY = 36302
 
gl_INT_SAMPLER_CUBE :: GLenum
gl_INT_SAMPLER_CUBE = 36300
 
gl_INT_SAMPLER_3D :: GLenum
gl_INT_SAMPLER_3D = 36299
 
gl_INT_SAMPLER_2D :: GLenum
gl_INT_SAMPLER_2D = 36298
 
gl_INT_SAMPLER_1D :: GLenum
gl_INT_SAMPLER_1D = 36297
 
gl_UNSIGNED_INT_VEC4 :: GLenum
gl_UNSIGNED_INT_VEC4 = 36296
 
gl_UNSIGNED_INT_VEC3 :: GLenum
gl_UNSIGNED_INT_VEC3 = 36295
 
gl_UNSIGNED_INT_VEC2 :: GLenum
gl_UNSIGNED_INT_VEC2 = 36294
 
gl_SAMPLER_CUBE_SHADOW :: GLenum
gl_SAMPLER_CUBE_SHADOW = 36293
 
gl_SAMPLER_2D_ARRAY_SHADOW :: GLenum
gl_SAMPLER_2D_ARRAY_SHADOW = 36292
 
gl_SAMPLER_1D_ARRAY_SHADOW :: GLenum
gl_SAMPLER_1D_ARRAY_SHADOW = 36291
 
gl_SAMPLER_2D_ARRAY :: GLenum
gl_SAMPLER_2D_ARRAY = 36289
 
gl_SAMPLER_1D_ARRAY :: GLenum
gl_SAMPLER_1D_ARRAY = 36288
 
gl_BGRA_INTEGER :: GLenum
gl_BGRA_INTEGER = 36251
 
gl_BGR_INTEGER :: GLenum
gl_BGR_INTEGER = 36250
 
gl_RGBA_INTEGER :: GLenum
gl_RGBA_INTEGER = 36249
 
gl_RGB_INTEGER :: GLenum
gl_RGB_INTEGER = 36248
 
gl_BLUE_INTEGER :: GLenum
gl_BLUE_INTEGER = 36246
 
gl_GREEN_INTEGER :: GLenum
gl_GREEN_INTEGER = 36245
 
gl_RED_INTEGER :: GLenum
gl_RED_INTEGER = 36244
 
gl_RGB8I :: GLenum
gl_RGB8I = 36239
 
gl_RGBA8I :: GLenum
gl_RGBA8I = 36238
 
gl_RGB16I :: GLenum
gl_RGB16I = 36233
 
gl_RGBA16I :: GLenum
gl_RGBA16I = 36232
 
gl_RGB32I :: GLenum
gl_RGB32I = 36227
 
gl_RGBA32I :: GLenum
gl_RGBA32I = 36226
 
gl_RGB8UI :: GLenum
gl_RGB8UI = 36221
 
gl_RGBA8UI :: GLenum
gl_RGBA8UI = 36220
 
gl_RGB16UI :: GLenum
gl_RGB16UI = 36215
 
gl_RGBA16UI :: GLenum
gl_RGBA16UI = 36214
 
gl_RGB32UI :: GLenum
gl_RGB32UI = 36209
 
gl_RGBA32UI :: GLenum
gl_RGBA32UI = 36208
 
gl_TRANSFORM_FEEDBACK_BUFFER_BINDING :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_BINDING = 35983
 
gl_TRANSFORM_FEEDBACK_BUFFER :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER = 35982
 
gl_SEPARATE_ATTRIBS :: GLenum
gl_SEPARATE_ATTRIBS = 35981
 
gl_INTERLEAVED_ATTRIBS :: GLenum
gl_INTERLEAVED_ATTRIBS = 35980
 
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 35979
 
gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 35978
 
gl_RASTERIZER_DISCARD :: GLenum
gl_RASTERIZER_DISCARD = 35977
 
gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN :: GLenum
gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 35976
 
gl_PRIMITIVES_GENERATED :: GLenum
gl_PRIMITIVES_GENERATED = 35975
 
gl_TRANSFORM_FEEDBACK_BUFFER_SIZE :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_SIZE = 35973
 
gl_TRANSFORM_FEEDBACK_BUFFER_START :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_START = 35972
 
gl_TRANSFORM_FEEDBACK_VARYINGS :: GLenum
gl_TRANSFORM_FEEDBACK_VARYINGS = 35971
 
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 35968
 
gl_TRANSFORM_FEEDBACK_BUFFER_MODE :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_MODE = 35967
 
gl_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH :: GLenum
gl_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 35958
 
gl_TEXTURE_SHARED_SIZE :: GLenum
gl_TEXTURE_SHARED_SIZE = 35903
 
gl_UNSIGNED_INT_5_9_9_9_REV :: GLenum
gl_UNSIGNED_INT_5_9_9_9_REV = 35902
 
gl_RGB9_E5 :: GLenum
gl_RGB9_E5 = 35901
 
gl_UNSIGNED_INT_10F_11F_11F_REV :: GLenum
gl_UNSIGNED_INT_10F_11F_11F_REV = 35899
 
gl_R11F_G11F_B10F :: GLenum
gl_R11F_G11F_B10F = 35898
 
gl_TEXTURE_BINDING_2D_ARRAY :: GLenum
gl_TEXTURE_BINDING_2D_ARRAY = 35869
 
gl_TEXTURE_BINDING_1D_ARRAY :: GLenum
gl_TEXTURE_BINDING_1D_ARRAY = 35868
 
gl_PROXY_TEXTURE_2D_ARRAY :: GLenum
gl_PROXY_TEXTURE_2D_ARRAY = 35867
 
gl_TEXTURE_2D_ARRAY :: GLenum
gl_TEXTURE_2D_ARRAY = 35866
 
gl_PROXY_TEXTURE_1D_ARRAY :: GLenum
gl_PROXY_TEXTURE_1D_ARRAY = 35865
 
gl_TEXTURE_1D_ARRAY :: GLenum
gl_TEXTURE_1D_ARRAY = 35864
 
gl_MAX_VARYING_COMPONENTS :: GLenum
gl_MAX_VARYING_COMPONENTS = 35659
 
gl_FIXED_ONLY :: GLenum
gl_FIXED_ONLY = 35101
 
gl_CLAMP_READ_COLOR :: GLenum
gl_CLAMP_READ_COLOR = 35100
 
gl_MAX_PROGRAM_TEXEL_OFFSET :: GLenum
gl_MAX_PROGRAM_TEXEL_OFFSET = 35077
 
gl_MIN_PROGRAM_TEXEL_OFFSET :: GLenum
gl_MIN_PROGRAM_TEXEL_OFFSET = 35076
 
gl_MAX_ARRAY_TEXTURE_LAYERS :: GLenum
gl_MAX_ARRAY_TEXTURE_LAYERS = 35071
 
gl_VERTEX_ATTRIB_ARRAY_INTEGER :: GLenum
gl_VERTEX_ATTRIB_ARRAY_INTEGER = 35069
 
gl_RGB16F :: GLenum
gl_RGB16F = 34843
 
gl_RGBA16F :: GLenum
gl_RGBA16F = 34842
 
gl_RGB32F :: GLenum
gl_RGB32F = 34837
 
gl_RGBA32F :: GLenum
gl_RGBA32F = 34836
 
gl_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT :: GLbitfield
gl_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = 1
 
gl_COMPRESSED_RG :: GLenum
gl_COMPRESSED_RG = 33318
 
gl_COMPRESSED_RED :: GLenum
gl_COMPRESSED_RED = 33317
 
gl_CONTEXT_FLAGS :: GLenum
gl_CONTEXT_FLAGS = 33310
 
gl_NUM_EXTENSIONS :: GLenum
gl_NUM_EXTENSIONS = 33309
 
gl_MINOR_VERSION :: GLenum
gl_MINOR_VERSION = 33308
 
gl_MAJOR_VERSION :: GLenum
gl_MAJOR_VERSION = 33307
 
gl_MAX_CLIP_DISTANCES :: GLenum
gl_MAX_CLIP_DISTANCES = 3378
 
gl_CLIP_DISTANCE7 :: GLenum
gl_CLIP_DISTANCE7 = 12295
 
gl_CLIP_DISTANCE6 :: GLenum
gl_CLIP_DISTANCE6 = 12294
 
gl_CLIP_DISTANCE5 :: GLenum
gl_CLIP_DISTANCE5 = 12293
 
gl_CLIP_DISTANCE4 :: GLenum
gl_CLIP_DISTANCE4 = 12292
 
gl_CLIP_DISTANCE3 :: GLenum
gl_CLIP_DISTANCE3 = 12291
 
gl_CLIP_DISTANCE2 :: GLenum
gl_CLIP_DISTANCE2 = 12290
 
gl_CLIP_DISTANCE1 :: GLenum
gl_CLIP_DISTANCE1 = 12289
 
gl_CLIP_DISTANCE0 :: GLenum
gl_CLIP_DISTANCE0 = 12288
 
gl_COMPARE_REF_TO_TEXTURE :: GLenum
gl_COMPARE_REF_TO_TEXTURE = 34894