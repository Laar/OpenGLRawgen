{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TextureRectangle
       (gl_TEXTURE_RECTANGLE_NV, gl_TEXTURE_BINDING_RECTANGLE_NV,
        gl_PROXY_TEXTURE_RECTANGLE_NV, gl_MAX_RECTANGLE_TEXTURE_SIZE_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_RECTANGLE_NV :: GLenum
gl_TEXTURE_RECTANGLE_NV = 34037
 
gl_TEXTURE_BINDING_RECTANGLE_NV :: GLenum
gl_TEXTURE_BINDING_RECTANGLE_NV = 34038
 
gl_PROXY_TEXTURE_RECTANGLE_NV :: GLenum
gl_PROXY_TEXTURE_RECTANGLE_NV = 34039
 
gl_MAX_RECTANGLE_TEXTURE_SIZE_NV :: GLenum
gl_MAX_RECTANGLE_TEXTURE_SIZE_NV = 34040