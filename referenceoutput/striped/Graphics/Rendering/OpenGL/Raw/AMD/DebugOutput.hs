{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.DebugOutput
       (glGetDebugMessageLog, glDebugMessageInsert, glDebugMessageEnable,
        glDebugMessageCallback, gl_MAX_DEBUG_MESSAGE_LENGTH,
        gl_MAX_DEBUG_LOGGED_MESSAGES, gl_DEBUG_SEVERITY_MEDIUM,
        gl_DEBUG_SEVERITY_LOW, gl_DEBUG_SEVERITY_HIGH,
        gl_DEBUG_LOGGED_MESSAGES, gl_DEBUG_CATEGORY_WINDOW_SYSTEM,
        gl_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR,
        gl_DEBUG_CATEGORY_SHADER_COMPILER, gl_DEBUG_CATEGORY_PERFORMANCE,
        gl_DEBUG_CATEGORY_OTHER, gl_DEBUG_CATEGORY_DEPRECATION,
        gl_DEBUG_CATEGORY_APPLICATION, gl_DEBUG_CATEGORY_API_ERROR)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetDebugMessageLog #-}
 
ptr_glGetDebugMessageLog :: FunPtr a
ptr_glGetDebugMessageLog
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_debug_output"
        "glGetDebugMessageLogAMD"
 
glGetDebugMessageLog ::
                     GLuint ->
                       GLsizei ->
                         Ptr GLenum ->
                           Ptr GLuint -> Ptr GLuint -> Ptr GLsizei -> Ptr GLchar -> IO GLuint
glGetDebugMessageLog
  = dyn_glGetDebugMessageLog ptr_glGetDebugMessageLog
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetDebugMessageLog ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei ->
                      Ptr GLenum ->
                        Ptr GLuint -> Ptr GLuint -> Ptr GLsizei -> Ptr GLchar -> IO GLuint)
 
{-# NOINLINE ptr_glDebugMessageInsert #-}
 
ptr_glDebugMessageInsert :: FunPtr a
ptr_glDebugMessageInsert
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_debug_output"
        "glDebugMessageInsertAMD"
 
glDebugMessageInsert ::
                     GLenum -> GLenum -> GLuint -> GLsizei -> Ptr GLchar -> IO ()
glDebugMessageInsert
  = dyn_glDebugMessageInsert ptr_glDebugMessageInsert
 
foreign import CALLCONV unsafe "dynamic" dyn_glDebugMessageInsert ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glDebugMessageEnable #-}
 
ptr_glDebugMessageEnable :: FunPtr a
ptr_glDebugMessageEnable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_debug_output"
        "glDebugMessageEnableAMD"
 
glDebugMessageEnable ::
                     GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> IO ()
glDebugMessageEnable
  = dyn_glDebugMessageEnable ptr_glDebugMessageEnable
 
foreign import CALLCONV unsafe "dynamic" dyn_glDebugMessageEnable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glDebugMessageCallback #-}
 
ptr_glDebugMessageCallback :: FunPtr a
ptr_glDebugMessageCallback
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_debug_output"
        "glDebugMessageCallbackAMD"
 
glDebugMessageCallback :: GLdebugprocAMD -> Ptr a -> IO ()
glDebugMessageCallback
  = dyn_glDebugMessageCallback ptr_glDebugMessageCallback
 
foreign import CALLCONV unsafe "dynamic" dyn_glDebugMessageCallback
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdebugprocAMD -> Ptr a -> IO ())
 
gl_MAX_DEBUG_MESSAGE_LENGTH :: GLenum
gl_MAX_DEBUG_MESSAGE_LENGTH = 37187
 
gl_MAX_DEBUG_LOGGED_MESSAGES :: GLenum
gl_MAX_DEBUG_LOGGED_MESSAGES = 37188
 
gl_DEBUG_SEVERITY_MEDIUM :: GLenum
gl_DEBUG_SEVERITY_MEDIUM = 37191
 
gl_DEBUG_SEVERITY_LOW :: GLenum
gl_DEBUG_SEVERITY_LOW = 37192
 
gl_DEBUG_SEVERITY_HIGH :: GLenum
gl_DEBUG_SEVERITY_HIGH = 37190
 
gl_DEBUG_LOGGED_MESSAGES :: GLenum
gl_DEBUG_LOGGED_MESSAGES = 37189
 
gl_DEBUG_CATEGORY_WINDOW_SYSTEM :: GLenum
gl_DEBUG_CATEGORY_WINDOW_SYSTEM = 37194
 
gl_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR :: GLenum
gl_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR = 37196
 
gl_DEBUG_CATEGORY_SHADER_COMPILER :: GLenum
gl_DEBUG_CATEGORY_SHADER_COMPILER = 37198
 
gl_DEBUG_CATEGORY_PERFORMANCE :: GLenum
gl_DEBUG_CATEGORY_PERFORMANCE = 37197
 
gl_DEBUG_CATEGORY_OTHER :: GLenum
gl_DEBUG_CATEGORY_OTHER = 37200
 
gl_DEBUG_CATEGORY_DEPRECATION :: GLenum
gl_DEBUG_CATEGORY_DEPRECATION = 37195
 
gl_DEBUG_CATEGORY_APPLICATION :: GLenum
gl_DEBUG_CATEGORY_APPLICATION = 37199
 
gl_DEBUG_CATEGORY_API_ERROR :: GLenum
gl_DEBUG_CATEGORY_API_ERROR = 37193