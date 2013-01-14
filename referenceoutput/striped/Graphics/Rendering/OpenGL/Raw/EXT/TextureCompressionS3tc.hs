{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureCompressionS3tc
       (gl_COMPRESSED_RGB_S3TC_DXT1, gl_COMPRESSED_RGBA_S3TC_DXT5,
        gl_COMPRESSED_RGBA_S3TC_DXT3, gl_COMPRESSED_RGBA_S3TC_DXT1)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_COMPRESSED_RGB_S3TC_DXT1 :: GLenum
gl_COMPRESSED_RGB_S3TC_DXT1 = 33776
 
gl_COMPRESSED_RGBA_S3TC_DXT5 :: GLenum
gl_COMPRESSED_RGBA_S3TC_DXT5 = 33779
 
gl_COMPRESSED_RGBA_S3TC_DXT3 :: GLenum
gl_COMPRESSED_RGBA_S3TC_DXT3 = 33778
 
gl_COMPRESSED_RGBA_S3TC_DXT1 :: GLenum
gl_COMPRESSED_RGBA_S3TC_DXT1 = 33777