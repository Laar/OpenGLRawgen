{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core42
       (glTextureStorage3D, glTextureStorage2D, glTextureStorage1D,
        glTexStorage3D, glTexStorage2D, glTexStorage1D, glMemoryBarrier,
        glGetInternalformativ, glGetActiveAtomicCounterBufferiv,
        glDrawTransformFeedbackStreamInstanced,
        glDrawTransformFeedbackInstanced,
        glDrawElementsInstancedBaseVertexBaseInstance,
        glDrawElementsInstancedBaseInstance,
        glDrawArraysInstancedBaseInstance, glBindImageTexture,
        gl_VERTEX_ATTRIB_ARRAY_BARRIER_BIT,
        gl_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY, gl_UNSIGNED_INT_IMAGE_CUBE,
        gl_UNSIGNED_INT_IMAGE_BUFFER, gl_UNSIGNED_INT_IMAGE_3D,
        gl_UNSIGNED_INT_IMAGE_2D_RECT,
        gl_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY,
        gl_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE,
        gl_UNSIGNED_INT_IMAGE_2D_ARRAY, gl_UNSIGNED_INT_IMAGE_2D,
        gl_UNSIGNED_INT_IMAGE_1D_ARRAY, gl_UNSIGNED_INT_IMAGE_1D,
        gl_UNSIGNED_INT_ATOMIC_COUNTER, gl_UNPACK_COMPRESSED_BLOCK_WIDTH,
        gl_UNPACK_COMPRESSED_BLOCK_SIZE, gl_UNPACK_COMPRESSED_BLOCK_HEIGHT,
        gl_UNPACK_COMPRESSED_BLOCK_DEPTH, gl_UNIFORM_BARRIER_BIT,
        gl_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX,
        gl_TRANSFORM_FEEDBACK_BARRIER_BIT, gl_TEXTURE_UPDATE_BARRIER_BIT,
        gl_TEXTURE_IMMUTABLE_FORMAT, gl_TEXTURE_FETCH_BARRIER_BIT,
        gl_SHADER_IMAGE_ACCESS_BARRIER_BIT, gl_PIXEL_BUFFER_BARRIER_BIT,
        gl_PACK_COMPRESSED_BLOCK_WIDTH, gl_PACK_COMPRESSED_BLOCK_SIZE,
        gl_PACK_COMPRESSED_BLOCK_HEIGHT, gl_PACK_COMPRESSED_BLOCK_DEPTH,
        gl_NUM_SAMPLE_COUNTS, gl_MIN_MAP_BUFFER_ALIGNMENT,
        gl_MAX_VERTEX_IMAGE_UNIFORMS, gl_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS,
        gl_MAX_VERTEX_ATOMIC_COUNTERS,
        gl_MAX_TESS_EVALUATION_IMAGE_UNIFORMS,
        gl_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS,
        gl_MAX_TESS_EVALUATION_ATOMIC_COUNTERS,
        gl_MAX_TESS_CONTROL_IMAGE_UNIFORMS,
        gl_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS,
        gl_MAX_TESS_CONTROL_ATOMIC_COUNTERS, gl_MAX_IMAGE_UNITS,
        gl_MAX_IMAGE_SAMPLES, gl_MAX_GEOMETRY_IMAGE_UNIFORMS,
        gl_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS,
        gl_MAX_GEOMETRY_ATOMIC_COUNTERS, gl_MAX_FRAGMENT_IMAGE_UNIFORMS,
        gl_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS,
        gl_MAX_FRAGMENT_ATOMIC_COUNTERS,
        gl_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS,
        gl_MAX_COMBINED_IMAGE_UNIFORMS,
        gl_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS,
        gl_MAX_COMBINED_ATOMIC_COUNTERS, gl_MAX_ATOMIC_COUNTER_BUFFER_SIZE,
        gl_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS, gl_INT_IMAGE_CUBE_MAP_ARRAY,
        gl_INT_IMAGE_CUBE, gl_INT_IMAGE_BUFFER, gl_INT_IMAGE_3D,
        gl_INT_IMAGE_2D_RECT, gl_INT_IMAGE_2D_MULTISAMPLE_ARRAY,
        gl_INT_IMAGE_2D_MULTISAMPLE, gl_INT_IMAGE_2D_ARRAY,
        gl_INT_IMAGE_2D, gl_INT_IMAGE_1D_ARRAY, gl_INT_IMAGE_1D,
        gl_IMAGE_FORMAT_COMPATIBILITY_TYPE,
        gl_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE,
        gl_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS, gl_IMAGE_CUBE_MAP_ARRAY,
        gl_IMAGE_CUBE, gl_IMAGE_BUFFER, gl_IMAGE_BINDING_NAME,
        gl_IMAGE_BINDING_LEVEL, gl_IMAGE_BINDING_LAYERED,
        gl_IMAGE_BINDING_LAYER, gl_IMAGE_BINDING_FORMAT,
        gl_IMAGE_BINDING_ACCESS, gl_IMAGE_3D, gl_IMAGE_2D_RECT,
        gl_IMAGE_2D_MULTISAMPLE_ARRAY, gl_IMAGE_2D_MULTISAMPLE,
        gl_IMAGE_2D_ARRAY, gl_IMAGE_2D, gl_IMAGE_1D_ARRAY, gl_IMAGE_1D,
        gl_FRAMEBUFFER_BARRIER_BIT, gl_ELEMENT_ARRAY_BARRIER_BIT,
        gl_COMMAND_BARRIER_BIT, gl_BUFFER_UPDATE_BARRIER_BIT,
        gl_ATOMIC_COUNTER_BUFFER_START, gl_ATOMIC_COUNTER_BUFFER_SIZE,
        gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER,
        gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER,
        gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER,
        gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER,
        gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER,
        gl_ATOMIC_COUNTER_BUFFER_DATA_SIZE,
        gl_ATOMIC_COUNTER_BUFFER_BINDING,
        gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES,
        gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS,
        gl_ATOMIC_COUNTER_BUFFER, gl_ATOMIC_COUNTER_BARRIER_BIT,
        gl_ALL_BARRIER_BITS, gl_ACTIVE_ATOMIC_COUNTER_BUFFERS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTextureStorage3D #-}
 
ptr_glTextureStorage3D :: FunPtr a
ptr_glTextureStorage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glTextureStorage3DEXT"
 
glTextureStorage3D ::
                   GLuint ->
                     GLenum ->
                       GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> IO ()
glTextureStorage3D = dyn_glTextureStorage3D ptr_glTextureStorage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureStorage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glTextureStorage2D #-}
 
ptr_glTextureStorage2D :: FunPtr a
ptr_glTextureStorage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glTextureStorage2DEXT"
 
glTextureStorage2D ::
                   GLuint ->
                     GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()
glTextureStorage2D = dyn_glTextureStorage2D ptr_glTextureStorage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureStorage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glTextureStorage1D #-}
 
ptr_glTextureStorage1D :: FunPtr a
ptr_glTextureStorage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glTextureStorage1DEXT"
 
glTextureStorage1D ::
                   GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> IO ()
glTextureStorage1D = dyn_glTextureStorage1D ptr_glTextureStorage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureStorage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glTexStorage3D #-}
 
ptr_glTexStorage3D :: FunPtr a
ptr_glTexStorage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glTexStorage3D"
 
glTexStorage3D ::
               GLenum ->
                 GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> IO ()
glTexStorage3D = dyn_glTexStorage3D ptr_glTexStorage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexStorage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glTexStorage2D #-}
 
ptr_glTexStorage2D :: FunPtr a
ptr_glTexStorage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glTexStorage2D"
 
glTexStorage2D ::
               GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()
glTexStorage2D = dyn_glTexStorage2D ptr_glTexStorage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexStorage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glTexStorage1D #-}
 
ptr_glTexStorage1D :: FunPtr a
ptr_glTexStorage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glTexStorage1D"
 
glTexStorage1D :: GLenum -> GLsizei -> GLenum -> GLsizei -> IO ()
glTexStorage1D = dyn_glTexStorage1D ptr_glTexStorage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexStorage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glMemoryBarrier #-}
 
ptr_glMemoryBarrier :: FunPtr a
ptr_glMemoryBarrier
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glMemoryBarrier"
 
glMemoryBarrier :: GLbitfield -> IO ()
glMemoryBarrier = dyn_glMemoryBarrier ptr_glMemoryBarrier
 
foreign import CALLCONV unsafe "dynamic" dyn_glMemoryBarrier ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbitfield -> IO ())
 
{-# NOINLINE ptr_glGetInternalformativ #-}
 
ptr_glGetInternalformativ :: FunPtr a
ptr_glGetInternalformativ
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glGetInternalformativ"
 
glGetInternalformativ ::
                      GLenum -> GLenum -> GLenum -> GLsizei -> Ptr GLint -> IO ()
glGetInternalformativ
  = dyn_glGetInternalformativ ptr_glGetInternalformativ
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetInternalformativ
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetActiveAtomicCounterBufferiv #-}
 
ptr_glGetActiveAtomicCounterBufferiv :: FunPtr a
ptr_glGetActiveAtomicCounterBufferiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glGetActiveAtomicCounterBufferiv"
 
glGetActiveAtomicCounterBufferiv ::
                                 GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ()
glGetActiveAtomicCounterBufferiv
  = dyn_glGetActiveAtomicCounterBufferiv
      ptr_glGetActiveAtomicCounterBufferiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetActiveAtomicCounterBufferiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glDrawTransformFeedbackStreamInstanced #-}
 
ptr_glDrawTransformFeedbackStreamInstanced :: FunPtr a
ptr_glDrawTransformFeedbackStreamInstanced
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glDrawTransformFeedbackStreamInstanced"
 
glDrawTransformFeedbackStreamInstanced ::
                                       GLenum -> GLuint -> GLuint -> GLsizei -> IO ()
glDrawTransformFeedbackStreamInstanced
  = dyn_glDrawTransformFeedbackStreamInstanced
      ptr_glDrawTransformFeedbackStreamInstanced
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawTransformFeedbackStreamInstanced ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glDrawTransformFeedbackInstanced #-}
 
ptr_glDrawTransformFeedbackInstanced :: FunPtr a
ptr_glDrawTransformFeedbackInstanced
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glDrawTransformFeedbackInstanced"
 
glDrawTransformFeedbackInstanced ::
                                 GLenum -> GLuint -> GLsizei -> IO ()
glDrawTransformFeedbackInstanced
  = dyn_glDrawTransformFeedbackInstanced
      ptr_glDrawTransformFeedbackInstanced
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawTransformFeedbackInstanced ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glDrawElementsInstancedBaseVertexBaseInstance #-}
 
ptr_glDrawElementsInstancedBaseVertexBaseInstance :: FunPtr a
ptr_glDrawElementsInstancedBaseVertexBaseInstance
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glDrawElementsInstancedBaseVertexBaseInstance"
 
glDrawElementsInstancedBaseVertexBaseInstance ::
                                              GLenum ->
                                                GLsizei ->
                                                  GLenum ->
                                                    Ptr (Ptr a) ->
                                                      GLsizei -> GLint -> GLuint -> IO ()
glDrawElementsInstancedBaseVertexBaseInstance
  = dyn_glDrawElementsInstancedBaseVertexBaseInstance
      ptr_glDrawElementsInstancedBaseVertexBaseInstance
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawElementsInstancedBaseVertexBaseInstance ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei ->
                      GLenum -> Ptr (Ptr a) -> GLsizei -> GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glDrawElementsInstancedBaseInstance #-}
 
ptr_glDrawElementsInstancedBaseInstance :: FunPtr a
ptr_glDrawElementsInstancedBaseInstance
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glDrawElementsInstancedBaseInstance"
 
glDrawElementsInstancedBaseInstance ::
                                    GLenum ->
                                      GLsizei -> GLenum -> Ptr (Ptr a) -> GLsizei -> GLuint -> IO ()
glDrawElementsInstancedBaseInstance
  = dyn_glDrawElementsInstancedBaseInstance
      ptr_glDrawElementsInstancedBaseInstance
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawElementsInstancedBaseInstance ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei -> GLenum -> Ptr (Ptr a) -> GLsizei -> GLuint -> IO ())
 
{-# NOINLINE ptr_glDrawArraysInstancedBaseInstance #-}
 
ptr_glDrawArraysInstancedBaseInstance :: FunPtr a
ptr_glDrawArraysInstancedBaseInstance
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glDrawArraysInstancedBaseInstance"
 
glDrawArraysInstancedBaseInstance ::
                                  GLenum -> GLint -> GLsizei -> GLsizei -> GLuint -> IO ()
glDrawArraysInstancedBaseInstance
  = dyn_glDrawArraysInstancedBaseInstance
      ptr_glDrawArraysInstancedBaseInstance
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawArraysInstancedBaseInstance ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLsizei -> GLsizei -> GLuint -> IO ())
 
{-# NOINLINE ptr_glBindImageTexture #-}
 
ptr_glBindImageTexture :: FunPtr a
ptr_glBindImageTexture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_2"
        "glBindImageTexture"
 
glBindImageTexture ::
                   GLuint ->
                     GLuint -> GLint -> GLboolean -> GLint -> GLenum -> GLenum -> IO ()
glBindImageTexture = dyn_glBindImageTexture ptr_glBindImageTexture
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindImageTexture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint -> GLint -> GLboolean -> GLint -> GLenum -> GLenum -> IO ())
 
gl_VERTEX_ATTRIB_ARRAY_BARRIER_BIT :: GLbitfield
gl_VERTEX_ATTRIB_ARRAY_BARRIER_BIT = 1
 
gl_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY :: GLenum
gl_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = 36970
 
gl_UNSIGNED_INT_IMAGE_CUBE :: GLenum
gl_UNSIGNED_INT_IMAGE_CUBE = 36966
 
gl_UNSIGNED_INT_IMAGE_BUFFER :: GLenum
gl_UNSIGNED_INT_IMAGE_BUFFER = 36967
 
gl_UNSIGNED_INT_IMAGE_3D :: GLenum
gl_UNSIGNED_INT_IMAGE_3D = 36964
 
gl_UNSIGNED_INT_IMAGE_2D_RECT :: GLenum
gl_UNSIGNED_INT_IMAGE_2D_RECT = 36965
 
gl_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY :: GLenum
gl_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 36972
 
gl_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE :: GLenum
gl_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = 36971
 
gl_UNSIGNED_INT_IMAGE_2D_ARRAY :: GLenum
gl_UNSIGNED_INT_IMAGE_2D_ARRAY = 36969
 
gl_UNSIGNED_INT_IMAGE_2D :: GLenum
gl_UNSIGNED_INT_IMAGE_2D = 36963
 
gl_UNSIGNED_INT_IMAGE_1D_ARRAY :: GLenum
gl_UNSIGNED_INT_IMAGE_1D_ARRAY = 36968
 
gl_UNSIGNED_INT_IMAGE_1D :: GLenum
gl_UNSIGNED_INT_IMAGE_1D = 36962
 
gl_UNSIGNED_INT_ATOMIC_COUNTER :: GLenum
gl_UNSIGNED_INT_ATOMIC_COUNTER = 37595
 
gl_UNPACK_COMPRESSED_BLOCK_WIDTH :: GLenum
gl_UNPACK_COMPRESSED_BLOCK_WIDTH = 37159
 
gl_UNPACK_COMPRESSED_BLOCK_SIZE :: GLenum
gl_UNPACK_COMPRESSED_BLOCK_SIZE = 37162
 
gl_UNPACK_COMPRESSED_BLOCK_HEIGHT :: GLenum
gl_UNPACK_COMPRESSED_BLOCK_HEIGHT = 37160
 
gl_UNPACK_COMPRESSED_BLOCK_DEPTH :: GLenum
gl_UNPACK_COMPRESSED_BLOCK_DEPTH = 37161
 
gl_UNIFORM_BARRIER_BIT :: GLbitfield
gl_UNIFORM_BARRIER_BIT = 4
 
gl_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX :: GLenum
gl_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = 37594
 
gl_TRANSFORM_FEEDBACK_BARRIER_BIT :: GLbitfield
gl_TRANSFORM_FEEDBACK_BARRIER_BIT = 2048
 
gl_TEXTURE_UPDATE_BARRIER_BIT :: GLbitfield
gl_TEXTURE_UPDATE_BARRIER_BIT = 256
 
gl_TEXTURE_IMMUTABLE_FORMAT :: GLenum
gl_TEXTURE_IMMUTABLE_FORMAT = 37167
 
gl_TEXTURE_FETCH_BARRIER_BIT :: GLbitfield
gl_TEXTURE_FETCH_BARRIER_BIT = 8
 
gl_SHADER_IMAGE_ACCESS_BARRIER_BIT :: GLbitfield
gl_SHADER_IMAGE_ACCESS_BARRIER_BIT = 32
 
gl_PIXEL_BUFFER_BARRIER_BIT :: GLbitfield
gl_PIXEL_BUFFER_BARRIER_BIT = 128
 
gl_PACK_COMPRESSED_BLOCK_WIDTH :: GLenum
gl_PACK_COMPRESSED_BLOCK_WIDTH = 37163
 
gl_PACK_COMPRESSED_BLOCK_SIZE :: GLenum
gl_PACK_COMPRESSED_BLOCK_SIZE = 37166
 
gl_PACK_COMPRESSED_BLOCK_HEIGHT :: GLenum
gl_PACK_COMPRESSED_BLOCK_HEIGHT = 37164
 
gl_PACK_COMPRESSED_BLOCK_DEPTH :: GLenum
gl_PACK_COMPRESSED_BLOCK_DEPTH = 37165
 
gl_NUM_SAMPLE_COUNTS :: GLenum
gl_NUM_SAMPLE_COUNTS = 37760
 
gl_MIN_MAP_BUFFER_ALIGNMENT :: GLenum
gl_MIN_MAP_BUFFER_ALIGNMENT = 37052
 
gl_MAX_VERTEX_IMAGE_UNIFORMS :: GLenum
gl_MAX_VERTEX_IMAGE_UNIFORMS = 37066
 
gl_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS = 37580
 
gl_MAX_VERTEX_ATOMIC_COUNTERS :: GLenum
gl_MAX_VERTEX_ATOMIC_COUNTERS = 37586
 
gl_MAX_TESS_EVALUATION_IMAGE_UNIFORMS :: GLenum
gl_MAX_TESS_EVALUATION_IMAGE_UNIFORMS = 37068
 
gl_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS = 37582
 
gl_MAX_TESS_EVALUATION_ATOMIC_COUNTERS :: GLenum
gl_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = 37588
 
gl_MAX_TESS_CONTROL_IMAGE_UNIFORMS :: GLenum
gl_MAX_TESS_CONTROL_IMAGE_UNIFORMS = 37067
 
gl_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS = 37581
 
gl_MAX_TESS_CONTROL_ATOMIC_COUNTERS :: GLenum
gl_MAX_TESS_CONTROL_ATOMIC_COUNTERS = 37587
 
gl_MAX_IMAGE_UNITS :: GLenum
gl_MAX_IMAGE_UNITS = 36664
 
gl_MAX_IMAGE_SAMPLES :: GLenum
gl_MAX_IMAGE_SAMPLES = 36973
 
gl_MAX_GEOMETRY_IMAGE_UNIFORMS :: GLenum
gl_MAX_GEOMETRY_IMAGE_UNIFORMS = 37069
 
gl_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS = 37583
 
gl_MAX_GEOMETRY_ATOMIC_COUNTERS :: GLenum
gl_MAX_GEOMETRY_ATOMIC_COUNTERS = 37589
 
gl_MAX_FRAGMENT_IMAGE_UNIFORMS :: GLenum
gl_MAX_FRAGMENT_IMAGE_UNIFORMS = 37070
 
gl_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS = 37584
 
gl_MAX_FRAGMENT_ATOMIC_COUNTERS :: GLenum
gl_MAX_FRAGMENT_ATOMIC_COUNTERS = 37590
 
gl_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS :: GLenum
gl_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS = 36665
 
gl_MAX_COMBINED_IMAGE_UNIFORMS :: GLenum
gl_MAX_COMBINED_IMAGE_UNIFORMS = 37071
 
gl_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS = 37585
 
gl_MAX_COMBINED_ATOMIC_COUNTERS :: GLenum
gl_MAX_COMBINED_ATOMIC_COUNTERS = 37591
 
gl_MAX_ATOMIC_COUNTER_BUFFER_SIZE :: GLenum
gl_MAX_ATOMIC_COUNTER_BUFFER_SIZE = 37592
 
gl_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS :: GLenum
gl_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS = 37596
 
gl_INT_IMAGE_CUBE_MAP_ARRAY :: GLenum
gl_INT_IMAGE_CUBE_MAP_ARRAY = 36959
 
gl_INT_IMAGE_CUBE :: GLenum
gl_INT_IMAGE_CUBE = 36955
 
gl_INT_IMAGE_BUFFER :: GLenum
gl_INT_IMAGE_BUFFER = 36956
 
gl_INT_IMAGE_3D :: GLenum
gl_INT_IMAGE_3D = 36953
 
gl_INT_IMAGE_2D_RECT :: GLenum
gl_INT_IMAGE_2D_RECT = 36954
 
gl_INT_IMAGE_2D_MULTISAMPLE_ARRAY :: GLenum
gl_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 36961
 
gl_INT_IMAGE_2D_MULTISAMPLE :: GLenum
gl_INT_IMAGE_2D_MULTISAMPLE = 36960
 
gl_INT_IMAGE_2D_ARRAY :: GLenum
gl_INT_IMAGE_2D_ARRAY = 36958
 
gl_INT_IMAGE_2D :: GLenum
gl_INT_IMAGE_2D = 36952
 
gl_INT_IMAGE_1D_ARRAY :: GLenum
gl_INT_IMAGE_1D_ARRAY = 36957
 
gl_INT_IMAGE_1D :: GLenum
gl_INT_IMAGE_1D = 36951
 
gl_IMAGE_FORMAT_COMPATIBILITY_TYPE :: GLenum
gl_IMAGE_FORMAT_COMPATIBILITY_TYPE = 37063
 
gl_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE :: GLenum
gl_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE = 37064
 
gl_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS :: GLenum
gl_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS = 37065
 
gl_IMAGE_CUBE_MAP_ARRAY :: GLenum
gl_IMAGE_CUBE_MAP_ARRAY = 36948
 
gl_IMAGE_CUBE :: GLenum
gl_IMAGE_CUBE = 36944
 
gl_IMAGE_BUFFER :: GLenum
gl_IMAGE_BUFFER = 36945
 
gl_IMAGE_BINDING_NAME :: GLenum
gl_IMAGE_BINDING_NAME = 36666
 
gl_IMAGE_BINDING_LEVEL :: GLenum
gl_IMAGE_BINDING_LEVEL = 36667
 
gl_IMAGE_BINDING_LAYERED :: GLenum
gl_IMAGE_BINDING_LAYERED = 36668
 
gl_IMAGE_BINDING_LAYER :: GLenum
gl_IMAGE_BINDING_LAYER = 36669
 
gl_IMAGE_BINDING_FORMAT :: GLenum
gl_IMAGE_BINDING_FORMAT = 36974
 
gl_IMAGE_BINDING_ACCESS :: GLenum
gl_IMAGE_BINDING_ACCESS = 36670
 
gl_IMAGE_3D :: GLenum
gl_IMAGE_3D = 36942
 
gl_IMAGE_2D_RECT :: GLenum
gl_IMAGE_2D_RECT = 36943
 
gl_IMAGE_2D_MULTISAMPLE_ARRAY :: GLenum
gl_IMAGE_2D_MULTISAMPLE_ARRAY = 36950
 
gl_IMAGE_2D_MULTISAMPLE :: GLenum
gl_IMAGE_2D_MULTISAMPLE = 36949
 
gl_IMAGE_2D_ARRAY :: GLenum
gl_IMAGE_2D_ARRAY = 36947
 
gl_IMAGE_2D :: GLenum
gl_IMAGE_2D = 36941
 
gl_IMAGE_1D_ARRAY :: GLenum
gl_IMAGE_1D_ARRAY = 36946
 
gl_IMAGE_1D :: GLenum
gl_IMAGE_1D = 36940
 
gl_FRAMEBUFFER_BARRIER_BIT :: GLbitfield
gl_FRAMEBUFFER_BARRIER_BIT = 1024
 
gl_ELEMENT_ARRAY_BARRIER_BIT :: GLbitfield
gl_ELEMENT_ARRAY_BARRIER_BIT = 2
 
gl_COMMAND_BARRIER_BIT :: GLbitfield
gl_COMMAND_BARRIER_BIT = 64
 
gl_BUFFER_UPDATE_BARRIER_BIT :: GLbitfield
gl_BUFFER_UPDATE_BARRIER_BIT = 512
 
gl_ATOMIC_COUNTER_BUFFER_START :: GLenum
gl_ATOMIC_COUNTER_BUFFER_START = 37570
 
gl_ATOMIC_COUNTER_BUFFER_SIZE :: GLenum
gl_ATOMIC_COUNTER_BUFFER_SIZE = 37571
 
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = 37575
 
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER ::
                                                              GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER
  = 37577
 
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER ::
                                                           GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = 37576
 
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = 37578
 
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = 37579
 
gl_ATOMIC_COUNTER_BUFFER_DATA_SIZE :: GLenum
gl_ATOMIC_COUNTER_BUFFER_DATA_SIZE = 37572
 
gl_ATOMIC_COUNTER_BUFFER_BINDING :: GLenum
gl_ATOMIC_COUNTER_BUFFER_BINDING = 37569
 
gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES :: GLenum
gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = 37574
 
gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS :: GLenum
gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = 37573
 
gl_ATOMIC_COUNTER_BUFFER :: GLenum
gl_ATOMIC_COUNTER_BUFFER = 37568
 
gl_ATOMIC_COUNTER_BARRIER_BIT :: GLbitfield
gl_ATOMIC_COUNTER_BARRIER_BIT = 4096
 
gl_ALL_BARRIER_BITS :: GLbitfield
gl_ALL_BARRIER_BITS = 4294967295
 
gl_ACTIVE_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_ACTIVE_ATOMIC_COUNTER_BUFFERS = 37593