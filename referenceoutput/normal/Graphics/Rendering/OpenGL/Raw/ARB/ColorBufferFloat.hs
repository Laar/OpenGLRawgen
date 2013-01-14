{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.ColorBufferFloat
       (glClampColorARB, gl_RGBA_FLOAT_MODE_ARB, gl_FIXED_ONLY_ARB,
        gl_CLAMP_VERTEX_COLOR_ARB, gl_CLAMP_READ_COLOR_ARB,
        gl_CLAMP_FRAGMENT_COLOR_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glClampColorARB #-}
 
ptr_glClampColorARB :: FunPtr a
ptr_glClampColorARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_color_buffer_float"
        "glClampColorARB"
 
glClampColorARB :: GLenum -> GLenum -> IO ()
glClampColorARB = dyn_glClampColorARB ptr_glClampColorARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glClampColorARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
gl_RGBA_FLOAT_MODE_ARB :: GLenum
gl_RGBA_FLOAT_MODE_ARB = 34848
 
gl_FIXED_ONLY_ARB :: GLenum
gl_FIXED_ONLY_ARB = 35101
 
gl_CLAMP_VERTEX_COLOR_ARB :: GLenum
gl_CLAMP_VERTEX_COLOR_ARB = 35098
 
gl_CLAMP_READ_COLOR_ARB :: GLenum
gl_CLAMP_READ_COLOR_ARB = 35100
 
gl_CLAMP_FRAGMENT_COLOR_ARB :: GLenum
gl_CLAMP_FRAGMENT_COLOR_ARB = 35099