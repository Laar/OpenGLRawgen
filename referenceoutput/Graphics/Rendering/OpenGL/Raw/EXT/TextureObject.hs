{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureObject
       (glPrioritizeTexturesEXT, glIsTextureEXT, glGenTexturesEXT,
        glDeleteTexturesEXT, glBindTextureEXT, glAreTexturesResidentEXT,
        gl_TEXTURE_RESIDENT_EXT, gl_TEXTURE_PRIORITY_EXT,
        gl_TEXTURE_3D_BINDING_EXT, gl_TEXTURE_2D_BINDING_EXT,
        gl_TEXTURE_1D_BINDING_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPrioritizeTexturesEXT #-}
 
ptr_glPrioritizeTexturesEXT :: FunPtr a
ptr_glPrioritizeTexturesEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_object"
        "glPrioritizeTexturesEXT"
 
glPrioritizeTexturesEXT ::
                        GLsizei -> Ptr GLuint -> Ptr GLclampf -> IO ()
glPrioritizeTexturesEXT
  = dyn_glPrioritizeTexturesEXT ptr_glPrioritizeTexturesEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glPrioritizeTexturesEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> Ptr GLclampf -> IO ())
 
{-# NOINLINE ptr_glIsTextureEXT #-}
 
ptr_glIsTextureEXT :: FunPtr a
ptr_glIsTextureEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_object"
        "glIsTextureEXT"
 
glIsTextureEXT :: GLuint -> IO GLboolean
glIsTextureEXT = dyn_glIsTextureEXT ptr_glIsTextureEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsTextureEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGenTexturesEXT #-}
 
ptr_glGenTexturesEXT :: FunPtr a
ptr_glGenTexturesEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_object"
        "glGenTexturesEXT"
 
glGenTexturesEXT :: GLsizei -> Ptr GLuint -> IO ()
glGenTexturesEXT = dyn_glGenTexturesEXT ptr_glGenTexturesEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenTexturesEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteTexturesEXT #-}
 
ptr_glDeleteTexturesEXT :: FunPtr a
ptr_glDeleteTexturesEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_object"
        "glDeleteTexturesEXT"
 
glDeleteTexturesEXT :: GLsizei -> Ptr GLuint -> IO ()
glDeleteTexturesEXT
  = dyn_glDeleteTexturesEXT ptr_glDeleteTexturesEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteTexturesEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBindTextureEXT #-}
 
ptr_glBindTextureEXT :: FunPtr a
ptr_glBindTextureEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_object"
        "glBindTextureEXT"
 
glBindTextureEXT :: GLenum -> GLuint -> IO ()
glBindTextureEXT = dyn_glBindTextureEXT ptr_glBindTextureEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindTextureEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glAreTexturesResidentEXT #-}
 
ptr_glAreTexturesResidentEXT :: FunPtr a
ptr_glAreTexturesResidentEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_object"
        "glAreTexturesResidentEXT"
 
glAreTexturesResidentEXT ::
                         GLsizei -> Ptr GLuint -> Ptr GLboolean -> IO GLboolean
glAreTexturesResidentEXT
  = dyn_glAreTexturesResidentEXT ptr_glAreTexturesResidentEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glAreTexturesResidentEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> Ptr GLboolean -> IO GLboolean)
 
gl_TEXTURE_RESIDENT_EXT :: GLenum
gl_TEXTURE_RESIDENT_EXT = 32871
 
gl_TEXTURE_PRIORITY_EXT :: GLenum
gl_TEXTURE_PRIORITY_EXT = 32870
 
gl_TEXTURE_3D_BINDING_EXT :: GLenum
gl_TEXTURE_3D_BINDING_EXT = 32874
 
gl_TEXTURE_2D_BINDING_EXT :: GLenum
gl_TEXTURE_2D_BINDING_EXT = 32873
 
gl_TEXTURE_1D_BINDING_EXT :: GLenum
gl_TEXTURE_1D_BINDING_EXT = 32872