{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureLodBias
       (gl_TEXTURE_LOD_BIAS_EXT, gl_TEXTURE_FILTER_CONTROL_EXT,
        gl_MAX_TEXTURE_LOD_BIAS_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_LOD_BIAS_EXT :: GLenum
gl_TEXTURE_LOD_BIAS_EXT = 34049
 
gl_TEXTURE_FILTER_CONTROL_EXT :: GLenum
gl_TEXTURE_FILTER_CONTROL_EXT = 34048
 
gl_MAX_TEXTURE_LOD_BIAS_EXT :: GLenum
gl_MAX_TEXTURE_LOD_BIAS_EXT = 34045