{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.LightMaxExponent
       (gl_MAX_SPOT_EXPONENT_NV, gl_MAX_SHININESS_NV) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MAX_SPOT_EXPONENT_NV :: GLenum
gl_MAX_SPOT_EXPONENT_NV = 34053
 
gl_MAX_SHININESS_NV :: GLenum
gl_MAX_SHININESS_NV = 34052