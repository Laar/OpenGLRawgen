{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.ColorSubtable
       (glCopyColorSubTable, glColorSubTable) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glCopyColorSubTable #-}
 
ptr_glCopyColorSubTable :: FunPtr a
ptr_glCopyColorSubTable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_color_subtable"
        "glCopyColorSubTableEXT"
 
glCopyColorSubTable ::
                    GLenum -> GLsizei -> GLint -> GLint -> GLsizei -> IO ()
glCopyColorSubTable
  = dyn_glCopyColorSubTable ptr_glCopyColorSubTable
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyColorSubTable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glColorSubTable #-}
 
ptr_glColorSubTable :: FunPtr a
ptr_glColorSubTable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_color_subtable"
        "glColorSubTableEXT"
 
glColorSubTable ::
                GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glColorSubTable = dyn_glColorSubTable ptr_glColorSubTable
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorSubTable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())