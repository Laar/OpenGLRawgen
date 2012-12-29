{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.BlendEquationSeparate
       (glBlendEquationSeparateEXT, gl_BLEND_EQUATION_ALPHA_EXT,
        gl_BLEND_EQUATION_RGB_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glBlendEquationSeparateEXT #-}
 
ptr_glBlendEquationSeparateEXT :: FunPtr a
ptr_glBlendEquationSeparateEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_blend_equation_separate"
        "glBlendEquationSeparateEXT"
 
glBlendEquationSeparateEXT :: GLenum -> GLenum -> IO ()
glBlendEquationSeparateEXT
  = dyn_glBlendEquationSeparateEXT ptr_glBlendEquationSeparateEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBlendEquationSeparateEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
gl_BLEND_EQUATION_ALPHA_EXT :: GLenum
gl_BLEND_EQUATION_ALPHA_EXT = 34877
 
gl_BLEND_EQUATION_RGB_EXT :: GLenum
gl_BLEND_EQUATION_RGB_EXT = 32777