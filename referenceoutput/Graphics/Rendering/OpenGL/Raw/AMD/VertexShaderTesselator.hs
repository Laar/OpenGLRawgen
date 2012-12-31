{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.VertexShaderTesselator
       (glTessellationModeAMD, glTessellationFactorAMD,
        gl_UNSIGNED_INT_SAMPLER_BUFFER_AMD, gl_TESSELLATION_MODE_AMD,
        gl_TESSELLATION_FACTOR_AMD, gl_SAMPLER_BUFFER_AMD,
        gl_INT_SAMPLER_BUFFER_AMD, gl_DISCRETE_AMD, gl_CONTINUOUS_AMD)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTessellationModeAMD #-}
 
ptr_glTessellationModeAMD :: FunPtr a
ptr_glTessellationModeAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_vertex_shader_tesselator"
        "glTessellationModeAMD"
 
glTessellationModeAMD :: GLenum -> IO ()
glTessellationModeAMD
  = dyn_glTessellationModeAMD ptr_glTessellationModeAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glTessellationModeAMD
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glTessellationFactorAMD #-}
 
ptr_glTessellationFactorAMD :: FunPtr a
ptr_glTessellationFactorAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_vertex_shader_tesselator"
        "glTessellationFactorAMD"
 
glTessellationFactorAMD :: GLfloat -> IO ()
glTessellationFactorAMD
  = dyn_glTessellationFactorAMD ptr_glTessellationFactorAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glTessellationFactorAMD
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
gl_UNSIGNED_INT_SAMPLER_BUFFER_AMD :: GLenum
gl_UNSIGNED_INT_SAMPLER_BUFFER_AMD = 36867
 
gl_TESSELLATION_MODE_AMD :: GLenum
gl_TESSELLATION_MODE_AMD = 36868
 
gl_TESSELLATION_FACTOR_AMD :: GLenum
gl_TESSELLATION_FACTOR_AMD = 36869
 
gl_SAMPLER_BUFFER_AMD :: GLenum
gl_SAMPLER_BUFFER_AMD = 36865
 
gl_INT_SAMPLER_BUFFER_AMD :: GLenum
gl_INT_SAMPLER_BUFFER_AMD = 36866
 
gl_DISCRETE_AMD :: GLenum
gl_DISCRETE_AMD = 36870
 
gl_CONTINUOUS_AMD :: GLenum
gl_CONTINUOUS_AMD = 36871