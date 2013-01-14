{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.BindlessTexture
       (glUniformHandleui64v, glUniformHandleui64,
        glProgramUniformHandleui64v, glProgramUniformHandleui64,
        glMakeTextureHandleResident, glMakeTextureHandleNonResident,
        glMakeImageHandleResident, glMakeImageHandleNonResident,
        glIsTextureHandleResident, glIsImageHandleResident,
        glGetTextureSamplerHandle, glGetTextureHandle, glGetImageHandle)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUniformHandleui64v #-}
 
ptr_glUniformHandleui64v :: FunPtr a
ptr_glUniformHandleui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glUniformHandleui64vNV"
 
glUniformHandleui64v :: GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glUniformHandleui64v
  = dyn_glUniformHandleui64v ptr_glUniformHandleui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformHandleui64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glUniformHandleui64 #-}
 
ptr_glUniformHandleui64 :: FunPtr a
ptr_glUniformHandleui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glUniformHandleui64NV"
 
glUniformHandleui64 :: GLint -> GLuint64 -> IO ()
glUniformHandleui64
  = dyn_glUniformHandleui64 ptr_glUniformHandleui64
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformHandleui64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniformHandleui64v #-}
 
ptr_glProgramUniformHandleui64v :: FunPtr a
ptr_glProgramUniformHandleui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glProgramUniformHandleui64vNV"
 
glProgramUniformHandleui64v ::
                            GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ()
glProgramUniformHandleui64v
  = dyn_glProgramUniformHandleui64v ptr_glProgramUniformHandleui64v
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformHandleui64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glProgramUniformHandleui64 #-}
 
ptr_glProgramUniformHandleui64 :: FunPtr a
ptr_glProgramUniformHandleui64
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glProgramUniformHandleui64NV"
 
glProgramUniformHandleui64 :: GLuint -> GLint -> GLuint64 -> IO ()
glProgramUniformHandleui64
  = dyn_glProgramUniformHandleui64 ptr_glProgramUniformHandleui64
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformHandleui64 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint64 -> IO ())
 
{-# NOINLINE ptr_glMakeTextureHandleResident #-}
 
ptr_glMakeTextureHandleResident :: FunPtr a
ptr_glMakeTextureHandleResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glMakeTextureHandleResidentNV"
 
glMakeTextureHandleResident :: GLuint64 -> IO ()
glMakeTextureHandleResident
  = dyn_glMakeTextureHandleResident ptr_glMakeTextureHandleResident
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMakeTextureHandleResident ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint64 -> IO ())
 
{-# NOINLINE ptr_glMakeTextureHandleNonResident #-}
 
ptr_glMakeTextureHandleNonResident :: FunPtr a
ptr_glMakeTextureHandleNonResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glMakeTextureHandleNonResidentNV"
 
glMakeTextureHandleNonResident :: GLuint64 -> IO ()
glMakeTextureHandleNonResident
  = dyn_glMakeTextureHandleNonResident
      ptr_glMakeTextureHandleNonResident
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMakeTextureHandleNonResident ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint64 -> IO ())
 
{-# NOINLINE ptr_glMakeImageHandleResident #-}
 
ptr_glMakeImageHandleResident :: FunPtr a
ptr_glMakeImageHandleResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glMakeImageHandleResidentNV"
 
glMakeImageHandleResident :: GLuint64 -> GLenum -> IO ()
glMakeImageHandleResident
  = dyn_glMakeImageHandleResident ptr_glMakeImageHandleResident
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMakeImageHandleResident ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint64 -> GLenum -> IO ())
 
{-# NOINLINE ptr_glMakeImageHandleNonResident #-}
 
ptr_glMakeImageHandleNonResident :: FunPtr a
ptr_glMakeImageHandleNonResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glMakeImageHandleNonResidentNV"
 
glMakeImageHandleNonResident :: GLuint64 -> IO ()
glMakeImageHandleNonResident
  = dyn_glMakeImageHandleNonResident ptr_glMakeImageHandleNonResident
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMakeImageHandleNonResident ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint64 -> IO ())
 
{-# NOINLINE ptr_glIsTextureHandleResident #-}
 
ptr_glIsTextureHandleResident :: FunPtr a
ptr_glIsTextureHandleResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glIsTextureHandleResidentNV"
 
glIsTextureHandleResident :: GLuint64 -> IO GLboolean
glIsTextureHandleResident
  = dyn_glIsTextureHandleResident ptr_glIsTextureHandleResident
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glIsTextureHandleResident ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint64 -> IO GLboolean)
 
{-# NOINLINE ptr_glIsImageHandleResident #-}
 
ptr_glIsImageHandleResident :: FunPtr a
ptr_glIsImageHandleResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glIsImageHandleResidentNV"
 
glIsImageHandleResident :: GLuint64 -> IO GLboolean
glIsImageHandleResident
  = dyn_glIsImageHandleResident ptr_glIsImageHandleResident
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsImageHandleResident
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint64 -> IO GLboolean)
 
{-# NOINLINE ptr_glGetTextureSamplerHandle #-}
 
ptr_glGetTextureSamplerHandle :: FunPtr a
ptr_glGetTextureSamplerHandle
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glGetTextureSamplerHandleNV"
 
glGetTextureSamplerHandle :: GLuint -> GLuint -> IO GLuint64
glGetTextureSamplerHandle
  = dyn_glGetTextureSamplerHandle ptr_glGetTextureSamplerHandle
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTextureSamplerHandle ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO GLuint64)
 
{-# NOINLINE ptr_glGetTextureHandle #-}
 
ptr_glGetTextureHandle :: FunPtr a
ptr_glGetTextureHandle
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glGetTextureHandleNV"
 
glGetTextureHandle :: GLuint -> IO GLuint64
glGetTextureHandle = dyn_glGetTextureHandle ptr_glGetTextureHandle
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTextureHandle ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLuint64)
 
{-# NOINLINE ptr_glGetImageHandle #-}
 
ptr_glGetImageHandle :: FunPtr a
ptr_glGetImageHandle
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_bindless_texture"
        "glGetImageHandleNV"
 
glGetImageHandle ::
                 GLuint -> GLint -> GLboolean -> GLint -> GLenum -> IO GLuint64
glGetImageHandle = dyn_glGetImageHandle ptr_glGetImageHandle
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetImageHandle ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLboolean -> GLint -> GLenum -> IO GLuint64)