{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TexgenReflection
       (gl_REFLECTION_MAP, gl_NORMAL_MAP) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_REFLECTION_MAP :: GLenum
gl_REFLECTION_MAP = 34066
 
gl_NORMAL_MAP :: GLenum
gl_NORMAL_MAP = 34065