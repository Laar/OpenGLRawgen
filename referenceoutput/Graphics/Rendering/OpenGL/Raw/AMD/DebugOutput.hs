{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.DebugOutput
       (glGetDebugMessageLogAMD, glDebugMessageCallbackAMD,
        glDebugMessageInsertAMD, glDebugMessageEnableAMD,
        gl_DEBUG_CATEGORY_OTHER_AMD, gl_DEBUG_CATEGORY_APPLICATION_AMD,
        gl_DEBUG_CATEGORY_SHADER_COMPILER_AMD,
        gl_DEBUG_CATEGORY_PERFORMANCE_AMD,
        gl_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD,
        gl_DEBUG_CATEGORY_DEPRECATION_AMD,
        gl_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD,
        gl_DEBUG_CATEGORY_API_ERROR_AMD, gl_DEBUG_SEVERITY_LOW_AMD,
        gl_DEBUG_SEVERITY_MEDIUM_AMD, gl_DEBUG_SEVERITY_HIGH_AMD,
        gl_DEBUG_LOGGED_MESSAGES_AMD, gl_MAX_DEBUG_LOGGED_MESSAGES_AMD)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetDebugMessageLogAMD #-}
 
ptr_glGetDebugMessageLogAMD :: FunPtr a
ptr_glGetDebugMessageLogAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_debug_output"
        "glGetDebugMessageLogAMD"
 
glGetDebugMessageLogAMD ::
                        GLuint ->
                          GLsizei ->
                            Ptr GLenum ->
                              Ptr GLuint -> Ptr GLuint -> Ptr GLsizei -> Ptr GLchar -> IO GLuint
glGetDebugMessageLogAMD
  = dyn_glGetDebugMessageLogAMD ptr_glGetDebugMessageLogAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetDebugMessageLogAMD
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei ->
                      Ptr GLenum ->
                        Ptr GLuint -> Ptr GLuint -> Ptr GLsizei -> Ptr GLchar -> IO GLuint)
 
{-# NOINLINE ptr_glDebugMessageCallbackAMD #-}
 
ptr_glDebugMessageCallbackAMD :: FunPtr a
ptr_glDebugMessageCallbackAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_debug_output"
        "glDebugMessageCallbackAMD"
 
glDebugMessageCallbackAMD :: GLdebugprocAMD -> Ptr a -> IO ()
glDebugMessageCallbackAMD
  = dyn_glDebugMessageCallbackAMD ptr_glDebugMessageCallbackAMD
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDebugMessageCallbackAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdebugprocAMD -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glDebugMessageInsertAMD #-}
 
ptr_glDebugMessageInsertAMD :: FunPtr a
ptr_glDebugMessageInsertAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_debug_output"
        "glDebugMessageInsertAMD"
 
glDebugMessageInsertAMD ::
                        GLenum -> GLenum -> GLuint -> GLsizei -> Ptr GLchar -> IO ()
glDebugMessageInsertAMD
  = dyn_glDebugMessageInsertAMD ptr_glDebugMessageInsertAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glDebugMessageInsertAMD
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glDebugMessageEnableAMD #-}
 
ptr_glDebugMessageEnableAMD :: FunPtr a
ptr_glDebugMessageEnableAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_debug_output"
        "glDebugMessageEnableAMD"
 
glDebugMessageEnableAMD ::
                        GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> IO ()
glDebugMessageEnableAMD
  = dyn_glDebugMessageEnableAMD ptr_glDebugMessageEnableAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glDebugMessageEnableAMD
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> IO ())
 
gl_DEBUG_CATEGORY_OTHER_AMD :: GLenum
gl_DEBUG_CATEGORY_OTHER_AMD = 37200
 
gl_DEBUG_CATEGORY_APPLICATION_AMD :: GLenum
gl_DEBUG_CATEGORY_APPLICATION_AMD = 37199
 
gl_DEBUG_CATEGORY_SHADER_COMPILER_AMD :: GLenum
gl_DEBUG_CATEGORY_SHADER_COMPILER_AMD = 37198
 
gl_DEBUG_CATEGORY_PERFORMANCE_AMD :: GLenum
gl_DEBUG_CATEGORY_PERFORMANCE_AMD = 37197
 
gl_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD :: GLenum
gl_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD = 37196
 
gl_DEBUG_CATEGORY_DEPRECATION_AMD :: GLenum
gl_DEBUG_CATEGORY_DEPRECATION_AMD = 37195
 
gl_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD :: GLenum
gl_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD = 37194
 
gl_DEBUG_CATEGORY_API_ERROR_AMD :: GLenum
gl_DEBUG_CATEGORY_API_ERROR_AMD = 37193
 
gl_DEBUG_SEVERITY_LOW_AMD :: GLenum
gl_DEBUG_SEVERITY_LOW_AMD = 37192
 
gl_DEBUG_SEVERITY_MEDIUM_AMD :: GLenum
gl_DEBUG_SEVERITY_MEDIUM_AMD = 37191
 
gl_DEBUG_SEVERITY_HIGH_AMD :: GLenum
gl_DEBUG_SEVERITY_HIGH_AMD = 37190
 
gl_DEBUG_LOGGED_MESSAGES_AMD :: GLenum
gl_DEBUG_LOGGED_MESSAGES_AMD = 37189
 
gl_MAX_DEBUG_LOGGED_MESSAGES_AMD :: GLenum
gl_MAX_DEBUG_LOGGED_MESSAGES_AMD = 37188