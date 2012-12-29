{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core31
       (glPrimitiveRestartIndex, glTexBuffer, glDrawElementsInstanced,
        glDrawArraysInstanced, glUniformBlockBinding,
        glGetActiveUniformBlockName, glGetActiveUniformBlockiv,
        glGetUniformBlockIndex, glGetActiveUniformName,
        glGetActiveUniformsiv, glGetUniformIndices, glCopyBufferSubData,
        gl_INVALID_INDEX, gl_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER,
        gl_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER,
        gl_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES,
        gl_UNIFORM_BLOCK_ACTIVE_UNIFORMS, gl_UNIFORM_BLOCK_NAME_LENGTH,
        gl_UNIFORM_BLOCK_DATA_SIZE, gl_UNIFORM_BLOCK_BINDING,
        gl_UNIFORM_IS_ROW_MAJOR, gl_UNIFORM_MATRIX_STRIDE,
        gl_UNIFORM_ARRAY_STRIDE, gl_UNIFORM_OFFSET, gl_UNIFORM_BLOCK_INDEX,
        gl_UNIFORM_NAME_LENGTH, gl_UNIFORM_SIZE, gl_UNIFORM_TYPE,
        gl_ACTIVE_UNIFORM_BLOCKS, gl_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH,
        gl_UNIFORM_BUFFER_OFFSET_ALIGNMENT,
        gl_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS,
        gl_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS,
        gl_MAX_UNIFORM_BLOCK_SIZE, gl_MAX_UNIFORM_BUFFER_BINDINGS,
        gl_MAX_COMBINED_UNIFORM_BLOCKS, gl_MAX_FRAGMENT_UNIFORM_BLOCKS,
        gl_MAX_VERTEX_UNIFORM_BLOCKS, gl_UNIFORM_BUFFER_SIZE,
        gl_UNIFORM_BUFFER_START, gl_UNIFORM_BUFFER_BINDING,
        gl_UNIFORM_BUFFER, gl_COPY_WRITE_BUFFER, gl_COPY_READ_BUFFER,
        gl_PRIMITIVE_RESTART_INDEX, gl_PRIMITIVE_RESTART,
        gl_SIGNED_NORMALIZED, gl_RGBA16_SNORM, gl_RGB16_SNORM,
        gl_RG16_SNORM, gl_R16_SNORM, gl_RGBA8_SNORM, gl_RGB8_SNORM,
        gl_RG8_SNORM, gl_R8_SNORM, gl_RGBA_SNORM, gl_RGB_SNORM,
        gl_RG_SNORM, gl_RED_SNORM, gl_MAX_RECTANGLE_TEXTURE_SIZE,
        gl_PROXY_TEXTURE_RECTANGLE, gl_TEXTURE_BINDING_RECTANGLE,
        gl_TEXTURE_RECTANGLE, gl_TEXTURE_BUFFER_FORMAT,
        gl_TEXTURE_BUFFER_DATA_STORE_BINDING, gl_TEXTURE_BINDING_BUFFER,
        gl_MAX_TEXTURE_BUFFER_SIZE, gl_TEXTURE_BUFFER,
        gl_UNSIGNED_INT_SAMPLER_BUFFER, gl_UNSIGNED_INT_SAMPLER_2D_RECT,
        gl_INT_SAMPLER_BUFFER, gl_INT_SAMPLER_2D_RECT, gl_SAMPLER_BUFFER,
        gl_SAMPLER_2D_RECT_SHADOW, gl_SAMPLER_2D_RECT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPrimitiveRestartIndex #-}
 
ptr_glPrimitiveRestartIndex :: FunPtr a
ptr_glPrimitiveRestartIndex
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_1"
        "glPrimitiveRestartIndex"
 
glPrimitiveRestartIndex :: GLuint -> IO ()
glPrimitiveRestartIndex
  = dyn_glPrimitiveRestartIndex ptr_glPrimitiveRestartIndex
 
foreign import CALLCONV unsafe "dynamic" dyn_glPrimitiveRestartIndex
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glTexBuffer #-}
 
ptr_glTexBuffer :: FunPtr a
ptr_glTexBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_1"
        "glTexBuffer"
 
glTexBuffer :: GLenum -> GLenum -> GLuint -> IO ()
glTexBuffer = dyn_glTexBuffer ptr_glTexBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glDrawElementsInstanced #-}
 
ptr_glDrawElementsInstanced :: FunPtr a
ptr_glDrawElementsInstanced
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_1"
        "glDrawElementsInstanced"
 
glDrawElementsInstanced ::
                        GLenum -> GLsizei -> GLenum -> Ptr a -> GLsizei -> IO ()
glDrawElementsInstanced
  = dyn_glDrawElementsInstanced ptr_glDrawElementsInstanced
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawElementsInstanced
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLenum -> Ptr a -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glDrawArraysInstanced #-}
 
ptr_glDrawArraysInstanced :: FunPtr a
ptr_glDrawArraysInstanced
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_1"
        "glDrawArraysInstanced"
 
glDrawArraysInstanced ::
                      GLenum -> GLint -> GLsizei -> GLsizei -> IO ()
glDrawArraysInstanced
  = dyn_glDrawArraysInstanced ptr_glDrawArraysInstanced
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawArraysInstanced
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glUniformBlockBinding #-}
 
ptr_glUniformBlockBinding :: FunPtr a
ptr_glUniformBlockBinding
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_1"
        "glUniformBlockBinding"
 
glUniformBlockBinding :: GLuint -> GLuint -> GLuint -> IO ()
glUniformBlockBinding
  = dyn_glUniformBlockBinding ptr_glUniformBlockBinding
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformBlockBinding
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glGetActiveUniformBlockName #-}
 
ptr_glGetActiveUniformBlockName :: FunPtr a
ptr_glGetActiveUniformBlockName
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_1"
        "glGetActiveUniformBlockName"
 
glGetActiveUniformBlockName ::
                            GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetActiveUniformBlockName
  = dyn_glGetActiveUniformBlockName ptr_glGetActiveUniformBlockName
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetActiveUniformBlockName ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetActiveUniformBlockiv #-}
 
ptr_glGetActiveUniformBlockiv :: FunPtr a
ptr_glGetActiveUniformBlockiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_1"
        "glGetActiveUniformBlockiv"
 
glGetActiveUniformBlockiv ::
                          GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ()
glGetActiveUniformBlockiv
  = dyn_glGetActiveUniformBlockiv ptr_glGetActiveUniformBlockiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetActiveUniformBlockiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetUniformBlockIndex #-}
 
ptr_glGetUniformBlockIndex :: FunPtr a
ptr_glGetUniformBlockIndex
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_1"
        "glGetUniformBlockIndex"
 
glGetUniformBlockIndex :: GLuint -> Ptr GLchar -> IO GLuint
glGetUniformBlockIndex
  = dyn_glGetUniformBlockIndex ptr_glGetUniformBlockIndex
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformBlockIndex
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLchar -> IO GLuint)
 
{-# NOINLINE ptr_glGetActiveUniformName #-}
 
ptr_glGetActiveUniformName :: FunPtr a
ptr_glGetActiveUniformName
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_1"
        "glGetActiveUniformName"
 
glGetActiveUniformName ::
                       GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetActiveUniformName
  = dyn_glGetActiveUniformName ptr_glGetActiveUniformName
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetActiveUniformName
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetActiveUniformsiv #-}
 
ptr_glGetActiveUniformsiv :: FunPtr a
ptr_glGetActiveUniformsiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_1"
        "glGetActiveUniformsiv"
 
glGetActiveUniformsiv ::
                      GLuint -> GLsizei -> Ptr GLuint -> GLenum -> Ptr GLint -> IO ()
glGetActiveUniformsiv
  = dyn_glGetActiveUniformsiv ptr_glGetActiveUniformsiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetActiveUniformsiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetUniformIndices #-}
 
ptr_glGetUniformIndices :: FunPtr a
ptr_glGetUniformIndices
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_1"
        "glGetUniformIndices"
 
glGetUniformIndices ::
                    GLuint -> GLsizei -> Ptr (Ptr GLchar) -> Ptr GLuint -> IO ()
glGetUniformIndices
  = dyn_glGetUniformIndices ptr_glGetUniformIndices
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformIndices ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr (Ptr GLchar) -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glCopyBufferSubData #-}
 
ptr_glCopyBufferSubData :: FunPtr a
ptr_glCopyBufferSubData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_1"
        "glCopyBufferSubData"
 
glCopyBufferSubData ::
                    GLenum -> GLenum -> GLintptr -> GLintptr -> GLsizeiptr -> IO ()
glCopyBufferSubData
  = dyn_glCopyBufferSubData ptr_glCopyBufferSubData
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyBufferSubData ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLintptr -> GLintptr -> GLsizeiptr -> IO ())
 
gl_INVALID_INDEX :: GLenum
gl_INVALID_INDEX = 4294967295
 
gl_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER :: GLenum
gl_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 35398
 
gl_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER :: GLenum
gl_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 35396
 
gl_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES :: GLenum
gl_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 35395
 
gl_UNIFORM_BLOCK_ACTIVE_UNIFORMS :: GLenum
gl_UNIFORM_BLOCK_ACTIVE_UNIFORMS = 35394
 
gl_UNIFORM_BLOCK_NAME_LENGTH :: GLenum
gl_UNIFORM_BLOCK_NAME_LENGTH = 35393
 
gl_UNIFORM_BLOCK_DATA_SIZE :: GLenum
gl_UNIFORM_BLOCK_DATA_SIZE = 35392
 
gl_UNIFORM_BLOCK_BINDING :: GLenum
gl_UNIFORM_BLOCK_BINDING = 35391
 
gl_UNIFORM_IS_ROW_MAJOR :: GLenum
gl_UNIFORM_IS_ROW_MAJOR = 35390
 
gl_UNIFORM_MATRIX_STRIDE :: GLenum
gl_UNIFORM_MATRIX_STRIDE = 35389
 
gl_UNIFORM_ARRAY_STRIDE :: GLenum
gl_UNIFORM_ARRAY_STRIDE = 35388
 
gl_UNIFORM_OFFSET :: GLenum
gl_UNIFORM_OFFSET = 35387
 
gl_UNIFORM_BLOCK_INDEX :: GLenum
gl_UNIFORM_BLOCK_INDEX = 35386
 
gl_UNIFORM_NAME_LENGTH :: GLenum
gl_UNIFORM_NAME_LENGTH = 35385
 
gl_UNIFORM_SIZE :: GLenum
gl_UNIFORM_SIZE = 35384
 
gl_UNIFORM_TYPE :: GLenum
gl_UNIFORM_TYPE = 35383
 
gl_ACTIVE_UNIFORM_BLOCKS :: GLenum
gl_ACTIVE_UNIFORM_BLOCKS = 35382
 
gl_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH :: GLenum
gl_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = 35381
 
gl_UNIFORM_BUFFER_OFFSET_ALIGNMENT :: GLenum
gl_UNIFORM_BUFFER_OFFSET_ALIGNMENT = 35380
 
gl_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 35379
 
gl_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 35377
 
gl_MAX_UNIFORM_BLOCK_SIZE :: GLenum
gl_MAX_UNIFORM_BLOCK_SIZE = 35376
 
gl_MAX_UNIFORM_BUFFER_BINDINGS :: GLenum
gl_MAX_UNIFORM_BUFFER_BINDINGS = 35375
 
gl_MAX_COMBINED_UNIFORM_BLOCKS :: GLenum
gl_MAX_COMBINED_UNIFORM_BLOCKS = 35374
 
gl_MAX_FRAGMENT_UNIFORM_BLOCKS :: GLenum
gl_MAX_FRAGMENT_UNIFORM_BLOCKS = 35373
 
gl_MAX_VERTEX_UNIFORM_BLOCKS :: GLenum
gl_MAX_VERTEX_UNIFORM_BLOCKS = 35371
 
gl_UNIFORM_BUFFER_SIZE :: GLenum
gl_UNIFORM_BUFFER_SIZE = 35370
 
gl_UNIFORM_BUFFER_START :: GLenum
gl_UNIFORM_BUFFER_START = 35369
 
gl_UNIFORM_BUFFER_BINDING :: GLenum
gl_UNIFORM_BUFFER_BINDING = 35368
 
gl_UNIFORM_BUFFER :: GLenum
gl_UNIFORM_BUFFER = 35345
 
gl_COPY_WRITE_BUFFER :: GLenum
gl_COPY_WRITE_BUFFER = 36663
 
gl_COPY_READ_BUFFER :: GLenum
gl_COPY_READ_BUFFER = 36662
 
gl_PRIMITIVE_RESTART_INDEX :: GLenum
gl_PRIMITIVE_RESTART_INDEX = 36766
 
gl_PRIMITIVE_RESTART :: GLenum
gl_PRIMITIVE_RESTART = 36765
 
gl_SIGNED_NORMALIZED :: GLenum
gl_SIGNED_NORMALIZED = 36764
 
gl_RGBA16_SNORM :: GLenum
gl_RGBA16_SNORM = 36763
 
gl_RGB16_SNORM :: GLenum
gl_RGB16_SNORM = 36762
 
gl_RG16_SNORM :: GLenum
gl_RG16_SNORM = 36761
 
gl_R16_SNORM :: GLenum
gl_R16_SNORM = 36760
 
gl_RGBA8_SNORM :: GLenum
gl_RGBA8_SNORM = 36759
 
gl_RGB8_SNORM :: GLenum
gl_RGB8_SNORM = 36758
 
gl_RG8_SNORM :: GLenum
gl_RG8_SNORM = 36757
 
gl_R8_SNORM :: GLenum
gl_R8_SNORM = 36756
 
gl_RGBA_SNORM :: GLenum
gl_RGBA_SNORM = 36755
 
gl_RGB_SNORM :: GLenum
gl_RGB_SNORM = 36754
 
gl_RG_SNORM :: GLenum
gl_RG_SNORM = 36753
 
gl_RED_SNORM :: GLenum
gl_RED_SNORM = 36752
 
gl_MAX_RECTANGLE_TEXTURE_SIZE :: GLenum
gl_MAX_RECTANGLE_TEXTURE_SIZE = 34040
 
gl_PROXY_TEXTURE_RECTANGLE :: GLenum
gl_PROXY_TEXTURE_RECTANGLE = 34039
 
gl_TEXTURE_BINDING_RECTANGLE :: GLenum
gl_TEXTURE_BINDING_RECTANGLE = 34038
 
gl_TEXTURE_RECTANGLE :: GLenum
gl_TEXTURE_RECTANGLE = 34037
 
gl_TEXTURE_BUFFER_FORMAT :: GLenum
gl_TEXTURE_BUFFER_FORMAT = 35886
 
gl_TEXTURE_BUFFER_DATA_STORE_BINDING :: GLenum
gl_TEXTURE_BUFFER_DATA_STORE_BINDING = 35885
 
gl_TEXTURE_BINDING_BUFFER :: GLenum
gl_TEXTURE_BINDING_BUFFER = 35884
 
gl_MAX_TEXTURE_BUFFER_SIZE :: GLenum
gl_MAX_TEXTURE_BUFFER_SIZE = 35883
 
gl_TEXTURE_BUFFER :: GLenum
gl_TEXTURE_BUFFER = 35882
 
gl_UNSIGNED_INT_SAMPLER_BUFFER :: GLenum
gl_UNSIGNED_INT_SAMPLER_BUFFER = 36312
 
gl_UNSIGNED_INT_SAMPLER_2D_RECT :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_RECT = 36309
 
gl_INT_SAMPLER_BUFFER :: GLenum
gl_INT_SAMPLER_BUFFER = 36304
 
gl_INT_SAMPLER_2D_RECT :: GLenum
gl_INT_SAMPLER_2D_RECT = 36301
 
gl_SAMPLER_BUFFER :: GLenum
gl_SAMPLER_BUFFER = 36290
 
gl_SAMPLER_2D_RECT_SHADOW :: GLenum
gl_SAMPLER_2D_RECT_SHADOW = 35684
 
gl_SAMPLER_2D_RECT :: GLenum
gl_SAMPLER_2D_RECT = 35683