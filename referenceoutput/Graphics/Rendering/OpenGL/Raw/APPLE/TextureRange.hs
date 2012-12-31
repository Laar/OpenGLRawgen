{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.TextureRange
       (glTextureRangeAPPLE, glGetTexParameterPointervAPPLE,
        gl_TEXTURE_STORAGE_HINT_APPLE, gl_TEXTURE_RANGE_POINTER_APPLE,
        gl_TEXTURE_RANGE_LENGTH_APPLE, gl_STORAGE_SHARED_APPLE,
        gl_STORAGE_PRIVATE_APPLE, gl_STORAGE_CACHED_APPLE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTextureRangeAPPLE #-}
 
ptr_glTextureRangeAPPLE :: FunPtr a
ptr_glTextureRangeAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_texture_range"
        "glTextureRangeAPPLE"
 
glTextureRangeAPPLE :: GLenum -> GLsizei -> Ptr a -> IO ()
glTextureRangeAPPLE
  = dyn_glTextureRangeAPPLE ptr_glTextureRangeAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureRangeAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetTexParameterPointervAPPLE #-}
 
ptr_glGetTexParameterPointervAPPLE :: FunPtr a
ptr_glGetTexParameterPointervAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_texture_range"
        "glGetTexParameterPointervAPPLE"
 
glGetTexParameterPointervAPPLE ::
                               GLenum -> GLenum -> Ptr (Ptr a) -> IO ()
glGetTexParameterPointervAPPLE
  = dyn_glGetTexParameterPointervAPPLE
      ptr_glGetTexParameterPointervAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTexParameterPointervAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr (Ptr a) -> IO ())
 
gl_TEXTURE_STORAGE_HINT_APPLE :: GLenum
gl_TEXTURE_STORAGE_HINT_APPLE = 34236
 
gl_TEXTURE_RANGE_POINTER_APPLE :: GLenum
gl_TEXTURE_RANGE_POINTER_APPLE = 34232
 
gl_TEXTURE_RANGE_LENGTH_APPLE :: GLenum
gl_TEXTURE_RANGE_LENGTH_APPLE = 34231
 
gl_STORAGE_SHARED_APPLE :: GLenum
gl_STORAGE_SHARED_APPLE = 34239
 
gl_STORAGE_PRIVATE_APPLE :: GLenum
gl_STORAGE_PRIVATE_APPLE = 34237
 
gl_STORAGE_CACHED_APPLE :: GLenum
gl_STORAGE_CACHED_APPLE = 34238