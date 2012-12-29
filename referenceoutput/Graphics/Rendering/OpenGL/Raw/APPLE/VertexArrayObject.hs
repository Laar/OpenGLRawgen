{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.VertexArrayObject
       (glIsVertexArrayAPPLE, glGenVertexArraysAPPLE,
        glDeleteVertexArraysAPPLE, glBindVertexArrayAPPLE,
        gl_VERTEX_ARRAY_BINDING_APPLE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glIsVertexArrayAPPLE #-}
 
ptr_glIsVertexArrayAPPLE :: FunPtr a
ptr_glIsVertexArrayAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_array_object"
        "glIsVertexArrayAPPLE"
 
glIsVertexArrayAPPLE :: GLuint -> IO GLboolean
glIsVertexArrayAPPLE
  = dyn_glIsVertexArrayAPPLE ptr_glIsVertexArrayAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsVertexArrayAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGenVertexArraysAPPLE #-}
 
ptr_glGenVertexArraysAPPLE :: FunPtr a
ptr_glGenVertexArraysAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_array_object"
        "glGenVertexArraysAPPLE"
 
glGenVertexArraysAPPLE :: GLsizei -> Ptr GLuint -> IO ()
glGenVertexArraysAPPLE
  = dyn_glGenVertexArraysAPPLE ptr_glGenVertexArraysAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenVertexArraysAPPLE
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteVertexArraysAPPLE #-}
 
ptr_glDeleteVertexArraysAPPLE :: FunPtr a
ptr_glDeleteVertexArraysAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_array_object"
        "glDeleteVertexArraysAPPLE"
 
glDeleteVertexArraysAPPLE :: GLsizei -> Ptr GLuint -> IO ()
glDeleteVertexArraysAPPLE
  = dyn_glDeleteVertexArraysAPPLE ptr_glDeleteVertexArraysAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDeleteVertexArraysAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBindVertexArrayAPPLE #-}
 
ptr_glBindVertexArrayAPPLE :: FunPtr a
ptr_glBindVertexArrayAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_array_object"
        "glBindVertexArrayAPPLE"
 
glBindVertexArrayAPPLE :: GLuint -> IO ()
glBindVertexArrayAPPLE
  = dyn_glBindVertexArrayAPPLE ptr_glBindVertexArrayAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindVertexArrayAPPLE
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
gl_VERTEX_ARRAY_BINDING_APPLE :: GLenum
gl_VERTEX_ARRAY_BINDING_APPLE = 34229