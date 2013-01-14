{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.CopyImage
       (glCopyImageSubData) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glCopyImageSubData #-}
 
ptr_glCopyImageSubData :: FunPtr a
ptr_glCopyImageSubData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_copy_image"
        "glCopyImageSubDataNV"
 
glCopyImageSubData ::
                   GLuint ->
                     GLenum ->
                       GLint ->
                         GLint ->
                           GLint ->
                             GLint ->
                               GLuint ->
                                 GLenum ->
                                   GLint ->
                                     GLint ->
                                       GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> IO ()
glCopyImageSubData = dyn_glCopyImageSubData ptr_glCopyImageSubData
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyImageSubData ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLuint ->
                                GLenum ->
                                  GLint ->
                                    GLint ->
                                      GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> IO ())