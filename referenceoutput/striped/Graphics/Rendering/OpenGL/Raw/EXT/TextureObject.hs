{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureObject
       (glPrioritizeTextures, glIsTexture, glGenTextures,
        glDeleteTextures, glBindTexture, glAreTexturesResident,
        gl_TEXTURE_RESIDENT, gl_TEXTURE_PRIORITY, gl_TEXTURE_3D_BINDING,
        gl_TEXTURE_2D_BINDING, gl_TEXTURE_1D_BINDING)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPrioritizeTextures #-}
 
ptr_glPrioritizeTextures :: FunPtr a
ptr_glPrioritizeTextures
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_object"
        "glPrioritizeTexturesEXT"
 
glPrioritizeTextures ::
                     GLsizei -> Ptr GLuint -> Ptr GLclampf -> IO ()
glPrioritizeTextures
  = dyn_glPrioritizeTextures ptr_glPrioritizeTextures
 
foreign import CALLCONV unsafe "dynamic" dyn_glPrioritizeTextures ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> Ptr GLclampf -> IO ())
 
{-# NOINLINE ptr_glIsTexture #-}
 
ptr_glIsTexture :: FunPtr a
ptr_glIsTexture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_object"
        "glIsTextureEXT"
 
glIsTexture :: GLuint -> IO GLboolean
glIsTexture = dyn_glIsTexture ptr_glIsTexture
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsTexture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGenTextures #-}
 
ptr_glGenTextures :: FunPtr a
ptr_glGenTextures
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_object"
        "glGenTexturesEXT"
 
glGenTextures :: GLsizei -> Ptr GLuint -> IO ()
glGenTextures = dyn_glGenTextures ptr_glGenTextures
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenTextures ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteTextures #-}
 
ptr_glDeleteTextures :: FunPtr a
ptr_glDeleteTextures
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_object"
        "glDeleteTexturesEXT"
 
glDeleteTextures :: GLsizei -> Ptr GLuint -> IO ()
glDeleteTextures = dyn_glDeleteTextures ptr_glDeleteTextures
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteTextures ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBindTexture #-}
 
ptr_glBindTexture :: FunPtr a
ptr_glBindTexture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_object"
        "glBindTextureEXT"
 
glBindTexture :: GLenum -> GLuint -> IO ()
glBindTexture = dyn_glBindTexture ptr_glBindTexture
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindTexture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glAreTexturesResident #-}
 
ptr_glAreTexturesResident :: FunPtr a
ptr_glAreTexturesResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_object"
        "glAreTexturesResidentEXT"
 
glAreTexturesResident ::
                      GLsizei -> Ptr GLuint -> Ptr GLboolean -> IO GLboolean
glAreTexturesResident
  = dyn_glAreTexturesResident ptr_glAreTexturesResident
 
foreign import CALLCONV unsafe "dynamic" dyn_glAreTexturesResident
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> Ptr GLboolean -> IO GLboolean)
 
gl_TEXTURE_RESIDENT :: GLenum
gl_TEXTURE_RESIDENT = 32871
 
gl_TEXTURE_PRIORITY :: GLenum
gl_TEXTURE_PRIORITY = 32870
 
gl_TEXTURE_3D_BINDING :: GLenum
gl_TEXTURE_3D_BINDING = 32874
 
gl_TEXTURE_2D_BINDING :: GLenum
gl_TEXTURE_2D_BINDING = 32873
 
gl_TEXTURE_1D_BINDING :: GLenum
gl_TEXTURE_1D_BINDING = 32872