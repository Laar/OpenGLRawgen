{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.StencilOperationExtended
       (glStencilOpValueAMD, gl_STENCIL_BACK_OP_VALUE_AMD,
        gl_STENCIL_OP_VALUE_AMD, gl_REPLACE_VALUE_AMD, gl_SET_AMD)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glStencilOpValueAMD #-}
 
ptr_glStencilOpValueAMD :: FunPtr a
ptr_glStencilOpValueAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_stencil_operation_extended"
        "glStencilOpValueAMD"
 
glStencilOpValueAMD :: GLenum -> GLuint -> IO ()
glStencilOpValueAMD
  = dyn_glStencilOpValueAMD ptr_glStencilOpValueAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilOpValueAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
gl_STENCIL_BACK_OP_VALUE_AMD :: GLenum
gl_STENCIL_BACK_OP_VALUE_AMD = 34637
 
gl_STENCIL_OP_VALUE_AMD :: GLenum
gl_STENCIL_OP_VALUE_AMD = 34636
 
gl_REPLACE_VALUE_AMD :: GLenum
gl_REPLACE_VALUE_AMD = 34635
 
gl_SET_AMD :: GLenum
gl_SET_AMD = 34634