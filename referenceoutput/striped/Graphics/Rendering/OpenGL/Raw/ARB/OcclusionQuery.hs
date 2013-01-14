{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.OcclusionQuery
       (glIsQuery, glGetQueryiv, glGetQueryObjectuiv, glGetQueryObjectiv,
        glGenQueries, glEndQuery, glDeleteQueries, glBeginQuery,
        gl_SAMPLES_PASSED, gl_QUERY_RESULT_AVAILABLE, gl_QUERY_RESULT,
        gl_QUERY_COUNTER_BITS, gl_CURRENT_QUERY)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glIsQuery #-}
 
ptr_glIsQuery :: FunPtr a
ptr_glIsQuery
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glIsQueryARB"
 
glIsQuery :: GLuint -> IO GLboolean
glIsQuery = dyn_glIsQuery ptr_glIsQuery
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsQuery ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetQueryiv #-}
 
ptr_glGetQueryiv :: FunPtr a
ptr_glGetQueryiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glGetQueryivARB"
 
glGetQueryiv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetQueryiv = dyn_glGetQueryiv ptr_glGetQueryiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetQueryObjectuiv #-}
 
ptr_glGetQueryObjectuiv :: FunPtr a
ptr_glGetQueryObjectuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glGetQueryObjectuivARB"
 
glGetQueryObjectuiv :: GLuint -> GLenum -> Ptr GLuint -> IO ()
glGetQueryObjectuiv
  = dyn_glGetQueryObjectuiv ptr_glGetQueryObjectuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryObjectuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetQueryObjectiv #-}
 
ptr_glGetQueryObjectiv :: FunPtr a
ptr_glGetQueryObjectiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glGetQueryObjectivARB"
 
glGetQueryObjectiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetQueryObjectiv = dyn_glGetQueryObjectiv ptr_glGetQueryObjectiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryObjectiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGenQueries #-}
 
ptr_glGenQueries :: FunPtr a
ptr_glGenQueries
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glGenQueriesARB"
 
glGenQueries :: GLsizei -> Ptr GLuint -> IO ()
glGenQueries = dyn_glGenQueries ptr_glGenQueries
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenQueries ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glEndQuery #-}
 
ptr_glEndQuery :: FunPtr a
ptr_glEndQuery
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glEndQueryARB"
 
glEndQuery :: GLenum -> IO ()
glEndQuery = dyn_glEndQuery ptr_glEndQuery
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndQuery ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glDeleteQueries #-}
 
ptr_glDeleteQueries :: FunPtr a
ptr_glDeleteQueries
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glDeleteQueriesARB"
 
glDeleteQueries :: GLsizei -> Ptr GLuint -> IO ()
glDeleteQueries = dyn_glDeleteQueries ptr_glDeleteQueries
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteQueries ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBeginQuery #-}
 
ptr_glBeginQuery :: FunPtr a
ptr_glBeginQuery
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glBeginQueryARB"
 
glBeginQuery :: GLenum -> GLuint -> IO ()
glBeginQuery = dyn_glBeginQuery ptr_glBeginQuery
 
foreign import CALLCONV unsafe "dynamic" dyn_glBeginQuery ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
gl_SAMPLES_PASSED :: GLenum
gl_SAMPLES_PASSED = 35092
 
gl_QUERY_RESULT_AVAILABLE :: GLenum
gl_QUERY_RESULT_AVAILABLE = 34919
 
gl_QUERY_RESULT :: GLenum
gl_QUERY_RESULT = 34918
 
gl_QUERY_COUNTER_BITS :: GLenum
gl_QUERY_COUNTER_BITS = 34916
 
gl_CURRENT_QUERY :: GLenum
gl_CURRENT_QUERY = 34917