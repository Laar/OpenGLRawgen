{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.ClipVolumeHint
       (gl_CLIP_VOLUME_CLIPPING_HINT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_CLIP_VOLUME_CLIPPING_HINT :: GLenum
gl_CLIP_VOLUME_CLIPPING_HINT = 33008