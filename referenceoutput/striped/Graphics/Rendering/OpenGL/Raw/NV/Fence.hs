{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.Fence
       (glTestFence, glSetFence, glIsFence, glGetFenceiv, glGenFences,
        glFinishFence, glDeleteFences, gl_FENCE_STATUS, gl_FENCE_CONDITION,
        gl_ALL_COMPLETED)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTestFence #-}
 
ptr_glTestFence :: FunPtr a
ptr_glTestFence
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fence"
        "glTestFenceNV"
 
glTestFence :: GLuint -> IO GLboolean
glTestFence = dyn_glTestFence ptr_glTestFence
 
foreign import CALLCONV unsafe "dynamic" dyn_glTestFence ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glSetFence #-}
 
ptr_glSetFence :: FunPtr a
ptr_glSetFence
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fence"
        "glSetFenceNV"
 
glSetFence :: GLuint -> GLenum -> IO ()
glSetFence = dyn_glSetFence ptr_glSetFence
 
foreign import CALLCONV unsafe "dynamic" dyn_glSetFence ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glIsFence #-}
 
ptr_glIsFence :: FunPtr a
ptr_glIsFence
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fence"
        "glIsFenceNV"
 
glIsFence :: GLuint -> IO GLboolean
glIsFence = dyn_glIsFence ptr_glIsFence
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsFence ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetFenceiv #-}
 
ptr_glGetFenceiv :: FunPtr a
ptr_glGetFenceiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fence"
        "glGetFenceivNV"
 
glGetFenceiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetFenceiv = dyn_glGetFenceiv ptr_glGetFenceiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetFenceiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGenFences #-}
 
ptr_glGenFences :: FunPtr a
ptr_glGenFences
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fence"
        "glGenFencesNV"
 
glGenFences :: GLsizei -> Ptr GLuint -> IO ()
glGenFences = dyn_glGenFences ptr_glGenFences
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenFences ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glFinishFence #-}
 
ptr_glFinishFence :: FunPtr a
ptr_glFinishFence
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fence"
        "glFinishFenceNV"
 
glFinishFence :: GLuint -> IO ()
glFinishFence = dyn_glFinishFence ptr_glFinishFence
 
foreign import CALLCONV unsafe "dynamic" dyn_glFinishFence ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteFences #-}
 
ptr_glDeleteFences :: FunPtr a
ptr_glDeleteFences
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fence"
        "glDeleteFencesNV"
 
glDeleteFences :: GLsizei -> Ptr GLuint -> IO ()
glDeleteFences = dyn_glDeleteFences ptr_glDeleteFences
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteFences ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
gl_FENCE_STATUS :: GLenum
gl_FENCE_STATUS = 34035
 
gl_FENCE_CONDITION :: GLenum
gl_FENCE_CONDITION = 34036
 
gl_ALL_COMPLETED :: GLenum
gl_ALL_COMPLETED = 34034