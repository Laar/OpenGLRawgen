{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PackedFloat
       (gl_UNSIGNED_INT_10F_11F_11F_REV, gl_RGBA_SIGNED_COMPONENTS,
        gl_R11F_G11F_B10F)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNSIGNED_INT_10F_11F_11F_REV :: GLenum
gl_UNSIGNED_INT_10F_11F_11F_REV = 35899
 
gl_RGBA_SIGNED_COMPONENTS :: GLenum
gl_RGBA_SIGNED_COMPONENTS = 35900
 
gl_R11F_G11F_B10F :: GLenum
gl_R11F_G11F_B10F = 35898