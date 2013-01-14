{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.SparseTexture
       (glTextureStorageSparse, glTexStorageSparse,
        gl_VIRTUAL_PAGE_SIZE_Z, gl_VIRTUAL_PAGE_SIZE_Y,
        gl_VIRTUAL_PAGE_SIZE_X, gl_TEXTURE_STORAGE_SPARSE_BIT,
        gl_MIN_SPARSE_LEVEL, gl_MIN_LOD_WARNING,
        gl_MAX_SPARSE_TEXTURE_SIZE, gl_MAX_SPARSE_ARRAY_TEXTURE_LAYERS,
        gl_MAX_SPARSE_3D_TEXTURE_SIZE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTextureStorageSparse #-}
 
ptr_glTextureStorageSparse :: FunPtr a
ptr_glTextureStorageSparse
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_sparse_texture"
        "glTextureStorageSparseAMD"
 
glTextureStorageSparse ::
                       GLuint ->
                         GLenum ->
                           GLenum ->
                             GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLbitfield -> IO ()
glTextureStorageSparse
  = dyn_glTextureStorageSparse ptr_glTextureStorageSparse
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureStorageSparse
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLenum ->
                        GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLbitfield -> IO ())
 
{-# NOINLINE ptr_glTexStorageSparse #-}
 
ptr_glTexStorageSparse :: FunPtr a
ptr_glTexStorageSparse
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_sparse_texture"
        "glTexStorageSparseAMD"
 
glTexStorageSparse ::
                   GLenum ->
                     GLenum ->
                       GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLbitfield -> IO ()
glTexStorageSparse = dyn_glTexStorageSparse ptr_glTexStorageSparse
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexStorageSparse ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLbitfield -> IO ())
 
gl_VIRTUAL_PAGE_SIZE_Z :: GLenum
gl_VIRTUAL_PAGE_SIZE_Z = 37271
 
gl_VIRTUAL_PAGE_SIZE_Y :: GLenum
gl_VIRTUAL_PAGE_SIZE_Y = 37270
 
gl_VIRTUAL_PAGE_SIZE_X :: GLenum
gl_VIRTUAL_PAGE_SIZE_X = 37269
 
gl_TEXTURE_STORAGE_SPARSE_BIT :: GLbitfield
gl_TEXTURE_STORAGE_SPARSE_BIT = 1
 
gl_MIN_SPARSE_LEVEL :: GLenum
gl_MIN_SPARSE_LEVEL = 37275
 
gl_MIN_LOD_WARNING :: GLenum
gl_MIN_LOD_WARNING = 37276
 
gl_MAX_SPARSE_TEXTURE_SIZE :: GLenum
gl_MAX_SPARSE_TEXTURE_SIZE = 37272
 
gl_MAX_SPARSE_ARRAY_TEXTURE_LAYERS :: GLenum
gl_MAX_SPARSE_ARRAY_TEXTURE_LAYERS = 37274
 
gl_MAX_SPARSE_3D_TEXTURE_SIZE :: GLenum
gl_MAX_SPARSE_3D_TEXTURE_SIZE = 37273