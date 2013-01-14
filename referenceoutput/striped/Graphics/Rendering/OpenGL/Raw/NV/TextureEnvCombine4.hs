{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TextureEnvCombine4
       (gl_SOURCE3_RGB, gl_SOURCE3_ALPHA, gl_OPERAND3_RGB,
        gl_OPERAND3_ALPHA, gl_COMBINE4)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_SOURCE3_RGB :: GLenum
gl_SOURCE3_RGB = 34179
 
gl_SOURCE3_ALPHA :: GLenum
gl_SOURCE3_ALPHA = 34187
 
gl_OPERAND3_RGB :: GLenum
gl_OPERAND3_RGB = 34195
 
gl_OPERAND3_ALPHA :: GLenum
gl_OPERAND3_ALPHA = 34203
 
gl_COMBINE4 :: GLenum
gl_COMBINE4 = 34051