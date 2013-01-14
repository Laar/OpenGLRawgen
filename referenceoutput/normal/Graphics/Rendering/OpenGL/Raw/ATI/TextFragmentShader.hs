{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.TextFragmentShader
       (gl_TEXT_FRAGMENT_SHADER_ATI) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TEXT_FRAGMENT_SHADER_ATI :: GLenum
gl_TEXT_FRAGMENT_SHADER_ATI = 33280