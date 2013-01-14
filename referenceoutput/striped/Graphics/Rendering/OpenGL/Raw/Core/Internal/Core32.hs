{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core32
       (glWaitSync, glTexImage3DMultisample, glTexImage2DMultisample,
        glSampleMaski, glProvokingVertex, glMultiDrawElementsBaseVertex,
        glIsSync, glGetSynciv, glGetMultisamplefv, glGetInteger64v,
        glGetInteger64i_v, glGetBufferParameteri64v, glFramebufferTexture,
        glFenceSync, glDrawRangeElementsBaseVertex,
        glDrawElementsInstancedBaseVertex, glDrawElementsBaseVertex,
        glDeleteSync, glClientWaitSync, gl_WAIT_FAILED,
        gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY,
        gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE, gl_UNSIGNALED,
        gl_TRIANGLE_STRIP_ADJACENCY, gl_TRIANGLES_ADJACENCY,
        gl_TIMEOUT_IGNORED, gl_TIMEOUT_EXPIRED, gl_TEXTURE_SAMPLES,
        gl_TEXTURE_FIXED_SAMPLE_LOCATIONS, gl_TEXTURE_CUBE_MAP_SEAMLESS,
        gl_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY,
        gl_TEXTURE_BINDING_2D_MULTISAMPLE, gl_TEXTURE_2D_MULTISAMPLE_ARRAY,
        gl_TEXTURE_2D_MULTISAMPLE, gl_SYNC_STATUS,
        gl_SYNC_GPU_COMMANDS_COMPLETE, gl_SYNC_FLUSH_COMMANDS_BIT,
        gl_SYNC_FLAGS, gl_SYNC_FENCE, gl_SYNC_CONDITION, gl_SIGNALED,
        gl_SAMPLE_POSITION, gl_SAMPLE_MASK_VALUE, gl_SAMPLE_MASK,
        gl_SAMPLER_2D_MULTISAMPLE_ARRAY, gl_SAMPLER_2D_MULTISAMPLE,
        gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION,
        gl_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY,
        gl_PROXY_TEXTURE_2D_MULTISAMPLE, gl_PROVOKING_VERTEX,
        gl_PROGRAM_POINT_SIZE, gl_OBJECT_TYPE,
        gl_MAX_VERTEX_OUTPUT_COMPONENTS, gl_MAX_VARYING_COMPONENTS,
        gl_MAX_SERVER_WAIT_TIMEOUT, gl_MAX_SAMPLE_MASK_WORDS,
        gl_MAX_INTEGER_SAMPLES, gl_MAX_GEOMETRY_UNIFORM_COMPONENTS,
        gl_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS,
        gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS,
        gl_MAX_GEOMETRY_OUTPUT_VERTICES, gl_MAX_GEOMETRY_OUTPUT_COMPONENTS,
        gl_MAX_GEOMETRY_INPUT_COMPONENTS, gl_MAX_FRAGMENT_INPUT_COMPONENTS,
        gl_MAX_DEPTH_TEXTURE_SAMPLES, gl_MAX_COLOR_TEXTURE_SAMPLES,
        gl_LINE_STRIP_ADJACENCY, gl_LINES_ADJACENCY,
        gl_LAST_VERTEX_CONVENTION, gl_INT_SAMPLER_2D_MULTISAMPLE_ARRAY,
        gl_INT_SAMPLER_2D_MULTISAMPLE, gl_GEOMETRY_VERTICES_OUT,
        gl_GEOMETRY_SHADER, gl_GEOMETRY_OUTPUT_TYPE,
        gl_GEOMETRY_INPUT_TYPE, gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER,
        gl_FRAMEBUFFER_ATTACHMENT_LAYERED, gl_FIRST_VERTEX_CONVENTION,
        gl_DEPTH_CLAMP, gl_CONTEXT_PROFILE_MASK,
        gl_CONTEXT_CORE_PROFILE_BIT, gl_CONTEXT_COMPATIBILITY_PROFILE_BIT,
        gl_CONDITION_SATISFIED, gl_ALREADY_SIGNALED)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core30
       (gl_MAX_VARYING_COMPONENTS,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glWaitSync #-}
 
ptr_glWaitSync :: FunPtr a
ptr_glWaitSync
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glWaitSync"
 
glWaitSync :: GLsync -> GLbitfield -> GLuint64 -> IO ()
glWaitSync = dyn_glWaitSync ptr_glWaitSync
 
foreign import CALLCONV unsafe "dynamic" dyn_glWaitSync ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsync -> GLbitfield -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glTexImage3DMultisample #-}
 
ptr_glTexImage3DMultisample :: FunPtr a
ptr_glTexImage3DMultisample
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glTexImage3DMultisample"
 
glTexImage3DMultisample ::
                        GLenum ->
                          GLsizei ->
                            GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTexImage3DMultisample
  = dyn_glTexImage3DMultisample ptr_glTexImage3DMultisample
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexImage3DMultisample
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei ->
                      GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glTexImage2DMultisample #-}
 
ptr_glTexImage2DMultisample :: FunPtr a
ptr_glTexImage2DMultisample
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glTexImage2DMultisample"
 
glTexImage2DMultisample ::
                        GLenum ->
                          GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ()
glTexImage2DMultisample
  = dyn_glTexImage2DMultisample ptr_glTexImage2DMultisample
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexImage2DMultisample
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glSampleMaski #-}
 
ptr_glSampleMaski :: FunPtr a
ptr_glSampleMaski
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glSampleMaski"
 
glSampleMaski :: GLuint -> GLbitfield -> IO ()
glSampleMaski = dyn_glSampleMaski ptr_glSampleMaski
 
foreign import CALLCONV unsafe "dynamic" dyn_glSampleMaski ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLbitfield -> IO ())
 
{-# NOINLINE ptr_glProvokingVertex #-}
 
ptr_glProvokingVertex :: FunPtr a
ptr_glProvokingVertex
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glProvokingVertex"
 
glProvokingVertex :: GLenum -> IO ()
glProvokingVertex = dyn_glProvokingVertex ptr_glProvokingVertex
 
foreign import CALLCONV unsafe "dynamic" dyn_glProvokingVertex ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glMultiDrawElementsBaseVertex #-}
 
ptr_glMultiDrawElementsBaseVertex :: FunPtr a
ptr_glMultiDrawElementsBaseVertex
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glMultiDrawElementsBaseVertex"
 
glMultiDrawElementsBaseVertex ::
                              GLenum ->
                                Ptr GLsizei ->
                                  GLenum -> Ptr (Ptr b) -> GLsizei -> Ptr GLint -> IO ()
glMultiDrawElementsBaseVertex
  = dyn_glMultiDrawElementsBaseVertex
      ptr_glMultiDrawElementsBaseVertex
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiDrawElementsBaseVertex ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    Ptr GLsizei ->
                      GLenum -> Ptr (Ptr b) -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glIsSync #-}
 
ptr_glIsSync :: FunPtr a
ptr_glIsSync
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glIsSync"
 
glIsSync :: GLsync -> IO GLboolean
glIsSync = dyn_glIsSync ptr_glIsSync
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsSync ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsync -> IO GLboolean)
 
{-# NOINLINE ptr_glGetSynciv #-}
 
ptr_glGetSynciv :: FunPtr a
ptr_glGetSynciv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glGetSynciv"
 
glGetSynciv ::
            GLsync -> GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> IO ()
glGetSynciv = dyn_glGetSynciv ptr_glGetSynciv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetSynciv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsync -> GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMultisamplefv #-}
 
ptr_glGetMultisamplefv :: FunPtr a
ptr_glGetMultisamplefv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glGetMultisamplefv"
 
glGetMultisamplefv :: GLenum -> GLuint -> Ptr GLfloat -> IO ()
glGetMultisamplefv = dyn_glGetMultisamplefv ptr_glGetMultisamplefv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultisamplefv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetInteger64v #-}
 
ptr_glGetInteger64v :: FunPtr a
ptr_glGetInteger64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glGetInteger64v"
 
glGetInteger64v :: GLenum -> Ptr GLint64 -> IO ()
glGetInteger64v = dyn_glGetInteger64v ptr_glGetInteger64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetInteger64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glGetInteger64i_v #-}
 
ptr_glGetInteger64i_v :: FunPtr a
ptr_glGetInteger64i_v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glGetInteger64i_v"
 
glGetInteger64i_v :: GLenum -> GLuint -> Ptr GLint64 -> IO ()
glGetInteger64i_v = dyn_glGetInteger64i_v ptr_glGetInteger64i_v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetInteger64i_v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glGetBufferParameteri64v #-}
 
ptr_glGetBufferParameteri64v :: FunPtr a
ptr_glGetBufferParameteri64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glGetBufferParameteri64v"
 
glGetBufferParameteri64v ::
                         GLenum -> GLenum -> Ptr GLint64 -> IO ()
glGetBufferParameteri64v
  = dyn_glGetBufferParameteri64v ptr_glGetBufferParameteri64v
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetBufferParameteri64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glFramebufferTexture #-}
 
ptr_glFramebufferTexture :: FunPtr a
ptr_glFramebufferTexture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glFramebufferTexture"
 
glFramebufferTexture ::
                     GLenum -> GLenum -> GLuint -> GLint -> IO ()
glFramebufferTexture
  = dyn_glFramebufferTexture ptr_glFramebufferTexture
 
foreign import CALLCONV unsafe "dynamic" dyn_glFramebufferTexture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glFenceSync #-}
 
ptr_glFenceSync :: FunPtr a
ptr_glFenceSync
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glFenceSync"
 
glFenceSync :: GLenum -> GLbitfield -> IO GLsync
glFenceSync = dyn_glFenceSync ptr_glFenceSync
 
foreign import CALLCONV unsafe "dynamic" dyn_glFenceSync ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLbitfield -> IO GLsync)
 
{-# NOINLINE ptr_glDrawRangeElementsBaseVertex #-}
 
ptr_glDrawRangeElementsBaseVertex :: FunPtr a
ptr_glDrawRangeElementsBaseVertex
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glDrawRangeElementsBaseVertex"
 
glDrawRangeElementsBaseVertex ::
                              GLenum ->
                                GLuint -> GLuint -> GLsizei -> GLenum -> Ptr a -> GLint -> IO ()
glDrawRangeElementsBaseVertex
  = dyn_glDrawRangeElementsBaseVertex
      ptr_glDrawRangeElementsBaseVertex
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawRangeElementsBaseVertex ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLuint -> GLsizei -> GLenum -> Ptr a -> GLint -> IO ())
 
{-# NOINLINE ptr_glDrawElementsInstancedBaseVertex #-}
 
ptr_glDrawElementsInstancedBaseVertex :: FunPtr a
ptr_glDrawElementsInstancedBaseVertex
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glDrawElementsInstancedBaseVertex"
 
glDrawElementsInstancedBaseVertex ::
                                  GLenum -> GLsizei -> GLenum -> Ptr a -> GLsizei -> GLint -> IO ()
glDrawElementsInstancedBaseVertex
  = dyn_glDrawElementsInstancedBaseVertex
      ptr_glDrawElementsInstancedBaseVertex
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawElementsInstancedBaseVertex ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLenum -> Ptr a -> GLsizei -> GLint -> IO ())
 
{-# NOINLINE ptr_glDrawElementsBaseVertex #-}
 
ptr_glDrawElementsBaseVertex :: FunPtr a
ptr_glDrawElementsBaseVertex
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glDrawElementsBaseVertex"
 
glDrawElementsBaseVertex ::
                         GLenum -> GLsizei -> GLenum -> Ptr a -> GLint -> IO ()
glDrawElementsBaseVertex
  = dyn_glDrawElementsBaseVertex ptr_glDrawElementsBaseVertex
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawElementsBaseVertex ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLenum -> Ptr a -> GLint -> IO ())
 
{-# NOINLINE ptr_glDeleteSync #-}
 
ptr_glDeleteSync :: FunPtr a
ptr_glDeleteSync
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glDeleteSync"
 
glDeleteSync :: GLsync -> IO ()
glDeleteSync = dyn_glDeleteSync ptr_glDeleteSync
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteSync ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsync -> IO ())
 
{-# NOINLINE ptr_glClientWaitSync #-}
 
ptr_glClientWaitSync :: FunPtr a
ptr_glClientWaitSync
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_2"
        "glClientWaitSync"
 
glClientWaitSync :: GLsync -> GLbitfield -> GLuint64 -> IO GLenum
glClientWaitSync = dyn_glClientWaitSync ptr_glClientWaitSync
 
foreign import CALLCONV unsafe "dynamic" dyn_glClientWaitSync ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsync -> GLbitfield -> GLuint64 -> IO GLenum)
 
gl_WAIT_FAILED :: GLenum
gl_WAIT_FAILED = 37149
 
gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 37133
 
gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 37130
 
gl_UNSIGNALED :: GLenum
gl_UNSIGNALED = 37144
 
gl_TRIANGLE_STRIP_ADJACENCY :: GLenum
gl_TRIANGLE_STRIP_ADJACENCY = 13
 
gl_TRIANGLES_ADJACENCY :: GLenum
gl_TRIANGLES_ADJACENCY = 12
 
gl_TIMEOUT_IGNORED :: GLenum
gl_TIMEOUT_IGNORED = 18446744073709551615
 
gl_TIMEOUT_EXPIRED :: GLenum
gl_TIMEOUT_EXPIRED = 37147
 
gl_TEXTURE_SAMPLES :: GLenum
gl_TEXTURE_SAMPLES = 37126
 
gl_TEXTURE_FIXED_SAMPLE_LOCATIONS :: GLenum
gl_TEXTURE_FIXED_SAMPLE_LOCATIONS = 37127
 
gl_TEXTURE_CUBE_MAP_SEAMLESS :: GLenum
gl_TEXTURE_CUBE_MAP_SEAMLESS = 34895
 
gl_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY :: GLenum
gl_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = 37125
 
gl_TEXTURE_BINDING_2D_MULTISAMPLE :: GLenum
gl_TEXTURE_BINDING_2D_MULTISAMPLE = 37124
 
gl_TEXTURE_2D_MULTISAMPLE_ARRAY :: GLenum
gl_TEXTURE_2D_MULTISAMPLE_ARRAY = 37122
 
gl_TEXTURE_2D_MULTISAMPLE :: GLenum
gl_TEXTURE_2D_MULTISAMPLE = 37120
 
gl_SYNC_STATUS :: GLenum
gl_SYNC_STATUS = 37140
 
gl_SYNC_GPU_COMMANDS_COMPLETE :: GLenum
gl_SYNC_GPU_COMMANDS_COMPLETE = 37143
 
gl_SYNC_FLUSH_COMMANDS_BIT :: GLbitfield
gl_SYNC_FLUSH_COMMANDS_BIT = 1
 
gl_SYNC_FLAGS :: GLenum
gl_SYNC_FLAGS = 37141
 
gl_SYNC_FENCE :: GLenum
gl_SYNC_FENCE = 37142
 
gl_SYNC_CONDITION :: GLenum
gl_SYNC_CONDITION = 37139
 
gl_SIGNALED :: GLenum
gl_SIGNALED = 37145
 
gl_SAMPLE_POSITION :: GLenum
gl_SAMPLE_POSITION = 36432
 
gl_SAMPLE_MASK_VALUE :: GLenum
gl_SAMPLE_MASK_VALUE = 36434
 
gl_SAMPLE_MASK :: GLenum
gl_SAMPLE_MASK = 36433
 
gl_SAMPLER_2D_MULTISAMPLE_ARRAY :: GLenum
gl_SAMPLER_2D_MULTISAMPLE_ARRAY = 37131
 
gl_SAMPLER_2D_MULTISAMPLE :: GLenum
gl_SAMPLER_2D_MULTISAMPLE = 37128
 
gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION :: GLenum
gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = 36428
 
gl_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY :: GLenum
gl_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = 37123
 
gl_PROXY_TEXTURE_2D_MULTISAMPLE :: GLenum
gl_PROXY_TEXTURE_2D_MULTISAMPLE = 37121
 
gl_PROVOKING_VERTEX :: GLenum
gl_PROVOKING_VERTEX = 36431
 
gl_PROGRAM_POINT_SIZE :: GLenum
gl_PROGRAM_POINT_SIZE = 34370
 
gl_OBJECT_TYPE :: GLenum
gl_OBJECT_TYPE = 37138
 
gl_MAX_VERTEX_OUTPUT_COMPONENTS :: GLenum
gl_MAX_VERTEX_OUTPUT_COMPONENTS = 37154
 
gl_MAX_SERVER_WAIT_TIMEOUT :: GLenum
gl_MAX_SERVER_WAIT_TIMEOUT = 37137
 
gl_MAX_SAMPLE_MASK_WORDS :: GLenum
gl_MAX_SAMPLE_MASK_WORDS = 36441
 
gl_MAX_INTEGER_SAMPLES :: GLenum
gl_MAX_INTEGER_SAMPLES = 37136
 
gl_MAX_GEOMETRY_UNIFORM_COMPONENTS :: GLenum
gl_MAX_GEOMETRY_UNIFORM_COMPONENTS = 36319
 
gl_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS :: GLenum
gl_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = 36321
 
gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = 35881
 
gl_MAX_GEOMETRY_OUTPUT_VERTICES :: GLenum
gl_MAX_GEOMETRY_OUTPUT_VERTICES = 36320
 
gl_MAX_GEOMETRY_OUTPUT_COMPONENTS :: GLenum
gl_MAX_GEOMETRY_OUTPUT_COMPONENTS = 37156
 
gl_MAX_GEOMETRY_INPUT_COMPONENTS :: GLenum
gl_MAX_GEOMETRY_INPUT_COMPONENTS = 37155
 
gl_MAX_FRAGMENT_INPUT_COMPONENTS :: GLenum
gl_MAX_FRAGMENT_INPUT_COMPONENTS = 37157
 
gl_MAX_DEPTH_TEXTURE_SAMPLES :: GLenum
gl_MAX_DEPTH_TEXTURE_SAMPLES = 37135
 
gl_MAX_COLOR_TEXTURE_SAMPLES :: GLenum
gl_MAX_COLOR_TEXTURE_SAMPLES = 37134
 
gl_LINE_STRIP_ADJACENCY :: GLenum
gl_LINE_STRIP_ADJACENCY = 11
 
gl_LINES_ADJACENCY :: GLenum
gl_LINES_ADJACENCY = 10
 
gl_LAST_VERTEX_CONVENTION :: GLenum
gl_LAST_VERTEX_CONVENTION = 36430
 
gl_INT_SAMPLER_2D_MULTISAMPLE_ARRAY :: GLenum
gl_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 37132
 
gl_INT_SAMPLER_2D_MULTISAMPLE :: GLenum
gl_INT_SAMPLER_2D_MULTISAMPLE = 37129
 
gl_GEOMETRY_VERTICES_OUT :: GLenum
gl_GEOMETRY_VERTICES_OUT = 35094
 
gl_GEOMETRY_SHADER :: GLenum
gl_GEOMETRY_SHADER = 36313
 
gl_GEOMETRY_OUTPUT_TYPE :: GLenum
gl_GEOMETRY_OUTPUT_TYPE = 35096
 
gl_GEOMETRY_INPUT_TYPE :: GLenum
gl_GEOMETRY_INPUT_TYPE = 35095
 
gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = 36264
 
gl_FRAMEBUFFER_ATTACHMENT_LAYERED :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_LAYERED = 36263
 
gl_FIRST_VERTEX_CONVENTION :: GLenum
gl_FIRST_VERTEX_CONVENTION = 36429
 
gl_DEPTH_CLAMP :: GLenum
gl_DEPTH_CLAMP = 34383
 
gl_CONTEXT_PROFILE_MASK :: GLenum
gl_CONTEXT_PROFILE_MASK = 37158
 
gl_CONTEXT_CORE_PROFILE_BIT :: GLbitfield
gl_CONTEXT_CORE_PROFILE_BIT = 1
 
gl_CONTEXT_COMPATIBILITY_PROFILE_BIT :: GLbitfield
gl_CONTEXT_COMPATIBILITY_PROFILE_BIT = 2
 
gl_CONDITION_SATISFIED :: GLenum
gl_CONDITION_SATISFIED = 37148
 
gl_ALREADY_SIGNALED :: GLenum
gl_ALREADY_SIGNALED = 37146