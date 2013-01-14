{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.FloatBuffer
       (gl_TEXTURE_FLOAT_COMPONENTS, gl_FLOAT_R, gl_FLOAT_RG,
        gl_FLOAT_RGB, gl_FLOAT_RGBA, gl_FLOAT_RGBA_MODE, gl_FLOAT_RGBA32,
        gl_FLOAT_RGBA16, gl_FLOAT_RGB32, gl_FLOAT_RGB16, gl_FLOAT_RG32,
        gl_FLOAT_RG16, gl_FLOAT_R32, gl_FLOAT_R16,
        gl_FLOAT_CLEAR_COLOR_VALUE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXTURE_FLOAT_COMPONENTS :: GLenum
gl_TEXTURE_FLOAT_COMPONENTS = 34956
 
gl_FLOAT_R :: GLenum
gl_FLOAT_R = 34944
 
gl_FLOAT_RG :: GLenum
gl_FLOAT_RG = 34945
 
gl_FLOAT_RGB :: GLenum
gl_FLOAT_RGB = 34946
 
gl_FLOAT_RGBA :: GLenum
gl_FLOAT_RGBA = 34947
 
gl_FLOAT_RGBA_MODE :: GLenum
gl_FLOAT_RGBA_MODE = 34958
 
gl_FLOAT_RGBA32 :: GLenum
gl_FLOAT_RGBA32 = 34955
 
gl_FLOAT_RGBA16 :: GLenum
gl_FLOAT_RGBA16 = 34954
 
gl_FLOAT_RGB32 :: GLenum
gl_FLOAT_RGB32 = 34953
 
gl_FLOAT_RGB16 :: GLenum
gl_FLOAT_RGB16 = 34952
 
gl_FLOAT_RG32 :: GLenum
gl_FLOAT_RG32 = 34951
 
gl_FLOAT_RG16 :: GLenum
gl_FLOAT_RG16 = 34950
 
gl_FLOAT_R32 :: GLenum
gl_FLOAT_R32 = 34949
 
gl_FLOAT_R16 :: GLenum
gl_FLOAT_R16 = 34948
 
gl_FLOAT_CLEAR_COLOR_VALUE :: GLenum
gl_FLOAT_CLEAR_COLOR_VALUE = 34957