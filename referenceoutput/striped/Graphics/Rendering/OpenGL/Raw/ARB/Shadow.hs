{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.Shadow
       (gl_TEXTURE_COMPARE_MODE, gl_TEXTURE_COMPARE_FUNC,
        gl_COMPARE_R_TO_TEXTURE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_COMPARE_MODE :: GLenum
gl_TEXTURE_COMPARE_MODE = 34892
 
gl_TEXTURE_COMPARE_FUNC :: GLenum
gl_TEXTURE_COMPARE_FUNC = 34893
 
gl_COMPARE_R_TO_TEXTURE :: GLenum
gl_COMPARE_R_TO_TEXTURE = 34894