{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.DepthClamp
       (gl_DEPTH_CLAMP) where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core32
       (gl_DEPTH_CLAMP)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions