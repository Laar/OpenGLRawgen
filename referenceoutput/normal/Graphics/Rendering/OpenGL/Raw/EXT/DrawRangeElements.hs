{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.DrawRangeElements
       (glDrawRangeElementsEXT, gl_MAX_ELEMENTS_VERTICES_EXT,
        gl_MAX_ELEMENTS_INDICES_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glDrawRangeElementsEXT #-}
 
ptr_glDrawRangeElementsEXT :: FunPtr a
ptr_glDrawRangeElementsEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_range_elements"
        "glDrawRangeElementsEXT"
 
glDrawRangeElementsEXT ::
                       GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr a -> IO ()
glDrawRangeElementsEXT
  = dyn_glDrawRangeElementsEXT ptr_glDrawRangeElementsEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawRangeElementsEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr a -> IO ())
 
gl_MAX_ELEMENTS_VERTICES_EXT :: GLenum
gl_MAX_ELEMENTS_VERTICES_EXT = 33000
 
gl_MAX_ELEMENTS_INDICES_EXT :: GLenum
gl_MAX_ELEMENTS_INDICES_EXT = 33001