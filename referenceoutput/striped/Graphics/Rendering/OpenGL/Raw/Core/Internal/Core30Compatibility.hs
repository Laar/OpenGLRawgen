{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core30Compatibility
       (gl_TEXTURE_LUMINANCE_TYPE, gl_TEXTURE_INTENSITY_TYPE,
        gl_CLAMP_VERTEX_COLOR, gl_CLAMP_FRAGMENT_COLOR, gl_ALPHA_INTEGER)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_LUMINANCE_TYPE :: GLenum
gl_TEXTURE_LUMINANCE_TYPE = 35860
 
gl_TEXTURE_INTENSITY_TYPE :: GLenum
gl_TEXTURE_INTENSITY_TYPE = 35861
 
gl_CLAMP_VERTEX_COLOR :: GLenum
gl_CLAMP_VERTEX_COLOR = 35098
 
gl_CLAMP_FRAGMENT_COLOR :: GLenum
gl_CLAMP_FRAGMENT_COLOR = 35099
 
gl_ALPHA_INTEGER :: GLenum
gl_ALPHA_INTEGER = 36247