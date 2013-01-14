{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.BindableUniform
       (glUniformBuffer, glGetUniformOffset, glGetUniformBufferSize,
        gl_UNIFORM_BUFFER, gl_UNIFORM_BUFFER_BINDING,
        gl_MAX_VERTEX_BINDABLE_UNIFORMS, gl_MAX_GEOMETRY_BINDABLE_UNIFORMS,
        gl_MAX_FRAGMENT_BINDABLE_UNIFORMS, gl_MAX_BINDABLE_UNIFORM_SIZE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUniformBuffer #-}
 
ptr_glUniformBuffer :: FunPtr a
ptr_glUniformBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_bindable_uniform"
        "glUniformBufferEXT"
 
glUniformBuffer :: GLuint -> GLint -> GLuint -> IO ()
glUniformBuffer = dyn_glUniformBuffer ptr_glUniformBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glGetUniformOffset #-}
 
ptr_glGetUniformOffset :: FunPtr a
ptr_glGetUniformOffset
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_bindable_uniform"
        "glGetUniformOffsetEXT"
 
glGetUniformOffset :: GLuint -> GLint -> IO GLsizeiptr
glGetUniformOffset = dyn_glGetUniformOffset ptr_glGetUniformOffset
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformOffset ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> IO GLsizeiptr)
 
{-# NOINLINE ptr_glGetUniformBufferSize #-}
 
ptr_glGetUniformBufferSize :: FunPtr a
ptr_glGetUniformBufferSize
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_bindable_uniform"
        "glGetUniformBufferSizeEXT"
 
glGetUniformBufferSize :: GLuint -> GLint -> IO GLint
glGetUniformBufferSize
  = dyn_glGetUniformBufferSize ptr_glGetUniformBufferSize
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformBufferSize
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> IO GLint)
 
gl_UNIFORM_BUFFER :: GLenum
gl_UNIFORM_BUFFER = 36334
 
gl_UNIFORM_BUFFER_BINDING :: GLenum
gl_UNIFORM_BUFFER_BINDING = 36335
 
gl_MAX_VERTEX_BINDABLE_UNIFORMS :: GLenum
gl_MAX_VERTEX_BINDABLE_UNIFORMS = 36322
 
gl_MAX_GEOMETRY_BINDABLE_UNIFORMS :: GLenum
gl_MAX_GEOMETRY_BINDABLE_UNIFORMS = 36324
 
gl_MAX_FRAGMENT_BINDABLE_UNIFORMS :: GLenum
gl_MAX_FRAGMENT_BINDABLE_UNIFORMS = 36323
 
gl_MAX_BINDABLE_UNIFORM_SIZE :: GLenum
gl_MAX_BINDABLE_UNIFORM_SIZE = 36333