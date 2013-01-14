{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.SeparateStencil
       (glStencilOpSeparateATI, glStencilFuncSeparateATI,
        gl_STENCIL_BACK_PASS_DEPTH_PASS_ATI,
        gl_STENCIL_BACK_PASS_DEPTH_FAIL_ATI, gl_STENCIL_BACK_FUNC_ATI,
        gl_STENCIL_BACK_FAIL_ATI)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glStencilOpSeparateATI #-}
 
ptr_glStencilOpSeparateATI :: FunPtr a
ptr_glStencilOpSeparateATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_separate_stencil"
        "glStencilOpSeparateATI"
 
glStencilOpSeparateATI ::
                       GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glStencilOpSeparateATI
  = dyn_glStencilOpSeparateATI ptr_glStencilOpSeparateATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilOpSeparateATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glStencilFuncSeparateATI #-}
 
ptr_glStencilFuncSeparateATI :: FunPtr a
ptr_glStencilFuncSeparateATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_separate_stencil"
        "glStencilFuncSeparateATI"
 
glStencilFuncSeparateATI ::
                         GLenum -> GLenum -> GLint -> GLuint -> IO ()
glStencilFuncSeparateATI
  = dyn_glStencilFuncSeparateATI ptr_glStencilFuncSeparateATI
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glStencilFuncSeparateATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> GLuint -> IO ())
 
gl_STENCIL_BACK_PASS_DEPTH_PASS_ATI :: GLenum
gl_STENCIL_BACK_PASS_DEPTH_PASS_ATI = 34819
 
gl_STENCIL_BACK_PASS_DEPTH_FAIL_ATI :: GLenum
gl_STENCIL_BACK_PASS_DEPTH_FAIL_ATI = 34818
 
gl_STENCIL_BACK_FUNC_ATI :: GLenum
gl_STENCIL_BACK_FUNC_ATI = 34816
 
gl_STENCIL_BACK_FAIL_ATI :: GLenum
gl_STENCIL_BACK_FAIL_ATI = 34817