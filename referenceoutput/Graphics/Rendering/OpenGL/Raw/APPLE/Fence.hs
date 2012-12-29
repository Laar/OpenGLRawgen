{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.Fence
       (glFinishObjectAPPLE, glTestObjectAPPLE, glFinishFenceAPPLE,
        glTestFenceAPPLE, glIsFenceAPPLE, glSetFenceAPPLE,
        glDeleteFencesAPPLE, glGenFencesAPPLE, gl_FENCE_APPLE,
        gl_DRAW_PIXELS_APPLE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glFinishObjectAPPLE #-}
 
ptr_glFinishObjectAPPLE :: FunPtr a
ptr_glFinishObjectAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_fence"
        "glFinishObjectAPPLE"
 
glFinishObjectAPPLE :: GLenum -> GLint -> IO ()
glFinishObjectAPPLE
  = dyn_glFinishObjectAPPLE ptr_glFinishObjectAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glFinishObjectAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glTestObjectAPPLE #-}
 
ptr_glTestObjectAPPLE :: FunPtr a
ptr_glTestObjectAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_fence"
        "glTestObjectAPPLE"
 
glTestObjectAPPLE :: GLenum -> GLuint -> IO GLboolean
glTestObjectAPPLE = dyn_glTestObjectAPPLE ptr_glTestObjectAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glTestObjectAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glFinishFenceAPPLE #-}
 
ptr_glFinishFenceAPPLE :: FunPtr a
ptr_glFinishFenceAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_fence"
        "glFinishFenceAPPLE"
 
glFinishFenceAPPLE :: GLuint -> IO ()
glFinishFenceAPPLE = dyn_glFinishFenceAPPLE ptr_glFinishFenceAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glFinishFenceAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glTestFenceAPPLE #-}
 
ptr_glTestFenceAPPLE :: FunPtr a
ptr_glTestFenceAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_fence"
        "glTestFenceAPPLE"
 
glTestFenceAPPLE :: GLuint -> IO GLboolean
glTestFenceAPPLE = dyn_glTestFenceAPPLE ptr_glTestFenceAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glTestFenceAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glIsFenceAPPLE #-}
 
ptr_glIsFenceAPPLE :: FunPtr a
ptr_glIsFenceAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_fence"
        "glIsFenceAPPLE"
 
glIsFenceAPPLE :: GLuint -> IO GLboolean
glIsFenceAPPLE = dyn_glIsFenceAPPLE ptr_glIsFenceAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsFenceAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glSetFenceAPPLE #-}
 
ptr_glSetFenceAPPLE :: FunPtr a
ptr_glSetFenceAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_fence"
        "glSetFenceAPPLE"
 
glSetFenceAPPLE :: GLuint -> IO ()
glSetFenceAPPLE = dyn_glSetFenceAPPLE ptr_glSetFenceAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glSetFenceAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteFencesAPPLE #-}
 
ptr_glDeleteFencesAPPLE :: FunPtr a
ptr_glDeleteFencesAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_fence"
        "glDeleteFencesAPPLE"
 
glDeleteFencesAPPLE :: GLsizei -> Ptr GLuint -> IO ()
glDeleteFencesAPPLE
  = dyn_glDeleteFencesAPPLE ptr_glDeleteFencesAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteFencesAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGenFencesAPPLE #-}
 
ptr_glGenFencesAPPLE :: FunPtr a
ptr_glGenFencesAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_fence"
        "glGenFencesAPPLE"
 
glGenFencesAPPLE :: GLsizei -> Ptr GLuint -> IO ()
glGenFencesAPPLE = dyn_glGenFencesAPPLE ptr_glGenFencesAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenFencesAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
gl_FENCE_APPLE :: GLenum
gl_FENCE_APPLE = 35339
 
gl_DRAW_PIXELS_APPLE :: GLenum
gl_DRAW_PIXELS_APPLE = 35338