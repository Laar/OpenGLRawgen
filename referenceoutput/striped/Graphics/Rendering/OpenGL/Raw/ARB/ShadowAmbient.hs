{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.ShadowAmbient
       (gl_TEXTURE_COMPARE_FAIL_VALUE) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_COMPARE_FAIL_VALUE :: GLenum
gl_TEXTURE_COMPARE_FAIL_VALUE = 32959