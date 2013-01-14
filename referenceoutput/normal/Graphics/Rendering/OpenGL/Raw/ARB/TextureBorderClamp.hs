{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.TextureBorderClamp
       (gl_CLAMP_TO_BORDER_ARB) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_CLAMP_TO_BORDER_ARB :: GLenum
gl_CLAMP_TO_BORDER_ARB = 33069