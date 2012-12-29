{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.FragmentShader
       (gl_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB,
        gl_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB, gl_FRAGMENT_SHADER_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB :: GLenum
gl_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB = 35723
 
gl_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB :: GLenum
gl_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB = 35657
 
gl_FRAGMENT_SHADER_ARB :: GLenum
gl_FRAGMENT_SHADER_ARB = 35632