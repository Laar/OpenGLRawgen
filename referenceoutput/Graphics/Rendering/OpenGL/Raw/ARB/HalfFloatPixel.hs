{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.HalfFloatPixel
       (gl_HALF_FLOAT_ARB) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_HALF_FLOAT_ARB :: GLenum
gl_HALF_FLOAT_ARB = 5131