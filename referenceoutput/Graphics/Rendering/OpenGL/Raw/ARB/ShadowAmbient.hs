{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.ShadowAmbient
       (gl_TEXTURE_COMPARE_FAIL_VALUE_ARB) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_COMPARE_FAIL_VALUE_ARB :: GLenum
gl_TEXTURE_COMPARE_FAIL_VALUE_ARB = 32959