{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.CopyTexture
       (glCopyTexSubImage3DEXT, glCopyTexSubImage2DEXT,
        glCopyTexSubImage1DEXT, glCopyTexImage2DEXT, glCopyTexImage1DEXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glCopyTexSubImage3DEXT #-}
 
ptr_glCopyTexSubImage3DEXT :: FunPtr a
ptr_glCopyTexSubImage3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_copy_texture"
        "glCopyTexSubImage3DEXT"
 
glCopyTexSubImage3DEXT ::
                       GLenum ->
                         GLint ->
                           GLint ->
                             GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyTexSubImage3DEXT
  = dyn_glCopyTexSubImage3DEXT ptr_glCopyTexSubImage3DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexSubImage3DEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyTexSubImage2DEXT #-}
 
ptr_glCopyTexSubImage2DEXT :: FunPtr a
ptr_glCopyTexSubImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_copy_texture"
        "glCopyTexSubImage2DEXT"
 
glCopyTexSubImage2DEXT ::
                       GLenum ->
                         GLint ->
                           GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyTexSubImage2DEXT
  = dyn_glCopyTexSubImage2DEXT ptr_glCopyTexSubImage2DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexSubImage2DEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyTexSubImage1DEXT #-}
 
ptr_glCopyTexSubImage1DEXT :: FunPtr a
ptr_glCopyTexSubImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_copy_texture"
        "glCopyTexSubImage1DEXT"
 
glCopyTexSubImage1DEXT ::
                       GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()
glCopyTexSubImage1DEXT
  = dyn_glCopyTexSubImage1DEXT ptr_glCopyTexSubImage1DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexSubImage1DEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyTexImage2DEXT #-}
 
ptr_glCopyTexImage2DEXT :: FunPtr a
ptr_glCopyTexImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_copy_texture"
        "glCopyTexImage2DEXT"
 
glCopyTexImage2DEXT ::
                    GLenum ->
                      GLint ->
                        GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()
glCopyTexImage2DEXT
  = dyn_glCopyTexImage2DEXT ptr_glCopyTexImage2DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexImage2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ())
 
{-# NOINLINE ptr_glCopyTexImage1DEXT #-}
 
ptr_glCopyTexImage1DEXT :: FunPtr a
ptr_glCopyTexImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_copy_texture"
        "glCopyTexImage1DEXT"
 
glCopyTexImage1DEXT ::
                    GLenum ->
                      GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ()
glCopyTexImage1DEXT
  = dyn_glCopyTexImage1DEXT ptr_glCopyTexImage1DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexImage1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ())