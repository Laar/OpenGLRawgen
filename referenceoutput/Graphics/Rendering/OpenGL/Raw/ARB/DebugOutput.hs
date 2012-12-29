{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.DebugOutput
       (glGetDebugMessageLogARB, glDebugMessageCallbackARB,
        glDebugMessageInsertARB, glDebugMessageControlARB,
        gl_DEBUG_SEVERITY_LOW_ARB, gl_DEBUG_SEVERITY_MEDIUM_ARB,
        gl_DEBUG_SEVERITY_HIGH_ARB, gl_DEBUG_LOGGED_MESSAGES_ARB,
        gl_MAX_DEBUG_LOGGED_MESSAGES_ARB, gl_MAX_DEBUG_MESSAGE_LENGTH_ARB,
        gl_DEBUG_TYPE_OTHER_ARB, gl_DEBUG_TYPE_PERFORMANCE_ARB,
        gl_DEBUG_TYPE_PORTABILITY_ARB,
        gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB,
        gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB, gl_DEBUG_TYPE_ERROR_ARB,
        gl_DEBUG_SOURCE_OTHER_ARB, gl_DEBUG_SOURCE_APPLICATION_ARB,
        gl_DEBUG_SOURCE_THIRD_PARTY_ARB,
        gl_DEBUG_SOURCE_SHADER_COMPILER_ARB,
        gl_DEBUG_SOURCE_WINDOW_SYSTEM_ARB, gl_DEBUG_SOURCE_API_ARB,
        gl_DEBUG_CALLBACK_USER_PARAM_ARB, gl_DEBUG_CALLBACK_FUNCTION_ARB,
        gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB,
        gl_DEBUG_OUTPUT_SYNCHRONOUS_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetDebugMessageLogARB #-}
 
ptr_glGetDebugMessageLogARB :: FunPtr a
ptr_glGetDebugMessageLogARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_debug_output"
        "glGetDebugMessageLogARB"
 
glGetDebugMessageLogARB ::
                        GLuint ->
                          GLsizei ->
                            Ptr GLenum ->
                              Ptr GLenum ->
                                Ptr GLuint -> Ptr GLenum -> Ptr GLsizei -> Ptr GLchar -> IO GLuint
glGetDebugMessageLogARB
  = dyn_glGetDebugMessageLogARB ptr_glGetDebugMessageLogARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetDebugMessageLogARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei ->
                      Ptr GLenum ->
                        Ptr GLenum ->
                          Ptr GLuint -> Ptr GLenum -> Ptr GLsizei -> Ptr GLchar -> IO GLuint)
 
{-# NOINLINE ptr_glDebugMessageCallbackARB #-}
 
ptr_glDebugMessageCallbackARB :: FunPtr a
ptr_glDebugMessageCallbackARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_debug_output"
        "glDebugMessageCallbackARB"
 
glDebugMessageCallbackARB :: GLdebugprocARB -> Ptr a -> IO ()
glDebugMessageCallbackARB
  = dyn_glDebugMessageCallbackARB ptr_glDebugMessageCallbackARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDebugMessageCallbackARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdebugprocARB -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glDebugMessageInsertARB #-}
 
ptr_glDebugMessageInsertARB :: FunPtr a
ptr_glDebugMessageInsertARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_debug_output"
        "glDebugMessageInsertARB"
 
glDebugMessageInsertARB ::
                        GLenum ->
                          GLenum -> GLuint -> GLenum -> GLsizei -> Ptr GLchar -> IO ()
glDebugMessageInsertARB
  = dyn_glDebugMessageInsertARB ptr_glDebugMessageInsertARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glDebugMessageInsertARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum -> GLuint -> GLenum -> GLsizei -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glDebugMessageControlARB #-}
 
ptr_glDebugMessageControlARB :: FunPtr a
ptr_glDebugMessageControlARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_debug_output"
        "glDebugMessageControlARB"
 
glDebugMessageControlARB ::
                         GLenum ->
                           GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> IO ()
glDebugMessageControlARB
  = dyn_glDebugMessageControlARB ptr_glDebugMessageControlARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDebugMessageControlARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> IO ())
 
gl_DEBUG_SEVERITY_LOW_ARB :: GLenum
gl_DEBUG_SEVERITY_LOW_ARB = 37192
 
gl_DEBUG_SEVERITY_MEDIUM_ARB :: GLenum
gl_DEBUG_SEVERITY_MEDIUM_ARB = 37191
 
gl_DEBUG_SEVERITY_HIGH_ARB :: GLenum
gl_DEBUG_SEVERITY_HIGH_ARB = 37190
 
gl_DEBUG_LOGGED_MESSAGES_ARB :: GLenum
gl_DEBUG_LOGGED_MESSAGES_ARB = 37189
 
gl_MAX_DEBUG_LOGGED_MESSAGES_ARB :: GLenum
gl_MAX_DEBUG_LOGGED_MESSAGES_ARB = 37188
 
gl_MAX_DEBUG_MESSAGE_LENGTH_ARB :: GLenum
gl_MAX_DEBUG_MESSAGE_LENGTH_ARB = 37187
 
gl_DEBUG_TYPE_OTHER_ARB :: GLenum
gl_DEBUG_TYPE_OTHER_ARB = 33361
 
gl_DEBUG_TYPE_PERFORMANCE_ARB :: GLenum
gl_DEBUG_TYPE_PERFORMANCE_ARB = 33360
 
gl_DEBUG_TYPE_PORTABILITY_ARB :: GLenum
gl_DEBUG_TYPE_PORTABILITY_ARB = 33359
 
gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB :: GLenum
gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB = 33358
 
gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB :: GLenum
gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB = 33357
 
gl_DEBUG_TYPE_ERROR_ARB :: GLenum
gl_DEBUG_TYPE_ERROR_ARB = 33356
 
gl_DEBUG_SOURCE_OTHER_ARB :: GLenum
gl_DEBUG_SOURCE_OTHER_ARB = 33355
 
gl_DEBUG_SOURCE_APPLICATION_ARB :: GLenum
gl_DEBUG_SOURCE_APPLICATION_ARB = 33354
 
gl_DEBUG_SOURCE_THIRD_PARTY_ARB :: GLenum
gl_DEBUG_SOURCE_THIRD_PARTY_ARB = 33353
 
gl_DEBUG_SOURCE_SHADER_COMPILER_ARB :: GLenum
gl_DEBUG_SOURCE_SHADER_COMPILER_ARB = 33352
 
gl_DEBUG_SOURCE_WINDOW_SYSTEM_ARB :: GLenum
gl_DEBUG_SOURCE_WINDOW_SYSTEM_ARB = 33351
 
gl_DEBUG_SOURCE_API_ARB :: GLenum
gl_DEBUG_SOURCE_API_ARB = 33350
 
gl_DEBUG_CALLBACK_USER_PARAM_ARB :: GLenum
gl_DEBUG_CALLBACK_USER_PARAM_ARB = 33349
 
gl_DEBUG_CALLBACK_FUNCTION_ARB :: GLenum
gl_DEBUG_CALLBACK_FUNCTION_ARB = 33348
 
gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB :: GLenum
gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB = 33347
 
gl_DEBUG_OUTPUT_SYNCHRONOUS_ARB :: GLenum
gl_DEBUG_OUTPUT_SYNCHRONOUS_ARB = 33346