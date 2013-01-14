{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.BlendEquationSeparate
       (glBlendEquationSeparate, gl_BLEND_EQUATION_RGB,
        gl_BLEND_EQUATION_ALPHA)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glBlendEquationSeparate #-}
 
ptr_glBlendEquationSeparate :: FunPtr a
ptr_glBlendEquationSeparate
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_blend_equation_separate"
        "glBlendEquationSeparateEXT"
 
glBlendEquationSeparate :: GLenum -> GLenum -> IO ()
glBlendEquationSeparate
  = dyn_glBlendEquationSeparate ptr_glBlendEquationSeparate
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendEquationSeparate
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
gl_BLEND_EQUATION_RGB :: GLenum
gl_BLEND_EQUATION_RGB = 32777
 
gl_BLEND_EQUATION_ALPHA :: GLenum
gl_BLEND_EQUATION_ALPHA = 34877