{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.ClipVolumeHint
       (gl_CLIP_VOLUME_CLIPPING_HINT_EXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_CLIP_VOLUME_CLIPPING_HINT_EXT :: GLenum
gl_CLIP_VOLUME_CLIPPING_HINT_EXT = 33008