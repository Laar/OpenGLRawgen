{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.Fence
       (glSetFenceNV, glFinishFenceNV, glGetFenceivNV, glTestFenceNV,
        glIsFenceNV, glGenFencesNV, glDeleteFencesNV,
        gl_FENCE_CONDITION_NV, gl_FENCE_STATUS_NV, gl_ALL_COMPLETED_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSetFenceNV #-}
 
ptr_glSetFenceNV :: FunPtr a
ptr_glSetFenceNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fence"
        "glSetFenceNV"
 
glSetFenceNV :: GLuint -> GLenum -> IO ()
glSetFenceNV = dyn_glSetFenceNV ptr_glSetFenceNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glSetFenceNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glFinishFenceNV #-}
 
ptr_glFinishFenceNV :: FunPtr a
ptr_glFinishFenceNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fence"
        "glFinishFenceNV"
 
glFinishFenceNV :: GLuint -> IO ()
glFinishFenceNV = dyn_glFinishFenceNV ptr_glFinishFenceNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glFinishFenceNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glGetFenceivNV #-}
 
ptr_glGetFenceivNV :: FunPtr a
ptr_glGetFenceivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fence"
        "glGetFenceivNV"
 
glGetFenceivNV :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetFenceivNV = dyn_glGetFenceivNV ptr_glGetFenceivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetFenceivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTestFenceNV #-}
 
ptr_glTestFenceNV :: FunPtr a
ptr_glTestFenceNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fence"
        "glTestFenceNV"
 
glTestFenceNV :: GLuint -> IO GLboolean
glTestFenceNV = dyn_glTestFenceNV ptr_glTestFenceNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glTestFenceNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glIsFenceNV #-}
 
ptr_glIsFenceNV :: FunPtr a
ptr_glIsFenceNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fence"
        "glIsFenceNV"
 
glIsFenceNV :: GLuint -> IO GLboolean
glIsFenceNV = dyn_glIsFenceNV ptr_glIsFenceNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsFenceNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGenFencesNV #-}
 
ptr_glGenFencesNV :: FunPtr a
ptr_glGenFencesNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fence"
        "glGenFencesNV"
 
glGenFencesNV :: GLsizei -> Ptr GLuint -> IO ()
glGenFencesNV = dyn_glGenFencesNV ptr_glGenFencesNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenFencesNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteFencesNV #-}
 
ptr_glDeleteFencesNV :: FunPtr a
ptr_glDeleteFencesNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fence"
        "glDeleteFencesNV"
 
glDeleteFencesNV :: GLsizei -> Ptr GLuint -> IO ()
glDeleteFencesNV = dyn_glDeleteFencesNV ptr_glDeleteFencesNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteFencesNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
gl_FENCE_CONDITION_NV :: GLenum
gl_FENCE_CONDITION_NV = 34036
 
gl_FENCE_STATUS_NV :: GLenum
gl_FENCE_STATUS_NV = 34035
 
gl_ALL_COMPLETED_NV :: GLenum
gl_ALL_COMPLETED_NV = 34034