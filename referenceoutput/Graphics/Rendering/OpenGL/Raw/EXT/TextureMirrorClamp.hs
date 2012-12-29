{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureMirrorClamp
       (gl_MIRROR_CLAMP_TO_BORDER_EXT, gl_MIRROR_CLAMP_TO_EDGE_EXT,
        gl_MIRROR_CLAMP_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MIRROR_CLAMP_TO_BORDER_EXT :: GLenum
gl_MIRROR_CLAMP_TO_BORDER_EXT = 35090
 
gl_MIRROR_CLAMP_TO_EDGE_EXT :: GLenum
gl_MIRROR_CLAMP_TO_EDGE_EXT = 34627
 
gl_MIRROR_CLAMP_EXT :: GLenum
gl_MIRROR_CLAMP_EXT = 34626