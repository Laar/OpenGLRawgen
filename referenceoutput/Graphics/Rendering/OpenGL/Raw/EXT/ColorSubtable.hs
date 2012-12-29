{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.ColorSubtable
       (glCopyColorSubTableEXT, glColorSubTableEXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glCopyColorSubTableEXT #-}
 
ptr_glCopyColorSubTableEXT :: FunPtr a
ptr_glCopyColorSubTableEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_color_subtable"
        "glCopyColorSubTableEXT"
 
glCopyColorSubTableEXT ::
                       GLenum -> GLsizei -> GLint -> GLint -> GLsizei -> IO ()
glCopyColorSubTableEXT
  = dyn_glCopyColorSubTableEXT ptr_glCopyColorSubTableEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyColorSubTableEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glColorSubTableEXT #-}
 
ptr_glColorSubTableEXT :: FunPtr a
ptr_glColorSubTableEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_color_subtable"
        "glColorSubTableEXT"
 
glColorSubTableEXT ::
                   GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glColorSubTableEXT = dyn_glColorSubTableEXT ptr_glColorSubTableEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorSubTableEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())