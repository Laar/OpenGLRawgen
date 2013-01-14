{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.TextFragmentShader
       (gl_TEXT_FRAGMENT_SHADER) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXT_FRAGMENT_SHADER :: GLenum
gl_TEXT_FRAGMENT_SHADER = 33280