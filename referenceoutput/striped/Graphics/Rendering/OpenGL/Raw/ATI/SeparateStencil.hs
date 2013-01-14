{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.SeparateStencil
       (glStencilOpSeparate, glStencilFuncSeparate,
        gl_STENCIL_BACK_PASS_DEPTH_PASS, gl_STENCIL_BACK_PASS_DEPTH_FAIL,
        gl_STENCIL_BACK_FUNC, gl_STENCIL_BACK_FAIL)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glStencilOpSeparate #-}
 
ptr_glStencilOpSeparate :: FunPtr a
ptr_glStencilOpSeparate
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_separate_stencil"
        "glStencilOpSeparateATI"
 
glStencilOpSeparate ::
                    GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glStencilOpSeparate
  = dyn_glStencilOpSeparate ptr_glStencilOpSeparate
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilOpSeparate ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glStencilFuncSeparate #-}
 
ptr_glStencilFuncSeparate :: FunPtr a
ptr_glStencilFuncSeparate
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_separate_stencil"
        "glStencilFuncSeparateATI"
 
glStencilFuncSeparate ::
                      GLenum -> GLenum -> GLint -> GLuint -> IO ()
glStencilFuncSeparate
  = dyn_glStencilFuncSeparate ptr_glStencilFuncSeparate
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilFuncSeparate
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> GLuint -> IO ())
 
gl_STENCIL_BACK_PASS_DEPTH_PASS :: GLenum
gl_STENCIL_BACK_PASS_DEPTH_PASS = 34819
 
gl_STENCIL_BACK_PASS_DEPTH_FAIL :: GLenum
gl_STENCIL_BACK_PASS_DEPTH_FAIL = 34818
 
gl_STENCIL_BACK_FUNC :: GLenum
gl_STENCIL_BACK_FUNC = 34816
 
gl_STENCIL_BACK_FAIL :: GLenum
gl_STENCIL_BACK_FAIL = 34817