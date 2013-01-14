{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.DepthBoundsTest
       (glDepthBounds, gl_DEPTH_BOUNDS_TEST, gl_DEPTH_BOUNDS) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glDepthBounds #-}
 
ptr_glDepthBounds :: FunPtr a
ptr_glDepthBounds
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_depth_bounds_test"
        "glDepthBoundsEXT"
 
glDepthBounds :: GLclampd -> GLclampd -> IO ()
glDepthBounds = dyn_glDepthBounds ptr_glDepthBounds
 
foreign import CALLCONV unsafe "dynamic" dyn_glDepthBounds ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLclampd -> GLclampd -> IO ())
 
gl_DEPTH_BOUNDS_TEST :: GLenum
gl_DEPTH_BOUNDS_TEST = 34960
 
gl_DEPTH_BOUNDS :: GLenum
gl_DEPTH_BOUNDS = 34961