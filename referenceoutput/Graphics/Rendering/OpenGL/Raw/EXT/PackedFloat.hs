{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PackedFloat
       (gl_UNSIGNED_INT_10F_11F_11F_REV_EXT,
        gl_RGBA_SIGNED_COMPONENTS_EXT, gl_R11F_G11F_B10F_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_UNSIGNED_INT_10F_11F_11F_REV_EXT :: GLenum
gl_UNSIGNED_INT_10F_11F_11F_REV_EXT = 35899
 
gl_RGBA_SIGNED_COMPONENTS_EXT :: GLenum
gl_RGBA_SIGNED_COMPONENTS_EXT = 35900
 
gl_R11F_G11F_B10F_EXT :: GLenum
gl_R11F_G11F_B10F_EXT = 35898