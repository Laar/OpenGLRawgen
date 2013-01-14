{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.CopyTexture
       (glCopyTexSubImage3D, glCopyTexSubImage2D, glCopyTexSubImage1D,
        glCopyTexImage2D, glCopyTexImage1D)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glCopyTexSubImage3D #-}
 
ptr_glCopyTexSubImage3D :: FunPtr a
ptr_glCopyTexSubImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_copy_texture"
        "glCopyTexSubImage3DEXT"
 
glCopyTexSubImage3D ::
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyTexSubImage3D
  = dyn_glCopyTexSubImage3D ptr_glCopyTexSubImage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexSubImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyTexSubImage2D #-}
 
ptr_glCopyTexSubImage2D :: FunPtr a
ptr_glCopyTexSubImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_copy_texture"
        "glCopyTexSubImage2DEXT"
 
glCopyTexSubImage2D ::
                    GLenum ->
                      GLint ->
                        GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyTexSubImage2D
  = dyn_glCopyTexSubImage2D ptr_glCopyTexSubImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexSubImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyTexSubImage1D #-}
 
ptr_glCopyTexSubImage1D :: FunPtr a
ptr_glCopyTexSubImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_copy_texture"
        "glCopyTexSubImage1DEXT"
 
glCopyTexSubImage1D ::
                    GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()
glCopyTexSubImage1D
  = dyn_glCopyTexSubImage1D ptr_glCopyTexSubImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexSubImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyTexImage2D #-}
 
ptr_glCopyTexImage2D :: FunPtr a
ptr_glCopyTexImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_copy_texture"
        "glCopyTexImage2DEXT"
 
glCopyTexImage2D ::
                 GLenum ->
                   GLint ->
                     GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()
glCopyTexImage2D = dyn_glCopyTexImage2D ptr_glCopyTexImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ())
 
{-# NOINLINE ptr_glCopyTexImage1D #-}
 
ptr_glCopyTexImage1D :: FunPtr a
ptr_glCopyTexImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_copy_texture"
        "glCopyTexImage1DEXT"
 
glCopyTexImage1D ::
                 GLenum ->
                   GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ()
glCopyTexImage1D = dyn_glCopyTexImage1D ptr_glCopyTexImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ())