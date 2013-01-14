{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TexgenEmboss
       (gl_EMBOSS_MAP, gl_EMBOSS_LIGHT, gl_EMBOSS_CONSTANT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_EMBOSS_MAP :: GLenum
gl_EMBOSS_MAP = 34143
 
gl_EMBOSS_LIGHT :: GLenum
gl_EMBOSS_LIGHT = 34141
 
gl_EMBOSS_CONSTANT :: GLenum
gl_EMBOSS_CONSTANT = 34142