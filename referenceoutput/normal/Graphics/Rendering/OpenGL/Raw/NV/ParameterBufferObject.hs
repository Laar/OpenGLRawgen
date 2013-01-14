{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.ParameterBufferObject
       (glProgramBufferParametersfvNV, glProgramBufferParametersIuivNV,
        glProgramBufferParametersIivNV,
        gl_VERTEX_PROGRAM_PARAMETER_BUFFER_NV,
        gl_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV,
        gl_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV,
        gl_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV,
        gl_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glProgramBufferParametersfvNV #-}
 
ptr_glProgramBufferParametersfvNV :: FunPtr a
ptr_glProgramBufferParametersfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_parameter_buffer_object"
        "glProgramBufferParametersfvNV"
 
glProgramBufferParametersfvNV ::
                              GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramBufferParametersfvNV
  = dyn_glProgramBufferParametersfvNV
      ptr_glProgramBufferParametersfvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramBufferParametersfvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramBufferParametersIuivNV #-}
 
ptr_glProgramBufferParametersIuivNV :: FunPtr a
ptr_glProgramBufferParametersIuivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_parameter_buffer_object"
        "glProgramBufferParametersIuivNV"
 
glProgramBufferParametersIuivNV ::
                                GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLuint -> IO ()
glProgramBufferParametersIuivNV
  = dyn_glProgramBufferParametersIuivNV
      ptr_glProgramBufferParametersIuivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramBufferParametersIuivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramBufferParametersIivNV #-}
 
ptr_glProgramBufferParametersIivNV :: FunPtr a
ptr_glProgramBufferParametersIivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_parameter_buffer_object"
        "glProgramBufferParametersIivNV"
 
glProgramBufferParametersIivNV ::
                               GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLint -> IO ()
glProgramBufferParametersIivNV
  = dyn_glProgramBufferParametersIivNV
      ptr_glProgramBufferParametersIivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramBufferParametersIivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLint -> IO ())
 
gl_VERTEX_PROGRAM_PARAMETER_BUFFER_NV :: GLenum
gl_VERTEX_PROGRAM_PARAMETER_BUFFER_NV = 36258
 
gl_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV :: GLenum
gl_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV = 36257
 
gl_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV :: GLenum
gl_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV = 36256
 
gl_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV :: GLenum
gl_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV = 36259
 
gl_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV :: GLenum
gl_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV = 36260