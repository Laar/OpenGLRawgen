{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.StencilClearTag
       (glStencilClearTagEXT, gl_STENCIL_TAG_BITS_EXT,
        gl_STENCIL_CLEAR_TAG_VALUE_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glStencilClearTagEXT #-}
 
ptr_glStencilClearTagEXT :: FunPtr a
ptr_glStencilClearTagEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_stencil_clear_tag"
        "glStencilClearTagEXT"
 
glStencilClearTagEXT :: GLsizei -> GLuint -> IO ()
glStencilClearTagEXT
  = dyn_glStencilClearTagEXT ptr_glStencilClearTagEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilClearTagEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> GLuint -> IO ())
 
gl_STENCIL_TAG_BITS_EXT :: GLenum
gl_STENCIL_TAG_BITS_EXT = 35058
 
gl_STENCIL_CLEAR_TAG_VALUE_EXT :: GLenum
gl_STENCIL_CLEAR_TAG_VALUE_EXT = 35059