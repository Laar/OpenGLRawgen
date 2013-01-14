{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.BlendMinmaxFactor
       (gl_FACTOR_MIN, gl_FACTOR_MAX) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_FACTOR_MIN :: GLenum
gl_FACTOR_MIN = 36892
 
gl_FACTOR_MAX :: GLenum
gl_FACTOR_MAX = 36893