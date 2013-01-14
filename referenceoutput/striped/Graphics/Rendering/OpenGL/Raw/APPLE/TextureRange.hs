{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.TextureRange
       (glTextureRange, glGetTexParameterPointerv,
        gl_TEXTURE_STORAGE_HINT, gl_TEXTURE_RANGE_POINTER,
        gl_TEXTURE_RANGE_LENGTH, gl_STORAGE_SHARED, gl_STORAGE_PRIVATE,
        gl_STORAGE_CACHED)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTextureRange #-}
 
ptr_glTextureRange :: FunPtr a
ptr_glTextureRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_texture_range"
        "glTextureRangeAPPLE"
 
glTextureRange :: GLenum -> GLsizei -> Ptr a -> IO ()
glTextureRange = dyn_glTextureRange ptr_glTextureRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetTexParameterPointerv #-}
 
ptr_glGetTexParameterPointerv :: FunPtr a
ptr_glGetTexParameterPointerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_texture_range"
        "glGetTexParameterPointervAPPLE"
 
glGetTexParameterPointerv ::
                          GLenum -> GLenum -> Ptr (Ptr a) -> IO ()
glGetTexParameterPointerv
  = dyn_glGetTexParameterPointerv ptr_glGetTexParameterPointerv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTexParameterPointerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr (Ptr a) -> IO ())
 
gl_TEXTURE_STORAGE_HINT :: GLenum
gl_TEXTURE_STORAGE_HINT = 34236
 
gl_TEXTURE_RANGE_POINTER :: GLenum
gl_TEXTURE_RANGE_POINTER = 34232
 
gl_TEXTURE_RANGE_LENGTH :: GLenum
gl_TEXTURE_RANGE_LENGTH = 34231
 
gl_STORAGE_SHARED :: GLenum
gl_STORAGE_SHARED = 34239
 
gl_STORAGE_PRIVATE :: GLenum
gl_STORAGE_PRIVATE = 34237
 
gl_STORAGE_CACHED :: GLenum
gl_STORAGE_CACHED = 34238