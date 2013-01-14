{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.SeamlessCubeMap
       (gl_TEXTURE_CUBE_MAP_SEAMLESS) where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core32
       (gl_TEXTURE_CUBE_MAP_SEAMLESS)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions