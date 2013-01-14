{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.ExplicitUniformLocation
       (gl_MAX_UNIFORM_LOCATIONS) where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core43
       (gl_MAX_UNIFORM_LOCATIONS)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions