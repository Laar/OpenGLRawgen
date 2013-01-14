{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.DepthClampSeparate
       (gl_DEPTH_CLAMP_NEAR, gl_DEPTH_CLAMP_FAR) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_DEPTH_CLAMP_NEAR :: GLenum
gl_DEPTH_CLAMP_NEAR = 36894
 
gl_DEPTH_CLAMP_FAR :: GLenum
gl_DEPTH_CLAMP_FAR = 36895