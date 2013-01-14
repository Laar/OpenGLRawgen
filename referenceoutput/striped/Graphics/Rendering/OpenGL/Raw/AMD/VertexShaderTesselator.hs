{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.VertexShaderTesselator
       (glTessellationMode, glTessellationFactor,
        gl_UNSIGNED_INT_SAMPLER_BUFFER, gl_TESSELLATION_MODE,
        gl_TESSELLATION_FACTOR, gl_SAMPLER_BUFFER, gl_INT_SAMPLER_BUFFER,
        gl_DISCRETE, gl_CONTINUOUS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTessellationMode #-}
 
ptr_glTessellationMode :: FunPtr a
ptr_glTessellationMode
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_vertex_shader_tesselator"
        "glTessellationModeAMD"
 
glTessellationMode :: GLenum -> IO ()
glTessellationMode = dyn_glTessellationMode ptr_glTessellationMode
 
foreign import CALLCONV unsafe "dynamic" dyn_glTessellationMode ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glTessellationFactor #-}
 
ptr_glTessellationFactor :: FunPtr a
ptr_glTessellationFactor
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_vertex_shader_tesselator"
        "glTessellationFactorAMD"
 
glTessellationFactor :: GLfloat -> IO ()
glTessellationFactor
  = dyn_glTessellationFactor ptr_glTessellationFactor
 
foreign import CALLCONV unsafe "dynamic" dyn_glTessellationFactor ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
gl_UNSIGNED_INT_SAMPLER_BUFFER :: GLenum
gl_UNSIGNED_INT_SAMPLER_BUFFER = 36867
 
gl_TESSELLATION_MODE :: GLenum
gl_TESSELLATION_MODE = 36868
 
gl_TESSELLATION_FACTOR :: GLenum
gl_TESSELLATION_FACTOR = 36869
 
gl_SAMPLER_BUFFER :: GLenum
gl_SAMPLER_BUFFER = 36865
 
gl_INT_SAMPLER_BUFFER :: GLenum
gl_INT_SAMPLER_BUFFER = 36866
 
gl_DISCRETE :: GLenum
gl_DISCRETE = 36870
 
gl_CONTINUOUS :: GLenum
gl_CONTINUOUS = 36871