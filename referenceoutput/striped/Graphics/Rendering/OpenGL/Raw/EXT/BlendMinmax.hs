{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.BlendMinmax
       (glBlendEquation, gl_MIN, gl_MAX, gl_FUNC_ADD, gl_BLEND_EQUATION)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glBlendEquation #-}
 
ptr_glBlendEquation :: FunPtr a
ptr_glBlendEquation
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_blend_minmax"
        "glBlendEquationEXT"
 
glBlendEquation :: GLenum -> IO ()
glBlendEquation = dyn_glBlendEquation ptr_glBlendEquation
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendEquation ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_MIN :: GLenum
gl_MIN = 32775
 
gl_MAX :: GLenum
gl_MAX = 32776
 
gl_FUNC_ADD :: GLenum
gl_FUNC_ADD = 32774
 
gl_BLEND_EQUATION :: GLenum
gl_BLEND_EQUATION = 32777