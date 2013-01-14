{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.BlendFuncSeparate
       (glBlendFuncSeparateEXT, gl_BLEND_SRC_RGB_EXT,
        gl_BLEND_SRC_ALPHA_EXT, gl_BLEND_DST_RGB_EXT,
        gl_BLEND_DST_ALPHA_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glBlendFuncSeparateEXT #-}
 
ptr_glBlendFuncSeparateEXT :: FunPtr a
ptr_glBlendFuncSeparateEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_blend_func_separate"
        "glBlendFuncSeparateEXT"
 
glBlendFuncSeparateEXT ::
                       GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glBlendFuncSeparateEXT
  = dyn_glBlendFuncSeparateEXT ptr_glBlendFuncSeparateEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendFuncSeparateEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
gl_BLEND_SRC_RGB_EXT :: GLenum
gl_BLEND_SRC_RGB_EXT = 32969
 
gl_BLEND_SRC_ALPHA_EXT :: GLenum
gl_BLEND_SRC_ALPHA_EXT = 32971
 
gl_BLEND_DST_RGB_EXT :: GLenum
gl_BLEND_DST_RGB_EXT = 32968
 
gl_BLEND_DST_ALPHA_EXT :: GLenum
gl_BLEND_DST_ALPHA_EXT = 32970