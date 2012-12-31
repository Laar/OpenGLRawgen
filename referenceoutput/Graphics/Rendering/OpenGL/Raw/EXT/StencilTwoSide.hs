{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.StencilTwoSide
       (glActiveStencilFaceEXT, gl_STENCIL_TEST_TWO_SIDE_EXT,
        gl_ACTIVE_STENCIL_FACE_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glActiveStencilFaceEXT #-}
 
ptr_glActiveStencilFaceEXT :: FunPtr a
ptr_glActiveStencilFaceEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_stencil_two_side"
        "glActiveStencilFaceEXT"
 
glActiveStencilFaceEXT :: GLenum -> IO ()
glActiveStencilFaceEXT
  = dyn_glActiveStencilFaceEXT ptr_glActiveStencilFaceEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glActiveStencilFaceEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_STENCIL_TEST_TWO_SIDE_EXT :: GLenum
gl_STENCIL_TEST_TWO_SIDE_EXT = 35088
 
gl_ACTIVE_STENCIL_FACE_EXT :: GLenum
gl_ACTIVE_STENCIL_FACE_EXT = 35089