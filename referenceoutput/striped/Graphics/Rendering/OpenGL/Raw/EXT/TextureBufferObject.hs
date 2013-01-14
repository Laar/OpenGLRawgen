{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureBufferObject
       (glTexBuffer, gl_TEXTURE_BUFFER_FORMAT, gl_TEXTURE_BUFFER,
        gl_TEXTURE_BUFFER_DATA_STORE_BINDING, gl_TEXTURE_BINDING_BUFFER,
        gl_MAX_TEXTURE_BUFFER_SIZE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexBuffer #-}
 
ptr_glTexBuffer :: FunPtr a
ptr_glTexBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_texture_buffer_object"
        "glTexBufferEXT"
 
glTexBuffer :: GLenum -> GLenum -> GLuint -> IO ()
glTexBuffer = dyn_glTexBuffer ptr_glTexBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> IO ())
 
gl_TEXTURE_BUFFER_FORMAT :: GLenum
gl_TEXTURE_BUFFER_FORMAT = 35886
 
gl_TEXTURE_BUFFER :: GLenum
gl_TEXTURE_BUFFER = 35882
 
gl_TEXTURE_BUFFER_DATA_STORE_BINDING :: GLenum
gl_TEXTURE_BUFFER_DATA_STORE_BINDING = 35885
 
gl_TEXTURE_BINDING_BUFFER :: GLenum
gl_TEXTURE_BINDING_BUFFER = 35884
 
gl_MAX_TEXTURE_BUFFER_SIZE :: GLenum
gl_MAX_TEXTURE_BUFFER_SIZE = 35883