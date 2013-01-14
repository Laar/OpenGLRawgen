{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.DrawRangeElements
       (glDrawRangeElements, gl_MAX_ELEMENTS_VERTICES,
        gl_MAX_ELEMENTS_INDICES)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glDrawRangeElements #-}
 
ptr_glDrawRangeElements :: FunPtr a
ptr_glDrawRangeElements
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_range_elements"
        "glDrawRangeElementsEXT"
 
glDrawRangeElements ::
                    GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr a -> IO ()
glDrawRangeElements
  = dyn_glDrawRangeElements ptr_glDrawRangeElements
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawRangeElements ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr a -> IO ())
 
gl_MAX_ELEMENTS_VERTICES :: GLenum
gl_MAX_ELEMENTS_VERTICES = 33000
 
gl_MAX_ELEMENTS_INDICES :: GLenum
gl_MAX_ELEMENTS_INDICES = 33001