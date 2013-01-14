{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.ParameterBufferObject
       (glProgramBufferParametersfv, glProgramBufferParametersIuiv,
        glProgramBufferParametersIiv, gl_VERTEX_PROGRAM_PARAMETER_BUFFER,
        gl_MAX_PROGRAM_PARAMETER_BUFFER_SIZE,
        gl_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS,
        gl_GEOMETRY_PROGRAM_PARAMETER_BUFFER,
        gl_FRAGMENT_PROGRAM_PARAMETER_BUFFER)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glProgramBufferParametersfv #-}
 
ptr_glProgramBufferParametersfv :: FunPtr a
ptr_glProgramBufferParametersfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_parameter_buffer_object"
        "glProgramBufferParametersfvNV"
 
glProgramBufferParametersfv ::
                            GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramBufferParametersfv
  = dyn_glProgramBufferParametersfv ptr_glProgramBufferParametersfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramBufferParametersfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramBufferParametersIuiv #-}
 
ptr_glProgramBufferParametersIuiv :: FunPtr a
ptr_glProgramBufferParametersIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_parameter_buffer_object"
        "glProgramBufferParametersIuivNV"
 
glProgramBufferParametersIuiv ::
                              GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLuint -> IO ()
glProgramBufferParametersIuiv
  = dyn_glProgramBufferParametersIuiv
      ptr_glProgramBufferParametersIuiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramBufferParametersIuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramBufferParametersIiv #-}
 
ptr_glProgramBufferParametersIiv :: FunPtr a
ptr_glProgramBufferParametersIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_parameter_buffer_object"
        "glProgramBufferParametersIivNV"
 
glProgramBufferParametersIiv ::
                             GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLint -> IO ()
glProgramBufferParametersIiv
  = dyn_glProgramBufferParametersIiv ptr_glProgramBufferParametersIiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramBufferParametersIiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLint -> IO ())
 
gl_VERTEX_PROGRAM_PARAMETER_BUFFER :: GLenum
gl_VERTEX_PROGRAM_PARAMETER_BUFFER = 36258
 
gl_MAX_PROGRAM_PARAMETER_BUFFER_SIZE :: GLenum
gl_MAX_PROGRAM_PARAMETER_BUFFER_SIZE = 36257
 
gl_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS :: GLenum
gl_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS = 36256
 
gl_GEOMETRY_PROGRAM_PARAMETER_BUFFER :: GLenum
gl_GEOMETRY_PROGRAM_PARAMETER_BUFFER = 36259
 
gl_FRAGMENT_PROGRAM_PARAMETER_BUFFER :: GLenum
gl_FRAGMENT_PROGRAM_PARAMETER_BUFFER = 36260