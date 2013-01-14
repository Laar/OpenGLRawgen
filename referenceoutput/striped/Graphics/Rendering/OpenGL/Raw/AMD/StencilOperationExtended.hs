{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.StencilOperationExtended
       (glStencilOpValue, gl_STENCIL_OP_VALUE, gl_STENCIL_BACK_OP_VALUE,
        gl_SET, gl_REPLACE_VALUE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glStencilOpValue #-}
 
ptr_glStencilOpValue :: FunPtr a
ptr_glStencilOpValue
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_stencil_operation_extended"
        "glStencilOpValueAMD"
 
glStencilOpValue :: GLenum -> GLuint -> IO ()
glStencilOpValue = dyn_glStencilOpValue ptr_glStencilOpValue
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilOpValue ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
gl_STENCIL_OP_VALUE :: GLenum
gl_STENCIL_OP_VALUE = 34636
 
gl_STENCIL_BACK_OP_VALUE :: GLenum
gl_STENCIL_BACK_OP_VALUE = 34637
 
gl_SET :: GLenum
gl_SET = 34634
 
gl_REPLACE_VALUE :: GLenum
gl_REPLACE_VALUE = 34635