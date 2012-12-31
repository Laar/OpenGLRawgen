{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.BlendColor
       (glBlendColorEXT, gl_ONE_MINUS_CONSTANT_COLOR_EXT,
        gl_ONE_MINUS_CONSTANT_ALPHA_EXT, gl_CONSTANT_COLOR_EXT,
        gl_CONSTANT_ALPHA_EXT, gl_BLEND_COLOR_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glBlendColorEXT #-}
 
ptr_glBlendColorEXT :: FunPtr a
ptr_glBlendColorEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_blend_color"
        "glBlendColorEXT"
 
glBlendColorEXT ::
                GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glBlendColorEXT = dyn_glBlendColorEXT ptr_glBlendColorEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendColorEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
gl_ONE_MINUS_CONSTANT_COLOR_EXT :: GLenum
gl_ONE_MINUS_CONSTANT_COLOR_EXT = 32770
 
gl_ONE_MINUS_CONSTANT_ALPHA_EXT :: GLenum
gl_ONE_MINUS_CONSTANT_ALPHA_EXT = 32772
 
gl_CONSTANT_COLOR_EXT :: GLenum
gl_CONSTANT_COLOR_EXT = 32769
 
gl_CONSTANT_ALPHA_EXT :: GLenum
gl_CONSTANT_ALPHA_EXT = 32771
 
gl_BLEND_COLOR_EXT :: GLenum
gl_BLEND_COLOR_EXT = 32773