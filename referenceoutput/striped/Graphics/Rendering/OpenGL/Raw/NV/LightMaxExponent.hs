{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.LightMaxExponent
       (gl_MAX_SPOT_EXPONENT, gl_MAX_SHININESS) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MAX_SPOT_EXPONENT :: GLenum
gl_MAX_SPOT_EXPONENT = 34053
 
gl_MAX_SHININESS :: GLenum
gl_MAX_SHININESS = 34052