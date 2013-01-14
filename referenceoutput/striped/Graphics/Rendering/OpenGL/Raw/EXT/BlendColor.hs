{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.BlendColor
       (glBlendColor, gl_ONE_MINUS_CONSTANT_COLOR,
        gl_ONE_MINUS_CONSTANT_ALPHA, gl_CONSTANT_COLOR, gl_CONSTANT_ALPHA,
        gl_BLEND_COLOR)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glBlendColor #-}
 
ptr_glBlendColor :: FunPtr a
ptr_glBlendColor
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_blend_color"
        "glBlendColorEXT"
 
glBlendColor :: GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glBlendColor = dyn_glBlendColor ptr_glBlendColor
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendColor ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
gl_ONE_MINUS_CONSTANT_COLOR :: GLenum
gl_ONE_MINUS_CONSTANT_COLOR = 32770
 
gl_ONE_MINUS_CONSTANT_ALPHA :: GLenum
gl_ONE_MINUS_CONSTANT_ALPHA = 32772
 
gl_CONSTANT_COLOR :: GLenum
gl_CONSTANT_COLOR = 32769
 
gl_CONSTANT_ALPHA :: GLenum
gl_CONSTANT_ALPHA = 32771
 
gl_BLEND_COLOR :: GLenum
gl_BLEND_COLOR = 32773