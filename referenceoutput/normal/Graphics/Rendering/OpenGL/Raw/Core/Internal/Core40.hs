{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core40
       (glUniformSubroutinesuiv, glUniformMatrix4x3dv,
        glUniformMatrix4x2dv, glUniformMatrix4dv, glUniformMatrix3x4dv,
        glUniformMatrix3x2dv, glUniformMatrix3dv, glUniformMatrix2x4dv,
        glUniformMatrix2x3dv, glUniformMatrix2dv, glUniform4dv,
        glUniform4d, glUniform3dv, glUniform3d, glUniform2dv, glUniform2d,
        glUniform1dv, glUniform1d, glResumeTransformFeedback,
        glPauseTransformFeedback, glPatchParameteri, glPatchParameterfv,
        glMinSampleShading, glIsTransformFeedback, glGetUniformdv,
        glGetUniformSubroutineuiv, glGetSubroutineUniformLocation,
        glGetSubroutineIndex, glGetQueryIndexediv, glGetProgramStageiv,
        glGetActiveSubroutineUniformiv, glGetActiveSubroutineUniformName,
        glGetActiveSubroutineName, glGenTransformFeedbacks,
        glEndQueryIndexed, glDrawTransformFeedbackStream,
        glDrawTransformFeedback, glDrawElementsIndirect,
        glDrawArraysIndirect, glDeleteTransformFeedbacks, glBlendFunci,
        glBlendFuncSeparatei, glBlendEquationi, glBlendEquationSeparatei,
        glBindTransformFeedback, glBeginQueryIndexed,
        gl_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY,
        gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER,
        gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER,
        gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED,
        gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE, gl_TRANSFORM_FEEDBACK_BINDING,
        gl_TRANSFORM_FEEDBACK, gl_TEXTURE_CUBE_MAP_ARRAY,
        gl_TEXTURE_BINDING_CUBE_MAP_ARRAY, gl_TESS_GEN_VERTEX_ORDER,
        gl_TESS_GEN_SPACING, gl_TESS_GEN_POINT_MODE, gl_TESS_GEN_MODE,
        gl_TESS_EVALUATION_SHADER, gl_TESS_CONTROL_SHADER,
        gl_TESS_CONTROL_OUTPUT_VERTICES, gl_SAMPLE_SHADING,
        gl_SAMPLER_CUBE_MAP_ARRAY_SHADOW, gl_SAMPLER_CUBE_MAP_ARRAY,
        gl_PROXY_TEXTURE_CUBE_MAP_ARRAY, gl_PATCH_VERTICES,
        gl_PATCH_DEFAULT_OUTER_LEVEL, gl_PATCH_DEFAULT_INNER_LEVEL,
        gl_PATCHES, gl_NUM_COMPATIBLE_SUBROUTINES,
        gl_MIN_SAMPLE_SHADING_VALUE, gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET,
        gl_MIN_FRAGMENT_INTERPOLATION_OFFSET, gl_MAX_VERTEX_STREAMS,
        gl_MAX_TRANSFORM_FEEDBACK_BUFFERS, gl_MAX_TESS_PATCH_COMPONENTS,
        gl_MAX_TESS_GEN_LEVEL, gl_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS,
        gl_MAX_TESS_EVALUATION_UNIFORM_BLOCKS,
        gl_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS,
        gl_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS,
        gl_MAX_TESS_EVALUATION_INPUT_COMPONENTS,
        gl_MAX_TESS_CONTROL_UNIFORM_COMPONENTS,
        gl_MAX_TESS_CONTROL_UNIFORM_BLOCKS,
        gl_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS,
        gl_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS,
        gl_MAX_TESS_CONTROL_OUTPUT_COMPONENTS,
        gl_MAX_TESS_CONTROL_INPUT_COMPONENTS,
        gl_MAX_SUBROUTINE_UNIFORM_LOCATIONS, gl_MAX_SUBROUTINES,
        gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET, gl_MAX_PATCH_VERTICES,
        gl_MAX_GEOMETRY_SHADER_INVOCATIONS,
        gl_MAX_FRAGMENT_INTERPOLATION_OFFSET,
        gl_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS,
        gl_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS, gl_ISOLINES,
        gl_INT_SAMPLER_CUBE_MAP_ARRAY, gl_GEOMETRY_SHADER_INVOCATIONS,
        gl_FRAGMENT_INTERPOLATION_OFFSET_BITS, gl_FRACTIONAL_ODD,
        gl_FRACTIONAL_EVEN, gl_DRAW_INDIRECT_BUFFER_BINDING,
        gl_DRAW_INDIRECT_BUFFER, gl_DOUBLE_VEC4, gl_DOUBLE_VEC3,
        gl_DOUBLE_VEC2, gl_DOUBLE_MAT4x3, gl_DOUBLE_MAT4x2, gl_DOUBLE_MAT4,
        gl_DOUBLE_MAT3x4, gl_DOUBLE_MAT3x2, gl_DOUBLE_MAT3,
        gl_DOUBLE_MAT2x4, gl_DOUBLE_MAT2x3, gl_DOUBLE_MAT2,
        gl_COMPATIBLE_SUBROUTINES, gl_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH,
        gl_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS,
        gl_ACTIVE_SUBROUTINE_UNIFORMS, gl_ACTIVE_SUBROUTINE_MAX_LENGTH,
        gl_ACTIVE_SUBROUTINES)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUniformSubroutinesuiv #-}
 
ptr_glUniformSubroutinesuiv :: FunPtr a
ptr_glUniformSubroutinesuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniformSubroutinesuiv"
 
glUniformSubroutinesuiv :: GLenum -> GLsizei -> Ptr GLuint -> IO ()
glUniformSubroutinesuiv
  = dyn_glUniformSubroutinesuiv ptr_glUniformSubroutinesuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformSubroutinesuiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix4x3dv #-}
 
ptr_glUniformMatrix4x3dv :: FunPtr a
ptr_glUniformMatrix4x3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniformMatrix4x3dv"
 
glUniformMatrix4x3dv ::
                     GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glUniformMatrix4x3dv
  = dyn_glUniformMatrix4x3dv ptr_glUniformMatrix4x3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix4x3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix4x2dv #-}
 
ptr_glUniformMatrix4x2dv :: FunPtr a
ptr_glUniformMatrix4x2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniformMatrix4x2dv"
 
glUniformMatrix4x2dv ::
                     GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glUniformMatrix4x2dv
  = dyn_glUniformMatrix4x2dv ptr_glUniformMatrix4x2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix4x2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix4dv #-}
 
ptr_glUniformMatrix4dv :: FunPtr a
ptr_glUniformMatrix4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniformMatrix4dv"
 
glUniformMatrix4dv ::
                   GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glUniformMatrix4dv = dyn_glUniformMatrix4dv ptr_glUniformMatrix4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix3x4dv #-}
 
ptr_glUniformMatrix3x4dv :: FunPtr a
ptr_glUniformMatrix3x4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniformMatrix3x4dv"
 
glUniformMatrix3x4dv ::
                     GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glUniformMatrix3x4dv
  = dyn_glUniformMatrix3x4dv ptr_glUniformMatrix3x4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix3x4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix3x2dv #-}
 
ptr_glUniformMatrix3x2dv :: FunPtr a
ptr_glUniformMatrix3x2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniformMatrix3x2dv"
 
glUniformMatrix3x2dv ::
                     GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glUniformMatrix3x2dv
  = dyn_glUniformMatrix3x2dv ptr_glUniformMatrix3x2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix3x2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix3dv #-}
 
ptr_glUniformMatrix3dv :: FunPtr a
ptr_glUniformMatrix3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniformMatrix3dv"
 
glUniformMatrix3dv ::
                   GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glUniformMatrix3dv = dyn_glUniformMatrix3dv ptr_glUniformMatrix3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix2x4dv #-}
 
ptr_glUniformMatrix2x4dv :: FunPtr a
ptr_glUniformMatrix2x4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniformMatrix2x4dv"
 
glUniformMatrix2x4dv ::
                     GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glUniformMatrix2x4dv
  = dyn_glUniformMatrix2x4dv ptr_glUniformMatrix2x4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix2x4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix2x3dv #-}
 
ptr_glUniformMatrix2x3dv :: FunPtr a
ptr_glUniformMatrix2x3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniformMatrix2x3dv"
 
glUniformMatrix2x3dv ::
                     GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glUniformMatrix2x3dv
  = dyn_glUniformMatrix2x3dv ptr_glUniformMatrix2x3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix2x3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix2dv #-}
 
ptr_glUniformMatrix2dv :: FunPtr a
ptr_glUniformMatrix2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniformMatrix2dv"
 
glUniformMatrix2dv ::
                   GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glUniformMatrix2dv = dyn_glUniformMatrix2dv ptr_glUniformMatrix2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniform4dv #-}
 
ptr_glUniform4dv :: FunPtr a
ptr_glUniform4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniform4dv"
 
glUniform4dv :: GLint -> GLsizei -> Ptr GLdouble -> IO ()
glUniform4dv = dyn_glUniform4dv ptr_glUniform4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniform4d #-}
 
ptr_glUniform4d :: FunPtr a
ptr_glUniform4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniform4d"
 
glUniform4d ::
            GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glUniform4d = dyn_glUniform4d ptr_glUniform4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniform3dv #-}
 
ptr_glUniform3dv :: FunPtr a
ptr_glUniform3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniform3dv"
 
glUniform3dv :: GLint -> GLsizei -> Ptr GLdouble -> IO ()
glUniform3dv = dyn_glUniform3dv ptr_glUniform3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniform3d #-}
 
ptr_glUniform3d :: FunPtr a
ptr_glUniform3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniform3d"
 
glUniform3d :: GLint -> GLdouble -> GLdouble -> GLdouble -> IO ()
glUniform3d = dyn_glUniform3d ptr_glUniform3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniform2dv #-}
 
ptr_glUniform2dv :: FunPtr a
ptr_glUniform2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniform2dv"
 
glUniform2dv :: GLint -> GLsizei -> Ptr GLdouble -> IO ()
glUniform2dv = dyn_glUniform2dv ptr_glUniform2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniform2d #-}
 
ptr_glUniform2d :: FunPtr a
ptr_glUniform2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniform2d"
 
glUniform2d :: GLint -> GLdouble -> GLdouble -> IO ()
glUniform2d = dyn_glUniform2d ptr_glUniform2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniform1dv #-}
 
ptr_glUniform1dv :: FunPtr a
ptr_glUniform1dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniform1dv"
 
glUniform1dv :: GLint -> GLsizei -> Ptr GLdouble -> IO ()
glUniform1dv = dyn_glUniform1dv ptr_glUniform1dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glUniform1d #-}
 
ptr_glUniform1d :: FunPtr a
ptr_glUniform1d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glUniform1d"
 
glUniform1d :: GLint -> GLdouble -> IO ()
glUniform1d = dyn_glUniform1d ptr_glUniform1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniform1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glResumeTransformFeedback #-}
 
ptr_glResumeTransformFeedback :: FunPtr a
ptr_glResumeTransformFeedback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glResumeTransformFeedback"
 
glResumeTransformFeedback :: IO ()
glResumeTransformFeedback
  = dyn_glResumeTransformFeedback ptr_glResumeTransformFeedback
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glResumeTransformFeedback ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glPauseTransformFeedback #-}
 
ptr_glPauseTransformFeedback :: FunPtr a
ptr_glPauseTransformFeedback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glPauseTransformFeedback"
 
glPauseTransformFeedback :: IO ()
glPauseTransformFeedback
  = dyn_glPauseTransformFeedback ptr_glPauseTransformFeedback
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPauseTransformFeedback ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glPatchParameteri #-}
 
ptr_glPatchParameteri :: FunPtr a
ptr_glPatchParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glPatchParameteri"
 
glPatchParameteri :: GLenum -> GLint -> IO ()
glPatchParameteri = dyn_glPatchParameteri ptr_glPatchParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glPatchParameteri ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glPatchParameterfv #-}
 
ptr_glPatchParameterfv :: FunPtr a
ptr_glPatchParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glPatchParameterfv"
 
glPatchParameterfv :: GLenum -> Ptr GLfloat -> IO ()
glPatchParameterfv = dyn_glPatchParameterfv ptr_glPatchParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glPatchParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMinSampleShading #-}
 
ptr_glMinSampleShading :: FunPtr a
ptr_glMinSampleShading
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glMinSampleShading"
 
glMinSampleShading :: GLfloat -> IO ()
glMinSampleShading = dyn_glMinSampleShading ptr_glMinSampleShading
 
foreign import CALLCONV unsafe "dynamic" dyn_glMinSampleShading ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
{-# NOINLINE ptr_glIsTransformFeedback #-}
 
ptr_glIsTransformFeedback :: FunPtr a
ptr_glIsTransformFeedback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glIsTransformFeedback"
 
glIsTransformFeedback :: GLuint -> IO GLboolean
glIsTransformFeedback
  = dyn_glIsTransformFeedback ptr_glIsTransformFeedback
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsTransformFeedback
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetUniformdv #-}
 
ptr_glGetUniformdv :: FunPtr a
ptr_glGetUniformdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glGetUniformdv"
 
glGetUniformdv :: GLuint -> GLint -> Ptr GLdouble -> IO ()
glGetUniformdv = dyn_glGetUniformdv ptr_glGetUniformdv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetUniformdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetUniformSubroutineuiv #-}
 
ptr_glGetUniformSubroutineuiv :: FunPtr a
ptr_glGetUniformSubroutineuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glGetUniformSubroutineuiv"
 
glGetUniformSubroutineuiv :: GLenum -> GLint -> Ptr GLuint -> IO ()
glGetUniformSubroutineuiv
  = dyn_glGetUniformSubroutineuiv ptr_glGetUniformSubroutineuiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetUniformSubroutineuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetSubroutineUniformLocation #-}
 
ptr_glGetSubroutineUniformLocation :: FunPtr a
ptr_glGetSubroutineUniformLocation
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glGetSubroutineUniformLocation"
 
glGetSubroutineUniformLocation ::
                               GLuint -> GLenum -> Ptr GLchar -> IO GLint
glGetSubroutineUniformLocation
  = dyn_glGetSubroutineUniformLocation
      ptr_glGetSubroutineUniformLocation
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetSubroutineUniformLocation ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLchar -> IO GLint)
 
{-# NOINLINE ptr_glGetSubroutineIndex #-}
 
ptr_glGetSubroutineIndex :: FunPtr a
ptr_glGetSubroutineIndex
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glGetSubroutineIndex"
 
glGetSubroutineIndex :: GLuint -> GLenum -> Ptr GLchar -> IO GLuint
glGetSubroutineIndex
  = dyn_glGetSubroutineIndex ptr_glGetSubroutineIndex
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetSubroutineIndex ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLchar -> IO GLuint)
 
{-# NOINLINE ptr_glGetQueryIndexediv #-}
 
ptr_glGetQueryIndexediv :: FunPtr a
ptr_glGetQueryIndexediv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glGetQueryIndexediv"
 
glGetQueryIndexediv ::
                    GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ()
glGetQueryIndexediv
  = dyn_glGetQueryIndexediv ptr_glGetQueryIndexediv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryIndexediv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetProgramStageiv #-}
 
ptr_glGetProgramStageiv :: FunPtr a
ptr_glGetProgramStageiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glGetProgramStageiv"
 
glGetProgramStageiv ::
                    GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetProgramStageiv
  = dyn_glGetProgramStageiv ptr_glGetProgramStageiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetProgramStageiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetActiveSubroutineUniformiv #-}
 
ptr_glGetActiveSubroutineUniformiv :: FunPtr a
ptr_glGetActiveSubroutineUniformiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glGetActiveSubroutineUniformiv"
 
glGetActiveSubroutineUniformiv ::
                               GLuint -> GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ()
glGetActiveSubroutineUniformiv
  = dyn_glGetActiveSubroutineUniformiv
      ptr_glGetActiveSubroutineUniformiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetActiveSubroutineUniformiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetActiveSubroutineUniformName #-}
 
ptr_glGetActiveSubroutineUniformName :: FunPtr a
ptr_glGetActiveSubroutineUniformName
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glGetActiveSubroutineUniformName"
 
glGetActiveSubroutineUniformName ::
                                 GLuint ->
                                   GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetActiveSubroutineUniformName
  = dyn_glGetActiveSubroutineUniformName
      ptr_glGetActiveSubroutineUniformName
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetActiveSubroutineUniformName ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGetActiveSubroutineName #-}
 
ptr_glGetActiveSubroutineName :: FunPtr a
ptr_glGetActiveSubroutineName
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glGetActiveSubroutineName"
 
glGetActiveSubroutineName ::
                          GLuint ->
                            GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ()
glGetActiveSubroutineName
  = dyn_glGetActiveSubroutineName ptr_glGetActiveSubroutineName
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetActiveSubroutineName ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glGenTransformFeedbacks #-}
 
ptr_glGenTransformFeedbacks :: FunPtr a
ptr_glGenTransformFeedbacks
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glGenTransformFeedbacks"
 
glGenTransformFeedbacks :: GLsizei -> Ptr GLuint -> IO ()
glGenTransformFeedbacks
  = dyn_glGenTransformFeedbacks ptr_glGenTransformFeedbacks
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenTransformFeedbacks
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glEndQueryIndexed #-}
 
ptr_glEndQueryIndexed :: FunPtr a
ptr_glEndQueryIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glEndQueryIndexed"
 
glEndQueryIndexed :: GLenum -> GLuint -> IO ()
glEndQueryIndexed = dyn_glEndQueryIndexed ptr_glEndQueryIndexed
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndQueryIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glDrawTransformFeedbackStream #-}
 
ptr_glDrawTransformFeedbackStream :: FunPtr a
ptr_glDrawTransformFeedbackStream
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glDrawTransformFeedbackStream"
 
glDrawTransformFeedbackStream ::
                              GLenum -> GLuint -> GLuint -> IO ()
glDrawTransformFeedbackStream
  = dyn_glDrawTransformFeedbackStream
      ptr_glDrawTransformFeedbackStream
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawTransformFeedbackStream ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glDrawTransformFeedback #-}
 
ptr_glDrawTransformFeedback :: FunPtr a
ptr_glDrawTransformFeedback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glDrawTransformFeedback"
 
glDrawTransformFeedback :: GLenum -> GLuint -> IO ()
glDrawTransformFeedback
  = dyn_glDrawTransformFeedback ptr_glDrawTransformFeedback
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawTransformFeedback
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glDrawElementsIndirect #-}
 
ptr_glDrawElementsIndirect :: FunPtr a
ptr_glDrawElementsIndirect
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glDrawElementsIndirect"
 
glDrawElementsIndirect :: GLenum -> GLenum -> Ptr a -> IO ()
glDrawElementsIndirect
  = dyn_glDrawElementsIndirect ptr_glDrawElementsIndirect
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawElementsIndirect
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glDrawArraysIndirect #-}
 
ptr_glDrawArraysIndirect :: FunPtr a
ptr_glDrawArraysIndirect
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glDrawArraysIndirect"
 
glDrawArraysIndirect :: GLenum -> Ptr a -> IO ()
glDrawArraysIndirect
  = dyn_glDrawArraysIndirect ptr_glDrawArraysIndirect
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawArraysIndirect ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glDeleteTransformFeedbacks #-}
 
ptr_glDeleteTransformFeedbacks :: FunPtr a
ptr_glDeleteTransformFeedbacks
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glDeleteTransformFeedbacks"
 
glDeleteTransformFeedbacks :: GLsizei -> Ptr GLuint -> IO ()
glDeleteTransformFeedbacks
  = dyn_glDeleteTransformFeedbacks ptr_glDeleteTransformFeedbacks
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDeleteTransformFeedbacks ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBlendFunci #-}
 
ptr_glBlendFunci :: FunPtr a
ptr_glBlendFunci
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glBlendFunci"
 
glBlendFunci :: GLuint -> GLenum -> GLenum -> IO ()
glBlendFunci = dyn_glBlendFunci ptr_glBlendFunci
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendFunci ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendFuncSeparatei #-}
 
ptr_glBlendFuncSeparatei :: FunPtr a
ptr_glBlendFuncSeparatei
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glBlendFuncSeparatei"
 
glBlendFuncSeparatei ::
                     GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glBlendFuncSeparatei
  = dyn_glBlendFuncSeparatei ptr_glBlendFuncSeparatei
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendFuncSeparatei ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendEquationi #-}
 
ptr_glBlendEquationi :: FunPtr a
ptr_glBlendEquationi
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glBlendEquationi"
 
glBlendEquationi :: GLuint -> GLenum -> IO ()
glBlendEquationi = dyn_glBlendEquationi ptr_glBlendEquationi
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendEquationi ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendEquationSeparatei #-}
 
ptr_glBlendEquationSeparatei :: FunPtr a
ptr_glBlendEquationSeparatei
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glBlendEquationSeparatei"
 
glBlendEquationSeparatei :: GLuint -> GLenum -> GLenum -> IO ()
glBlendEquationSeparatei
  = dyn_glBlendEquationSeparatei ptr_glBlendEquationSeparatei
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBlendEquationSeparatei ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBindTransformFeedback #-}
 
ptr_glBindTransformFeedback :: FunPtr a
ptr_glBindTransformFeedback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glBindTransformFeedback"
 
glBindTransformFeedback :: GLenum -> GLuint -> IO ()
glBindTransformFeedback
  = dyn_glBindTransformFeedback ptr_glBindTransformFeedback
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindTransformFeedback
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glBeginQueryIndexed #-}
 
ptr_glBeginQueryIndexed :: FunPtr a
ptr_glBeginQueryIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_4_0"
        "glBeginQueryIndexed"
 
glBeginQueryIndexed :: GLenum -> GLuint -> GLuint -> IO ()
glBeginQueryIndexed
  = dyn_glBeginQueryIndexed ptr_glBeginQueryIndexed
 
foreign import CALLCONV unsafe "dynamic" dyn_glBeginQueryIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> IO ())
 
gl_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY :: GLenum
gl_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = 36879
 
gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER :: GLenum
gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = 34033
 
gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER :: GLenum
gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = 34032
 
gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED = 36387
 
gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE = 36388
 
gl_TRANSFORM_FEEDBACK_BINDING :: GLenum
gl_TRANSFORM_FEEDBACK_BINDING = 36389
 
gl_TRANSFORM_FEEDBACK :: GLenum
gl_TRANSFORM_FEEDBACK = 36386
 
gl_TEXTURE_CUBE_MAP_ARRAY :: GLenum
gl_TEXTURE_CUBE_MAP_ARRAY = 36873
 
gl_TEXTURE_BINDING_CUBE_MAP_ARRAY :: GLenum
gl_TEXTURE_BINDING_CUBE_MAP_ARRAY = 36874
 
gl_TESS_GEN_VERTEX_ORDER :: GLenum
gl_TESS_GEN_VERTEX_ORDER = 36472
 
gl_TESS_GEN_SPACING :: GLenum
gl_TESS_GEN_SPACING = 36471
 
gl_TESS_GEN_POINT_MODE :: GLenum
gl_TESS_GEN_POINT_MODE = 36473
 
gl_TESS_GEN_MODE :: GLenum
gl_TESS_GEN_MODE = 36470
 
gl_TESS_EVALUATION_SHADER :: GLenum
gl_TESS_EVALUATION_SHADER = 36487
 
gl_TESS_CONTROL_SHADER :: GLenum
gl_TESS_CONTROL_SHADER = 36488
 
gl_TESS_CONTROL_OUTPUT_VERTICES :: GLenum
gl_TESS_CONTROL_OUTPUT_VERTICES = 36469
 
gl_SAMPLE_SHADING :: GLenum
gl_SAMPLE_SHADING = 35894
 
gl_SAMPLER_CUBE_MAP_ARRAY_SHADOW :: GLenum
gl_SAMPLER_CUBE_MAP_ARRAY_SHADOW = 36877
 
gl_SAMPLER_CUBE_MAP_ARRAY :: GLenum
gl_SAMPLER_CUBE_MAP_ARRAY = 36876
 
gl_PROXY_TEXTURE_CUBE_MAP_ARRAY :: GLenum
gl_PROXY_TEXTURE_CUBE_MAP_ARRAY = 36875
 
gl_PATCH_VERTICES :: GLenum
gl_PATCH_VERTICES = 36466
 
gl_PATCH_DEFAULT_OUTER_LEVEL :: GLenum
gl_PATCH_DEFAULT_OUTER_LEVEL = 36468
 
gl_PATCH_DEFAULT_INNER_LEVEL :: GLenum
gl_PATCH_DEFAULT_INNER_LEVEL = 36467
 
gl_PATCHES :: GLenum
gl_PATCHES = 14
 
gl_NUM_COMPATIBLE_SUBROUTINES :: GLenum
gl_NUM_COMPATIBLE_SUBROUTINES = 36426
 
gl_MIN_SAMPLE_SHADING_VALUE :: GLenum
gl_MIN_SAMPLE_SHADING_VALUE = 35895
 
gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET :: GLenum
gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET = 36446
 
gl_MIN_FRAGMENT_INTERPOLATION_OFFSET :: GLenum
gl_MIN_FRAGMENT_INTERPOLATION_OFFSET = 36443
 
gl_MAX_VERTEX_STREAMS :: GLenum
gl_MAX_VERTEX_STREAMS = 36465
 
gl_MAX_TRANSFORM_FEEDBACK_BUFFERS :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_BUFFERS = 36464
 
gl_MAX_TESS_PATCH_COMPONENTS :: GLenum
gl_MAX_TESS_PATCH_COMPONENTS = 36484
 
gl_MAX_TESS_GEN_LEVEL :: GLenum
gl_MAX_TESS_GEN_LEVEL = 36478
 
gl_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS :: GLenum
gl_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS = 36480
 
gl_MAX_TESS_EVALUATION_UNIFORM_BLOCKS :: GLenum
gl_MAX_TESS_EVALUATION_UNIFORM_BLOCKS = 36490
 
gl_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS = 36482
 
gl_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS :: GLenum
gl_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS = 36486
 
gl_MAX_TESS_EVALUATION_INPUT_COMPONENTS :: GLenum
gl_MAX_TESS_EVALUATION_INPUT_COMPONENTS = 34925
 
gl_MAX_TESS_CONTROL_UNIFORM_COMPONENTS :: GLenum
gl_MAX_TESS_CONTROL_UNIFORM_COMPONENTS = 36479
 
gl_MAX_TESS_CONTROL_UNIFORM_BLOCKS :: GLenum
gl_MAX_TESS_CONTROL_UNIFORM_BLOCKS = 36489
 
gl_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS :: GLenum
gl_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS = 36485
 
gl_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS = 36481
 
gl_MAX_TESS_CONTROL_OUTPUT_COMPONENTS :: GLenum
gl_MAX_TESS_CONTROL_OUTPUT_COMPONENTS = 36483
 
gl_MAX_TESS_CONTROL_INPUT_COMPONENTS :: GLenum
gl_MAX_TESS_CONTROL_INPUT_COMPONENTS = 34924
 
gl_MAX_SUBROUTINE_UNIFORM_LOCATIONS :: GLenum
gl_MAX_SUBROUTINE_UNIFORM_LOCATIONS = 36328
 
gl_MAX_SUBROUTINES :: GLenum
gl_MAX_SUBROUTINES = 36327
 
gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET :: GLenum
gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET = 36447
 
gl_MAX_PATCH_VERTICES :: GLenum
gl_MAX_PATCH_VERTICES = 36477
 
gl_MAX_GEOMETRY_SHADER_INVOCATIONS :: GLenum
gl_MAX_GEOMETRY_SHADER_INVOCATIONS = 36442
 
gl_MAX_FRAGMENT_INTERPOLATION_OFFSET :: GLenum
gl_MAX_FRAGMENT_INTERPOLATION_OFFSET = 36444
 
gl_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS = 36383
 
gl_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS = 36382
 
gl_ISOLINES :: GLenum
gl_ISOLINES = 36474
 
gl_INT_SAMPLER_CUBE_MAP_ARRAY :: GLenum
gl_INT_SAMPLER_CUBE_MAP_ARRAY = 36878
 
gl_GEOMETRY_SHADER_INVOCATIONS :: GLenum
gl_GEOMETRY_SHADER_INVOCATIONS = 34943
 
gl_FRAGMENT_INTERPOLATION_OFFSET_BITS :: GLenum
gl_FRAGMENT_INTERPOLATION_OFFSET_BITS = 36445
 
gl_FRACTIONAL_ODD :: GLenum
gl_FRACTIONAL_ODD = 36475
 
gl_FRACTIONAL_EVEN :: GLenum
gl_FRACTIONAL_EVEN = 36476
 
gl_DRAW_INDIRECT_BUFFER_BINDING :: GLenum
gl_DRAW_INDIRECT_BUFFER_BINDING = 36675
 
gl_DRAW_INDIRECT_BUFFER :: GLenum
gl_DRAW_INDIRECT_BUFFER = 36671
 
gl_DOUBLE_VEC4 :: GLenum
gl_DOUBLE_VEC4 = 36862
 
gl_DOUBLE_VEC3 :: GLenum
gl_DOUBLE_VEC3 = 36861
 
gl_DOUBLE_VEC2 :: GLenum
gl_DOUBLE_VEC2 = 36860
 
gl_DOUBLE_MAT4x3 :: GLenum
gl_DOUBLE_MAT4x3 = 36686
 
gl_DOUBLE_MAT4x2 :: GLenum
gl_DOUBLE_MAT4x2 = 36685
 
gl_DOUBLE_MAT4 :: GLenum
gl_DOUBLE_MAT4 = 36680
 
gl_DOUBLE_MAT3x4 :: GLenum
gl_DOUBLE_MAT3x4 = 36684
 
gl_DOUBLE_MAT3x2 :: GLenum
gl_DOUBLE_MAT3x2 = 36683
 
gl_DOUBLE_MAT3 :: GLenum
gl_DOUBLE_MAT3 = 36679
 
gl_DOUBLE_MAT2x4 :: GLenum
gl_DOUBLE_MAT2x4 = 36682
 
gl_DOUBLE_MAT2x3 :: GLenum
gl_DOUBLE_MAT2x3 = 36681
 
gl_DOUBLE_MAT2 :: GLenum
gl_DOUBLE_MAT2 = 36678
 
gl_COMPATIBLE_SUBROUTINES :: GLenum
gl_COMPATIBLE_SUBROUTINES = 36427
 
gl_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH :: GLenum
gl_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = 36425
 
gl_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS :: GLenum
gl_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = 36423
 
gl_ACTIVE_SUBROUTINE_UNIFORMS :: GLenum
gl_ACTIVE_SUBROUTINE_UNIFORMS = 36326
 
gl_ACTIVE_SUBROUTINE_MAX_LENGTH :: GLenum
gl_ACTIVE_SUBROUTINE_MAX_LENGTH = 36424
 
gl_ACTIVE_SUBROUTINES :: GLenum
gl_ACTIVE_SUBROUTINES = 36325