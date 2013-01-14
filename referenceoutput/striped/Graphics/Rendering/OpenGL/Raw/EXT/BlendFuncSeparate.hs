{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.BlendFuncSeparate
       (glBlendFuncSeparate, gl_BLEND_SRC_RGB, gl_BLEND_SRC_ALPHA,
        gl_BLEND_DST_RGB, gl_BLEND_DST_ALPHA)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glBlendFuncSeparate #-}
 
ptr_glBlendFuncSeparate :: FunPtr a
ptr_glBlendFuncSeparate
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_blend_func_separate"
        "glBlendFuncSeparateEXT"
 
glBlendFuncSeparate ::
                    GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glBlendFuncSeparate
  = dyn_glBlendFuncSeparate ptr_glBlendFuncSeparate
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendFuncSeparate ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
gl_BLEND_SRC_RGB :: GLenum
gl_BLEND_SRC_RGB = 32969
 
gl_BLEND_SRC_ALPHA :: GLenum
gl_BLEND_SRC_ALPHA = 32971
 
gl_BLEND_DST_RGB :: GLenum
gl_BLEND_DST_RGB = 32968
 
gl_BLEND_DST_ALPHA :: GLenum
gl_BLEND_DST_ALPHA = 32970