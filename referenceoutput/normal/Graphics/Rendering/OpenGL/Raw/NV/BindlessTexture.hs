{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.BindlessTexture
       (glUniformHandleui64vNV, glUniformHandleui64NV,
        glProgramUniformHandleui64vNV, glProgramUniformHandleui64NV,
        glMakeTextureHandleResidentNV, glMakeTextureHandleNonResidentNV,
        glMakeImageHandleResidentNV, glMakeImageHandleNonResidentNV,
        glIsTextureHandleResidentNV, glIsImageHandleResidentNV,
        glGetTextureSamplerHandleNV, glGetTextureHandleNV,
        glGetImageHandleNV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUniformHandleui64vNV #-}
 
ptr_glUniformHandleui64vNV :: FunPtr a
ptr_glUniformHandleui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glUniformHandleui64vNV"
 
glUniformHandleui64vNV :: GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glUniformHandleui64vNV
  = dyn_glUniformHandleui64vNV ptr_glUniformHandleui64vNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformHandleui64vNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniformHandleui64NV #-}
 
ptr_glUniformHandleui64NV :: FunPtr a
ptr_glUniformHandleui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glUniformHandleui64NV"
 
glUniformHandleui64NV :: GLint -> GLuint64 -> IO ()
glUniformHandleui64NV
  = dyn_glUniformHandleui64NV ptr_glUniformHandleui64NV
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformHandleui64NV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniformHandleui64vNV #-}
 
ptr_glProgramUniformHandleui64vNV :: FunPtr a
ptr_glProgramUniformHandleui64vNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glProgramUniformHandleui64vNV"
 
glProgramUniformHandleui64vNV ::
                              GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glProgramUniformHandleui64vNV
  = dyn_glProgramUniformHandleui64vNV
      ptr_glProgramUniformHandleui64vNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformHandleui64vNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniformHandleui64NV #-}
 
ptr_glProgramUniformHandleui64NV :: FunPtr a
ptr_glProgramUniformHandleui64NV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glProgramUniformHandleui64NV"
 
glProgramUniformHandleui64NV ::
                             GLuint -> GLint -> GLuint64 -> IO ()
glProgramUniformHandleui64NV
  = dyn_glProgramUniformHandleui64NV ptr_glProgramUniformHandleui64NV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformHandleui64NV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glMakeTextureHandleResidentNV #-}
 
ptr_glMakeTextureHandleResidentNV :: FunPtr a
ptr_glMakeTextureHandleResidentNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glMakeTextureHandleResidentNV"
 
glMakeTextureHandleResidentNV :: GLuint64 -> IO ()
glMakeTextureHandleResidentNV
  = dyn_glMakeTextureHandleResidentNV
      ptr_glMakeTextureHandleResidentNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMakeTextureHandleResidentNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint64 -> IO ())
 
{-# NOINLINE ptr_glMakeTextureHandleNonResidentNV #-}
 
ptr_glMakeTextureHandleNonResidentNV :: FunPtr a
ptr_glMakeTextureHandleNonResidentNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glMakeTextureHandleNonResidentNV"
 
glMakeTextureHandleNonResidentNV :: GLuint64 -> IO ()
glMakeTextureHandleNonResidentNV
  = dyn_glMakeTextureHandleNonResidentNV
      ptr_glMakeTextureHandleNonResidentNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMakeTextureHandleNonResidentNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint64 -> IO ())
 
{-# NOINLINE ptr_glMakeImageHandleResidentNV #-}
 
ptr_glMakeImageHandleResidentNV :: FunPtr a
ptr_glMakeImageHandleResidentNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glMakeImageHandleResidentNV"
 
glMakeImageHandleResidentNV :: GLuint64 -> GLenum -> IO ()
glMakeImageHandleResidentNV
  = dyn_glMakeImageHandleResidentNV ptr_glMakeImageHandleResidentNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMakeImageHandleResidentNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint64 -> GLenum -> IO ())
 
{-# NOINLINE ptr_glMakeImageHandleNonResidentNV #-}
 
ptr_glMakeImageHandleNonResidentNV :: FunPtr a
ptr_glMakeImageHandleNonResidentNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glMakeImageHandleNonResidentNV"
 
glMakeImageHandleNonResidentNV :: GLuint64 -> IO ()
glMakeImageHandleNonResidentNV
  = dyn_glMakeImageHandleNonResidentNV
      ptr_glMakeImageHandleNonResidentNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMakeImageHandleNonResidentNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint64 -> IO ())
 
{-# NOINLINE ptr_glIsTextureHandleResidentNV #-}
 
ptr_glIsTextureHandleResidentNV :: FunPtr a
ptr_glIsTextureHandleResidentNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glIsTextureHandleResidentNV"
 
glIsTextureHandleResidentNV :: GLuint64 -> IO GLboolean
glIsTextureHandleResidentNV
  = dyn_glIsTextureHandleResidentNV ptr_glIsTextureHandleResidentNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glIsTextureHandleResidentNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint64 -> IO GLboolean)
 
{-# NOINLINE ptr_glIsImageHandleResidentNV #-}
 
ptr_glIsImageHandleResidentNV :: FunPtr a
ptr_glIsImageHandleResidentNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glIsImageHandleResidentNV"
 
glIsImageHandleResidentNV :: GLuint64 -> IO GLboolean
glIsImageHandleResidentNV
  = dyn_glIsImageHandleResidentNV ptr_glIsImageHandleResidentNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glIsImageHandleResidentNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint64 -> IO GLboolean)
 
{-# NOINLINE ptr_glGetTextureSamplerHandleNV #-}
 
ptr_glGetTextureSamplerHandleNV :: FunPtr a
ptr_glGetTextureSamplerHandleNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glGetTextureSamplerHandleNV"
 
glGetTextureSamplerHandleNV :: GLuint -> GLuint -> IO GLuint64
glGetTextureSamplerHandleNV
  = dyn_glGetTextureSamplerHandleNV ptr_glGetTextureSamplerHandleNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTextureSamplerHandleNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO GLuint64)
 
{-# NOINLINE ptr_glGetTextureHandleNV #-}
 
ptr_glGetTextureHandleNV :: FunPtr a
ptr_glGetTextureHandleNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glGetTextureHandleNV"
 
glGetTextureHandleNV :: GLuint -> IO GLuint64
glGetTextureHandleNV
  = dyn_glGetTextureHandleNV ptr_glGetTextureHandleNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTextureHandleNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLuint64)
 
{-# NOINLINE ptr_glGetImageHandleNV #-}
 
ptr_glGetImageHandleNV :: FunPtr a
ptr_glGetImageHandleNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glGetImageHandleNV"
 
glGetImageHandleNV ::
                   GLuint -> GLint -> GLboolean -> GLint -> GLenum -> IO GLuint64
glGetImageHandleNV = dyn_glGetImageHandleNV ptr_glGetImageHandleNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetImageHandleNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLboolean -> GLint -> GLenum -> IO GLuint64)