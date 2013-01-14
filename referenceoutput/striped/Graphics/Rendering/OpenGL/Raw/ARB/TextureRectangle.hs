{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureRectangle
       (gl_TEXTURE_RECTANGLE, gl_TEXTURE_BINDING_RECTANGLE,
        gl_PROXY_TEXTURE_RECTANGLE, gl_MAX_RECTANGLE_TEXTURE_SIZE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_RECTANGLE :: GLenum
gl_TEXTURE_RECTANGLE = 34037
 
gl_TEXTURE_BINDING_RECTANGLE :: GLenum
gl_TEXTURE_BINDING_RECTANGLE = 34038
 
gl_PROXY_TEXTURE_RECTANGLE :: GLenum
gl_PROXY_TEXTURE_RECTANGLE = 34039
 
gl_MAX_RECTANGLE_TEXTURE_SIZE :: GLenum
gl_MAX_RECTANGLE_TEXTURE_SIZE = 34040