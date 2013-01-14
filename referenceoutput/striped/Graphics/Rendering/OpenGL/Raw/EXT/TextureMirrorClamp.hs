{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.TextureMirrorClamp
       (gl_MIRROR_CLAMP_TO_EDGE, gl_MIRROR_CLAMP_TO_BORDER,
        gl_MIRROR_CLAMP)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MIRROR_CLAMP_TO_EDGE :: GLenum
gl_MIRROR_CLAMP_TO_EDGE = 34627
 
gl_MIRROR_CLAMP_TO_BORDER :: GLenum
gl_MIRROR_CLAMP_TO_BORDER = 35090
 
gl_MIRROR_CLAMP :: GLenum
gl_MIRROR_CLAMP = 34626