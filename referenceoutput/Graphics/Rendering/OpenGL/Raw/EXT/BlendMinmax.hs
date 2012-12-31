{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.BlendMinmax
       (glBlendEquationEXT, gl_MIN_EXT, gl_MAX_EXT, gl_FUNC_ADD_EXT,
        gl_BLEND_EQUATION_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glBlendEquationEXT #-}
 
ptr_glBlendEquationEXT :: FunPtr a
ptr_glBlendEquationEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_blend_minmax"
        "glBlendEquationEXT"
 
glBlendEquationEXT :: GLenum -> IO ()
glBlendEquationEXT = dyn_glBlendEquationEXT ptr_glBlendEquationEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendEquationEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_MIN_EXT :: GLenum
gl_MIN_EXT = 32775
 
gl_MAX_EXT :: GLenum
gl_MAX_EXT = 32776
 
gl_FUNC_ADD_EXT :: GLenum
gl_FUNC_ADD_EXT = 32774
 
gl_BLEND_EQUATION_EXT :: GLenum
gl_BLEND_EQUATION_EXT = 32777