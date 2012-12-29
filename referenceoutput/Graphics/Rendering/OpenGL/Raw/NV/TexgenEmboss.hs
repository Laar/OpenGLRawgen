{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TexgenEmboss
       (gl_EMBOSS_MAP_NV, gl_EMBOSS_CONSTANT_NV, gl_EMBOSS_LIGHT_NV) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_EMBOSS_MAP_NV :: GLenum
gl_EMBOSS_MAP_NV = 34143
 
gl_EMBOSS_CONSTANT_NV :: GLenum
gl_EMBOSS_CONSTANT_NV = 34142
 
gl_EMBOSS_LIGHT_NV :: GLenum
gl_EMBOSS_LIGHT_NV = 34141