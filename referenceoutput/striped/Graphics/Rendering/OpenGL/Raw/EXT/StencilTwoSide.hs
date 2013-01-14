{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.StencilTwoSide
       (glActiveStencilFace, gl_STENCIL_TEST_TWO_SIDE,
        gl_ACTIVE_STENCIL_FACE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glActiveStencilFace #-}
 
ptr_glActiveStencilFace :: FunPtr a
ptr_glActiveStencilFace
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_stencil_two_side"
        "glActiveStencilFaceEXT"
 
glActiveStencilFace :: GLenum -> IO ()
glActiveStencilFace
  = dyn_glActiveStencilFace ptr_glActiveStencilFace
 
foreign import CALLCONV unsafe "dynamic" dyn_glActiveStencilFace ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_STENCIL_TEST_TWO_SIDE :: GLenum
gl_STENCIL_TEST_TWO_SIDE = 35088
 
gl_ACTIVE_STENCIL_FACE :: GLenum
gl_ACTIVE_STENCIL_FACE = 35089