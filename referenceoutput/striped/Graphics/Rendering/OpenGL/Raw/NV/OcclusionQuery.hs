{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.OcclusionQuery
       (glIsOcclusionQuery, glGetOcclusionQueryuiv, glGetOcclusionQueryiv,
        glGenOcclusionQueries, glEndOcclusionQuery,
        glDeleteOcclusionQueries, glBeginOcclusionQuery, gl_PIXEL_COUNT,
        gl_PIXEL_COUNT_AVAILABLE, gl_PIXEL_COUNTER_BITS,
        gl_CURRENT_OCCLUSION_QUERY_ID)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glIsOcclusionQuery #-}
 
ptr_glIsOcclusionQuery :: FunPtr a
ptr_glIsOcclusionQuery
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_occlusion_query"
        "glIsOcclusionQueryNV"
 
glIsOcclusionQuery :: GLuint -> IO GLboolean
glIsOcclusionQuery = dyn_glIsOcclusionQuery ptr_glIsOcclusionQuery
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsOcclusionQuery ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetOcclusionQueryuiv #-}
 
ptr_glGetOcclusionQueryuiv :: FunPtr a
ptr_glGetOcclusionQueryuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_occlusion_query"
        "glGetOcclusionQueryuivNV"
 
glGetOcclusionQueryuiv :: GLuint -> GLenum -> Ptr GLuint -> IO ()
glGetOcclusionQueryuiv
  = dyn_glGetOcclusionQueryuiv ptr_glGetOcclusionQueryuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetOcclusionQueryuiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetOcclusionQueryiv #-}
 
ptr_glGetOcclusionQueryiv :: FunPtr a
ptr_glGetOcclusionQueryiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_occlusion_query"
        "glGetOcclusionQueryivNV"
 
glGetOcclusionQueryiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetOcclusionQueryiv
  = dyn_glGetOcclusionQueryiv ptr_glGetOcclusionQueryiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetOcclusionQueryiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGenOcclusionQueries #-}
 
ptr_glGenOcclusionQueries :: FunPtr a
ptr_glGenOcclusionQueries
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_occlusion_query"
        "glGenOcclusionQueriesNV"
 
glGenOcclusionQueries :: GLsizei -> Ptr GLuint -> IO ()
glGenOcclusionQueries
  = dyn_glGenOcclusionQueries ptr_glGenOcclusionQueries
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenOcclusionQueries
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glEndOcclusionQuery #-}
 
ptr_glEndOcclusionQuery :: FunPtr a
ptr_glEndOcclusionQuery
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_occlusion_query"
        "glEndOcclusionQueryNV"
 
glEndOcclusionQuery :: IO ()
glEndOcclusionQuery
  = dyn_glEndOcclusionQuery ptr_glEndOcclusionQuery
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndOcclusionQuery ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glDeleteOcclusionQueries #-}
 
ptr_glDeleteOcclusionQueries :: FunPtr a
ptr_glDeleteOcclusionQueries
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_occlusion_query"
        "glDeleteOcclusionQueriesNV"
 
glDeleteOcclusionQueries :: GLsizei -> Ptr GLuint -> IO ()
glDeleteOcclusionQueries
  = dyn_glDeleteOcclusionQueries ptr_glDeleteOcclusionQueries
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDeleteOcclusionQueries ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBeginOcclusionQuery #-}
 
ptr_glBeginOcclusionQuery :: FunPtr a
ptr_glBeginOcclusionQuery
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_occlusion_query"
        "glBeginOcclusionQueryNV"
 
glBeginOcclusionQuery :: GLuint -> IO ()
glBeginOcclusionQuery
  = dyn_glBeginOcclusionQuery ptr_glBeginOcclusionQuery
 
foreign import CALLCONV unsafe "dynamic" dyn_glBeginOcclusionQuery
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
gl_PIXEL_COUNT :: GLenum
gl_PIXEL_COUNT = 34918
 
gl_PIXEL_COUNT_AVAILABLE :: GLenum
gl_PIXEL_COUNT_AVAILABLE = 34919
 
gl_PIXEL_COUNTER_BITS :: GLenum
gl_PIXEL_COUNTER_BITS = 34916
 
gl_CURRENT_OCCLUSION_QUERY_ID :: GLenum
gl_CURRENT_OCCLUSION_QUERY_ID = 34917