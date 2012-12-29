{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureArray
       (gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT,
        gl_COMPARE_REF_DEPTH_TO_TEXTURE_EXT,
        gl_MAX_ARRAY_TEXTURE_LAYERS_EXT, gl_TEXTURE_BINDING_2D_ARRAY_EXT,
        gl_TEXTURE_BINDING_1D_ARRAY_EXT, gl_PROXY_TEXTURE_2D_ARRAY_EXT,
        gl_TEXTURE_2D_ARRAY_EXT, gl_PROXY_TEXTURE_1D_ARRAY_EXT,
        gl_TEXTURE_1D_ARRAY_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.EXT.GeometryShader4
       (gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_COMPARE_REF_DEPTH_TO_TEXTURE_EXT :: GLenum
gl_COMPARE_REF_DEPTH_TO_TEXTURE_EXT = 34894
 
gl_MAX_ARRAY_TEXTURE_LAYERS_EXT :: GLenum
gl_MAX_ARRAY_TEXTURE_LAYERS_EXT = 35071
 
gl_TEXTURE_BINDING_2D_ARRAY_EXT :: GLenum
gl_TEXTURE_BINDING_2D_ARRAY_EXT = 35869
 
gl_TEXTURE_BINDING_1D_ARRAY_EXT :: GLenum
gl_TEXTURE_BINDING_1D_ARRAY_EXT = 35868
 
gl_PROXY_TEXTURE_2D_ARRAY_EXT :: GLenum
gl_PROXY_TEXTURE_2D_ARRAY_EXT = 35867
 
gl_TEXTURE_2D_ARRAY_EXT :: GLenum
gl_TEXTURE_2D_ARRAY_EXT = 35866
 
gl_PROXY_TEXTURE_1D_ARRAY_EXT :: GLenum
gl_PROXY_TEXTURE_1D_ARRAY_EXT = 35865
 
gl_TEXTURE_1D_ARRAY_EXT :: GLenum
gl_TEXTURE_1D_ARRAY_EXT = 35864