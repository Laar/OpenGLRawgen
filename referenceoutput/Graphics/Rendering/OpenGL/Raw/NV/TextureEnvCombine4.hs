{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.TextureEnvCombine4
       (gl_SOURCE3_RGB_NV, gl_SOURCE3_ALPHA_NV, gl_OPERAND3_RGB_NV,
        gl_OPERAND3_ALPHA_NV, gl_COMBINE4_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_SOURCE3_RGB_NV :: GLenum
gl_SOURCE3_RGB_NV = 34179
 
gl_SOURCE3_ALPHA_NV :: GLenum
gl_SOURCE3_ALPHA_NV = 34187
 
gl_OPERAND3_RGB_NV :: GLenum
gl_OPERAND3_RGB_NV = 34195
 
gl_OPERAND3_ALPHA_NV :: GLenum
gl_OPERAND3_ALPHA_NV = 34203
 
gl_COMBINE4_NV :: GLenum
gl_COMBINE4_NV = 34051