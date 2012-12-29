{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureBufferObject
       (glTexBufferARB, gl_TEXTURE_BUFFER_FORMAT_ARB,
        gl_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB,
        gl_TEXTURE_BINDING_BUFFER_ARB, gl_MAX_TEXTURE_BUFFER_SIZE_ARB,
        gl_TEXTURE_BUFFER_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexBufferARB #-}
 
ptr_glTexBufferARB :: FunPtr a
ptr_glTexBufferARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_texture_buffer_object"
        "glTexBufferARB"
 
glTexBufferARB :: GLenum -> GLenum -> GLuint -> IO ()
glTexBufferARB = dyn_glTexBufferARB ptr_glTexBufferARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexBufferARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> IO ())
 
gl_TEXTURE_BUFFER_FORMAT_ARB :: GLenum
gl_TEXTURE_BUFFER_FORMAT_ARB = 35886
 
gl_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB :: GLenum
gl_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB = 35885
 
gl_TEXTURE_BINDING_BUFFER_ARB :: GLenum
gl_TEXTURE_BINDING_BUFFER_ARB = 35884
 
gl_MAX_TEXTURE_BUFFER_SIZE_ARB :: GLenum
gl_MAX_TEXTURE_BUFFER_SIZE_ARB = 35883
 
gl_TEXTURE_BUFFER_ARB :: GLenum
gl_TEXTURE_BUFFER_ARB = 35882