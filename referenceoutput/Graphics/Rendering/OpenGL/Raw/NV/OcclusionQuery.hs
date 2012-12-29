{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.OcclusionQuery
       (glGetOcclusionQueryuivNV, glGetOcclusionQueryivNV,
        glEndOcclusionQueryNV, glBeginOcclusionQueryNV,
        glIsOcclusionQueryNV, glDeleteOcclusionQueriesNV,
        glGenOcclusionQueriesNV, gl_PIXEL_COUNT_AVAILABLE_NV,
        gl_PIXEL_COUNT_NV, gl_CURRENT_OCCLUSION_QUERY_ID_NV,
        gl_PIXEL_COUNTER_BITS_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetOcclusionQueryuivNV #-}
 
ptr_glGetOcclusionQueryuivNV :: FunPtr a
ptr_glGetOcclusionQueryuivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_occlusion_query"
        "glGetOcclusionQueryuivNV"
 
glGetOcclusionQueryuivNV :: GLuint -> GLenum -> Ptr GLuint -> IO ()
glGetOcclusionQueryuivNV
  = dyn_glGetOcclusionQueryuivNV ptr_glGetOcclusionQueryuivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetOcclusionQueryuivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetOcclusionQueryivNV #-}
 
ptr_glGetOcclusionQueryivNV :: FunPtr a
ptr_glGetOcclusionQueryivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_occlusion_query"
        "glGetOcclusionQueryivNV"
 
glGetOcclusionQueryivNV :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetOcclusionQueryivNV
  = dyn_glGetOcclusionQueryivNV ptr_glGetOcclusionQueryivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetOcclusionQueryivNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glEndOcclusionQueryNV #-}
 
ptr_glEndOcclusionQueryNV :: FunPtr a
ptr_glEndOcclusionQueryNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_occlusion_query"
        "glEndOcclusionQueryNV"
 
glEndOcclusionQueryNV :: IO ()
glEndOcclusionQueryNV
  = dyn_glEndOcclusionQueryNV ptr_glEndOcclusionQueryNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndOcclusionQueryNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glBeginOcclusionQueryNV #-}
 
ptr_glBeginOcclusionQueryNV :: FunPtr a
ptr_glBeginOcclusionQueryNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_occlusion_query"
        "glBeginOcclusionQueryNV"
 
glBeginOcclusionQueryNV :: GLuint -> IO ()
glBeginOcclusionQueryNV
  = dyn_glBeginOcclusionQueryNV ptr_glBeginOcclusionQueryNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glBeginOcclusionQueryNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glIsOcclusionQueryNV #-}
 
ptr_glIsOcclusionQueryNV :: FunPtr a
ptr_glIsOcclusionQueryNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_occlusion_query"
        "glIsOcclusionQueryNV"
 
glIsOcclusionQueryNV :: GLuint -> IO GLboolean
glIsOcclusionQueryNV
  = dyn_glIsOcclusionQueryNV ptr_glIsOcclusionQueryNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsOcclusionQueryNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glDeleteOcclusionQueriesNV #-}
 
ptr_glDeleteOcclusionQueriesNV :: FunPtr a
ptr_glDeleteOcclusionQueriesNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_occlusion_query"
        "glDeleteOcclusionQueriesNV"
 
glDeleteOcclusionQueriesNV :: GLsizei -> Ptr GLuint -> IO ()
glDeleteOcclusionQueriesNV
  = dyn_glDeleteOcclusionQueriesNV ptr_glDeleteOcclusionQueriesNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDeleteOcclusionQueriesNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGenOcclusionQueriesNV #-}
 
ptr_glGenOcclusionQueriesNV :: FunPtr a
ptr_glGenOcclusionQueriesNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_occlusion_query"
        "glGenOcclusionQueriesNV"
 
glGenOcclusionQueriesNV :: GLsizei -> Ptr GLuint -> IO ()
glGenOcclusionQueriesNV
  = dyn_glGenOcclusionQueriesNV ptr_glGenOcclusionQueriesNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenOcclusionQueriesNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
gl_PIXEL_COUNT_AVAILABLE_NV :: GLenum
gl_PIXEL_COUNT_AVAILABLE_NV = 34919
 
gl_PIXEL_COUNT_NV :: GLenum
gl_PIXEL_COUNT_NV = 34918
 
gl_CURRENT_OCCLUSION_QUERY_ID_NV :: GLenum
gl_CURRENT_OCCLUSION_QUERY_ID_NV = 34917
 
gl_PIXEL_COUNTER_BITS_NV :: GLenum
gl_PIXEL_COUNTER_BITS_NV = 34916