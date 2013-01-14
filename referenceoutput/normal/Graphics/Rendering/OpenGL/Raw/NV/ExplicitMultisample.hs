{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.ExplicitMultisample
       (glTexRenderbufferNV, glSampleMaskIndexedNV, glGetMultisamplefvNV,
        gl_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV,
        gl_TEXTURE_RENDERBUFFER_NV,
        gl_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV,
        gl_TEXTURE_BINDING_RENDERBUFFER_NV, gl_SAMPLE_POSITION_NV,
        gl_SAMPLE_MASK_VALUE_NV, gl_SAMPLE_MASK_NV,
        gl_SAMPLER_RENDERBUFFER_NV, gl_MAX_SAMPLE_MASK_WORDS_NV,
        gl_INT_SAMPLER_RENDERBUFFER_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexRenderbufferNV #-}
 
ptr_glTexRenderbufferNV :: FunPtr a
ptr_glTexRenderbufferNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_explicit_multisample"
        "glTexRenderbufferNV"
 
glTexRenderbufferNV :: GLenum -> GLuint -> IO ()
glTexRenderbufferNV
  = dyn_glTexRenderbufferNV ptr_glTexRenderbufferNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexRenderbufferNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glSampleMaskIndexedNV #-}
 
ptr_glSampleMaskIndexedNV :: FunPtr a
ptr_glSampleMaskIndexedNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_explicit_multisample"
        "glSampleMaskIndexedNV"
 
glSampleMaskIndexedNV :: GLuint -> GLbitfield -> IO ()
glSampleMaskIndexedNV
  = dyn_glSampleMaskIndexedNV ptr_glSampleMaskIndexedNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glSampleMaskIndexedNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLbitfield -> IO ())
 
{-# NOINLINE ptr_glGetMultisamplefvNV #-}
 
ptr_glGetMultisamplefvNV :: FunPtr a
ptr_glGetMultisamplefvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_explicit_multisample"
        "glGetMultisamplefvNV"
 
glGetMultisamplefvNV :: GLenum -> GLuint -> Ptr GLfloat -> IO ()
glGetMultisamplefvNV
  = dyn_glGetMultisamplefvNV ptr_glGetMultisamplefvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultisamplefvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
gl_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV :: GLenum
gl_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV = 36440
 
gl_TEXTURE_RENDERBUFFER_NV :: GLenum
gl_TEXTURE_RENDERBUFFER_NV = 36437
 
gl_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV :: GLenum
gl_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV = 36436
 
gl_TEXTURE_BINDING_RENDERBUFFER_NV :: GLenum
gl_TEXTURE_BINDING_RENDERBUFFER_NV = 36435
 
gl_SAMPLE_POSITION_NV :: GLenum
gl_SAMPLE_POSITION_NV = 36432
 
gl_SAMPLE_MASK_VALUE_NV :: GLenum
gl_SAMPLE_MASK_VALUE_NV = 36434
 
gl_SAMPLE_MASK_NV :: GLenum
gl_SAMPLE_MASK_NV = 36433
 
gl_SAMPLER_RENDERBUFFER_NV :: GLenum
gl_SAMPLER_RENDERBUFFER_NV = 36438
 
gl_MAX_SAMPLE_MASK_WORDS_NV :: GLenum
gl_MAX_SAMPLE_MASK_WORDS_NV = 36441
 
gl_INT_SAMPLER_RENDERBUFFER_NV :: GLenum
gl_INT_SAMPLER_RENDERBUFFER_NV = 36439