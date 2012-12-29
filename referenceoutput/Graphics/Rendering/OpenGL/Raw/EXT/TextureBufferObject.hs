{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureBufferObject
       (glTexBufferEXT, gl_TEXTURE_BUFFER_FORMAT_EXT,
        gl_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT,
        gl_TEXTURE_BINDING_BUFFER_EXT, gl_MAX_TEXTURE_BUFFER_SIZE_EXT,
        gl_TEXTURE_BUFFER_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexBufferEXT #-}
 
ptr_glTexBufferEXT :: FunPtr a
ptr_glTexBufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_buffer_object"
        "glTexBufferEXT"
 
glTexBufferEXT :: GLenum -> GLenum -> GLuint -> IO ()
glTexBufferEXT = dyn_glTexBufferEXT ptr_glTexBufferEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexBufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> IO ())
 
gl_TEXTURE_BUFFER_FORMAT_EXT :: GLenum
gl_TEXTURE_BUFFER_FORMAT_EXT = 35886
 
gl_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT :: GLenum
gl_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT = 35885
 
gl_TEXTURE_BINDING_BUFFER_EXT :: GLenum
gl_TEXTURE_BINDING_BUFFER_EXT = 35884
 
gl_MAX_TEXTURE_BUFFER_SIZE_EXT :: GLenum
gl_MAX_TEXTURE_BUFFER_SIZE_EXT = 35883
 
gl_TEXTURE_BUFFER_EXT :: GLenum
gl_TEXTURE_BUFFER_EXT = 35882