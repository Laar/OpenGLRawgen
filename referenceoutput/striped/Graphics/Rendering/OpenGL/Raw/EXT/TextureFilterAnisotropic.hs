{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureFilterAnisotropic
       (gl_TEXTURE_MAX_ANISOTROPY, gl_MAX_TEXTURE_MAX_ANISOTROPY) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_MAX_ANISOTROPY :: GLenum
gl_TEXTURE_MAX_ANISOTROPY = 34046
 
gl_MAX_TEXTURE_MAX_ANISOTROPY :: GLenum
gl_MAX_TEXTURE_MAX_ANISOTROPY = 34047