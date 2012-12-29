{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.OcclusionQuery
       (glGetQueryObjectuivARB, glGetQueryObjectivARB, glGetQueryivARB,
        glEndQueryARB, glBeginQueryARB, glIsQueryARB, glDeleteQueriesARB,
        glGenQueriesARB, gl_SAMPLES_PASSED_ARB,
        gl_QUERY_RESULT_AVAILABLE_ARB, gl_QUERY_RESULT_ARB,
        gl_CURRENT_QUERY_ARB, gl_QUERY_COUNTER_BITS_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetQueryObjectuivARB #-}
 
ptr_glGetQueryObjectuivARB :: FunPtr a
ptr_glGetQueryObjectuivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glGetQueryObjectuivARB"
 
glGetQueryObjectuivARB :: GLuint -> GLenum -> Ptr GLuint -> IO ()
glGetQueryObjectuivARB
  = dyn_glGetQueryObjectuivARB ptr_glGetQueryObjectuivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryObjectuivARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetQueryObjectivARB #-}
 
ptr_glGetQueryObjectivARB :: FunPtr a
ptr_glGetQueryObjectivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glGetQueryObjectivARB"
 
glGetQueryObjectivARB :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetQueryObjectivARB
  = dyn_glGetQueryObjectivARB ptr_glGetQueryObjectivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryObjectivARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetQueryivARB #-}
 
ptr_glGetQueryivARB :: FunPtr a
ptr_glGetQueryivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glGetQueryivARB"
 
glGetQueryivARB :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetQueryivARB = dyn_glGetQueryivARB ptr_glGetQueryivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glEndQueryARB #-}
 
ptr_glEndQueryARB :: FunPtr a
ptr_glEndQueryARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glEndQueryARB"
 
glEndQueryARB :: GLenum -> IO ()
glEndQueryARB = dyn_glEndQueryARB ptr_glEndQueryARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndQueryARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glBeginQueryARB #-}
 
ptr_glBeginQueryARB :: FunPtr a
ptr_glBeginQueryARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glBeginQueryARB"
 
glBeginQueryARB :: GLenum -> GLuint -> IO ()
glBeginQueryARB = dyn_glBeginQueryARB ptr_glBeginQueryARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glBeginQueryARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glIsQueryARB #-}
 
ptr_glIsQueryARB :: FunPtr a
ptr_glIsQueryARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glIsQueryARB"
 
glIsQueryARB :: GLuint -> IO GLboolean
glIsQueryARB = dyn_glIsQueryARB ptr_glIsQueryARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsQueryARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glDeleteQueriesARB #-}
 
ptr_glDeleteQueriesARB :: FunPtr a
ptr_glDeleteQueriesARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glDeleteQueriesARB"
 
glDeleteQueriesARB :: GLsizei -> Ptr GLuint -> IO ()
glDeleteQueriesARB = dyn_glDeleteQueriesARB ptr_glDeleteQueriesARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteQueriesARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGenQueriesARB #-}
 
ptr_glGenQueriesARB :: FunPtr a
ptr_glGenQueriesARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_occlusion_query"
        "glGenQueriesARB"
 
glGenQueriesARB :: GLsizei -> Ptr GLuint -> IO ()
glGenQueriesARB = dyn_glGenQueriesARB ptr_glGenQueriesARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenQueriesARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
gl_SAMPLES_PASSED_ARB :: GLenum
gl_SAMPLES_PASSED_ARB = 35092
 
gl_QUERY_RESULT_AVAILABLE_ARB :: GLenum
gl_QUERY_RESULT_AVAILABLE_ARB = 34919
 
gl_QUERY_RESULT_ARB :: GLenum
gl_QUERY_RESULT_ARB = 34918
 
gl_CURRENT_QUERY_ARB :: GLenum
gl_CURRENT_QUERY_ARB = 34917
 
gl_QUERY_COUNTER_BITS_ARB :: GLenum
gl_QUERY_COUNTER_BITS_ARB = 34916