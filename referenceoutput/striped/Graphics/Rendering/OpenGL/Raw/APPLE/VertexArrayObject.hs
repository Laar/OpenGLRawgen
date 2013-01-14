{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.VertexArrayObject
       (glIsVertexArray, glGenVertexArrays, glDeleteVertexArrays,
        glBindVertexArray, gl_VERTEX_ARRAY_BINDING)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glIsVertexArray #-}
 
ptr_glIsVertexArray :: FunPtr a
ptr_glIsVertexArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_array_object"
        "glIsVertexArrayAPPLE"
 
glIsVertexArray :: GLuint -> IO GLboolean
glIsVertexArray = dyn_glIsVertexArray ptr_glIsVertexArray
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsVertexArray ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGenVertexArrays #-}
 
ptr_glGenVertexArrays :: FunPtr a
ptr_glGenVertexArrays
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_array_object"
        "glGenVertexArraysAPPLE"
 
glGenVertexArrays :: GLsizei -> Ptr GLuint -> IO ()
glGenVertexArrays = dyn_glGenVertexArrays ptr_glGenVertexArrays
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenVertexArrays ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteVertexArrays #-}
 
ptr_glDeleteVertexArrays :: FunPtr a
ptr_glDeleteVertexArrays
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_array_object"
        "glDeleteVertexArraysAPPLE"
 
glDeleteVertexArrays :: GLsizei -> Ptr GLuint -> IO ()
glDeleteVertexArrays
  = dyn_glDeleteVertexArrays ptr_glDeleteVertexArrays
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteVertexArrays ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBindVertexArray #-}
 
ptr_glBindVertexArray :: FunPtr a
ptr_glBindVertexArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_array_object"
        "glBindVertexArrayAPPLE"
 
glBindVertexArray :: GLuint -> IO ()
glBindVertexArray = dyn_glBindVertexArray ptr_glBindVertexArray
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindVertexArray ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
gl_VERTEX_ARRAY_BINDING :: GLenum
gl_VERTEX_ARRAY_BINDING = 34229