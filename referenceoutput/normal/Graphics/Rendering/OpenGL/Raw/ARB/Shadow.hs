{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.Shadow
       (gl_TEXTURE_COMPARE_MODE_ARB, gl_TEXTURE_COMPARE_FUNC_ARB,
        gl_COMPARE_R_TO_TEXTURE_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_COMPARE_MODE_ARB :: GLenum
gl_TEXTURE_COMPARE_MODE_ARB = 34892
 
gl_TEXTURE_COMPARE_FUNC_ARB :: GLenum
gl_TEXTURE_COMPARE_FUNC_ARB = 34893
 
gl_COMPARE_R_TO_TEXTURE_ARB :: GLenum
gl_COMPARE_R_TO_TEXTURE_ARB = 34894