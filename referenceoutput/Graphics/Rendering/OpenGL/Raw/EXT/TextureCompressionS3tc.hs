{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureCompressionS3tc
       (gl_COMPRESSED_RGBA_S3TC_DXT5_EXT,
        gl_COMPRESSED_RGBA_S3TC_DXT3_EXT, gl_COMPRESSED_RGBA_S3TC_DXT1_EXT,
        gl_COMPRESSED_RGB_S3TC_DXT1_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_COMPRESSED_RGBA_S3TC_DXT5_EXT :: GLenum
gl_COMPRESSED_RGBA_S3TC_DXT5_EXT = 33779
 
gl_COMPRESSED_RGBA_S3TC_DXT3_EXT :: GLenum
gl_COMPRESSED_RGBA_S3TC_DXT3_EXT = 33778
 
gl_COMPRESSED_RGBA_S3TC_DXT1_EXT :: GLenum
gl_COMPRESSED_RGBA_S3TC_DXT1_EXT = 33777
 
gl_COMPRESSED_RGB_S3TC_DXT1_EXT :: GLenum
gl_COMPRESSED_RGB_S3TC_DXT1_EXT = 33776