{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.GpuShader4
       (glUniform4uivEXT, glUniform4uiEXT, glUniform3uivEXT,
        glUniform3uiEXT, glUniform2uivEXT, glUniform2uiEXT,
        glUniform1uivEXT, glUniform1uiEXT, glGetUniformuivEXT,
        glGetFragDataLocationEXT, glBindFragDataLocationEXT,
        gl_UNSIGNED_INT_VEC4_EXT, gl_UNSIGNED_INT_VEC3_EXT,
        gl_UNSIGNED_INT_VEC2_EXT, gl_UNSIGNED_INT_SAMPLER_CUBE_EXT,
        gl_UNSIGNED_INT_SAMPLER_BUFFER_EXT, gl_UNSIGNED_INT_SAMPLER_3D_EXT,
        gl_UNSIGNED_INT_SAMPLER_2D_RECT_EXT,
        gl_UNSIGNED_INT_SAMPLER_2D_EXT,
        gl_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT,
        gl_UNSIGNED_INT_SAMPLER_1D_EXT,
        gl_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT, gl_SAMPLER_CUBE_SHADOW_EXT,
        gl_SAMPLER_BUFFER_EXT, gl_SAMPLER_2D_ARRAY_SHADOW_EXT,
        gl_SAMPLER_2D_ARRAY_EXT, gl_SAMPLER_1D_ARRAY_SHADOW_EXT,
        gl_SAMPLER_1D_ARRAY_EXT, gl_INT_SAMPLER_CUBE_EXT,
        gl_INT_SAMPLER_BUFFER_EXT, gl_INT_SAMPLER_3D_EXT,
        gl_INT_SAMPLER_2D_RECT_EXT, gl_INT_SAMPLER_2D_EXT,
        gl_INT_SAMPLER_2D_ARRAY_EXT, gl_INT_SAMPLER_1D_EXT,
        gl_INT_SAMPLER_1D_ARRAY_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUniform4uivEXT #-}
 
ptr_glUniform4uivEXT :: FunPtr a
ptr_glUniform4uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform4uivEXT"
 
glUniform4uivEXT :: GLint -> GLsizei -> Ptr GLuint -> IO ()
glUniform4uivEXT = dyn_glUniform4uivEXT ptr_glUniform4uivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4uivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform4uiEXT #-}
 
ptr_glUniform4uiEXT :: FunPtr a
ptr_glUniform4uiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform4uiEXT"
 
glUniform4uiEXT ::
                GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glUniform4uiEXT = dyn_glUniform4uiEXT ptr_glUniform4uiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4uiEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform3uivEXT #-}
 
ptr_glUniform3uivEXT :: FunPtr a
ptr_glUniform3uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform3uivEXT"
 
glUniform3uivEXT :: GLint -> GLsizei -> Ptr GLuint -> IO ()
glUniform3uivEXT = dyn_glUniform3uivEXT ptr_glUniform3uivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3uivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform3uiEXT #-}
 
ptr_glUniform3uiEXT :: FunPtr a
ptr_glUniform3uiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform3uiEXT"
 
glUniform3uiEXT :: GLint -> GLuint -> GLuint -> GLuint -> IO ()
glUniform3uiEXT = dyn_glUniform3uiEXT ptr_glUniform3uiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3uiEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform2uivEXT #-}
 
ptr_glUniform2uivEXT :: FunPtr a
ptr_glUniform2uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform2uivEXT"
 
glUniform2uivEXT :: GLint -> GLsizei -> Ptr GLuint -> IO ()
glUniform2uivEXT = dyn_glUniform2uivEXT ptr_glUniform2uivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2uivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform2uiEXT #-}
 
ptr_glUniform2uiEXT :: FunPtr a
ptr_glUniform2uiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform2uiEXT"
 
glUniform2uiEXT :: GLint -> GLuint -> GLuint -> IO ()
glUniform2uiEXT = dyn_glUniform2uiEXT ptr_glUniform2uiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2uiEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform1uivEXT #-}
 
ptr_glUniform1uivEXT :: FunPtr a
ptr_glUniform1uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform1uivEXT"
 
glUniform1uivEXT :: GLint -> GLsizei -> Ptr GLuint -> IO ()
glUniform1uivEXT = dyn_glUniform1uivEXT ptr_glUniform1uivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1uivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform1uiEXT #-}
 
ptr_glUniform1uiEXT :: FunPtr a
ptr_glUniform1uiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform1uiEXT"
 
glUniform1uiEXT :: GLint -> GLuint -> IO ()
glUniform1uiEXT = dyn_glUniform1uiEXT ptr_glUniform1uiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1uiEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glGetUniformuivEXT #-}
 
ptr_glGetUniformuivEXT :: FunPtr a
ptr_glGetUniformuivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glGetUniformuivEXT"
 
glGetUniformuivEXT :: GLuint -> GLint -> Ptr GLuint -> IO ()
glGetUniformuivEXT = dyn_glGetUniformuivEXT ptr_glGetUniformuivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformuivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetFragDataLocationEXT #-}
 
ptr_glGetFragDataLocationEXT :: FunPtr a
ptr_glGetFragDataLocationEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glGetFragDataLocationEXT"
 
glGetFragDataLocationEXT :: GLuint -> Ptr GLchar -> IO GLint
glGetFragDataLocationEXT
  = dyn_glGetFragDataLocationEXT ptr_glGetFragDataLocationEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetFragDataLocationEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLchar -> IO GLint)
 
{-# NOINLINE ptr_glBindFragDataLocationEXT #-}
 
ptr_glBindFragDataLocationEXT :: FunPtr a
ptr_glBindFragDataLocationEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glBindFragDataLocationEXT"
 
glBindFragDataLocationEXT ::
                          GLuint -> GLuint -> Ptr GLchar -> IO ()
glBindFragDataLocationEXT
  = dyn_glBindFragDataLocationEXT ptr_glBindFragDataLocationEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBindFragDataLocationEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> Ptr GLchar -> IO ())
 
gl_UNSIGNED_INT_VEC4_EXT :: GLenum
gl_UNSIGNED_INT_VEC4_EXT = 36296
 
gl_UNSIGNED_INT_VEC3_EXT :: GLenum
gl_UNSIGNED_INT_VEC3_EXT = 36295
 
gl_UNSIGNED_INT_VEC2_EXT :: GLenum
gl_UNSIGNED_INT_VEC2_EXT = 36294
 
gl_UNSIGNED_INT_SAMPLER_CUBE_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_CUBE_EXT = 36308
 
gl_UNSIGNED_INT_SAMPLER_BUFFER_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_BUFFER_EXT = 36312
 
gl_UNSIGNED_INT_SAMPLER_3D_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_3D_EXT = 36307
 
gl_UNSIGNED_INT_SAMPLER_2D_RECT_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_RECT_EXT = 36309
 
gl_UNSIGNED_INT_SAMPLER_2D_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_EXT = 36306
 
gl_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT = 36311
 
gl_UNSIGNED_INT_SAMPLER_1D_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_1D_EXT = 36305
 
gl_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT = 36310
 
gl_SAMPLER_CUBE_SHADOW_EXT :: GLenum
gl_SAMPLER_CUBE_SHADOW_EXT = 36293
 
gl_SAMPLER_BUFFER_EXT :: GLenum
gl_SAMPLER_BUFFER_EXT = 36290
 
gl_SAMPLER_2D_ARRAY_SHADOW_EXT :: GLenum
gl_SAMPLER_2D_ARRAY_SHADOW_EXT = 36292
 
gl_SAMPLER_2D_ARRAY_EXT :: GLenum
gl_SAMPLER_2D_ARRAY_EXT = 36289
 
gl_SAMPLER_1D_ARRAY_SHADOW_EXT :: GLenum
gl_SAMPLER_1D_ARRAY_SHADOW_EXT = 36291
 
gl_SAMPLER_1D_ARRAY_EXT :: GLenum
gl_SAMPLER_1D_ARRAY_EXT = 36288
 
gl_INT_SAMPLER_CUBE_EXT :: GLenum
gl_INT_SAMPLER_CUBE_EXT = 36300
 
gl_INT_SAMPLER_BUFFER_EXT :: GLenum
gl_INT_SAMPLER_BUFFER_EXT = 36304
 
gl_INT_SAMPLER_3D_EXT :: GLenum
gl_INT_SAMPLER_3D_EXT = 36299
 
gl_INT_SAMPLER_2D_RECT_EXT :: GLenum
gl_INT_SAMPLER_2D_RECT_EXT = 36301
 
gl_INT_SAMPLER_2D_EXT :: GLenum
gl_INT_SAMPLER_2D_EXT = 36298
 
gl_INT_SAMPLER_2D_ARRAY_EXT :: GLenum
gl_INT_SAMPLER_2D_ARRAY_EXT = 36303
 
gl_INT_SAMPLER_1D_EXT :: GLenum
gl_INT_SAMPLER_1D_EXT = 36297
 
gl_INT_SAMPLER_1D_ARRAY_EXT :: GLenum
gl_INT_SAMPLER_1D_ARRAY_EXT = 36302