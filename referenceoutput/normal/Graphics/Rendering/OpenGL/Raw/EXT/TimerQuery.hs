{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TimerQuery
       (glGetQueryObjectui64vEXT, glGetQueryObjecti64vEXT,
        gl_TIME_ELAPSED_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetQueryObjectui64vEXT #-}
 
ptr_glGetQueryObjectui64vEXT :: FunPtr a
ptr_glGetQueryObjectui64vEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_timer_query"
        "glGetQueryObjectui64vEXT"
 
glGetQueryObjectui64vEXT ::
                         GLuint -> GLenum -> Ptr GLuint64 -> IO ()
glGetQueryObjectui64vEXT
  = dyn_glGetQueryObjectui64vEXT ptr_glGetQueryObjectui64vEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetQueryObjectui64vEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glGetQueryObjecti64vEXT #-}
 
ptr_glGetQueryObjecti64vEXT :: FunPtr a
ptr_glGetQueryObjecti64vEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_timer_query"
        "glGetQueryObjecti64vEXT"
 
glGetQueryObjecti64vEXT :: GLuint -> GLenum -> Ptr GLint64 -> IO ()
glGetQueryObjecti64vEXT
  = dyn_glGetQueryObjecti64vEXT ptr_glGetQueryObjecti64vEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryObjecti64vEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint64 -> IO ())
 
gl_TIME_ELAPSED_EXT :: GLenum
gl_TIME_ELAPSED_EXT = 35007