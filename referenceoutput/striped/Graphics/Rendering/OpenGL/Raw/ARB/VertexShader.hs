{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.VertexShader
       (glGetAttribLocation, glGetActiveAttrib, glBindAttribLocation,
        gl_VERTEX_SHADER, gl_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH,
        gl_OBJECT_ACTIVE_ATTRIBUTES, gl_MAX_VERTEX_UNIFORM_COMPONENTS,
        gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS, gl_MAX_VARYING_FLOATS,
        gl_MAX_COMBINED_TEXTURE_IMAGE_UNITS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetAttribLocation #-}
 
ptr_glGetAttribLocation :: FunPtr a
ptr_glGetAttribLocation
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_shader"
        "glGetAttribLocationARB"
 
glGetAttribLocation :: GLhandle -> Ptr GLchar -> IO GLint
glGetAttribLocation
  = dyn_glGetAttribLocation ptr_glGetAttribLocation
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetAttribLocation ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> Ptr GLchar -> IO GLint)
 
{-# NOINLINE ptr_glGetActiveAttrib #-}
 
ptr_glGetActiveAttrib :: FunPtr a
ptr_glGetActiveAttrib
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_shader"
        "glGetActiveAttribARB"
 
glGetActiveAttrib ::
                  GLhandle ->
                    GLuint ->
                      GLsizei ->
                        Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO ()
glGetActiveAttrib = dyn_glGetActiveAttrib ptr_glGetActiveAttrib
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetActiveAttrib ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle ->
                    GLuint ->
                      GLsizei ->
                        Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glBindAttribLocation #-}
 
ptr_glBindAttribLocation :: FunPtr a
ptr_glBindAttribLocation
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_shader"
        "glBindAttribLocationARB"
 
glBindAttribLocation :: GLhandle -> GLuint -> Ptr GLchar -> IO ()
glBindAttribLocation
  = dyn_glBindAttribLocation ptr_glBindAttribLocation
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindAttribLocation ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLhandle -> GLuint -> Ptr GLchar -> IO ())
 
gl_VERTEX_SHADER :: GLenum
gl_VERTEX_SHADER = 35633
 
gl_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH :: GLenum
gl_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH = 35722
 
gl_OBJECT_ACTIVE_ATTRIBUTES :: GLenum
gl_OBJECT_ACTIVE_ATTRIBUTES = 35721
 
gl_MAX_VERTEX_UNIFORM_COMPONENTS :: GLenum
gl_MAX_VERTEX_UNIFORM_COMPONENTS = 35658
 
gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 35660
 
gl_MAX_VARYING_FLOATS :: GLenum
gl_MAX_VARYING_FLOATS = 35659
 
gl_MAX_COMBINED_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_COMBINED_TEXTURE_IMAGE_UNITS = 35661