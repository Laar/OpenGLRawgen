{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.SparseTexture
       (glTextureStorageSparseAMD, glTexStorageSparseAMD,
        gl_VIRTUAL_PAGE_SIZE_Z_AMD, gl_VIRTUAL_PAGE_SIZE_Y_AMD,
        gl_VIRTUAL_PAGE_SIZE_X_AMD, gl_TEXTURE_STORAGE_SPARSE_BIT_AMD,
        gl_MIN_SPARSE_LEVEL_AMD, gl_MIN_LOD_WARNING_AMD,
        gl_MAX_SPARSE_TEXTURE_SIZE_AMD, gl_MAX_SPARSE_ARRAY_TEXTURE_LAYERS,
        gl_MAX_SPARSE_3D_TEXTURE_SIZE_AMD)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTextureStorageSparseAMD #-}
 
ptr_glTextureStorageSparseAMD :: FunPtr a
ptr_glTextureStorageSparseAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_sparse_texture"
        "glTextureStorageSparseAMD"
 
glTextureStorageSparseAMD ::
                          GLuint ->
                            GLenum ->
                              GLenum ->
                                GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLbitfield -> IO ()
glTextureStorageSparseAMD
  = dyn_glTextureStorageSparseAMD ptr_glTextureStorageSparseAMD
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTextureStorageSparseAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLenum ->
                        GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLbitfield -> IO ())
 
{-# NOINLINE ptr_glTexStorageSparseAMD #-}
 
ptr_glTexStorageSparseAMD :: FunPtr a
ptr_glTexStorageSparseAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_sparse_texture"
        "glTexStorageSparseAMD"
 
glTexStorageSparseAMD ::
                      GLenum ->
                        GLenum ->
                          GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLbitfield -> IO ()
glTexStorageSparseAMD
  = dyn_glTexStorageSparseAMD ptr_glTexStorageSparseAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexStorageSparseAMD
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLbitfield -> IO ())
 
gl_VIRTUAL_PAGE_SIZE_Z_AMD :: GLenum
gl_VIRTUAL_PAGE_SIZE_Z_AMD = 37271
 
gl_VIRTUAL_PAGE_SIZE_Y_AMD :: GLenum
gl_VIRTUAL_PAGE_SIZE_Y_AMD = 37270
 
gl_VIRTUAL_PAGE_SIZE_X_AMD :: GLenum
gl_VIRTUAL_PAGE_SIZE_X_AMD = 37269
 
gl_TEXTURE_STORAGE_SPARSE_BIT_AMD :: GLbitfield
gl_TEXTURE_STORAGE_SPARSE_BIT_AMD = 1
 
gl_MIN_SPARSE_LEVEL_AMD :: GLenum
gl_MIN_SPARSE_LEVEL_AMD = 37275
 
gl_MIN_LOD_WARNING_AMD :: GLenum
gl_MIN_LOD_WARNING_AMD = 37276
 
gl_MAX_SPARSE_TEXTURE_SIZE_AMD :: GLenum
gl_MAX_SPARSE_TEXTURE_SIZE_AMD = 37272
 
gl_MAX_SPARSE_ARRAY_TEXTURE_LAYERS :: GLenum
gl_MAX_SPARSE_ARRAY_TEXTURE_LAYERS = 37274
 
gl_MAX_SPARSE_3D_TEXTURE_SIZE_AMD :: GLenum
gl_MAX_SPARSE_3D_TEXTURE_SIZE_AMD = 37273