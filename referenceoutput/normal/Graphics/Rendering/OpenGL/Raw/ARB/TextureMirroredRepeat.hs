{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureMirroredRepeat
       (gl_MIRRORED_REPEAT_ARB) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MIRRORED_REPEAT_ARB :: GLenum
gl_MIRRORED_REPEAT_ARB = 33648