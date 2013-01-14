{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.ColorBufferFloat
       (glClampColor, gl_RGBA_FLOAT_MODE, gl_FIXED_ONLY,
        gl_CLAMP_VERTEX_COLOR, gl_CLAMP_READ_COLOR,
        gl_CLAMP_FRAGMENT_COLOR)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glClampColor #-}
 
ptr_glClampColor :: FunPtr a
ptr_glClampColor
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_color_buffer_float"
        "glClampColorARB"
 
glClampColor :: GLenum -> GLenum -> IO ()
glClampColor = dyn_glClampColor ptr_glClampColor
 
foreign import CALLCONV unsafe "dynamic" dyn_glClampColor ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
gl_RGBA_FLOAT_MODE :: GLenum
gl_RGBA_FLOAT_MODE = 34848
 
gl_FIXED_ONLY :: GLenum
gl_FIXED_ONLY = 35101
 
gl_CLAMP_VERTEX_COLOR :: GLenum
gl_CLAMP_VERTEX_COLOR = 35098
 
gl_CLAMP_READ_COLOR :: GLenum
gl_CLAMP_READ_COLOR = 35100
 
gl_CLAMP_FRAGMENT_COLOR :: GLenum
gl_CLAMP_FRAGMENT_COLOR = 35099