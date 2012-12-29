{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.FloatBuffer
       (gl_FLOAT_RGBA_MODE_NV, gl_FLOAT_CLEAR_COLOR_VALUE_NV,
        gl_TEXTURE_FLOAT_COMPONENTS_NV, gl_FLOAT_RGBA32_NV,
        gl_FLOAT_RGBA16_NV, gl_FLOAT_RGB32_NV, gl_FLOAT_RGB16_NV,
        gl_FLOAT_RG32_NV, gl_FLOAT_RG16_NV, gl_FLOAT_R32_NV,
        gl_FLOAT_R16_NV, gl_FLOAT_RGBA_NV, gl_FLOAT_RGB_NV, gl_FLOAT_RG_NV,
        gl_FLOAT_R_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_FLOAT_RGBA_MODE_NV :: GLenum
gl_FLOAT_RGBA_MODE_NV = 34958
 
gl_FLOAT_CLEAR_COLOR_VALUE_NV :: GLenum
gl_FLOAT_CLEAR_COLOR_VALUE_NV = 34957
 
gl_TEXTURE_FLOAT_COMPONENTS_NV :: GLenum
gl_TEXTURE_FLOAT_COMPONENTS_NV = 34956
 
gl_FLOAT_RGBA32_NV :: GLenum
gl_FLOAT_RGBA32_NV = 34955
 
gl_FLOAT_RGBA16_NV :: GLenum
gl_FLOAT_RGBA16_NV = 34954
 
gl_FLOAT_RGB32_NV :: GLenum
gl_FLOAT_RGB32_NV = 34953
 
gl_FLOAT_RGB16_NV :: GLenum
gl_FLOAT_RGB16_NV = 34952
 
gl_FLOAT_RG32_NV :: GLenum
gl_FLOAT_RG32_NV = 34951
 
gl_FLOAT_RG16_NV :: GLenum
gl_FLOAT_RG16_NV = 34950
 
gl_FLOAT_R32_NV :: GLenum
gl_FLOAT_R32_NV = 34949
 
gl_FLOAT_R16_NV :: GLenum
gl_FLOAT_R16_NV = 34948
 
gl_FLOAT_RGBA_NV :: GLenum
gl_FLOAT_RGBA_NV = 34947
 
gl_FLOAT_RGB_NV :: GLenum
gl_FLOAT_RGB_NV = 34946
 
gl_FLOAT_RG_NV :: GLenum
gl_FLOAT_RG_NV = 34945
 
gl_FLOAT_R_NV :: GLenum
gl_FLOAT_R_NV = 34944