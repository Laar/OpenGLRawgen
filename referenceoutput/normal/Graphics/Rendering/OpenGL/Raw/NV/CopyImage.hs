{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.CopyImage
       (glCopyImageSubDataNV) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glCopyImageSubDataNV #-}
 
ptr_glCopyImageSubDataNV :: FunPtr a
ptr_glCopyImageSubDataNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_copy_image"
        "glCopyImageSubDataNV"
 
glCopyImageSubDataNV ::
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
glCopyImageSubDataNV
  = dyn_glCopyImageSubDataNV ptr_glCopyImageSubDataNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyImageSubDataNV ::
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