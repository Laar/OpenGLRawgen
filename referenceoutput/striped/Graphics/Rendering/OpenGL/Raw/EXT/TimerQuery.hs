{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TimerQuery
       (glGetQueryObjectui64v, glGetQueryObjecti64v, gl_TIME_ELAPSED)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetQueryObjectui64v #-}
 
ptr_glGetQueryObjectui64v :: FunPtr a
ptr_glGetQueryObjectui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_timer_query"
        "glGetQueryObjectui64vEXT"
 
glGetQueryObjectui64v :: GLuint -> GLenum -> Ptr GLuint64 -> IO ()
glGetQueryObjectui64v
  = dyn_glGetQueryObjectui64v ptr_glGetQueryObjectui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryObjectui64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glGetQueryObjecti64v #-}
 
ptr_glGetQueryObjecti64v :: FunPtr a
ptr_glGetQueryObjecti64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_timer_query"
        "glGetQueryObjecti64vEXT"
 
glGetQueryObjecti64v :: GLuint -> GLenum -> Ptr GLint64 -> IO ()
glGetQueryObjecti64v
  = dyn_glGetQueryObjecti64v ptr_glGetQueryObjecti64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryObjecti64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint64 -> IO ())
 
gl_TIME_ELAPSED :: GLenum
gl_TIME_ELAPSED = 35007