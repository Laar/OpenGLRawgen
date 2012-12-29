{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.BlendMinmaxFactor
       (gl_FACTOR_MAX_AMD, gl_FACTOR_MIN_AMD) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_FACTOR_MAX_AMD :: GLenum
gl_FACTOR_MAX_AMD = 36893
 
gl_FACTOR_MIN_AMD :: GLenum
gl_FACTOR_MIN_AMD = 36892