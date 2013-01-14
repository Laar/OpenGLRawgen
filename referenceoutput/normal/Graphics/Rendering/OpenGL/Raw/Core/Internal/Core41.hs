{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core41
       (glViewportIndexedfv, glViewportIndexedf, glViewportArrayv,
        glVertexAttribLPointer, glVertexAttribL4dv, glVertexAttribL4d,
        glVertexAttribL3dv, glVertexAttribL3d, glVertexAttribL2dv,
        glVertexAttribL2d, glVertexAttribL1dv, glVertexAttribL1d,
        glValidateProgramPipeline, glUseProgramStages, glShaderBinary,
        glScissorIndexedv, glScissorIndexed, glScissorArrayv,
        glReleaseShaderCompiler, glProgramUniformMatrix4x3fv,
        glProgramUniformMatrix4x3dv, glProgramUniformMatrix4x2fv,
        glProgramUniformMatrix4x2dv, glProgramUniformMatrix4fv,
        glProgramUniformMatrix4dv, glProgramUniformMatrix3x4fv,
        glProgramUniformMatrix3x4dv, glProgramUniformMatrix3x2fv,
        glProgramUniformMatrix3x2dv, glProgramUniformMatrix3fv,
        glProgramUniformMatrix3dv, glProgramUniformMatrix2x4fv,
        glProgramUniformMatrix2x4dv, glProgramUniformMatrix2x3fv,
        glProgramUniformMatrix2x3dv, glProgramUniformMatrix2fv,
        glProgramUniformMatrix2dv, glProgramUniform4uiv,
        glProgramUniform4ui, glProgramUniform4iv, glProgramUniform4i,
        glProgramUniform4fv, glProgramUniform4f, glProgramUniform4dv,
        glProgramUniform4d, glProgramUniform3uiv, glProgramUniform3ui,
        glProgramUniform3iv, glProgramUniform3i, glProgramUniform3fv,
        glProgramUniform3f, glProgramUniform3dv, glProgramUniform3d,
        glProgramUniform2uiv, glProgramUniform2ui, glProgramUniform2iv,
        glProgramUniform2i, glProgramUniform2fv, glProgramUniform2f,
        glProgramUniform2dv, glProgramUniform2d, glProgramUniform1uiv,
        glProgramUniform1ui, glProgramUniform1iv, glProgramUniform1i,
        glProgramUniform1fv, glProgramUniform1f, glProgramUniform1dv,
        glProgramUniform1d, glProgramParameteri, glProgramBinary,
        glIsProgramPipeline, glGetVertexAttribLdv,
        glGetShaderPrecisionFormat, glGetProgramPipelineiv,
        glGetProgramPipelineInfoLog, glGetProgramBinary, glGetFloati_v,
        glGetDoublei_v, glGenProgramPipelines, glDepthRangef,
        glDepthRangeIndexed, glDepthRangeArrayv, glDeleteProgramPipelines,
        glCreateShaderProgramv, glClearDepthf, glBindProgramPipeline,
        glActiveShaderProgram, gl_VIEWPORT_SUBPIXEL_BITS,
        gl_VIEWPORT_INDEX_PROVOKING_VERTEX, gl_VIEWPORT_BOUNDS_RANGE,
        gl_VERTEX_SHADER_BIT, gl_UNDEFINED_VERTEX,
        gl_TESS_EVALUATION_SHADER_BIT, gl_TESS_CONTROL_SHADER_BIT,
        gl_SHADER_COMPILER, gl_SHADER_BINARY_FORMATS, gl_RGB565,
        gl_PROGRAM_SEPARABLE, gl_PROGRAM_PIPELINE_BINDING,
        gl_PROGRAM_BINARY_RETRIEVABLE_HINT, gl_PROGRAM_BINARY_LENGTH,
        gl_PROGRAM_BINARY_FORMATS, gl_NUM_SHADER_BINARY_FORMATS,
        gl_NUM_PROGRAM_BINARY_FORMATS, gl_MEDIUM_INT, gl_MEDIUM_FLOAT,
        gl_MAX_VIEWPORTS, gl_MAX_VERTEX_UNIFORM_VECTORS,
        gl_MAX_VARYING_VECTORS, gl_MAX_FRAGMENT_UNIFORM_VECTORS,
        gl_LOW_INT, gl_LOW_FLOAT, gl_LAYER_PROVOKING_VERTEX,
        gl_IMPLEMENTATION_COLOR_READ_TYPE,
        gl_IMPLEMENTATION_COLOR_READ_FORMAT, gl_HIGH_INT, gl_HIGH_FLOAT,
        gl_GEOMETRY_SHADER_BIT, gl_FRAGMENT_SHADER_BIT, gl_FIXED,
        gl_ALL_SHADER_BITS, gl_ACTIVE_PROGRAM)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glViewportIndexedfv #-}
 
ptr_glViewportIndexedfv :: FunPtr a
ptr_glViewportIndexedfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glViewportIndexedfv"
 
glViewportIndexedfv :: GLuint -> Ptr GLfloat -> IO ()
glViewportIndexedfv
  = dyn_glViewportIndexedfv ptr_glViewportIndexedfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glViewportIndexedfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glViewportIndexedf #-}
 
ptr_glViewportIndexedf :: FunPtr a
ptr_glViewportIndexedf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glViewportIndexedf"
 
glViewportIndexedf ::
                   GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glViewportIndexedf = dyn_glViewportIndexedf ptr_glViewportIndexedf
 
foreign import CALLCONV unsafe "dynamic" dyn_glViewportIndexedf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glViewportArrayv #-}
 
ptr_glViewportArrayv :: FunPtr a
ptr_glViewportArrayv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glViewportArrayv"
 
glViewportArrayv :: GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glViewportArrayv = dyn_glViewportArrayv ptr_glViewportArrayv
 
foreign import CALLCONV unsafe "dynamic" dyn_glViewportArrayv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttribLPointer #-}
 
ptr_glVertexAttribLPointer :: FunPtr a
ptr_glVertexAttribLPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glVertexAttribLPointer"
 
glVertexAttribLPointer ::
                       GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glVertexAttribLPointer
  = dyn_glVertexAttribLPointer ptr_glVertexAttribLPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribLPointer
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL4dv #-}
 
ptr_glVertexAttribL4dv :: FunPtr a
ptr_glVertexAttribL4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glVertexAttribL4dv"
 
glVertexAttribL4dv :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttribL4dv = dyn_glVertexAttribL4dv ptr_glVertexAttribL4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL4d #-}
 
ptr_glVertexAttribL4d :: FunPtr a
ptr_glVertexAttribL4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glVertexAttribL4d"
 
glVertexAttribL4d ::
                  GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexAttribL4d = dyn_glVertexAttribL4d ptr_glVertexAttribL4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL3dv #-}
 
ptr_glVertexAttribL3dv :: FunPtr a
ptr_glVertexAttribL3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glVertexAttribL3dv"
 
glVertexAttribL3dv :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttribL3dv = dyn_glVertexAttribL3dv ptr_glVertexAttribL3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL3d #-}
 
ptr_glVertexAttribL3d :: FunPtr a
ptr_glVertexAttribL3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glVertexAttribL3d"
 
glVertexAttribL3d ::
                  GLuint -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexAttribL3d = dyn_glVertexAttribL3d ptr_glVertexAttribL3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL2dv #-}
 
ptr_glVertexAttribL2dv :: FunPtr a
ptr_glVertexAttribL2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glVertexAttribL2dv"
 
glVertexAttribL2dv :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttribL2dv = dyn_glVertexAttribL2dv ptr_glVertexAttribL2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL2d #-}
 
ptr_glVertexAttribL2d :: FunPtr a
ptr_glVertexAttribL2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glVertexAttribL2d"
 
glVertexAttribL2d :: GLuint -> GLdouble -> GLdouble -> IO ()
glVertexAttribL2d = dyn_glVertexAttribL2d ptr_glVertexAttribL2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL1dv #-}
 
ptr_glVertexAttribL1dv :: FunPtr a
ptr_glVertexAttribL1dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glVertexAttribL1dv"
 
glVertexAttribL1dv :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttribL1dv = dyn_glVertexAttribL1dv ptr_glVertexAttribL1dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL1dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL1d #-}
 
ptr_glVertexAttribL1d :: FunPtr a
ptr_glVertexAttribL1d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glVertexAttribL1d"
 
glVertexAttribL1d :: GLuint -> GLdouble -> IO ()
glVertexAttribL1d = dyn_glVertexAttribL1d ptr_glVertexAttribL1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glValidateProgramPipeline #-}
 
ptr_glValidateProgramPipeline :: FunPtr a
ptr_glValidateProgramPipeline
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glValidateProgramPipeline"
 
glValidateProgramPipeline :: GLuint -> IO ()
glValidateProgramPipeline
  = dyn_glValidateProgramPipeline ptr_glValidateProgramPipeline
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glValidateProgramPipeline ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glUseProgramStages #-}
 
ptr_glUseProgramStages :: FunPtr a
ptr_glUseProgramStages
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glUseProgramStages"
 
glUseProgramStages :: GLuint -> GLbitfield -> GLuint -> IO ()
glUseProgramStages = dyn_glUseProgramStages ptr_glUseProgramStages
 
foreign import CALLCONV unsafe "dynamic" dyn_glUseProgramStages ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLbitfield -> GLuint -> IO ())
 
{-# NOINLINE ptr_glShaderBinary #-}
 
ptr_glShaderBinary :: FunPtr a
ptr_glShaderBinary
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glShaderBinary"
 
glShaderBinary ::
               GLsizei -> Ptr GLuint -> GLenum -> Ptr a -> GLsizei -> IO ()
glShaderBinary = dyn_glShaderBinary ptr_glShaderBinary
 
foreign import CALLCONV unsafe "dynamic" dyn_glShaderBinary ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> GLenum -> Ptr a -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glScissorIndexedv #-}
 
ptr_glScissorIndexedv :: FunPtr a
ptr_glScissorIndexedv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glScissorIndexedv"
 
glScissorIndexedv :: GLuint -> Ptr GLint -> IO ()
glScissorIndexedv = dyn_glScissorIndexedv ptr_glScissorIndexedv
 
foreign import CALLCONV unsafe "dynamic" dyn_glScissorIndexedv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glScissorIndexed #-}
 
ptr_glScissorIndexed :: FunPtr a
ptr_glScissorIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glScissorIndexed"
 
glScissorIndexed ::
                 GLuint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glScissorIndexed = dyn_glScissorIndexed ptr_glScissorIndexed
 
foreign import CALLCONV unsafe "dynamic" dyn_glScissorIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glScissorArrayv #-}
 
ptr_glScissorArrayv :: FunPtr a
ptr_glScissorArrayv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glScissorArrayv"
 
glScissorArrayv :: GLuint -> GLsizei -> Ptr GLint -> IO ()
glScissorArrayv = dyn_glScissorArrayv ptr_glScissorArrayv
 
foreign import CALLCONV unsafe "dynamic" dyn_glScissorArrayv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glReleaseShaderCompiler #-}
 
ptr_glReleaseShaderCompiler :: FunPtr a
ptr_glReleaseShaderCompiler
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glReleaseShaderCompiler"
 
glReleaseShaderCompiler :: IO ()
glReleaseShaderCompiler
  = dyn_glReleaseShaderCompiler ptr_glReleaseShaderCompiler
 
foreign import CALLCONV unsafe "dynamic" dyn_glReleaseShaderCompiler
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4x3fv #-}
 
ptr_glProgramUniformMatrix4x3fv :: FunPtr a
ptr_glProgramUniformMatrix4x3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix4x3fv"
 
glProgramUniformMatrix4x3fv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix4x3fv
  = dyn_glProgramUniformMatrix4x3fv ptr_glProgramUniformMatrix4x3fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4x3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4x3dv #-}
 
ptr_glProgramUniformMatrix4x3dv :: FunPtr a
ptr_glProgramUniformMatrix4x3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix4x3dv"
 
glProgramUniformMatrix4x3dv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix4x3dv
  = dyn_glProgramUniformMatrix4x3dv ptr_glProgramUniformMatrix4x3dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4x3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4x2fv #-}
 
ptr_glProgramUniformMatrix4x2fv :: FunPtr a
ptr_glProgramUniformMatrix4x2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix4x2fv"
 
glProgramUniformMatrix4x2fv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix4x2fv
  = dyn_glProgramUniformMatrix4x2fv ptr_glProgramUniformMatrix4x2fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4x2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4x2dv #-}
 
ptr_glProgramUniformMatrix4x2dv :: FunPtr a
ptr_glProgramUniformMatrix4x2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix4x2dv"
 
glProgramUniformMatrix4x2dv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix4x2dv
  = dyn_glProgramUniformMatrix4x2dv ptr_glProgramUniformMatrix4x2dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4x2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4fv #-}
 
ptr_glProgramUniformMatrix4fv :: FunPtr a
ptr_glProgramUniformMatrix4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix4fv"
 
glProgramUniformMatrix4fv ::
                          GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix4fv
  = dyn_glProgramUniformMatrix4fv ptr_glProgramUniformMatrix4fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4dv #-}
 
ptr_glProgramUniformMatrix4dv :: FunPtr a
ptr_glProgramUniformMatrix4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix4dv"
 
glProgramUniformMatrix4dv ::
                          GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix4dv
  = dyn_glProgramUniformMatrix4dv ptr_glProgramUniformMatrix4dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3x4fv #-}
 
ptr_glProgramUniformMatrix3x4fv :: FunPtr a
ptr_glProgramUniformMatrix3x4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix3x4fv"
 
glProgramUniformMatrix3x4fv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix3x4fv
  = dyn_glProgramUniformMatrix3x4fv ptr_glProgramUniformMatrix3x4fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3x4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3x4dv #-}
 
ptr_glProgramUniformMatrix3x4dv :: FunPtr a
ptr_glProgramUniformMatrix3x4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix3x4dv"
 
glProgramUniformMatrix3x4dv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix3x4dv
  = dyn_glProgramUniformMatrix3x4dv ptr_glProgramUniformMatrix3x4dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3x4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3x2fv #-}
 
ptr_glProgramUniformMatrix3x2fv :: FunPtr a
ptr_glProgramUniformMatrix3x2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix3x2fv"
 
glProgramUniformMatrix3x2fv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix3x2fv
  = dyn_glProgramUniformMatrix3x2fv ptr_glProgramUniformMatrix3x2fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3x2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3x2dv #-}
 
ptr_glProgramUniformMatrix3x2dv :: FunPtr a
ptr_glProgramUniformMatrix3x2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix3x2dv"
 
glProgramUniformMatrix3x2dv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix3x2dv
  = dyn_glProgramUniformMatrix3x2dv ptr_glProgramUniformMatrix3x2dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3x2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3fv #-}
 
ptr_glProgramUniformMatrix3fv :: FunPtr a
ptr_glProgramUniformMatrix3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix3fv"
 
glProgramUniformMatrix3fv ::
                          GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix3fv
  = dyn_glProgramUniformMatrix3fv ptr_glProgramUniformMatrix3fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3dv #-}
 
ptr_glProgramUniformMatrix3dv :: FunPtr a
ptr_glProgramUniformMatrix3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix3dv"
 
glProgramUniformMatrix3dv ::
                          GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix3dv
  = dyn_glProgramUniformMatrix3dv ptr_glProgramUniformMatrix3dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2x4fv #-}
 
ptr_glProgramUniformMatrix2x4fv :: FunPtr a
ptr_glProgramUniformMatrix2x4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix2x4fv"
 
glProgramUniformMatrix2x4fv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix2x4fv
  = dyn_glProgramUniformMatrix2x4fv ptr_glProgramUniformMatrix2x4fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2x4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2x4dv #-}
 
ptr_glProgramUniformMatrix2x4dv :: FunPtr a
ptr_glProgramUniformMatrix2x4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix2x4dv"
 
glProgramUniformMatrix2x4dv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix2x4dv
  = dyn_glProgramUniformMatrix2x4dv ptr_glProgramUniformMatrix2x4dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2x4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2x3fv #-}
 
ptr_glProgramUniformMatrix2x3fv :: FunPtr a
ptr_glProgramUniformMatrix2x3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix2x3fv"
 
glProgramUniformMatrix2x3fv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix2x3fv
  = dyn_glProgramUniformMatrix2x3fv ptr_glProgramUniformMatrix2x3fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2x3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2x3dv #-}
 
ptr_glProgramUniformMatrix2x3dv :: FunPtr a
ptr_glProgramUniformMatrix2x3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix2x3dv"
 
glProgramUniformMatrix2x3dv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix2x3dv
  = dyn_glProgramUniformMatrix2x3dv ptr_glProgramUniformMatrix2x3dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2x3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2fv #-}
 
ptr_glProgramUniformMatrix2fv :: FunPtr a
ptr_glProgramUniformMatrix2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix2fv"
 
glProgramUniformMatrix2fv ::
                          GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix2fv
  = dyn_glProgramUniformMatrix2fv ptr_glProgramUniformMatrix2fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2dv #-}
 
ptr_glProgramUniformMatrix2dv :: FunPtr a
ptr_glProgramUniformMatrix2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniformMatrix2dv"
 
glProgramUniformMatrix2dv ::
                          GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix2dv
  = dyn_glProgramUniformMatrix2dv ptr_glProgramUniformMatrix2dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4uiv #-}
 
ptr_glProgramUniform4uiv :: FunPtr a
ptr_glProgramUniform4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform4uiv"
 
glProgramUniform4uiv ::
                     GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()
glProgramUniform4uiv
  = dyn_glProgramUniform4uiv ptr_glProgramUniform4uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4ui #-}
 
ptr_glProgramUniform4ui :: FunPtr a
ptr_glProgramUniform4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform4ui"
 
glProgramUniform4ui ::
                    GLuint -> GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glProgramUniform4ui
  = dyn_glProgramUniform4ui ptr_glProgramUniform4ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4iv #-}
 
ptr_glProgramUniform4iv :: FunPtr a
ptr_glProgramUniform4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform4iv"
 
glProgramUniform4iv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()
glProgramUniform4iv
  = dyn_glProgramUniform4iv ptr_glProgramUniform4iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4i #-}
 
ptr_glProgramUniform4i :: FunPtr a
ptr_glProgramUniform4i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform4i"
 
glProgramUniform4i ::
                   GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> IO ()
glProgramUniform4i = dyn_glProgramUniform4i ptr_glProgramUniform4i
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4fv #-}
 
ptr_glProgramUniform4fv :: FunPtr a
ptr_glProgramUniform4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform4fv"
 
glProgramUniform4fv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramUniform4fv
  = dyn_glProgramUniform4fv ptr_glProgramUniform4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4f #-}
 
ptr_glProgramUniform4f :: FunPtr a
ptr_glProgramUniform4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform4f"
 
glProgramUniform4f ::
                   GLuint ->
                     GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glProgramUniform4f = dyn_glProgramUniform4f ptr_glProgramUniform4f
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4dv #-}
 
ptr_glProgramUniform4dv :: FunPtr a
ptr_glProgramUniform4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform4dv"
 
glProgramUniform4dv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()
glProgramUniform4dv
  = dyn_glProgramUniform4dv ptr_glProgramUniform4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4d #-}
 
ptr_glProgramUniform4d :: FunPtr a
ptr_glProgramUniform4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform4d"
 
glProgramUniform4d ::
                   GLuint ->
                     GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glProgramUniform4d = dyn_glProgramUniform4d ptr_glProgramUniform4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3uiv #-}
 
ptr_glProgramUniform3uiv :: FunPtr a
ptr_glProgramUniform3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform3uiv"
 
glProgramUniform3uiv ::
                     GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()
glProgramUniform3uiv
  = dyn_glProgramUniform3uiv ptr_glProgramUniform3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3ui #-}
 
ptr_glProgramUniform3ui :: FunPtr a
ptr_glProgramUniform3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform3ui"
 
glProgramUniform3ui ::
                    GLuint -> GLint -> GLuint -> GLuint -> GLuint -> IO ()
glProgramUniform3ui
  = dyn_glProgramUniform3ui ptr_glProgramUniform3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3iv #-}
 
ptr_glProgramUniform3iv :: FunPtr a
ptr_glProgramUniform3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform3iv"
 
glProgramUniform3iv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()
glProgramUniform3iv
  = dyn_glProgramUniform3iv ptr_glProgramUniform3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3i #-}
 
ptr_glProgramUniform3i :: FunPtr a
ptr_glProgramUniform3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform3i"
 
glProgramUniform3i ::
                   GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
glProgramUniform3i = dyn_glProgramUniform3i ptr_glProgramUniform3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3fv #-}
 
ptr_glProgramUniform3fv :: FunPtr a
ptr_glProgramUniform3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform3fv"
 
glProgramUniform3fv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramUniform3fv
  = dyn_glProgramUniform3fv ptr_glProgramUniform3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3f #-}
 
ptr_glProgramUniform3f :: FunPtr a
ptr_glProgramUniform3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform3f"
 
glProgramUniform3f ::
                   GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> IO ()
glProgramUniform3f = dyn_glProgramUniform3f ptr_glProgramUniform3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3dv #-}
 
ptr_glProgramUniform3dv :: FunPtr a
ptr_glProgramUniform3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform3dv"
 
glProgramUniform3dv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()
glProgramUniform3dv
  = dyn_glProgramUniform3dv ptr_glProgramUniform3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3d #-}
 
ptr_glProgramUniform3d :: FunPtr a
ptr_glProgramUniform3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform3d"
 
glProgramUniform3d ::
                   GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> IO ()
glProgramUniform3d = dyn_glProgramUniform3d ptr_glProgramUniform3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2uiv #-}
 
ptr_glProgramUniform2uiv :: FunPtr a
ptr_glProgramUniform2uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform2uiv"
 
glProgramUniform2uiv ::
                     GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()
glProgramUniform2uiv
  = dyn_glProgramUniform2uiv ptr_glProgramUniform2uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2ui #-}
 
ptr_glProgramUniform2ui :: FunPtr a
ptr_glProgramUniform2ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform2ui"
 
glProgramUniform2ui :: GLuint -> GLint -> GLuint -> GLuint -> IO ()
glProgramUniform2ui
  = dyn_glProgramUniform2ui ptr_glProgramUniform2ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2iv #-}
 
ptr_glProgramUniform2iv :: FunPtr a
ptr_glProgramUniform2iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform2iv"
 
glProgramUniform2iv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()
glProgramUniform2iv
  = dyn_glProgramUniform2iv ptr_glProgramUniform2iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2i #-}
 
ptr_glProgramUniform2i :: FunPtr a
ptr_glProgramUniform2i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform2i"
 
glProgramUniform2i :: GLuint -> GLint -> GLint -> GLint -> IO ()
glProgramUniform2i = dyn_glProgramUniform2i ptr_glProgramUniform2i
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2fv #-}
 
ptr_glProgramUniform2fv :: FunPtr a
ptr_glProgramUniform2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform2fv"
 
glProgramUniform2fv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramUniform2fv
  = dyn_glProgramUniform2fv ptr_glProgramUniform2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2f #-}
 
ptr_glProgramUniform2f :: FunPtr a
ptr_glProgramUniform2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform2f"
 
glProgramUniform2f ::
                   GLuint -> GLint -> GLfloat -> GLfloat -> IO ()
glProgramUniform2f = dyn_glProgramUniform2f ptr_glProgramUniform2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2dv #-}
 
ptr_glProgramUniform2dv :: FunPtr a
ptr_glProgramUniform2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform2dv"
 
glProgramUniform2dv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()
glProgramUniform2dv
  = dyn_glProgramUniform2dv ptr_glProgramUniform2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2d #-}
 
ptr_glProgramUniform2d :: FunPtr a
ptr_glProgramUniform2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform2d"
 
glProgramUniform2d ::
                   GLuint -> GLint -> GLdouble -> GLdouble -> IO ()
glProgramUniform2d = dyn_glProgramUniform2d ptr_glProgramUniform2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1uiv #-}
 
ptr_glProgramUniform1uiv :: FunPtr a
ptr_glProgramUniform1uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform1uiv"
 
glProgramUniform1uiv ::
                     GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()
glProgramUniform1uiv
  = dyn_glProgramUniform1uiv ptr_glProgramUniform1uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1ui #-}
 
ptr_glProgramUniform1ui :: FunPtr a
ptr_glProgramUniform1ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform1ui"
 
glProgramUniform1ui :: GLuint -> GLint -> GLuint -> IO ()
glProgramUniform1ui
  = dyn_glProgramUniform1ui ptr_glProgramUniform1ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1iv #-}
 
ptr_glProgramUniform1iv :: FunPtr a
ptr_glProgramUniform1iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform1iv"
 
glProgramUniform1iv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()
glProgramUniform1iv
  = dyn_glProgramUniform1iv ptr_glProgramUniform1iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1i #-}
 
ptr_glProgramUniform1i :: FunPtr a
ptr_glProgramUniform1i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform1i"
 
glProgramUniform1i :: GLuint -> GLint -> GLint -> IO ()
glProgramUniform1i = dyn_glProgramUniform1i ptr_glProgramUniform1i
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1fv #-}
 
ptr_glProgramUniform1fv :: FunPtr a
ptr_glProgramUniform1fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform1fv"
 
glProgramUniform1fv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramUniform1fv
  = dyn_glProgramUniform1fv ptr_glProgramUniform1fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1f #-}
 
ptr_glProgramUniform1f :: FunPtr a
ptr_glProgramUniform1f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform1f"
 
glProgramUniform1f :: GLuint -> GLint -> GLfloat -> IO ()
glProgramUniform1f = dyn_glProgramUniform1f ptr_glProgramUniform1f
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1dv #-}
 
ptr_glProgramUniform1dv :: FunPtr a
ptr_glProgramUniform1dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform1dv"
 
glProgramUniform1dv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()
glProgramUniform1dv
  = dyn_glProgramUniform1dv ptr_glProgramUniform1dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1d #-}
 
ptr_glProgramUniform1d :: FunPtr a
ptr_glProgramUniform1d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramUniform1d"
 
glProgramUniform1d :: GLuint -> GLint -> GLdouble -> IO ()
glProgramUniform1d = dyn_glProgramUniform1d ptr_glProgramUniform1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramParameteri #-}
 
ptr_glProgramParameteri :: FunPtr a
ptr_glProgramParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramParameteri"
 
glProgramParameteri :: GLuint -> GLenum -> GLint -> IO ()
glProgramParameteri
  = dyn_glProgramParameteri ptr_glProgramParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramParameteri ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramBinary #-}
 
ptr_glProgramBinary :: FunPtr a
ptr_glProgramBinary
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glProgramBinary"
 
glProgramBinary :: GLuint -> GLenum -> Ptr a -> GLsizei -> IO ()
glProgramBinary = dyn_glProgramBinary ptr_glProgramBinary
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramBinary ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr a -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glIsProgramPipeline #-}
 
ptr_glIsProgramPipeline :: FunPtr a
ptr_glIsProgramPipeline
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glIsProgramPipeline"
 
glIsProgramPipeline :: GLuint -> IO GLboolean
glIsProgramPipeline
  = dyn_glIsProgramPipeline ptr_glIsProgramPipeline
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsProgramPipeline ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetVertexAttribLdv #-}
 
ptr_glGetVertexAttribLdv :: FunPtr a
ptr_glGetVertexAttribLdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glGetVertexAttribLdv"
 
glGetVertexAttribLdv :: GLuint -> GLenum -> Ptr GLdouble -> IO ()
glGetVertexAttribLdv
  = dyn_glGetVertexAttribLdv ptr_glGetVertexAttribLdv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribLdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetShaderPrecisionFormat #-}
 
ptr_glGetShaderPrecisionFormat :: FunPtr a
ptr_glGetShaderPrecisionFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glGetShaderPrecisionFormat"
 
glGetShaderPrecisionFormat ::
                           GLenum -> GLenum -> Ptr GLint -> Ptr GLint -> IO ()
glGetShaderPrecisionFormat
  = dyn_glGetShaderPrecisionFormat ptr_glGetShaderPrecisionFormat
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetShaderPrecisionFormat ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetProgramPipelineiv #-}
 
ptr_glGetProgramPipelineiv :: FunPtr a
ptr_glGetProgramPipelineiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glGetProgramPipelineiv"
 
glGetProgramPipelineiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetProgramPipelineiv
  = dyn_glGetProgramPipelineiv ptr_glGetProgramPipelineiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramPipelineiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetProgramPipelineInfoLog #-}
 
ptr_glGetProgramPipelineInfoLog :: FunPtr a
ptr_glGetProgramPipelineInfoLog
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glGetProgramPipelineInfoLog"
 
glGetProgramPipelineInfoLog ::
                            GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetProgramPipelineInfoLog
  = dyn_glGetProgramPipelineInfoLog ptr_glGetProgramPipelineInfoLog
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramPipelineInfoLog ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetProgramBinary #-}
 
ptr_glGetProgramBinary :: FunPtr a
ptr_glGetProgramBinary
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glGetProgramBinary"
 
glGetProgramBinary ::
                   GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr a -> IO ()
glGetProgramBinary = dyn_glGetProgramBinary ptr_glGetProgramBinary
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramBinary ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetFloati_v #-}
 
ptr_glGetFloati_v :: FunPtr a
ptr_glGetFloati_v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glGetFloati_v"
 
glGetFloati_v :: GLenum -> GLuint -> Ptr GLfloat -> IO ()
glGetFloati_v = dyn_glGetFloati_v ptr_glGetFloati_v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetFloati_v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetDoublei_v #-}
 
ptr_glGetDoublei_v :: FunPtr a
ptr_glGetDoublei_v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glGetDoublei_v"
 
glGetDoublei_v :: GLenum -> GLuint -> Ptr GLdouble -> IO ()
glGetDoublei_v = dyn_glGetDoublei_v ptr_glGetDoublei_v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetDoublei_v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGenProgramPipelines #-}
 
ptr_glGenProgramPipelines :: FunPtr a
ptr_glGenProgramPipelines
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glGenProgramPipelines"
 
glGenProgramPipelines :: GLsizei -> Ptr GLuint -> IO ()
glGenProgramPipelines
  = dyn_glGenProgramPipelines ptr_glGenProgramPipelines
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenProgramPipelines
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDepthRangef #-}
 
ptr_glDepthRangef :: FunPtr a
ptr_glDepthRangef
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glDepthRangef"
 
glDepthRangef :: GLfloat -> GLfloat -> IO ()
glDepthRangef = dyn_glDepthRangef ptr_glDepthRangef
 
foreign import CALLCONV unsafe "dynamic" dyn_glDepthRangef ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glDepthRangeIndexed #-}
 
ptr_glDepthRangeIndexed :: FunPtr a
ptr_glDepthRangeIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glDepthRangeIndexed"
 
glDepthRangeIndexed :: GLuint -> GLdouble -> GLdouble -> IO ()
glDepthRangeIndexed
  = dyn_glDepthRangeIndexed ptr_glDepthRangeIndexed
 
foreign import CALLCONV unsafe "dynamic" dyn_glDepthRangeIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glDepthRangeArrayv #-}
 
ptr_glDepthRangeArrayv :: FunPtr a
ptr_glDepthRangeArrayv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glDepthRangeArrayv"
 
glDepthRangeArrayv :: GLuint -> GLsizei -> Ptr GLdouble -> IO ()
glDepthRangeArrayv = dyn_glDepthRangeArrayv ptr_glDepthRangeArrayv
 
foreign import CALLCONV unsafe "dynamic" dyn_glDepthRangeArrayv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glDeleteProgramPipelines #-}
 
ptr_glDeleteProgramPipelines :: FunPtr a
ptr_glDeleteProgramPipelines
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glDeleteProgramPipelines"
 
glDeleteProgramPipelines :: GLsizei -> Ptr GLuint -> IO ()
glDeleteProgramPipelines
  = dyn_glDeleteProgramPipelines ptr_glDeleteProgramPipelines
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDeleteProgramPipelines ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glCreateShaderProgramv #-}
 
ptr_glCreateShaderProgramv :: FunPtr a
ptr_glCreateShaderProgramv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glCreateShaderProgramv"
 
glCreateShaderProgramv ::
                       GLenum -> GLsizei -> Ptr GLchar -> IO GLuint
glCreateShaderProgramv
  = dyn_glCreateShaderProgramv ptr_glCreateShaderProgramv
 
foreign import CALLCONV unsafe "dynamic" dyn_glCreateShaderProgramv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr GLchar -> IO GLuint)
 
{-# NOINLINE ptr_glClearDepthf #-}
 
ptr_glClearDepthf :: FunPtr a
ptr_glClearDepthf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glClearDepthf"
 
glClearDepthf :: GLfloat -> IO ()
glClearDepthf = dyn_glClearDepthf ptr_glClearDepthf
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearDepthf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
{-# NOINLINE ptr_glBindProgramPipeline #-}
 
ptr_glBindProgramPipeline :: FunPtr a
ptr_glBindProgramPipeline
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glBindProgramPipeline"
 
glBindProgramPipeline :: GLuint -> IO ()
glBindProgramPipeline
  = dyn_glBindProgramPipeline ptr_glBindProgramPipeline
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindProgramPipeline
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glActiveShaderProgram #-}
 
ptr_glActiveShaderProgram :: FunPtr a
ptr_glActiveShaderProgram
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_1"
        "glActiveShaderProgram"
 
glActiveShaderProgram :: GLuint -> GLuint -> IO ()
glActiveShaderProgram
  = dyn_glActiveShaderProgram ptr_glActiveShaderProgram
 
foreign import CALLCONV unsafe "dynamic" dyn_glActiveShaderProgram
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO ())
 
gl_VIEWPORT_SUBPIXEL_BITS :: GLenum
gl_VIEWPORT_SUBPIXEL_BITS = 33372
 
gl_VIEWPORT_INDEX_PROVOKING_VERTEX :: GLenum
gl_VIEWPORT_INDEX_PROVOKING_VERTEX = 33375
 
gl_VIEWPORT_BOUNDS_RANGE :: GLenum
gl_VIEWPORT_BOUNDS_RANGE = 33373
 
gl_VERTEX_SHADER_BIT :: GLbitfield
gl_VERTEX_SHADER_BIT = 1
 
gl_UNDEFINED_VERTEX :: GLenum
gl_UNDEFINED_VERTEX = 33376
 
gl_TESS_EVALUATION_SHADER_BIT :: GLbitfield
gl_TESS_EVALUATION_SHADER_BIT = 16
 
gl_TESS_CONTROL_SHADER_BIT :: GLbitfield
gl_TESS_CONTROL_SHADER_BIT = 8
 
gl_SHADER_COMPILER :: GLenum
gl_SHADER_COMPILER = 36346
 
gl_SHADER_BINARY_FORMATS :: GLenum
gl_SHADER_BINARY_FORMATS = 36344
 
gl_RGB565 :: GLenum
gl_RGB565 = 36194
 
gl_PROGRAM_SEPARABLE :: GLenum
gl_PROGRAM_SEPARABLE = 33368
 
gl_PROGRAM_PIPELINE_BINDING :: GLenum
gl_PROGRAM_PIPELINE_BINDING = 33370
 
gl_PROGRAM_BINARY_RETRIEVABLE_HINT :: GLenum
gl_PROGRAM_BINARY_RETRIEVABLE_HINT = 33367
 
gl_PROGRAM_BINARY_LENGTH :: GLenum
gl_PROGRAM_BINARY_LENGTH = 34625
 
gl_PROGRAM_BINARY_FORMATS :: GLenum
gl_PROGRAM_BINARY_FORMATS = 34815
 
gl_NUM_SHADER_BINARY_FORMATS :: GLenum
gl_NUM_SHADER_BINARY_FORMATS = 36345
 
gl_NUM_PROGRAM_BINARY_FORMATS :: GLenum
gl_NUM_PROGRAM_BINARY_FORMATS = 34814
 
gl_MEDIUM_INT :: GLenum
gl_MEDIUM_INT = 36340
 
gl_MEDIUM_FLOAT :: GLenum
gl_MEDIUM_FLOAT = 36337
 
gl_MAX_VIEWPORTS :: GLenum
gl_MAX_VIEWPORTS = 33371
 
gl_MAX_VERTEX_UNIFORM_VECTORS :: GLenum
gl_MAX_VERTEX_UNIFORM_VECTORS = 36347
 
gl_MAX_VARYING_VECTORS :: GLenum
gl_MAX_VARYING_VECTORS = 36348
 
gl_MAX_FRAGMENT_UNIFORM_VECTORS :: GLenum
gl_MAX_FRAGMENT_UNIFORM_VECTORS = 36349
 
gl_LOW_INT :: GLenum
gl_LOW_INT = 36339
 
gl_LOW_FLOAT :: GLenum
gl_LOW_FLOAT = 36336
 
gl_LAYER_PROVOKING_VERTEX :: GLenum
gl_LAYER_PROVOKING_VERTEX = 33374
 
gl_IMPLEMENTATION_COLOR_READ_TYPE :: GLenum
gl_IMPLEMENTATION_COLOR_READ_TYPE = 35738
 
gl_IMPLEMENTATION_COLOR_READ_FORMAT :: GLenum
gl_IMPLEMENTATION_COLOR_READ_FORMAT = 35739
 
gl_HIGH_INT :: GLenum
gl_HIGH_INT = 36341
 
gl_HIGH_FLOAT :: GLenum
gl_HIGH_FLOAT = 36338
 
gl_GEOMETRY_SHADER_BIT :: GLbitfield
gl_GEOMETRY_SHADER_BIT = 4
 
gl_FRAGMENT_SHADER_BIT :: GLbitfield
gl_FRAGMENT_SHADER_BIT = 2
 
gl_FIXED :: GLenum
gl_FIXED = 5132
 
gl_ALL_SHADER_BITS :: GLbitfield
gl_ALL_SHADER_BITS = 4294967295
 
gl_ACTIVE_PROGRAM :: GLenum
gl_ACTIVE_PROGRAM = 33369