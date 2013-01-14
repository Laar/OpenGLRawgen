{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.Subtexture
       (glTexSubImage2D, glTexSubImage1D) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexSubImage2D #-}
 
ptr_glTexSubImage2D :: FunPtr a
ptr_glTexSubImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_subtexture"
        "glTexSubImage2DEXT"
 
glTexSubImage2D ::
                GLenum ->
                  GLint ->
                    GLint ->
                      GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTexSubImage2D = dyn_glTexSubImage2D ptr_glTexSubImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexSubImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTexSubImage1D #-}
 
ptr_glTexSubImage1D :: FunPtr a
ptr_glTexSubImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_subtexture"
        "glTexSubImage1DEXT"
 
glTexSubImage1D ::
                GLenum ->
                  GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTexSubImage1D = dyn_glTexSubImage1D ptr_glTexSubImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexSubImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())