{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.DepthClampSeparate
       (gl_DEPTH_CLAMP_FAR_AMD, gl_DEPTH_CLAMP_NEAR_AMD) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_DEPTH_CLAMP_FAR_AMD :: GLenum
gl_DEPTH_CLAMP_FAR_AMD = 36895
 
gl_DEPTH_CLAMP_NEAR_AMD :: GLenum
gl_DEPTH_CLAMP_NEAR_AMD = 36894