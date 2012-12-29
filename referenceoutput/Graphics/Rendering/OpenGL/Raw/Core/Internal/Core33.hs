{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core33
       (glVertexAttribDivisor, glVertexAttribP4uiv, glVertexAttribP4ui,
        glVertexAttribP3uiv, glVertexAttribP3ui, glVertexAttribP2uiv,
        glVertexAttribP2ui, glVertexAttribP1uiv, glVertexAttribP1ui,
        glSecondaryColorP3uiv, glSecondaryColorP3ui, glColorP4uiv,
        glColorP4ui, glColorP3uiv, glColorP3ui, glNormalP3uiv,
        glNormalP3ui, glMultiTexCoordP4uiv, glMultiTexCoordP4ui,
        glMultiTexCoordP3uiv, glMultiTexCoordP3ui, glMultiTexCoordP2uiv,
        glMultiTexCoordP2ui, glMultiTexCoordP1uiv, glMultiTexCoordP1ui,
        glTexCoordP4uiv, glTexCoordP4ui, glTexCoordP3uiv, glTexCoordP3ui,
        glTexCoordP2uiv, glTexCoordP2ui, glTexCoordP1uiv, glTexCoordP1ui,
        glVertexP4uiv, glVertexP4ui, glVertexP3uiv, glVertexP3ui,
        glVertexP2uiv, glVertexP2ui, glGetQueryObjectui64v,
        glGetQueryObjecti64v, glQueryCounter, glGetSamplerParameterIuiv,
        glGetSamplerParameterfv, glGetSamplerParameterIiv,
        glGetSamplerParameteriv, glSamplerParameterIuiv,
        glSamplerParameterIiv, glSamplerParameterfv, glSamplerParameterf,
        glSamplerParameteriv, glSamplerParameteri, glBindSampler,
        glIsSampler, glDeleteSamplers, glGenSamplers, glGetFragDataIndex,
        glBindFragDataLocationIndexed, gl_INT_2_10_10_10_REV, gl_TIMESTAMP,
        gl_TIME_ELAPSED, gl_TEXTURE_SWIZZLE_RGBA, gl_TEXTURE_SWIZZLE_A,
        gl_TEXTURE_SWIZZLE_B, gl_TEXTURE_SWIZZLE_G, gl_TEXTURE_SWIZZLE_R,
        gl_RGB10_A2UI, gl_SAMPLER_BINDING, gl_ANY_SAMPLES_PASSED,
        gl_MAX_DUAL_SOURCE_DRAW_BUFFERS, gl_ONE_MINUS_SRC1_ALPHA,
        gl_ONE_MINUS_SRC1_COLOR, gl_SRC1_COLOR,
        gl_VERTEX_ATTRIB_ARRAY_DIVISOR)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribDivisor #-}
 
ptr_glVertexAttribDivisor :: FunPtr a
ptr_glVertexAttribDivisor
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexAttribDivisor"
 
glVertexAttribDivisor :: GLuint -> GLuint -> IO ()
glVertexAttribDivisor
  = dyn_glVertexAttribDivisor ptr_glVertexAttribDivisor
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribDivisor
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribP4uiv #-}
 
ptr_glVertexAttribP4uiv :: FunPtr a
ptr_glVertexAttribP4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexAttribP4uiv"
 
glVertexAttribP4uiv ::
                    GLuint -> GLenum -> GLboolean -> Ptr GLuint -> IO ()
glVertexAttribP4uiv
  = dyn_glVertexAttribP4uiv ptr_glVertexAttribP4uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribP4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLboolean -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribP4ui #-}
 
ptr_glVertexAttribP4ui :: FunPtr a
ptr_glVertexAttribP4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexAttribP4ui"
 
glVertexAttribP4ui ::
                   GLuint -> GLenum -> GLboolean -> GLuint -> IO ()
glVertexAttribP4ui = dyn_glVertexAttribP4ui ptr_glVertexAttribP4ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribP4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLboolean -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribP3uiv #-}
 
ptr_glVertexAttribP3uiv :: FunPtr a
ptr_glVertexAttribP3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexAttribP3uiv"
 
glVertexAttribP3uiv ::
                    GLuint -> GLenum -> GLboolean -> Ptr GLuint -> IO ()
glVertexAttribP3uiv
  = dyn_glVertexAttribP3uiv ptr_glVertexAttribP3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribP3uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLboolean -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribP3ui #-}
 
ptr_glVertexAttribP3ui :: FunPtr a
ptr_glVertexAttribP3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexAttribP3ui"
 
glVertexAttribP3ui ::
                   GLuint -> GLenum -> GLboolean -> GLuint -> IO ()
glVertexAttribP3ui = dyn_glVertexAttribP3ui ptr_glVertexAttribP3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribP3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLboolean -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribP2uiv #-}
 
ptr_glVertexAttribP2uiv :: FunPtr a
ptr_glVertexAttribP2uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexAttribP2uiv"
 
glVertexAttribP2uiv ::
                    GLuint -> GLenum -> GLboolean -> Ptr GLuint -> IO ()
glVertexAttribP2uiv
  = dyn_glVertexAttribP2uiv ptr_glVertexAttribP2uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribP2uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLboolean -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribP2ui #-}
 
ptr_glVertexAttribP2ui :: FunPtr a
ptr_glVertexAttribP2ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexAttribP2ui"
 
glVertexAttribP2ui ::
                   GLuint -> GLenum -> GLboolean -> GLuint -> IO ()
glVertexAttribP2ui = dyn_glVertexAttribP2ui ptr_glVertexAttribP2ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribP2ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLboolean -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribP1uiv #-}
 
ptr_glVertexAttribP1uiv :: FunPtr a
ptr_glVertexAttribP1uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexAttribP1uiv"
 
glVertexAttribP1uiv ::
                    GLuint -> GLenum -> GLboolean -> Ptr GLuint -> IO ()
glVertexAttribP1uiv
  = dyn_glVertexAttribP1uiv ptr_glVertexAttribP1uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribP1uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLboolean -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribP1ui #-}
 
ptr_glVertexAttribP1ui :: FunPtr a
ptr_glVertexAttribP1ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexAttribP1ui"
 
glVertexAttribP1ui ::
                   GLuint -> GLenum -> GLboolean -> GLuint -> IO ()
glVertexAttribP1ui = dyn_glVertexAttribP1ui ptr_glVertexAttribP1ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribP1ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLboolean -> GLuint -> IO ())
 
{-# NOINLINE ptr_glSecondaryColorP3uiv #-}
 
ptr_glSecondaryColorP3uiv :: FunPtr a
ptr_glSecondaryColorP3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glSecondaryColorP3uiv"
 
glSecondaryColorP3uiv :: GLenum -> Ptr GLuint -> IO ()
glSecondaryColorP3uiv
  = dyn_glSecondaryColorP3uiv ptr_glSecondaryColorP3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColorP3uiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glSecondaryColorP3ui #-}
 
ptr_glSecondaryColorP3ui :: FunPtr a
ptr_glSecondaryColorP3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glSecondaryColorP3ui"
 
glSecondaryColorP3ui :: GLenum -> GLuint -> IO ()
glSecondaryColorP3ui
  = dyn_glSecondaryColorP3ui ptr_glSecondaryColorP3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColorP3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glColorP4uiv #-}
 
ptr_glColorP4uiv :: FunPtr a
ptr_glColorP4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glColorP4uiv"
 
glColorP4uiv :: GLenum -> Ptr GLuint -> IO ()
glColorP4uiv = dyn_glColorP4uiv ptr_glColorP4uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorP4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glColorP4ui #-}
 
ptr_glColorP4ui :: FunPtr a
ptr_glColorP4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glColorP4ui"
 
glColorP4ui :: GLenum -> GLuint -> IO ()
glColorP4ui = dyn_glColorP4ui ptr_glColorP4ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorP4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glColorP3uiv #-}
 
ptr_glColorP3uiv :: FunPtr a
ptr_glColorP3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glColorP3uiv"
 
glColorP3uiv :: GLenum -> Ptr GLuint -> IO ()
glColorP3uiv = dyn_glColorP3uiv ptr_glColorP3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorP3uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glColorP3ui #-}
 
ptr_glColorP3ui :: FunPtr a
ptr_glColorP3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glColorP3ui"
 
glColorP3ui :: GLenum -> GLuint -> IO ()
glColorP3ui = dyn_glColorP3ui ptr_glColorP3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorP3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glNormalP3uiv #-}
 
ptr_glNormalP3uiv :: FunPtr a
ptr_glNormalP3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glNormalP3uiv"
 
glNormalP3uiv :: GLenum -> Ptr GLuint -> IO ()
glNormalP3uiv = dyn_glNormalP3uiv ptr_glNormalP3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalP3uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glNormalP3ui #-}
 
ptr_glNormalP3ui :: FunPtr a
ptr_glNormalP3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glNormalP3ui"
 
glNormalP3ui :: GLenum -> GLuint -> IO ()
glNormalP3ui = dyn_glNormalP3ui ptr_glNormalP3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalP3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoordP4uiv #-}
 
ptr_glMultiTexCoordP4uiv :: FunPtr a
ptr_glMultiTexCoordP4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glMultiTexCoordP4uiv"
 
glMultiTexCoordP4uiv :: GLenum -> GLenum -> Ptr GLuint -> IO ()
glMultiTexCoordP4uiv
  = dyn_glMultiTexCoordP4uiv ptr_glMultiTexCoordP4uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoordP4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoordP4ui #-}
 
ptr_glMultiTexCoordP4ui :: FunPtr a
ptr_glMultiTexCoordP4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glMultiTexCoordP4ui"
 
glMultiTexCoordP4ui :: GLenum -> GLenum -> GLuint -> IO ()
glMultiTexCoordP4ui
  = dyn_glMultiTexCoordP4ui ptr_glMultiTexCoordP4ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoordP4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoordP3uiv #-}
 
ptr_glMultiTexCoordP3uiv :: FunPtr a
ptr_glMultiTexCoordP3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glMultiTexCoordP3uiv"
 
glMultiTexCoordP3uiv :: GLenum -> GLenum -> Ptr GLuint -> IO ()
glMultiTexCoordP3uiv
  = dyn_glMultiTexCoordP3uiv ptr_glMultiTexCoordP3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoordP3uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoordP3ui #-}
 
ptr_glMultiTexCoordP3ui :: FunPtr a
ptr_glMultiTexCoordP3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glMultiTexCoordP3ui"
 
glMultiTexCoordP3ui :: GLenum -> GLenum -> GLuint -> IO ()
glMultiTexCoordP3ui
  = dyn_glMultiTexCoordP3ui ptr_glMultiTexCoordP3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoordP3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoordP2uiv #-}
 
ptr_glMultiTexCoordP2uiv :: FunPtr a
ptr_glMultiTexCoordP2uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glMultiTexCoordP2uiv"
 
glMultiTexCoordP2uiv :: GLenum -> GLenum -> Ptr GLuint -> IO ()
glMultiTexCoordP2uiv
  = dyn_glMultiTexCoordP2uiv ptr_glMultiTexCoordP2uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoordP2uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoordP2ui #-}
 
ptr_glMultiTexCoordP2ui :: FunPtr a
ptr_glMultiTexCoordP2ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glMultiTexCoordP2ui"
 
glMultiTexCoordP2ui :: GLenum -> GLenum -> GLuint -> IO ()
glMultiTexCoordP2ui
  = dyn_glMultiTexCoordP2ui ptr_glMultiTexCoordP2ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoordP2ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoordP1uiv #-}
 
ptr_glMultiTexCoordP1uiv :: FunPtr a
ptr_glMultiTexCoordP1uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glMultiTexCoordP1uiv"
 
glMultiTexCoordP1uiv :: GLenum -> GLenum -> Ptr GLuint -> IO ()
glMultiTexCoordP1uiv
  = dyn_glMultiTexCoordP1uiv ptr_glMultiTexCoordP1uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoordP1uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoordP1ui #-}
 
ptr_glMultiTexCoordP1ui :: FunPtr a
ptr_glMultiTexCoordP1ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glMultiTexCoordP1ui"
 
glMultiTexCoordP1ui :: GLenum -> GLenum -> GLuint -> IO ()
glMultiTexCoordP1ui
  = dyn_glMultiTexCoordP1ui ptr_glMultiTexCoordP1ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoordP1ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glTexCoordP4uiv #-}
 
ptr_glTexCoordP4uiv :: FunPtr a
ptr_glTexCoordP4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glTexCoordP4uiv"
 
glTexCoordP4uiv :: GLenum -> Ptr GLuint -> IO ()
glTexCoordP4uiv = dyn_glTexCoordP4uiv ptr_glTexCoordP4uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordP4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glTexCoordP4ui #-}
 
ptr_glTexCoordP4ui :: FunPtr a
ptr_glTexCoordP4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glTexCoordP4ui"
 
glTexCoordP4ui :: GLenum -> GLuint -> IO ()
glTexCoordP4ui = dyn_glTexCoordP4ui ptr_glTexCoordP4ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordP4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glTexCoordP3uiv #-}
 
ptr_glTexCoordP3uiv :: FunPtr a
ptr_glTexCoordP3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glTexCoordP3uiv"
 
glTexCoordP3uiv :: GLenum -> Ptr GLuint -> IO ()
glTexCoordP3uiv = dyn_glTexCoordP3uiv ptr_glTexCoordP3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordP3uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glTexCoordP3ui #-}
 
ptr_glTexCoordP3ui :: FunPtr a
ptr_glTexCoordP3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glTexCoordP3ui"
 
glTexCoordP3ui :: GLenum -> GLuint -> IO ()
glTexCoordP3ui = dyn_glTexCoordP3ui ptr_glTexCoordP3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordP3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glTexCoordP2uiv #-}
 
ptr_glTexCoordP2uiv :: FunPtr a
ptr_glTexCoordP2uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glTexCoordP2uiv"
 
glTexCoordP2uiv :: GLenum -> Ptr GLuint -> IO ()
glTexCoordP2uiv = dyn_glTexCoordP2uiv ptr_glTexCoordP2uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordP2uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glTexCoordP2ui #-}
 
ptr_glTexCoordP2ui :: FunPtr a
ptr_glTexCoordP2ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glTexCoordP2ui"
 
glTexCoordP2ui :: GLenum -> GLuint -> IO ()
glTexCoordP2ui = dyn_glTexCoordP2ui ptr_glTexCoordP2ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordP2ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glTexCoordP1uiv #-}
 
ptr_glTexCoordP1uiv :: FunPtr a
ptr_glTexCoordP1uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glTexCoordP1uiv"
 
glTexCoordP1uiv :: GLenum -> Ptr GLuint -> IO ()
glTexCoordP1uiv = dyn_glTexCoordP1uiv ptr_glTexCoordP1uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordP1uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glTexCoordP1ui #-}
 
ptr_glTexCoordP1ui :: FunPtr a
ptr_glTexCoordP1ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glTexCoordP1ui"
 
glTexCoordP1ui :: GLenum -> GLuint -> IO ()
glTexCoordP1ui = dyn_glTexCoordP1ui ptr_glTexCoordP1ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordP1ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexP4uiv #-}
 
ptr_glVertexP4uiv :: FunPtr a
ptr_glVertexP4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexP4uiv"
 
glVertexP4uiv :: GLenum -> Ptr GLuint -> IO ()
glVertexP4uiv = dyn_glVertexP4uiv ptr_glVertexP4uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexP4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexP4ui #-}
 
ptr_glVertexP4ui :: FunPtr a
ptr_glVertexP4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexP4ui"
 
glVertexP4ui :: GLenum -> GLuint -> IO ()
glVertexP4ui = dyn_glVertexP4ui ptr_glVertexP4ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexP4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexP3uiv #-}
 
ptr_glVertexP3uiv :: FunPtr a
ptr_glVertexP3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexP3uiv"
 
glVertexP3uiv :: GLenum -> Ptr GLuint -> IO ()
glVertexP3uiv = dyn_glVertexP3uiv ptr_glVertexP3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexP3uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexP3ui #-}
 
ptr_glVertexP3ui :: FunPtr a
ptr_glVertexP3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexP3ui"
 
glVertexP3ui :: GLenum -> GLuint -> IO ()
glVertexP3ui = dyn_glVertexP3ui ptr_glVertexP3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexP3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexP2uiv #-}
 
ptr_glVertexP2uiv :: FunPtr a
ptr_glVertexP2uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexP2uiv"
 
glVertexP2uiv :: GLenum -> Ptr GLuint -> IO ()
glVertexP2uiv = dyn_glVertexP2uiv ptr_glVertexP2uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexP2uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexP2ui #-}
 
ptr_glVertexP2ui :: FunPtr a
ptr_glVertexP2ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glVertexP2ui"
 
glVertexP2ui :: GLenum -> GLuint -> IO ()
glVertexP2ui = dyn_glVertexP2ui ptr_glVertexP2ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexP2ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glGetQueryObjectui64v #-}
 
ptr_glGetQueryObjectui64v :: FunPtr a
ptr_glGetQueryObjectui64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glGetQueryObjectui64v"
 
glGetQueryObjectui64v :: GLuint -> GLenum -> Ptr GLuint64 -> IO ()
glGetQueryObjectui64v
  = dyn_glGetQueryObjectui64v ptr_glGetQueryObjectui64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryObjectui64v
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glGetQueryObjecti64v #-}
 
ptr_glGetQueryObjecti64v :: FunPtr a
ptr_glGetQueryObjecti64v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glGetQueryObjecti64v"
 
glGetQueryObjecti64v :: GLuint -> GLenum -> Ptr GLint64 -> IO ()
glGetQueryObjecti64v
  = dyn_glGetQueryObjecti64v ptr_glGetQueryObjecti64v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetQueryObjecti64v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint64 -> IO ())
 
{-# NOINLINE ptr_glQueryCounter #-}
 
ptr_glQueryCounter :: FunPtr a
ptr_glQueryCounter
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glQueryCounter"
 
glQueryCounter :: GLuint -> GLenum -> IO ()
glQueryCounter = dyn_glQueryCounter ptr_glQueryCounter
 
foreign import CALLCONV unsafe "dynamic" dyn_glQueryCounter ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glGetSamplerParameterIuiv #-}
 
ptr_glGetSamplerParameterIuiv :: FunPtr a
ptr_glGetSamplerParameterIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glGetSamplerParameterIuiv"
 
glGetSamplerParameterIuiv ::
                          GLuint -> GLenum -> Ptr GLuint -> IO ()
glGetSamplerParameterIuiv
  = dyn_glGetSamplerParameterIuiv ptr_glGetSamplerParameterIuiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetSamplerParameterIuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetSamplerParameterfv #-}
 
ptr_glGetSamplerParameterfv :: FunPtr a
ptr_glGetSamplerParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glGetSamplerParameterfv"
 
glGetSamplerParameterfv :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetSamplerParameterfv
  = dyn_glGetSamplerParameterfv ptr_glGetSamplerParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetSamplerParameterfv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetSamplerParameterIiv #-}
 
ptr_glGetSamplerParameterIiv :: FunPtr a
ptr_glGetSamplerParameterIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glGetSamplerParameterIiv"
 
glGetSamplerParameterIiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetSamplerParameterIiv
  = dyn_glGetSamplerParameterIiv ptr_glGetSamplerParameterIiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetSamplerParameterIiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetSamplerParameteriv #-}
 
ptr_glGetSamplerParameteriv :: FunPtr a
ptr_glGetSamplerParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glGetSamplerParameteriv"
 
glGetSamplerParameteriv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetSamplerParameteriv
  = dyn_glGetSamplerParameteriv ptr_glGetSamplerParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetSamplerParameteriv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glSamplerParameterIuiv #-}
 
ptr_glSamplerParameterIuiv :: FunPtr a
ptr_glSamplerParameterIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glSamplerParameterIuiv"
 
glSamplerParameterIuiv :: GLuint -> GLenum -> Ptr GLuint -> IO ()
glSamplerParameterIuiv
  = dyn_glSamplerParameterIuiv ptr_glSamplerParameterIuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSamplerParameterIuiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glSamplerParameterIiv #-}
 
ptr_glSamplerParameterIiv :: FunPtr a
ptr_glSamplerParameterIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glSamplerParameterIiv"
 
glSamplerParameterIiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glSamplerParameterIiv
  = dyn_glSamplerParameterIiv ptr_glSamplerParameterIiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSamplerParameterIiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glSamplerParameterfv #-}
 
ptr_glSamplerParameterfv :: FunPtr a
ptr_glSamplerParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glSamplerParameterfv"
 
glSamplerParameterfv :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glSamplerParameterfv
  = dyn_glSamplerParameterfv ptr_glSamplerParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSamplerParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glSamplerParameterf #-}
 
ptr_glSamplerParameterf :: FunPtr a
ptr_glSamplerParameterf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glSamplerParameterf"
 
glSamplerParameterf :: GLuint -> GLenum -> GLfloat -> IO ()
glSamplerParameterf
  = dyn_glSamplerParameterf ptr_glSamplerParameterf
 
foreign import CALLCONV unsafe "dynamic" dyn_glSamplerParameterf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glSamplerParameteriv #-}
 
ptr_glSamplerParameteriv :: FunPtr a
ptr_glSamplerParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glSamplerParameteriv"
 
glSamplerParameteriv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glSamplerParameteriv
  = dyn_glSamplerParameteriv ptr_glSamplerParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSamplerParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glSamplerParameteri #-}
 
ptr_glSamplerParameteri :: FunPtr a
ptr_glSamplerParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glSamplerParameteri"
 
glSamplerParameteri :: GLuint -> GLenum -> GLint -> IO ()
glSamplerParameteri
  = dyn_glSamplerParameteri ptr_glSamplerParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glSamplerParameteri ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glBindSampler #-}
 
ptr_glBindSampler :: FunPtr a
ptr_glBindSampler
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glBindSampler"
 
glBindSampler :: GLuint -> GLuint -> IO ()
glBindSampler = dyn_glBindSampler ptr_glBindSampler
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindSampler ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glIsSampler #-}
 
ptr_glIsSampler :: FunPtr a
ptr_glIsSampler
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glIsSampler"
 
glIsSampler :: GLuint -> IO GLboolean
glIsSampler = dyn_glIsSampler ptr_glIsSampler
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsSampler ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glDeleteSamplers #-}
 
ptr_glDeleteSamplers :: FunPtr a
ptr_glDeleteSamplers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glDeleteSamplers"
 
glDeleteSamplers :: GLsizei -> Ptr GLuint -> IO ()
glDeleteSamplers = dyn_glDeleteSamplers ptr_glDeleteSamplers
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteSamplers ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGenSamplers #-}
 
ptr_glGenSamplers :: FunPtr a
ptr_glGenSamplers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glGenSamplers"
 
glGenSamplers :: GLsizei -> Ptr GLuint -> IO ()
glGenSamplers = dyn_glGenSamplers ptr_glGenSamplers
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenSamplers ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetFragDataIndex #-}
 
ptr_glGetFragDataIndex :: FunPtr a
ptr_glGetFragDataIndex
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glGetFragDataIndex"
 
glGetFragDataIndex :: GLuint -> Ptr GLchar -> IO GLint
glGetFragDataIndex = dyn_glGetFragDataIndex ptr_glGetFragDataIndex
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetFragDataIndex ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLchar -> IO GLint)
 
{-# NOINLINE ptr_glBindFragDataLocationIndexed #-}
 
ptr_glBindFragDataLocationIndexed :: FunPtr a
ptr_glBindFragDataLocationIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_3_3"
        "glBindFragDataLocationIndexed"
 
glBindFragDataLocationIndexed ::
                              GLuint -> GLuint -> GLuint -> Ptr GLchar -> IO ()
glBindFragDataLocationIndexed
  = dyn_glBindFragDataLocationIndexed
      ptr_glBindFragDataLocationIndexed
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBindFragDataLocationIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> Ptr GLchar -> IO ())
 
gl_INT_2_10_10_10_REV :: GLenum
gl_INT_2_10_10_10_REV = 36255
 
gl_TIMESTAMP :: GLenum
gl_TIMESTAMP = 36392
 
gl_TIME_ELAPSED :: GLenum
gl_TIME_ELAPSED = 35007
 
gl_TEXTURE_SWIZZLE_RGBA :: GLenum
gl_TEXTURE_SWIZZLE_RGBA = 36422
 
gl_TEXTURE_SWIZZLE_A :: GLenum
gl_TEXTURE_SWIZZLE_A = 36421
 
gl_TEXTURE_SWIZZLE_B :: GLenum
gl_TEXTURE_SWIZZLE_B = 36420
 
gl_TEXTURE_SWIZZLE_G :: GLenum
gl_TEXTURE_SWIZZLE_G = 36419
 
gl_TEXTURE_SWIZZLE_R :: GLenum
gl_TEXTURE_SWIZZLE_R = 36418
 
gl_RGB10_A2UI :: GLenum
gl_RGB10_A2UI = 36975
 
gl_SAMPLER_BINDING :: GLenum
gl_SAMPLER_BINDING = 35097
 
gl_ANY_SAMPLES_PASSED :: GLenum
gl_ANY_SAMPLES_PASSED = 35887
 
gl_MAX_DUAL_SOURCE_DRAW_BUFFERS :: GLenum
gl_MAX_DUAL_SOURCE_DRAW_BUFFERS = 35068
 
gl_ONE_MINUS_SRC1_ALPHA :: GLenum
gl_ONE_MINUS_SRC1_ALPHA = 35067
 
gl_ONE_MINUS_SRC1_COLOR :: GLenum
gl_ONE_MINUS_SRC1_COLOR = 35066
 
gl_SRC1_COLOR :: GLenum
gl_SRC1_COLOR = 35065
 
gl_VERTEX_ATTRIB_ARRAY_DIVISOR :: GLenum
gl_VERTEX_ATTRIB_ARRAY_DIVISOR = 35070