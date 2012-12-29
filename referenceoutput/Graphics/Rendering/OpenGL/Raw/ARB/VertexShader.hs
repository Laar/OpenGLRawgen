{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.VertexShader
       (glGetAttribLocationARB, glGetActiveAttribARB,
        glBindAttribLocationARB, gl_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB,
        gl_OBJECT_ACTIVE_ATTRIBUTES_ARB,
        gl_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB,
        gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB, gl_MAX_VARYING_FLOATS_ARB,
        gl_MAX_VERTEX_UNIFORM_COMPONENTS_ARB, gl_VERTEX_SHADER_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetAttribLocationARB #-}
 
ptr_glGetAttribLocationARB :: FunPtr a
ptr_glGetAttribLocationARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_shader"
        "glGetAttribLocationARB"
 
glGetAttribLocationARB :: GLhandle -> Ptr GLchar -> IO GLint
glGetAttribLocationARB
  = dyn_glGetAttribLocationARB ptr_glGetAttribLocationARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetAttribLocationARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> Ptr GLchar -> IO GLint)
 
{-# NOINLINE ptr_glGetActiveAttribARB #-}
 
ptr_glGetActiveAttribARB :: FunPtr a
ptr_glGetActiveAttribARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_shader"
        "glGetActiveAttribARB"
 
glGetActiveAttribARB ::
                     GLhandle ->
                       GLuint ->
                         GLsizei ->
                           Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO ()
glGetActiveAttribARB
  = dyn_glGetActiveAttribARB ptr_glGetActiveAttribARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetActiveAttribARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle ->
                    GLuint ->
                      GLsizei ->
                        Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glBindAttribLocationARB #-}
 
ptr_glBindAttribLocationARB :: FunPtr a
ptr_glBindAttribLocationARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_shader"
        "glBindAttribLocationARB"
 
glBindAttribLocationARB ::
                        GLhandle -> GLuint -> Ptr GLchar -> IO ()
glBindAttribLocationARB
  = dyn_glBindAttribLocationARB ptr_glBindAttribLocationARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindAttribLocationARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLuint -> Ptr GLchar -> IO ())
 
gl_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB :: GLenum
gl_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB = 35722
 
gl_OBJECT_ACTIVE_ATTRIBUTES_ARB :: GLenum
gl_OBJECT_ACTIVE_ATTRIBUTES_ARB = 35721
 
gl_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB :: GLenum
gl_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB = 35661
 
gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB :: GLenum
gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB = 35660
 
gl_MAX_VARYING_FLOATS_ARB :: GLenum
gl_MAX_VARYING_FLOATS_ARB = 35659
 
gl_MAX_VERTEX_UNIFORM_COMPONENTS_ARB :: GLenum
gl_MAX_VERTEX_UNIFORM_COMPONENTS_ARB = 35658
 
gl_VERTEX_SHADER_ARB :: GLenum
gl_VERTEX_SHADER_ARB = 35633