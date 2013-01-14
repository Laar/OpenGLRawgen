{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.StencilClearTag
       (glStencilClearTag, gl_STENCIL_TAG_BITS,
        gl_STENCIL_CLEAR_TAG_VALUE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glStencilClearTag #-}
 
ptr_glStencilClearTag :: FunPtr a
ptr_glStencilClearTag
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_stencil_clear_tag"
        "glStencilClearTagEXT"
 
glStencilClearTag :: GLsizei -> GLuint -> IO ()
glStencilClearTag = dyn_glStencilClearTag ptr_glStencilClearTag
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilClearTag ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> GLuint -> IO ())
 
gl_STENCIL_TAG_BITS :: GLenum
gl_STENCIL_TAG_BITS = 35058
 
gl_STENCIL_CLEAR_TAG_VALUE :: GLenum
gl_STENCIL_CLEAR_TAG_VALUE = 35059