{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.ExplicitMultisample
       (glTexRenderbuffer, glSampleMaskIndexed, glGetMultisamplefv,
        gl_UNSIGNED_INT_SAMPLER_RENDERBUFFER, gl_TEXTURE_RENDERBUFFER,
        gl_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING,
        gl_TEXTURE_BINDING_RENDERBUFFER, gl_SAMPLE_POSITION,
        gl_SAMPLE_MASK_VALUE, gl_SAMPLE_MASK, gl_SAMPLER_RENDERBUFFER,
        gl_MAX_SAMPLE_MASK_WORDS, gl_INT_SAMPLER_RENDERBUFFER)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexRenderbuffer #-}
 
ptr_glTexRenderbuffer :: FunPtr a
ptr_glTexRenderbuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_explicit_multisample"
        "glTexRenderbufferNV"
 
glTexRenderbuffer :: GLenum -> GLuint -> IO ()
glTexRenderbuffer = dyn_glTexRenderbuffer ptr_glTexRenderbuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexRenderbuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glSampleMaskIndexed #-}
 
ptr_glSampleMaskIndexed :: FunPtr a
ptr_glSampleMaskIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_explicit_multisample"
        "glSampleMaskIndexedNV"
 
glSampleMaskIndexed :: GLuint -> GLbitfield -> IO ()
glSampleMaskIndexed
  = dyn_glSampleMaskIndexed ptr_glSampleMaskIndexed
 
foreign import CALLCONV unsafe "dynamic" dyn_glSampleMaskIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLbitfield -> IO ())
 
{-# NOINLINE ptr_glGetMultisamplefv #-}
 
ptr_glGetMultisamplefv :: FunPtr a
ptr_glGetMultisamplefv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_explicit_multisample"
        "glGetMultisamplefvNV"
 
glGetMultisamplefv :: GLenum -> GLuint -> Ptr GLfloat -> IO ()
glGetMultisamplefv = dyn_glGetMultisamplefv ptr_glGetMultisamplefv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultisamplefv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
gl_UNSIGNED_INT_SAMPLER_RENDERBUFFER :: GLenum
gl_UNSIGNED_INT_SAMPLER_RENDERBUFFER = 36440
 
gl_TEXTURE_RENDERBUFFER :: GLenum
gl_TEXTURE_RENDERBUFFER = 36437
 
gl_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING :: GLenum
gl_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING = 36436
 
gl_TEXTURE_BINDING_RENDERBUFFER :: GLenum
gl_TEXTURE_BINDING_RENDERBUFFER = 36435
 
gl_SAMPLE_POSITION :: GLenum
gl_SAMPLE_POSITION = 36432
 
gl_SAMPLE_MASK_VALUE :: GLenum
gl_SAMPLE_MASK_VALUE = 36434
 
gl_SAMPLE_MASK :: GLenum
gl_SAMPLE_MASK = 36433
 
gl_SAMPLER_RENDERBUFFER :: GLenum
gl_SAMPLER_RENDERBUFFER = 36438
 
gl_MAX_SAMPLE_MASK_WORDS :: GLenum
gl_MAX_SAMPLE_MASK_WORDS = 36441
 
gl_INT_SAMPLER_RENDERBUFFER :: GLenum
gl_INT_SAMPLER_RENDERBUFFER = 36439