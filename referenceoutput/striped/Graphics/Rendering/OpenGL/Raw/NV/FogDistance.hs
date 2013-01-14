{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.FogDistance
       (gl_FOG_DISTANCE_MODE, gl_EYE_RADIAL, gl_EYE_PLANE_ABSOLUTE,
        gl_EYE_PLANE)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11Compatibility
       (gl_EYE_PLANE)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_FOG_DISTANCE_MODE :: GLenum
gl_FOG_DISTANCE_MODE = 34138
 
gl_EYE_RADIAL :: GLenum
gl_EYE_RADIAL = 34139
 
gl_EYE_PLANE_ABSOLUTE :: GLenum
gl_EYE_PLANE_ABSOLUTE = 34140