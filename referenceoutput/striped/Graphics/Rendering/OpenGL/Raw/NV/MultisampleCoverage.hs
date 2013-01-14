{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.MultisampleCoverage
       (gl_COVERAGE_SAMPLES, gl_COLOR_SAMPLES) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_COVERAGE_SAMPLES :: GLenum
gl_COVERAGE_SAMPLES = 32937
 
gl_COLOR_SAMPLES :: GLenum
gl_COLOR_SAMPLES = 36384