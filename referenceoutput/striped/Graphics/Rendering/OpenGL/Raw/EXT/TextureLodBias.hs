{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureLodBias
       (gl_TEXTURE_LOD_BIAS, gl_TEXTURE_FILTER_CONTROL,
        gl_MAX_TEXTURE_LOD_BIAS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_LOD_BIAS :: GLenum
gl_TEXTURE_LOD_BIAS = 34049
 
gl_TEXTURE_FILTER_CONTROL :: GLenum
gl_TEXTURE_FILTER_CONTROL = 34048
 
gl_MAX_TEXTURE_LOD_BIAS :: GLenum
gl_MAX_TEXTURE_LOD_BIAS = 34045