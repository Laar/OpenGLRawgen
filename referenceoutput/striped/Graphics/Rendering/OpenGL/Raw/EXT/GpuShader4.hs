{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.GpuShader4
       (glUniform4uiv, glUniform4ui, glUniform3uiv, glUniform3ui,
        glUniform2uiv, glUniform2ui, glUniform1uiv, glUniform1ui,
        glGetUniformuiv, glGetFragDataLocation, glBindFragDataLocation,
        gl_UNSIGNED_INT_VEC4, gl_UNSIGNED_INT_VEC3, gl_UNSIGNED_INT_VEC2,
        gl_UNSIGNED_INT_SAMPLER_CUBE, gl_UNSIGNED_INT_SAMPLER_BUFFER,
        gl_UNSIGNED_INT_SAMPLER_3D, gl_UNSIGNED_INT_SAMPLER_2D_RECT,
        gl_UNSIGNED_INT_SAMPLER_2D, gl_UNSIGNED_INT_SAMPLER_2D_ARRAY,
        gl_UNSIGNED_INT_SAMPLER_1D, gl_UNSIGNED_INT_SAMPLER_1D_ARRAY,
        gl_SAMPLER_CUBE_SHADOW, gl_SAMPLER_BUFFER,
        gl_SAMPLER_2D_ARRAY_SHADOW, gl_SAMPLER_2D_ARRAY,
        gl_SAMPLER_1D_ARRAY_SHADOW, gl_SAMPLER_1D_ARRAY,
        gl_INT_SAMPLER_CUBE, gl_INT_SAMPLER_BUFFER, gl_INT_SAMPLER_3D,
        gl_INT_SAMPLER_2D_RECT, gl_INT_SAMPLER_2D, gl_INT_SAMPLER_2D_ARRAY,
        gl_INT_SAMPLER_1D, gl_INT_SAMPLER_1D_ARRAY)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUniform4uiv #-}
 
ptr_glUniform4uiv :: FunPtr a
ptr_glUniform4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform4uivEXT"
 
glUniform4uiv :: GLint -> GLsizei -> Ptr GLuint -> IO ()
glUniform4uiv = dyn_glUniform4uiv ptr_glUniform4uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform4ui #-}
 
ptr_glUniform4ui :: FunPtr a
ptr_glUniform4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform4uiEXT"
 
glUniform4ui ::
             GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glUniform4ui = dyn_glUniform4ui ptr_glUniform4ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform3uiv #-}
 
ptr_glUniform3uiv :: FunPtr a
ptr_glUniform3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform3uivEXT"
 
glUniform3uiv :: GLint -> GLsizei -> Ptr GLuint -> IO ()
glUniform3uiv = dyn_glUniform3uiv ptr_glUniform3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform3ui #-}
 
ptr_glUniform3ui :: FunPtr a
ptr_glUniform3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform3uiEXT"
 
glUniform3ui :: GLint -> GLuint -> GLuint -> GLuint -> IO ()
glUniform3ui = dyn_glUniform3ui ptr_glUniform3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform2uiv #-}
 
ptr_glUniform2uiv :: FunPtr a
ptr_glUniform2uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform2uivEXT"
 
glUniform2uiv :: GLint -> GLsizei -> Ptr GLuint -> IO ()
glUniform2uiv = dyn_glUniform2uiv ptr_glUniform2uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform2ui #-}
 
ptr_glUniform2ui :: FunPtr a
ptr_glUniform2ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform2uiEXT"
 
glUniform2ui :: GLint -> GLuint -> GLuint -> IO ()
glUniform2ui = dyn_glUniform2ui ptr_glUniform2ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform1uiv #-}
 
ptr_glUniform1uiv :: FunPtr a
ptr_glUniform1uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform1uivEXT"
 
glUniform1uiv :: GLint -> GLsizei -> Ptr GLuint -> IO ()
glUniform1uiv = dyn_glUniform1uiv ptr_glUniform1uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glUniform1ui #-}
 
ptr_glUniform1ui :: FunPtr a
ptr_glUniform1ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glUniform1uiEXT"
 
glUniform1ui :: GLint -> GLuint -> IO ()
glUniform1ui = dyn_glUniform1ui ptr_glUniform1ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glGetUniformuiv #-}
 
ptr_glGetUniformuiv :: FunPtr a
ptr_glGetUniformuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glGetUniformuivEXT"
 
glGetUniformuiv :: GLuint -> GLint -> Ptr GLuint -> IO ()
glGetUniformuiv = dyn_glGetUniformuiv ptr_glGetUniformuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetFragDataLocation #-}
 
ptr_glGetFragDataLocation :: FunPtr a
ptr_glGetFragDataLocation
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_gpu_shader4"
        "glGetFragDataLocationEXT"
 
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
        "GL_EXT_gpu_shader4"
        "glBindFragDataLocationEXT"
 
glBindFragDataLocation :: GLuint -> GLuint -> Ptr GLchar -> IO ()
glBindFragDataLocation
  = dyn_glBindFragDataLocation ptr_glBindFragDataLocation
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindFragDataLocation
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> Ptr GLchar -> IO ())
 
gl_UNSIGNED_INT_VEC4 :: GLenum
gl_UNSIGNED_INT_VEC4 = 36296
 
gl_UNSIGNED_INT_VEC3 :: GLenum
gl_UNSIGNED_INT_VEC3 = 36295
 
gl_UNSIGNED_INT_VEC2 :: GLenum
gl_UNSIGNED_INT_VEC2 = 36294
 
gl_UNSIGNED_INT_SAMPLER_CUBE :: GLenum
gl_UNSIGNED_INT_SAMPLER_CUBE = 36308
 
gl_UNSIGNED_INT_SAMPLER_BUFFER :: GLenum
gl_UNSIGNED_INT_SAMPLER_BUFFER = 36312
 
gl_UNSIGNED_INT_SAMPLER_3D :: GLenum
gl_UNSIGNED_INT_SAMPLER_3D = 36307
 
gl_UNSIGNED_INT_SAMPLER_2D_RECT :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_RECT = 36309
 
gl_UNSIGNED_INT_SAMPLER_2D :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D = 36306
 
gl_UNSIGNED_INT_SAMPLER_2D_ARRAY :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_ARRAY = 36311
 
gl_UNSIGNED_INT_SAMPLER_1D :: GLenum
gl_UNSIGNED_INT_SAMPLER_1D = 36305
 
gl_UNSIGNED_INT_SAMPLER_1D_ARRAY :: GLenum
gl_UNSIGNED_INT_SAMPLER_1D_ARRAY = 36310
 
gl_SAMPLER_CUBE_SHADOW :: GLenum
gl_SAMPLER_CUBE_SHADOW = 36293
 
gl_SAMPLER_BUFFER :: GLenum
gl_SAMPLER_BUFFER = 36290
 
gl_SAMPLER_2D_ARRAY_SHADOW :: GLenum
gl_SAMPLER_2D_ARRAY_SHADOW = 36292
 
gl_SAMPLER_2D_ARRAY :: GLenum
gl_SAMPLER_2D_ARRAY = 36289
 
gl_SAMPLER_1D_ARRAY_SHADOW :: GLenum
gl_SAMPLER_1D_ARRAY_SHADOW = 36291
 
gl_SAMPLER_1D_ARRAY :: GLenum
gl_SAMPLER_1D_ARRAY = 36288
 
gl_INT_SAMPLER_CUBE :: GLenum
gl_INT_SAMPLER_CUBE = 36300
 
gl_INT_SAMPLER_BUFFER :: GLenum
gl_INT_SAMPLER_BUFFER = 36304
 
gl_INT_SAMPLER_3D :: GLenum
gl_INT_SAMPLER_3D = 36299
 
gl_INT_SAMPLER_2D_RECT :: GLenum
gl_INT_SAMPLER_2D_RECT = 36301
 
gl_INT_SAMPLER_2D :: GLenum
gl_INT_SAMPLER_2D = 36298
 
gl_INT_SAMPLER_2D_ARRAY :: GLenum
gl_INT_SAMPLER_2D_ARRAY = 36303
 
gl_INT_SAMPLER_1D :: GLenum
gl_INT_SAMPLER_1D = 36297
 
gl_INT_SAMPLER_1D_ARRAY :: GLenum
gl_INT_SAMPLER_1D_ARRAY = 36302