{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.FragmentShader
       (gl_MAX_FRAGMENT_UNIFORM_COMPONENTS,
        gl_FRAGMENT_SHADER_DERIVATIVE_HINT, gl_FRAGMENT_SHADER)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MAX_FRAGMENT_UNIFORM_COMPONENTS :: GLenum
gl_MAX_FRAGMENT_UNIFORM_COMPONENTS = 35657
 
gl_FRAGMENT_SHADER_DERIVATIVE_HINT :: GLenum
gl_FRAGMENT_SHADER_DERIVATIVE_HINT = 35723
 
gl_FRAGMENT_SHADER :: GLenum
gl_FRAGMENT_SHADER = 35632