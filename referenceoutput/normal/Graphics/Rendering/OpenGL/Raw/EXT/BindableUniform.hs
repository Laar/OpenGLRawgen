{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.BindableUniform
       (glUniformBufferEXT, glGetUniformOffsetEXT,
        glGetUniformBufferSizeEXT, gl_UNIFORM_BUFFER_EXT,
        gl_UNIFORM_BUFFER_BINDING_EXT, gl_MAX_VERTEX_BINDABLE_UNIFORMS_EXT,
        gl_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT,
        gl_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT,
        gl_MAX_BINDABLE_UNIFORM_SIZE_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUniformBufferEXT #-}
 
ptr_glUniformBufferEXT :: FunPtr a
ptr_glUniformBufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_bindable_uniform"
        "glUniformBufferEXT"
 
glUniformBufferEXT :: GLuint -> GLint -> GLuint -> IO ()
glUniformBufferEXT = dyn_glUniformBufferEXT ptr_glUniformBufferEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformBufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glGetUniformOffsetEXT #-}
 
ptr_glGetUniformOffsetEXT :: FunPtr a
ptr_glGetUniformOffsetEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_bindable_uniform"
        "glGetUniformOffsetEXT"
 
glGetUniformOffsetEXT :: GLuint -> GLint -> IO GLsizeiptr
glGetUniformOffsetEXT
  = dyn_glGetUniformOffsetEXT ptr_glGetUniformOffsetEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformOffsetEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> IO GLsizeiptr)
 
{-# NOINLINE ptr_glGetUniformBufferSizeEXT #-}
 
ptr_glGetUniformBufferSizeEXT :: FunPtr a
ptr_glGetUniformBufferSizeEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_bindable_uniform"
        "glGetUniformBufferSizeEXT"
 
glGetUniformBufferSizeEXT :: GLuint -> GLint -> IO GLint
glGetUniformBufferSizeEXT
  = dyn_glGetUniformBufferSizeEXT ptr_glGetUniformBufferSizeEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetUniformBufferSizeEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> IO GLint)
 
gl_UNIFORM_BUFFER_EXT :: GLenum
gl_UNIFORM_BUFFER_EXT = 36334
 
gl_UNIFORM_BUFFER_BINDING_EXT :: GLenum
gl_UNIFORM_BUFFER_BINDING_EXT = 36335
 
gl_MAX_VERTEX_BINDABLE_UNIFORMS_EXT :: GLenum
gl_MAX_VERTEX_BINDABLE_UNIFORMS_EXT = 36322
 
gl_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT :: GLenum
gl_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT = 36324
 
gl_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT :: GLenum
gl_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT = 36323
 
gl_MAX_BINDABLE_UNIFORM_SIZE_EXT :: GLenum
gl_MAX_BINDABLE_UNIFORM_SIZE_EXT = 36333