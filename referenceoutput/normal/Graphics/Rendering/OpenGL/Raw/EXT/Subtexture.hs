{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.Subtexture
       (glTexSubImage2DEXT, glTexSubImage1DEXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexSubImage2DEXT #-}
 
ptr_glTexSubImage2DEXT :: FunPtr a
ptr_glTexSubImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_subtexture"
        "glTexSubImage2DEXT"
 
glTexSubImage2DEXT ::
                   GLenum ->
                     GLint ->
                       GLint ->
                         GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTexSubImage2DEXT = dyn_glTexSubImage2DEXT ptr_glTexSubImage2DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexSubImage2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTexSubImage1DEXT #-}
 
ptr_glTexSubImage1DEXT :: FunPtr a
ptr_glTexSubImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_subtexture"
        "glTexSubImage1DEXT"
 
glTexSubImage1DEXT ::
                   GLenum ->
                     GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTexSubImage1DEXT = dyn_glTexSubImage1DEXT ptr_glTexSubImage1DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexSubImage1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())