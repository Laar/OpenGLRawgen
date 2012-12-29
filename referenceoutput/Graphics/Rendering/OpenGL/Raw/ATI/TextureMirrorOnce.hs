{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.TextureMirrorOnce
       (gl_MIRROR_CLAMP_TO_EDGE_ATI, gl_MIRROR_CLAMP_ATI) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MIRROR_CLAMP_TO_EDGE_ATI :: GLenum
gl_MIRROR_CLAMP_TO_EDGE_ATI = 34627
 
gl_MIRROR_CLAMP_ATI :: GLenum
gl_MIRROR_CLAMP_ATI = 34626