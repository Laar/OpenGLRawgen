{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.Fence
       (glTestObject, glTestFence, glSetFence, glIsFence, glGenFences,
        glFinishObject, glFinishFence, glDeleteFences, gl_FENCE,
        gl_DRAW_PIXELS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTestObject #-}
 
ptr_glTestObject :: FunPtr a
ptr_glTestObject
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_fence"
        "glTestObjectAPPLE"
 
glTestObject :: GLenum -> GLuint -> IO GLboolean
glTestObject = dyn_glTestObject ptr_glTestObject
 
foreign import CALLCONV unsafe "dynamic" dyn_glTestObject ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glTestFence #-}
 
ptr_glTestFence :: FunPtr a
ptr_glTestFence
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_fence"
        "glTestFenceAPPLE"
 
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
        "GL_APPLE_fence"
        "glSetFenceAPPLE"
 
glSetFence :: GLuint -> IO ()
glSetFence = dyn_glSetFence ptr_glSetFence
 
foreign import CALLCONV unsafe "dynamic" dyn_glSetFence ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glIsFence #-}
 
ptr_glIsFence :: FunPtr a
ptr_glIsFence
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_fence"
        "glIsFenceAPPLE"
 
glIsFence :: GLuint -> IO GLboolean
glIsFence = dyn_glIsFence ptr_glIsFence
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsFence ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGenFences #-}
 
ptr_glGenFences :: FunPtr a
ptr_glGenFences
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_fence"
        "glGenFencesAPPLE"
 
glGenFences :: GLsizei -> Ptr GLuint -> IO ()
glGenFences = dyn_glGenFences ptr_glGenFences
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenFences ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glFinishObject #-}
 
ptr_glFinishObject :: FunPtr a
ptr_glFinishObject
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_fence"
        "glFinishObjectAPPLE"
 
glFinishObject :: GLenum -> GLint -> IO ()
glFinishObject = dyn_glFinishObject ptr_glFinishObject
 
foreign import CALLCONV unsafe "dynamic" dyn_glFinishObject ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glFinishFence #-}
 
ptr_glFinishFence :: FunPtr a
ptr_glFinishFence
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_fence"
        "glFinishFenceAPPLE"
 
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
        "GL_APPLE_fence"
        "glDeleteFencesAPPLE"
 
glDeleteFences :: GLsizei -> Ptr GLuint -> IO ()
glDeleteFences = dyn_glDeleteFences ptr_glDeleteFences
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteFences ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
gl_FENCE :: GLenum
gl_FENCE = 35339
 
gl_DRAW_PIXELS :: GLenum
gl_DRAW_PIXELS = 35338