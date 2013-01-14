{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.DepthBoundsTest
       (glDepthBoundsEXT, gl_DEPTH_BOUNDS_TEST_EXT, gl_DEPTH_BOUNDS_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glDepthBoundsEXT #-}
 
ptr_glDepthBoundsEXT :: FunPtr a
ptr_glDepthBoundsEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_depth_bounds_test"
        "glDepthBoundsEXT"
 
glDepthBoundsEXT :: GLclampd -> GLclampd -> IO ()
glDepthBoundsEXT = dyn_glDepthBoundsEXT ptr_glDepthBoundsEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glDepthBoundsEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLclampd -> GLclampd -> IO ())
 
gl_DEPTH_BOUNDS_TEST_EXT :: GLenum
gl_DEPTH_BOUNDS_TEST_EXT = 34960
 
gl_DEPTH_BOUNDS_EXT :: GLenum
gl_DEPTH_BOUNDS_EXT = 34961