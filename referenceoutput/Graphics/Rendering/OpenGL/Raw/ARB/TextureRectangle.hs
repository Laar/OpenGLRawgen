{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureRectangle
       (gl_MAX_RECTANGLE_TEXTURE_SIZE_ARB, gl_PROXY_TEXTURE_RECTANGLE_ARB,
        gl_TEXTURE_BINDING_RECTANGLE_ARB, gl_TEXTURE_RECTANGLE_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MAX_RECTANGLE_TEXTURE_SIZE_ARB :: GLenum
gl_MAX_RECTANGLE_TEXTURE_SIZE_ARB = 34040
 
gl_PROXY_TEXTURE_RECTANGLE_ARB :: GLenum
gl_PROXY_TEXTURE_RECTANGLE_ARB = 34039
 
gl_TEXTURE_BINDING_RECTANGLE_ARB :: GLenum
gl_TEXTURE_BINDING_RECTANGLE_ARB = 34038
 
gl_TEXTURE_RECTANGLE_ARB :: GLenum
gl_TEXTURE_RECTANGLE_ARB = 34037