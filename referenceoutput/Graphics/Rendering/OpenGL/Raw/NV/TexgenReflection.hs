{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TexgenReflection
       (gl_REFLECTION_MAP_NV, gl_NORMAL_MAP_NV) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_REFLECTION_MAP_NV :: GLenum
gl_REFLECTION_MAP_NV = 34066
 
gl_NORMAL_MAP_NV :: GLenum
gl_NORMAL_MAP_NV = 34065