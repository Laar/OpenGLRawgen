{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.RescaleNormal
       (gl_RESCALE_NORMAL_EXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_RESCALE_NORMAL_EXT :: GLenum
gl_RESCALE_NORMAL_EXT = 32826