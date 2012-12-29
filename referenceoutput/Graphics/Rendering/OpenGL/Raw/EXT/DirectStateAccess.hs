{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.DirectStateAccess
       (glProgramUniformMatrix4x3dvEXT, glProgramUniformMatrix4x2dvEXT,
        glProgramUniformMatrix3x4dvEXT, glProgramUniformMatrix3x2dvEXT,
        glProgramUniformMatrix2x4dvEXT, glProgramUniformMatrix2x3dvEXT,
        glProgramUniformMatrix4dvEXT, glProgramUniformMatrix3dvEXT,
        glProgramUniformMatrix2dvEXT, glProgramUniform4dvEXT,
        glProgramUniform3dvEXT, glProgramUniform2dvEXT,
        glProgramUniform1dvEXT, glProgramUniform4dEXT,
        glProgramUniform3dEXT, glProgramUniform2dEXT,
        glProgramUniform1dEXT, glMultiTexRenderbufferEXT,
        glTextureRenderbufferEXT, glNamedFramebufferTextureFaceEXT,
        glNamedFramebufferTextureLayerEXT, glNamedFramebufferTextureEXT,
        glNamedRenderbufferStorageMultisampleCoverageEXT,
        glNamedRenderbufferStorageMultisampleEXT,
        glGetFramebufferParameterivEXT, glFramebufferReadBufferEXT,
        glFramebufferDrawBuffersEXT, glFramebufferDrawBufferEXT,
        glGenerateMultiTexMipmapEXT, glGenerateTextureMipmapEXT,
        glGetNamedFramebufferAttachmentParameterivEXT,
        glNamedFramebufferRenderbufferEXT, glNamedFramebufferTexture3DEXT,
        glNamedFramebufferTexture2DEXT, glNamedFramebufferTexture1DEXT,
        glCheckNamedFramebufferStatusEXT,
        glGetNamedRenderbufferParameterivEXT,
        glNamedRenderbufferStorageEXT, glMultiTexBufferEXT,
        glTextureBufferEXT, glGetNamedBufferSubDataEXT,
        glGetNamedBufferPointervEXT, glGetNamedBufferParameterivEXT,
        glNamedCopyBufferSubDataEXT, glFlushMappedNamedBufferRangeEXT,
        glMapNamedBufferRangeEXT, glUnmapNamedBufferEXT,
        glMapNamedBufferEXT, glNamedBufferSubDataEXT, glNamedBufferDataEXT,
        glProgramUniform4uivEXT, glProgramUniform3uivEXT,
        glProgramUniform2uivEXT, glProgramUniform1uivEXT,
        glProgramUniform4uiEXT, glProgramUniform3uiEXT,
        glProgramUniform2uiEXT, glProgramUniform1uiEXT,
        glProgramUniformMatrix4x3fvEXT, glProgramUniformMatrix3x4fvEXT,
        glProgramUniformMatrix4x2fvEXT, glProgramUniformMatrix2x4fvEXT,
        glProgramUniformMatrix3x2fvEXT, glProgramUniformMatrix2x3fvEXT,
        glProgramUniformMatrix4fvEXT, glProgramUniformMatrix3fvEXT,
        glProgramUniformMatrix2fvEXT, glProgramUniform4ivEXT,
        glProgramUniform3ivEXT, glProgramUniform2ivEXT,
        glProgramUniform1ivEXT, glProgramUniform4fvEXT,
        glProgramUniform3fvEXT, glProgramUniform2fvEXT,
        glProgramUniform1fvEXT, glProgramUniform4iEXT,
        glProgramUniform3iEXT, glProgramUniform2iEXT,
        glProgramUniform1iEXT, glProgramUniform4fEXT,
        glProgramUniform3fEXT, glProgramUniform2fEXT,
        glProgramUniform1fEXT, glGetMultiTexParameterIuivEXT,
        glGetMultiTexParameterIivEXT, glMultiTexParameterIuivEXT,
        glMultiTexParameterIivEXT, glGetTextureParameterIuivEXT,
        glGetTextureParameterIivEXT, glTextureParameterIuivEXT,
        glTextureParameterIivEXT, glGetNamedProgramLocalParameterIuivEXT,
        glGetNamedProgramLocalParameterIivEXT,
        glNamedProgramLocalParametersI4uivEXT,
        glNamedProgramLocalParameterI4uivEXT,
        glNamedProgramLocalParameterI4uiEXT,
        glNamedProgramLocalParametersI4ivEXT,
        glNamedProgramLocalParameterI4ivEXT,
        glNamedProgramLocalParameterI4iEXT,
        glNamedProgramLocalParameters4fvEXT, glGetNamedProgramStringEXT,
        glGetNamedProgramivEXT, glGetNamedProgramLocalParameterfvEXT,
        glGetNamedProgramLocalParameterdvEXT,
        glNamedProgramLocalParameter4fvEXT,
        glNamedProgramLocalParameter4fEXT,
        glNamedProgramLocalParameter4dvEXT,
        glNamedProgramLocalParameter4dEXT, glNamedProgramStringEXT,
        glGetCompressedMultiTexImageEXT, glCompressedMultiTexSubImage1DEXT,
        glCompressedMultiTexSubImage2DEXT,
        glCompressedMultiTexSubImage3DEXT, glCompressedMultiTexImage1DEXT,
        glCompressedMultiTexImage2DEXT, glCompressedMultiTexImage3DEXT,
        glGetCompressedTextureImageEXT, glCompressedTextureSubImage1DEXT,
        glCompressedTextureSubImage2DEXT, glCompressedTextureSubImage3DEXT,
        glCompressedTextureImage1DEXT, glCompressedTextureImage2DEXT,
        glCompressedTextureImage3DEXT, glGetPointerIndexedvEXT,
        glGetDoubleIndexedvEXT, glGetFloatIndexedvEXT,
        glGetMultiTexGenivEXT, glGetMultiTexGenfvEXT,
        glGetMultiTexGendvEXT, glGetMultiTexEnvivEXT,
        glGetMultiTexEnvfvEXT, glMultiTexGenivEXT, glMultiTexGeniEXT,
        glMultiTexGenfvEXT, glMultiTexGenfEXT, glMultiTexGendvEXT,
        glMultiTexGendEXT, glMultiTexEnvivEXT, glMultiTexEnviEXT,
        glMultiTexEnvfvEXT, glMultiTexEnvfEXT, glMultiTexCoordPointerEXT,
        glDisableClientStateIndexedEXT, glEnableClientStateIndexedEXT,
        glBindMultiTextureEXT, glCopyMultiTexSubImage3DEXT,
        glMultiTexSubImage3DEXT, glMultiTexImage3DEXT,
        glGetMultiTexLevelParameterivEXT, glGetMultiTexLevelParameterfvEXT,
        glGetMultiTexParameterivEXT, glGetMultiTexParameterfvEXT,
        glGetMultiTexImageEXT, glCopyMultiTexSubImage2DEXT,
        glCopyMultiTexSubImage1DEXT, glCopyMultiTexImage2DEXT,
        glCopyMultiTexImage1DEXT, glMultiTexSubImage2DEXT,
        glMultiTexSubImage1DEXT, glMultiTexImage2DEXT,
        glMultiTexImage1DEXT, glMultiTexParameterivEXT,
        glMultiTexParameteriEXT, glMultiTexParameterfvEXT,
        glMultiTexParameterfEXT, glCopyTextureSubImage3DEXT,
        glTextureSubImage3DEXT, glTextureImage3DEXT,
        glGetTextureLevelParameterivEXT, glGetTextureLevelParameterfvEXT,
        glGetTextureParameterivEXT, glGetTextureParameterfvEXT,
        glGetTextureImageEXT, glCopyTextureSubImage2DEXT,
        glCopyTextureSubImage1DEXT, glCopyTextureImage2DEXT,
        glCopyTextureImage1DEXT, glTextureSubImage2DEXT,
        glTextureSubImage1DEXT, glTextureImage2DEXT, glTextureImage1DEXT,
        glTextureParameterivEXT, glTextureParameteriEXT,
        glTextureParameterfvEXT, glTextureParameterfEXT,
        glMatrixMultTransposedEXT, glMatrixMultTransposefEXT,
        glMatrixLoadTransposedEXT, glMatrixLoadTransposefEXT,
        glMatrixPushEXT, glMatrixPopEXT, glMatrixOrthoEXT,
        glMatrixFrustumEXT, glMatrixTranslatedEXT, glMatrixTranslatefEXT,
        glMatrixScaledEXT, glMatrixScalefEXT, glMatrixRotatedEXT,
        glMatrixRotatefEXT, glMatrixLoadIdentityEXT, glMatrixMultdEXT,
        glMatrixMultfEXT, glMatrixLoaddEXT, glMatrixLoadfEXT,
        glPushClientAttribDefaultEXT, glClientAttribDefaultEXT,
        gl_PROGRAM_MATRIX_STACK_DEPTH_EXT, gl_TRANSPOSE_PROGRAM_MATRIX_EXT,
        gl_PROGRAM_MATRIX_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glProgramUniformMatrix4x3dvEXT #-}
 
ptr_glProgramUniformMatrix4x3dvEXT :: FunPtr a
ptr_glProgramUniformMatrix4x3dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix4x3dvEXT"
 
glProgramUniformMatrix4x3dvEXT ::
                               GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix4x3dvEXT
  = dyn_glProgramUniformMatrix4x3dvEXT
      ptr_glProgramUniformMatrix4x3dvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4x3dvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4x2dvEXT #-}
 
ptr_glProgramUniformMatrix4x2dvEXT :: FunPtr a
ptr_glProgramUniformMatrix4x2dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix4x2dvEXT"
 
glProgramUniformMatrix4x2dvEXT ::
                               GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix4x2dvEXT
  = dyn_glProgramUniformMatrix4x2dvEXT
      ptr_glProgramUniformMatrix4x2dvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4x2dvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3x4dvEXT #-}
 
ptr_glProgramUniformMatrix3x4dvEXT :: FunPtr a
ptr_glProgramUniformMatrix3x4dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix3x4dvEXT"
 
glProgramUniformMatrix3x4dvEXT ::
                               GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix3x4dvEXT
  = dyn_glProgramUniformMatrix3x4dvEXT
      ptr_glProgramUniformMatrix3x4dvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3x4dvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3x2dvEXT #-}
 
ptr_glProgramUniformMatrix3x2dvEXT :: FunPtr a
ptr_glProgramUniformMatrix3x2dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix3x2dvEXT"
 
glProgramUniformMatrix3x2dvEXT ::
                               GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix3x2dvEXT
  = dyn_glProgramUniformMatrix3x2dvEXT
      ptr_glProgramUniformMatrix3x2dvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3x2dvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2x4dvEXT #-}
 
ptr_glProgramUniformMatrix2x4dvEXT :: FunPtr a
ptr_glProgramUniformMatrix2x4dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix2x4dvEXT"
 
glProgramUniformMatrix2x4dvEXT ::
                               GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix2x4dvEXT
  = dyn_glProgramUniformMatrix2x4dvEXT
      ptr_glProgramUniformMatrix2x4dvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2x4dvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2x3dvEXT #-}
 
ptr_glProgramUniformMatrix2x3dvEXT :: FunPtr a
ptr_glProgramUniformMatrix2x3dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix2x3dvEXT"
 
glProgramUniformMatrix2x3dvEXT ::
                               GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix2x3dvEXT
  = dyn_glProgramUniformMatrix2x3dvEXT
      ptr_glProgramUniformMatrix2x3dvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2x3dvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4dvEXT #-}
 
ptr_glProgramUniformMatrix4dvEXT :: FunPtr a
ptr_glProgramUniformMatrix4dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix4dvEXT"
 
glProgramUniformMatrix4dvEXT ::
                             GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix4dvEXT
  = dyn_glProgramUniformMatrix4dvEXT ptr_glProgramUniformMatrix4dvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4dvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3dvEXT #-}
 
ptr_glProgramUniformMatrix3dvEXT :: FunPtr a
ptr_glProgramUniformMatrix3dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix3dvEXT"
 
glProgramUniformMatrix3dvEXT ::
                             GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix3dvEXT
  = dyn_glProgramUniformMatrix3dvEXT ptr_glProgramUniformMatrix3dvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3dvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2dvEXT #-}
 
ptr_glProgramUniformMatrix2dvEXT :: FunPtr a
ptr_glProgramUniformMatrix2dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix2dvEXT"
 
glProgramUniformMatrix2dvEXT ::
                             GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix2dvEXT
  = dyn_glProgramUniformMatrix2dvEXT ptr_glProgramUniformMatrix2dvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2dvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4dvEXT #-}
 
ptr_glProgramUniform4dvEXT :: FunPtr a
ptr_glProgramUniform4dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4dvEXT"
 
glProgramUniform4dvEXT ::
                       GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()
glProgramUniform4dvEXT
  = dyn_glProgramUniform4dvEXT ptr_glProgramUniform4dvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4dvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3dvEXT #-}
 
ptr_glProgramUniform3dvEXT :: FunPtr a
ptr_glProgramUniform3dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3dvEXT"
 
glProgramUniform3dvEXT ::
                       GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()
glProgramUniform3dvEXT
  = dyn_glProgramUniform3dvEXT ptr_glProgramUniform3dvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3dvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2dvEXT #-}
 
ptr_glProgramUniform2dvEXT :: FunPtr a
ptr_glProgramUniform2dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2dvEXT"
 
glProgramUniform2dvEXT ::
                       GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()
glProgramUniform2dvEXT
  = dyn_glProgramUniform2dvEXT ptr_glProgramUniform2dvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2dvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1dvEXT #-}
 
ptr_glProgramUniform1dvEXT :: FunPtr a
ptr_glProgramUniform1dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1dvEXT"
 
glProgramUniform1dvEXT ::
                       GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()
glProgramUniform1dvEXT
  = dyn_glProgramUniform1dvEXT ptr_glProgramUniform1dvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1dvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4dEXT #-}
 
ptr_glProgramUniform4dEXT :: FunPtr a
ptr_glProgramUniform4dEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4dEXT"
 
glProgramUniform4dEXT ::
                      GLuint ->
                        GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glProgramUniform4dEXT
  = dyn_glProgramUniform4dEXT ptr_glProgramUniform4dEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4dEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3dEXT #-}
 
ptr_glProgramUniform3dEXT :: FunPtr a
ptr_glProgramUniform3dEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3dEXT"
 
glProgramUniform3dEXT ::
                      GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> IO ()
glProgramUniform3dEXT
  = dyn_glProgramUniform3dEXT ptr_glProgramUniform3dEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3dEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2dEXT #-}
 
ptr_glProgramUniform2dEXT :: FunPtr a
ptr_glProgramUniform2dEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2dEXT"
 
glProgramUniform2dEXT ::
                      GLuint -> GLint -> GLdouble -> GLdouble -> IO ()
glProgramUniform2dEXT
  = dyn_glProgramUniform2dEXT ptr_glProgramUniform2dEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2dEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1dEXT #-}
 
ptr_glProgramUniform1dEXT :: FunPtr a
ptr_glProgramUniform1dEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1dEXT"
 
glProgramUniform1dEXT :: GLuint -> GLint -> GLdouble -> IO ()
glProgramUniform1dEXT
  = dyn_glProgramUniform1dEXT ptr_glProgramUniform1dEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1dEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexRenderbufferEXT #-}
 
ptr_glMultiTexRenderbufferEXT :: FunPtr a
ptr_glMultiTexRenderbufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexRenderbufferEXT"
 
glMultiTexRenderbufferEXT :: GLenum -> GLenum -> GLuint -> IO ()
glMultiTexRenderbufferEXT
  = dyn_glMultiTexRenderbufferEXT ptr_glMultiTexRenderbufferEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiTexRenderbufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glTextureRenderbufferEXT #-}
 
ptr_glTextureRenderbufferEXT :: FunPtr a
ptr_glTextureRenderbufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureRenderbufferEXT"
 
glTextureRenderbufferEXT :: GLuint -> GLenum -> GLuint -> IO ()
glTextureRenderbufferEXT
  = dyn_glTextureRenderbufferEXT ptr_glTextureRenderbufferEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTextureRenderbufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferTextureFaceEXT #-}
 
ptr_glNamedFramebufferTextureFaceEXT :: FunPtr a
ptr_glNamedFramebufferTextureFaceEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedFramebufferTextureFaceEXT"
 
glNamedFramebufferTextureFaceEXT ::
                                 GLuint -> GLenum -> GLuint -> GLint -> GLenum -> IO ()
glNamedFramebufferTextureFaceEXT
  = dyn_glNamedFramebufferTextureFaceEXT
      ptr_glNamedFramebufferTextureFaceEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferTextureFaceEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> GLint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferTextureLayerEXT #-}
 
ptr_glNamedFramebufferTextureLayerEXT :: FunPtr a
ptr_glNamedFramebufferTextureLayerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedFramebufferTextureLayerEXT"
 
glNamedFramebufferTextureLayerEXT ::
                                  GLuint -> GLenum -> GLuint -> GLint -> GLint -> IO ()
glNamedFramebufferTextureLayerEXT
  = dyn_glNamedFramebufferTextureLayerEXT
      ptr_glNamedFramebufferTextureLayerEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferTextureLayerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferTextureEXT #-}
 
ptr_glNamedFramebufferTextureEXT :: FunPtr a
ptr_glNamedFramebufferTextureEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedFramebufferTextureEXT"
 
glNamedFramebufferTextureEXT ::
                             GLuint -> GLenum -> GLuint -> GLint -> IO ()
glNamedFramebufferTextureEXT
  = dyn_glNamedFramebufferTextureEXT ptr_glNamedFramebufferTextureEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferTextureEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glNamedRenderbufferStorageMultisampleCoverageEXT
             #-}
 
ptr_glNamedRenderbufferStorageMultisampleCoverageEXT :: FunPtr a
ptr_glNamedRenderbufferStorageMultisampleCoverageEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedRenderbufferStorageMultisampleCoverageEXT"
 
glNamedRenderbufferStorageMultisampleCoverageEXT ::
                                                 GLuint ->
                                                   GLsizei ->
                                                     GLsizei ->
                                                       GLenum -> GLsizei -> GLsizei -> IO ()
glNamedRenderbufferStorageMultisampleCoverageEXT
  = dyn_glNamedRenderbufferStorageMultisampleCoverageEXT
      ptr_glNamedRenderbufferStorageMultisampleCoverageEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedRenderbufferStorageMultisampleCoverageEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glNamedRenderbufferStorageMultisampleEXT #-}
 
ptr_glNamedRenderbufferStorageMultisampleEXT :: FunPtr a
ptr_glNamedRenderbufferStorageMultisampleEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedRenderbufferStorageMultisampleEXT"
 
glNamedRenderbufferStorageMultisampleEXT ::
                                         GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()
glNamedRenderbufferStorageMultisampleEXT
  = dyn_glNamedRenderbufferStorageMultisampleEXT
      ptr_glNamedRenderbufferStorageMultisampleEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedRenderbufferStorageMultisampleEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glGetFramebufferParameterivEXT #-}
 
ptr_glGetFramebufferParameterivEXT :: FunPtr a
ptr_glGetFramebufferParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetFramebufferParameterivEXT"
 
glGetFramebufferParameterivEXT ::
                               GLuint -> GLenum -> Ptr GLint -> IO ()
glGetFramebufferParameterivEXT
  = dyn_glGetFramebufferParameterivEXT
      ptr_glGetFramebufferParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetFramebufferParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferReadBufferEXT #-}
 
ptr_glFramebufferReadBufferEXT :: FunPtr a
ptr_glFramebufferReadBufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glFramebufferReadBufferEXT"
 
glFramebufferReadBufferEXT :: GLuint -> GLenum -> IO ()
glFramebufferReadBufferEXT
  = dyn_glFramebufferReadBufferEXT ptr_glFramebufferReadBufferEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferReadBufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glFramebufferDrawBuffersEXT #-}
 
ptr_glFramebufferDrawBuffersEXT :: FunPtr a
ptr_glFramebufferDrawBuffersEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glFramebufferDrawBuffersEXT"
 
glFramebufferDrawBuffersEXT ::
                            GLuint -> GLsizei -> Ptr GLenum -> IO ()
glFramebufferDrawBuffersEXT
  = dyn_glFramebufferDrawBuffersEXT ptr_glFramebufferDrawBuffersEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferDrawBuffersEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLenum -> IO ())
 
{-# NOINLINE ptr_glFramebufferDrawBufferEXT #-}
 
ptr_glFramebufferDrawBufferEXT :: FunPtr a
ptr_glFramebufferDrawBufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glFramebufferDrawBufferEXT"
 
glFramebufferDrawBufferEXT :: GLuint -> GLenum -> IO ()
glFramebufferDrawBufferEXT
  = dyn_glFramebufferDrawBufferEXT ptr_glFramebufferDrawBufferEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferDrawBufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glGenerateMultiTexMipmapEXT #-}
 
ptr_glGenerateMultiTexMipmapEXT :: FunPtr a
ptr_glGenerateMultiTexMipmapEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGenerateMultiTexMipmapEXT"
 
glGenerateMultiTexMipmapEXT :: GLenum -> GLenum -> IO ()
glGenerateMultiTexMipmapEXT
  = dyn_glGenerateMultiTexMipmapEXT ptr_glGenerateMultiTexMipmapEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGenerateMultiTexMipmapEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glGenerateTextureMipmapEXT #-}
 
ptr_glGenerateTextureMipmapEXT :: FunPtr a
ptr_glGenerateTextureMipmapEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGenerateTextureMipmapEXT"
 
glGenerateTextureMipmapEXT :: GLuint -> GLenum -> IO ()
glGenerateTextureMipmapEXT
  = dyn_glGenerateTextureMipmapEXT ptr_glGenerateTextureMipmapEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGenerateTextureMipmapEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glGetNamedFramebufferAttachmentParameterivEXT #-}
 
ptr_glGetNamedFramebufferAttachmentParameterivEXT :: FunPtr a
ptr_glGetNamedFramebufferAttachmentParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedFramebufferAttachmentParameterivEXT"
 
glGetNamedFramebufferAttachmentParameterivEXT ::
                                              GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetNamedFramebufferAttachmentParameterivEXT
  = dyn_glGetNamedFramebufferAttachmentParameterivEXT
      ptr_glGetNamedFramebufferAttachmentParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedFramebufferAttachmentParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferRenderbufferEXT #-}
 
ptr_glNamedFramebufferRenderbufferEXT :: FunPtr a
ptr_glNamedFramebufferRenderbufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedFramebufferRenderbufferEXT"
 
glNamedFramebufferRenderbufferEXT ::
                                  GLuint -> GLenum -> GLenum -> GLuint -> IO ()
glNamedFramebufferRenderbufferEXT
  = dyn_glNamedFramebufferRenderbufferEXT
      ptr_glNamedFramebufferRenderbufferEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferRenderbufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferTexture3DEXT #-}
 
ptr_glNamedFramebufferTexture3DEXT :: FunPtr a
ptr_glNamedFramebufferTexture3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedFramebufferTexture3DEXT"
 
glNamedFramebufferTexture3DEXT ::
                               GLuint -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()
glNamedFramebufferTexture3DEXT
  = dyn_glNamedFramebufferTexture3DEXT
      ptr_glNamedFramebufferTexture3DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferTexture3DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferTexture2DEXT #-}
 
ptr_glNamedFramebufferTexture2DEXT :: FunPtr a
ptr_glNamedFramebufferTexture2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedFramebufferTexture2DEXT"
 
glNamedFramebufferTexture2DEXT ::
                               GLuint -> GLenum -> GLenum -> GLuint -> GLint -> IO ()
glNamedFramebufferTexture2DEXT
  = dyn_glNamedFramebufferTexture2DEXT
      ptr_glNamedFramebufferTexture2DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferTexture2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferTexture1DEXT #-}
 
ptr_glNamedFramebufferTexture1DEXT :: FunPtr a
ptr_glNamedFramebufferTexture1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedFramebufferTexture1DEXT"
 
glNamedFramebufferTexture1DEXT ::
                               GLuint -> GLenum -> GLenum -> GLuint -> GLint -> IO ()
glNamedFramebufferTexture1DEXT
  = dyn_glNamedFramebufferTexture1DEXT
      ptr_glNamedFramebufferTexture1DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferTexture1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glCheckNamedFramebufferStatusEXT #-}
 
ptr_glCheckNamedFramebufferStatusEXT :: FunPtr a
ptr_glCheckNamedFramebufferStatusEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCheckNamedFramebufferStatusEXT"
 
glCheckNamedFramebufferStatusEXT :: GLuint -> GLenum -> IO GLenum
glCheckNamedFramebufferStatusEXT
  = dyn_glCheckNamedFramebufferStatusEXT
      ptr_glCheckNamedFramebufferStatusEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCheckNamedFramebufferStatusEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO GLenum)
 
{-# NOINLINE ptr_glGetNamedRenderbufferParameterivEXT #-}
 
ptr_glGetNamedRenderbufferParameterivEXT :: FunPtr a
ptr_glGetNamedRenderbufferParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedRenderbufferParameterivEXT"
 
glGetNamedRenderbufferParameterivEXT ::
                                     GLuint -> GLenum -> Ptr GLint -> IO ()
glGetNamedRenderbufferParameterivEXT
  = dyn_glGetNamedRenderbufferParameterivEXT
      ptr_glGetNamedRenderbufferParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedRenderbufferParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glNamedRenderbufferStorageEXT #-}
 
ptr_glNamedRenderbufferStorageEXT :: FunPtr a
ptr_glNamedRenderbufferStorageEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedRenderbufferStorageEXT"
 
glNamedRenderbufferStorageEXT ::
                              GLuint -> GLenum -> GLsizei -> GLsizei -> IO ()
glNamedRenderbufferStorageEXT
  = dyn_glNamedRenderbufferStorageEXT
      ptr_glNamedRenderbufferStorageEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedRenderbufferStorageEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glMultiTexBufferEXT #-}
 
ptr_glMultiTexBufferEXT :: FunPtr a
ptr_glMultiTexBufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexBufferEXT"
 
glMultiTexBufferEXT ::
                    GLenum -> GLenum -> GLenum -> GLuint -> IO ()
glMultiTexBufferEXT
  = dyn_glMultiTexBufferEXT ptr_glMultiTexBufferEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexBufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glTextureBufferEXT #-}
 
ptr_glTextureBufferEXT :: FunPtr a
ptr_glTextureBufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureBufferEXT"
 
glTextureBufferEXT :: GLuint -> GLenum -> GLenum -> GLuint -> IO ()
glTextureBufferEXT = dyn_glTextureBufferEXT ptr_glTextureBufferEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureBufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glGetNamedBufferSubDataEXT #-}
 
ptr_glGetNamedBufferSubDataEXT :: FunPtr a
ptr_glGetNamedBufferSubDataEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedBufferSubDataEXT"
 
glGetNamedBufferSubDataEXT ::
                           GLuint -> GLintptr -> GLsizeiptr -> Ptr a -> IO ()
glGetNamedBufferSubDataEXT
  = dyn_glGetNamedBufferSubDataEXT ptr_glGetNamedBufferSubDataEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedBufferSubDataEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLintptr -> GLsizeiptr -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetNamedBufferPointervEXT #-}
 
ptr_glGetNamedBufferPointervEXT :: FunPtr a
ptr_glGetNamedBufferPointervEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedBufferPointervEXT"
 
glGetNamedBufferPointervEXT ::
                            GLuint -> GLenum -> Ptr (Ptr a) -> IO ()
glGetNamedBufferPointervEXT
  = dyn_glGetNamedBufferPointervEXT ptr_glGetNamedBufferPointervEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedBufferPointervEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glGetNamedBufferParameterivEXT #-}
 
ptr_glGetNamedBufferParameterivEXT :: FunPtr a
ptr_glGetNamedBufferParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedBufferParameterivEXT"
 
glGetNamedBufferParameterivEXT ::
                               GLuint -> GLenum -> Ptr GLint -> IO ()
glGetNamedBufferParameterivEXT
  = dyn_glGetNamedBufferParameterivEXT
      ptr_glGetNamedBufferParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedBufferParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glNamedCopyBufferSubDataEXT #-}
 
ptr_glNamedCopyBufferSubDataEXT :: FunPtr a
ptr_glNamedCopyBufferSubDataEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedCopyBufferSubDataEXT"
 
glNamedCopyBufferSubDataEXT ::
                            GLuint -> GLuint -> GLintptr -> GLintptr -> GLsizeiptr -> IO ()
glNamedCopyBufferSubDataEXT
  = dyn_glNamedCopyBufferSubDataEXT ptr_glNamedCopyBufferSubDataEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedCopyBufferSubDataEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLintptr -> GLintptr -> GLsizeiptr -> IO ())
 
{-# NOINLINE ptr_glFlushMappedNamedBufferRangeEXT #-}
 
ptr_glFlushMappedNamedBufferRangeEXT :: FunPtr a
ptr_glFlushMappedNamedBufferRangeEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glFlushMappedNamedBufferRangeEXT"
 
glFlushMappedNamedBufferRangeEXT ::
                                 GLuint -> GLintptr -> GLsizeiptr -> IO ()
glFlushMappedNamedBufferRangeEXT
  = dyn_glFlushMappedNamedBufferRangeEXT
      ptr_glFlushMappedNamedBufferRangeEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFlushMappedNamedBufferRangeEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLintptr -> GLsizeiptr -> IO ())
 
{-# NOINLINE ptr_glMapNamedBufferRangeEXT #-}
 
ptr_glMapNamedBufferRangeEXT :: FunPtr a
ptr_glMapNamedBufferRangeEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMapNamedBufferRangeEXT"
 
glMapNamedBufferRangeEXT ::
                         GLuint -> GLintptr -> GLsizeiptr -> GLbitfield -> IO (Ptr a)
glMapNamedBufferRangeEXT
  = dyn_glMapNamedBufferRangeEXT ptr_glMapNamedBufferRangeEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMapNamedBufferRangeEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLintptr -> GLsizeiptr -> GLbitfield -> IO (Ptr a))
 
{-# NOINLINE ptr_glUnmapNamedBufferEXT #-}
 
ptr_glUnmapNamedBufferEXT :: FunPtr a
ptr_glUnmapNamedBufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glUnmapNamedBufferEXT"
 
glUnmapNamedBufferEXT :: GLuint -> IO GLboolean
glUnmapNamedBufferEXT
  = dyn_glUnmapNamedBufferEXT ptr_glUnmapNamedBufferEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glUnmapNamedBufferEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glMapNamedBufferEXT #-}
 
ptr_glMapNamedBufferEXT :: FunPtr a
ptr_glMapNamedBufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMapNamedBufferEXT"
 
glMapNamedBufferEXT :: GLuint -> GLenum -> IO (Ptr a)
glMapNamedBufferEXT
  = dyn_glMapNamedBufferEXT ptr_glMapNamedBufferEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapNamedBufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO (Ptr a))
 
{-# NOINLINE ptr_glNamedBufferSubDataEXT #-}
 
ptr_glNamedBufferSubDataEXT :: FunPtr a
ptr_glNamedBufferSubDataEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedBufferSubDataEXT"
 
glNamedBufferSubDataEXT ::
                        GLuint -> GLintptr -> GLsizeiptr -> Ptr a -> IO ()
glNamedBufferSubDataEXT
  = dyn_glNamedBufferSubDataEXT ptr_glNamedBufferSubDataEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glNamedBufferSubDataEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLintptr -> GLsizeiptr -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glNamedBufferDataEXT #-}
 
ptr_glNamedBufferDataEXT :: FunPtr a
ptr_glNamedBufferDataEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedBufferDataEXT"
 
glNamedBufferDataEXT ::
                     GLuint -> GLsizeiptr -> Ptr a -> GLenum -> IO ()
glNamedBufferDataEXT
  = dyn_glNamedBufferDataEXT ptr_glNamedBufferDataEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glNamedBufferDataEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizeiptr -> Ptr a -> GLenum -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4uivEXT #-}
 
ptr_glProgramUniform4uivEXT :: FunPtr a
ptr_glProgramUniform4uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4uivEXT"
 
glProgramUniform4uivEXT ::
                        GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()
glProgramUniform4uivEXT
  = dyn_glProgramUniform4uivEXT ptr_glProgramUniform4uivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4uivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3uivEXT #-}
 
ptr_glProgramUniform3uivEXT :: FunPtr a
ptr_glProgramUniform3uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3uivEXT"
 
glProgramUniform3uivEXT ::
                        GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()
glProgramUniform3uivEXT
  = dyn_glProgramUniform3uivEXT ptr_glProgramUniform3uivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3uivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2uivEXT #-}
 
ptr_glProgramUniform2uivEXT :: FunPtr a
ptr_glProgramUniform2uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2uivEXT"
 
glProgramUniform2uivEXT ::
                        GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()
glProgramUniform2uivEXT
  = dyn_glProgramUniform2uivEXT ptr_glProgramUniform2uivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2uivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1uivEXT #-}
 
ptr_glProgramUniform1uivEXT :: FunPtr a
ptr_glProgramUniform1uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1uivEXT"
 
glProgramUniform1uivEXT ::
                        GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()
glProgramUniform1uivEXT
  = dyn_glProgramUniform1uivEXT ptr_glProgramUniform1uivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1uivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4uiEXT #-}
 
ptr_glProgramUniform4uiEXT :: FunPtr a
ptr_glProgramUniform4uiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4uiEXT"
 
glProgramUniform4uiEXT ::
                       GLuint -> GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glProgramUniform4uiEXT
  = dyn_glProgramUniform4uiEXT ptr_glProgramUniform4uiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4uiEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3uiEXT #-}
 
ptr_glProgramUniform3uiEXT :: FunPtr a
ptr_glProgramUniform3uiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3uiEXT"
 
glProgramUniform3uiEXT ::
                       GLuint -> GLint -> GLuint -> GLuint -> GLuint -> IO ()
glProgramUniform3uiEXT
  = dyn_glProgramUniform3uiEXT ptr_glProgramUniform3uiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3uiEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2uiEXT #-}
 
ptr_glProgramUniform2uiEXT :: FunPtr a
ptr_glProgramUniform2uiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2uiEXT"
 
glProgramUniform2uiEXT ::
                       GLuint -> GLint -> GLuint -> GLuint -> IO ()
glProgramUniform2uiEXT
  = dyn_glProgramUniform2uiEXT ptr_glProgramUniform2uiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2uiEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1uiEXT #-}
 
ptr_glProgramUniform1uiEXT :: FunPtr a
ptr_glProgramUniform1uiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1uiEXT"
 
glProgramUniform1uiEXT :: GLuint -> GLint -> GLuint -> IO ()
glProgramUniform1uiEXT
  = dyn_glProgramUniform1uiEXT ptr_glProgramUniform1uiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1uiEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4x3fvEXT #-}
 
ptr_glProgramUniformMatrix4x3fvEXT :: FunPtr a
ptr_glProgramUniformMatrix4x3fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix4x3fvEXT"
 
glProgramUniformMatrix4x3fvEXT ::
                               GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix4x3fvEXT
  = dyn_glProgramUniformMatrix4x3fvEXT
      ptr_glProgramUniformMatrix4x3fvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4x3fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3x4fvEXT #-}
 
ptr_glProgramUniformMatrix3x4fvEXT :: FunPtr a
ptr_glProgramUniformMatrix3x4fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix3x4fvEXT"
 
glProgramUniformMatrix3x4fvEXT ::
                               GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix3x4fvEXT
  = dyn_glProgramUniformMatrix3x4fvEXT
      ptr_glProgramUniformMatrix3x4fvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3x4fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4x2fvEXT #-}
 
ptr_glProgramUniformMatrix4x2fvEXT :: FunPtr a
ptr_glProgramUniformMatrix4x2fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix4x2fvEXT"
 
glProgramUniformMatrix4x2fvEXT ::
                               GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix4x2fvEXT
  = dyn_glProgramUniformMatrix4x2fvEXT
      ptr_glProgramUniformMatrix4x2fvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4x2fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2x4fvEXT #-}
 
ptr_glProgramUniformMatrix2x4fvEXT :: FunPtr a
ptr_glProgramUniformMatrix2x4fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix2x4fvEXT"
 
glProgramUniformMatrix2x4fvEXT ::
                               GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix2x4fvEXT
  = dyn_glProgramUniformMatrix2x4fvEXT
      ptr_glProgramUniformMatrix2x4fvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2x4fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3x2fvEXT #-}
 
ptr_glProgramUniformMatrix3x2fvEXT :: FunPtr a
ptr_glProgramUniformMatrix3x2fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix3x2fvEXT"
 
glProgramUniformMatrix3x2fvEXT ::
                               GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix3x2fvEXT
  = dyn_glProgramUniformMatrix3x2fvEXT
      ptr_glProgramUniformMatrix3x2fvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3x2fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2x3fvEXT #-}
 
ptr_glProgramUniformMatrix2x3fvEXT :: FunPtr a
ptr_glProgramUniformMatrix2x3fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix2x3fvEXT"
 
glProgramUniformMatrix2x3fvEXT ::
                               GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix2x3fvEXT
  = dyn_glProgramUniformMatrix2x3fvEXT
      ptr_glProgramUniformMatrix2x3fvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2x3fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4fvEXT #-}
 
ptr_glProgramUniformMatrix4fvEXT :: FunPtr a
ptr_glProgramUniformMatrix4fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix4fvEXT"
 
glProgramUniformMatrix4fvEXT ::
                             GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix4fvEXT
  = dyn_glProgramUniformMatrix4fvEXT ptr_glProgramUniformMatrix4fvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3fvEXT #-}
 
ptr_glProgramUniformMatrix3fvEXT :: FunPtr a
ptr_glProgramUniformMatrix3fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix3fvEXT"
 
glProgramUniformMatrix3fvEXT ::
                             GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix3fvEXT
  = dyn_glProgramUniformMatrix3fvEXT ptr_glProgramUniformMatrix3fvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2fvEXT #-}
 
ptr_glProgramUniformMatrix2fvEXT :: FunPtr a
ptr_glProgramUniformMatrix2fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix2fvEXT"
 
glProgramUniformMatrix2fvEXT ::
                             GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix2fvEXT
  = dyn_glProgramUniformMatrix2fvEXT ptr_glProgramUniformMatrix2fvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4ivEXT #-}
 
ptr_glProgramUniform4ivEXT :: FunPtr a
ptr_glProgramUniform4ivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4ivEXT"
 
glProgramUniform4ivEXT ::
                       GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()
glProgramUniform4ivEXT
  = dyn_glProgramUniform4ivEXT ptr_glProgramUniform4ivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4ivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3ivEXT #-}
 
ptr_glProgramUniform3ivEXT :: FunPtr a
ptr_glProgramUniform3ivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3ivEXT"
 
glProgramUniform3ivEXT ::
                       GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()
glProgramUniform3ivEXT
  = dyn_glProgramUniform3ivEXT ptr_glProgramUniform3ivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3ivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2ivEXT #-}
 
ptr_glProgramUniform2ivEXT :: FunPtr a
ptr_glProgramUniform2ivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2ivEXT"
 
glProgramUniform2ivEXT ::
                       GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()
glProgramUniform2ivEXT
  = dyn_glProgramUniform2ivEXT ptr_glProgramUniform2ivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2ivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1ivEXT #-}
 
ptr_glProgramUniform1ivEXT :: FunPtr a
ptr_glProgramUniform1ivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1ivEXT"
 
glProgramUniform1ivEXT ::
                       GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()
glProgramUniform1ivEXT
  = dyn_glProgramUniform1ivEXT ptr_glProgramUniform1ivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1ivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4fvEXT #-}
 
ptr_glProgramUniform4fvEXT :: FunPtr a
ptr_glProgramUniform4fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4fvEXT"
 
glProgramUniform4fvEXT ::
                       GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramUniform4fvEXT
  = dyn_glProgramUniform4fvEXT ptr_glProgramUniform4fvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4fvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3fvEXT #-}
 
ptr_glProgramUniform3fvEXT :: FunPtr a
ptr_glProgramUniform3fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3fvEXT"
 
glProgramUniform3fvEXT ::
                       GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramUniform3fvEXT
  = dyn_glProgramUniform3fvEXT ptr_glProgramUniform3fvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3fvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2fvEXT #-}
 
ptr_glProgramUniform2fvEXT :: FunPtr a
ptr_glProgramUniform2fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2fvEXT"
 
glProgramUniform2fvEXT ::
                       GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramUniform2fvEXT
  = dyn_glProgramUniform2fvEXT ptr_glProgramUniform2fvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2fvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1fvEXT #-}
 
ptr_glProgramUniform1fvEXT :: FunPtr a
ptr_glProgramUniform1fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1fvEXT"
 
glProgramUniform1fvEXT ::
                       GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramUniform1fvEXT
  = dyn_glProgramUniform1fvEXT ptr_glProgramUniform1fvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1fvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4iEXT #-}
 
ptr_glProgramUniform4iEXT :: FunPtr a
ptr_glProgramUniform4iEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4iEXT"
 
glProgramUniform4iEXT ::
                      GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> IO ()
glProgramUniform4iEXT
  = dyn_glProgramUniform4iEXT ptr_glProgramUniform4iEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4iEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3iEXT #-}
 
ptr_glProgramUniform3iEXT :: FunPtr a
ptr_glProgramUniform3iEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3iEXT"
 
glProgramUniform3iEXT ::
                      GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
glProgramUniform3iEXT
  = dyn_glProgramUniform3iEXT ptr_glProgramUniform3iEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3iEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2iEXT #-}
 
ptr_glProgramUniform2iEXT :: FunPtr a
ptr_glProgramUniform2iEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2iEXT"
 
glProgramUniform2iEXT :: GLuint -> GLint -> GLint -> GLint -> IO ()
glProgramUniform2iEXT
  = dyn_glProgramUniform2iEXT ptr_glProgramUniform2iEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2iEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1iEXT #-}
 
ptr_glProgramUniform1iEXT :: FunPtr a
ptr_glProgramUniform1iEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1iEXT"
 
glProgramUniform1iEXT :: GLuint -> GLint -> GLint -> IO ()
glProgramUniform1iEXT
  = dyn_glProgramUniform1iEXT ptr_glProgramUniform1iEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1iEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4fEXT #-}
 
ptr_glProgramUniform4fEXT :: FunPtr a
ptr_glProgramUniform4fEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4fEXT"
 
glProgramUniform4fEXT ::
                      GLuint ->
                        GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glProgramUniform4fEXT
  = dyn_glProgramUniform4fEXT ptr_glProgramUniform4fEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4fEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3fEXT #-}
 
ptr_glProgramUniform3fEXT :: FunPtr a
ptr_glProgramUniform3fEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3fEXT"
 
glProgramUniform3fEXT ::
                      GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> IO ()
glProgramUniform3fEXT
  = dyn_glProgramUniform3fEXT ptr_glProgramUniform3fEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3fEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2fEXT #-}
 
ptr_glProgramUniform2fEXT :: FunPtr a
ptr_glProgramUniform2fEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2fEXT"
 
glProgramUniform2fEXT ::
                      GLuint -> GLint -> GLfloat -> GLfloat -> IO ()
glProgramUniform2fEXT
  = dyn_glProgramUniform2fEXT ptr_glProgramUniform2fEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2fEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1fEXT #-}
 
ptr_glProgramUniform1fEXT :: FunPtr a
ptr_glProgramUniform1fEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1fEXT"
 
glProgramUniform1fEXT :: GLuint -> GLint -> GLfloat -> IO ()
glProgramUniform1fEXT
  = dyn_glProgramUniform1fEXT ptr_glProgramUniform1fEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1fEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexParameterIuivEXT #-}
 
ptr_glGetMultiTexParameterIuivEXT :: FunPtr a
ptr_glGetMultiTexParameterIuivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexParameterIuivEXT"
 
glGetMultiTexParameterIuivEXT ::
                              GLenum -> GLenum -> GLenum -> Ptr GLuint -> IO ()
glGetMultiTexParameterIuivEXT
  = dyn_glGetMultiTexParameterIuivEXT
      ptr_glGetMultiTexParameterIuivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMultiTexParameterIuivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexParameterIivEXT #-}
 
ptr_glGetMultiTexParameterIivEXT :: FunPtr a
ptr_glGetMultiTexParameterIivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexParameterIivEXT"
 
glGetMultiTexParameterIivEXT ::
                             GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetMultiTexParameterIivEXT
  = dyn_glGetMultiTexParameterIivEXT ptr_glGetMultiTexParameterIivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMultiTexParameterIivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexParameterIuivEXT #-}
 
ptr_glMultiTexParameterIuivEXT :: FunPtr a
ptr_glMultiTexParameterIuivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexParameterIuivEXT"
 
glMultiTexParameterIuivEXT ::
                           GLenum -> GLenum -> GLenum -> Ptr GLuint -> IO ()
glMultiTexParameterIuivEXT
  = dyn_glMultiTexParameterIuivEXT ptr_glMultiTexParameterIuivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiTexParameterIuivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glMultiTexParameterIivEXT #-}
 
ptr_glMultiTexParameterIivEXT :: FunPtr a
ptr_glMultiTexParameterIivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexParameterIivEXT"
 
glMultiTexParameterIivEXT ::
                          GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glMultiTexParameterIivEXT
  = dyn_glMultiTexParameterIivEXT ptr_glMultiTexParameterIivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiTexParameterIivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTextureParameterIuivEXT #-}
 
ptr_glGetTextureParameterIuivEXT :: FunPtr a
ptr_glGetTextureParameterIuivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetTextureParameterIuivEXT"
 
glGetTextureParameterIuivEXT ::
                             GLuint -> GLenum -> GLenum -> Ptr GLuint -> IO ()
glGetTextureParameterIuivEXT
  = dyn_glGetTextureParameterIuivEXT ptr_glGetTextureParameterIuivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTextureParameterIuivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetTextureParameterIivEXT #-}
 
ptr_glGetTextureParameterIivEXT :: FunPtr a
ptr_glGetTextureParameterIivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetTextureParameterIivEXT"
 
glGetTextureParameterIivEXT ::
                            GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetTextureParameterIivEXT
  = dyn_glGetTextureParameterIivEXT ptr_glGetTextureParameterIivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTextureParameterIivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTextureParameterIuivEXT #-}
 
ptr_glTextureParameterIuivEXT :: FunPtr a
ptr_glTextureParameterIuivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureParameterIuivEXT"
 
glTextureParameterIuivEXT ::
                          GLuint -> GLenum -> GLenum -> Ptr GLuint -> IO ()
glTextureParameterIuivEXT
  = dyn_glTextureParameterIuivEXT ptr_glTextureParameterIuivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTextureParameterIuivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glTextureParameterIivEXT #-}
 
ptr_glTextureParameterIivEXT :: FunPtr a
ptr_glTextureParameterIivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureParameterIivEXT"
 
glTextureParameterIivEXT ::
                         GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()
glTextureParameterIivEXT
  = dyn_glTextureParameterIivEXT ptr_glTextureParameterIivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glTextureParameterIivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetNamedProgramLocalParameterIuivEXT #-}
 
ptr_glGetNamedProgramLocalParameterIuivEXT :: FunPtr a
ptr_glGetNamedProgramLocalParameterIuivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedProgramLocalParameterIuivEXT"
 
glGetNamedProgramLocalParameterIuivEXT ::
                                       GLuint -> GLenum -> GLuint -> Ptr GLuint -> IO ()
glGetNamedProgramLocalParameterIuivEXT
  = dyn_glGetNamedProgramLocalParameterIuivEXT
      ptr_glGetNamedProgramLocalParameterIuivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedProgramLocalParameterIuivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetNamedProgramLocalParameterIivEXT #-}
 
ptr_glGetNamedProgramLocalParameterIivEXT :: FunPtr a
ptr_glGetNamedProgramLocalParameterIivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedProgramLocalParameterIivEXT"
 
glGetNamedProgramLocalParameterIivEXT ::
                                      GLuint -> GLenum -> GLuint -> Ptr GLint -> IO ()
glGetNamedProgramLocalParameterIivEXT
  = dyn_glGetNamedProgramLocalParameterIivEXT
      ptr_glGetNamedProgramLocalParameterIivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedProgramLocalParameterIivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParametersI4uivEXT #-}
 
ptr_glNamedProgramLocalParametersI4uivEXT :: FunPtr a
ptr_glNamedProgramLocalParametersI4uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParametersI4uivEXT"
 
glNamedProgramLocalParametersI4uivEXT ::
                                      GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ()
glNamedProgramLocalParametersI4uivEXT
  = dyn_glNamedProgramLocalParametersI4uivEXT
      ptr_glNamedProgramLocalParametersI4uivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParametersI4uivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameterI4uivEXT #-}
 
ptr_glNamedProgramLocalParameterI4uivEXT :: FunPtr a
ptr_glNamedProgramLocalParameterI4uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameterI4uivEXT"
 
glNamedProgramLocalParameterI4uivEXT ::
                                     GLuint -> GLenum -> GLuint -> Ptr GLuint -> IO ()
glNamedProgramLocalParameterI4uivEXT
  = dyn_glNamedProgramLocalParameterI4uivEXT
      ptr_glNamedProgramLocalParameterI4uivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameterI4uivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameterI4uiEXT #-}
 
ptr_glNamedProgramLocalParameterI4uiEXT :: FunPtr a
ptr_glNamedProgramLocalParameterI4uiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameterI4uiEXT"
 
glNamedProgramLocalParameterI4uiEXT ::
                                    GLuint ->
                                      GLenum ->
                                        GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glNamedProgramLocalParameterI4uiEXT
  = dyn_glNamedProgramLocalParameterI4uiEXT
      ptr_glNamedProgramLocalParameterI4uiEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameterI4uiEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParametersI4ivEXT #-}
 
ptr_glNamedProgramLocalParametersI4ivEXT :: FunPtr a
ptr_glNamedProgramLocalParametersI4ivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParametersI4ivEXT"
 
glNamedProgramLocalParametersI4ivEXT ::
                                     GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ()
glNamedProgramLocalParametersI4ivEXT
  = dyn_glNamedProgramLocalParametersI4ivEXT
      ptr_glNamedProgramLocalParametersI4ivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParametersI4ivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameterI4ivEXT #-}
 
ptr_glNamedProgramLocalParameterI4ivEXT :: FunPtr a
ptr_glNamedProgramLocalParameterI4ivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameterI4ivEXT"
 
glNamedProgramLocalParameterI4ivEXT ::
                                    GLuint -> GLenum -> GLuint -> Ptr GLint -> IO ()
glNamedProgramLocalParameterI4ivEXT
  = dyn_glNamedProgramLocalParameterI4ivEXT
      ptr_glNamedProgramLocalParameterI4ivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameterI4ivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameterI4iEXT #-}
 
ptr_glNamedProgramLocalParameterI4iEXT :: FunPtr a
ptr_glNamedProgramLocalParameterI4iEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameterI4iEXT"
 
glNamedProgramLocalParameterI4iEXT ::
                                   GLuint ->
                                     GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
glNamedProgramLocalParameterI4iEXT
  = dyn_glNamedProgramLocalParameterI4iEXT
      ptr_glNamedProgramLocalParameterI4iEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameterI4iEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameters4fvEXT #-}
 
ptr_glNamedProgramLocalParameters4fvEXT :: FunPtr a
ptr_glNamedProgramLocalParameters4fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameters4fvEXT"
 
glNamedProgramLocalParameters4fvEXT ::
                                    GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glNamedProgramLocalParameters4fvEXT
  = dyn_glNamedProgramLocalParameters4fvEXT
      ptr_glNamedProgramLocalParameters4fvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameters4fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetNamedProgramStringEXT #-}
 
ptr_glGetNamedProgramStringEXT :: FunPtr a
ptr_glGetNamedProgramStringEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedProgramStringEXT"
 
glGetNamedProgramStringEXT ::
                           GLuint -> GLenum -> GLenum -> Ptr a -> IO ()
glGetNamedProgramStringEXT
  = dyn_glGetNamedProgramStringEXT ptr_glGetNamedProgramStringEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedProgramStringEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetNamedProgramivEXT #-}
 
ptr_glGetNamedProgramivEXT :: FunPtr a
ptr_glGetNamedProgramivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedProgramivEXT"
 
glGetNamedProgramivEXT ::
                       GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetNamedProgramivEXT
  = dyn_glGetNamedProgramivEXT ptr_glGetNamedProgramivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetNamedProgramivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetNamedProgramLocalParameterfvEXT #-}
 
ptr_glGetNamedProgramLocalParameterfvEXT :: FunPtr a
ptr_glGetNamedProgramLocalParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedProgramLocalParameterfvEXT"
 
glGetNamedProgramLocalParameterfvEXT ::
                                     GLuint -> GLenum -> GLuint -> Ptr GLfloat -> IO ()
glGetNamedProgramLocalParameterfvEXT
  = dyn_glGetNamedProgramLocalParameterfvEXT
      ptr_glGetNamedProgramLocalParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedProgramLocalParameterfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetNamedProgramLocalParameterdvEXT #-}
 
ptr_glGetNamedProgramLocalParameterdvEXT :: FunPtr a
ptr_glGetNamedProgramLocalParameterdvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedProgramLocalParameterdvEXT"
 
glGetNamedProgramLocalParameterdvEXT ::
                                     GLuint -> GLenum -> GLuint -> Ptr GLdouble -> IO ()
glGetNamedProgramLocalParameterdvEXT
  = dyn_glGetNamedProgramLocalParameterdvEXT
      ptr_glGetNamedProgramLocalParameterdvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedProgramLocalParameterdvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameter4fvEXT #-}
 
ptr_glNamedProgramLocalParameter4fvEXT :: FunPtr a
ptr_glNamedProgramLocalParameter4fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameter4fvEXT"
 
glNamedProgramLocalParameter4fvEXT ::
                                   GLuint -> GLenum -> GLuint -> Ptr GLfloat -> IO ()
glNamedProgramLocalParameter4fvEXT
  = dyn_glNamedProgramLocalParameter4fvEXT
      ptr_glNamedProgramLocalParameter4fvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameter4fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameter4fEXT #-}
 
ptr_glNamedProgramLocalParameter4fEXT :: FunPtr a
ptr_glNamedProgramLocalParameter4fEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameter4fEXT"
 
glNamedProgramLocalParameter4fEXT ::
                                  GLuint ->
                                    GLenum ->
                                      GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glNamedProgramLocalParameter4fEXT
  = dyn_glNamedProgramLocalParameter4fEXT
      ptr_glNamedProgramLocalParameter4fEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameter4fEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameter4dvEXT #-}
 
ptr_glNamedProgramLocalParameter4dvEXT :: FunPtr a
ptr_glNamedProgramLocalParameter4dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameter4dvEXT"
 
glNamedProgramLocalParameter4dvEXT ::
                                   GLuint -> GLenum -> GLuint -> Ptr GLdouble -> IO ()
glNamedProgramLocalParameter4dvEXT
  = dyn_glNamedProgramLocalParameter4dvEXT
      ptr_glNamedProgramLocalParameter4dvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameter4dvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameter4dEXT #-}
 
ptr_glNamedProgramLocalParameter4dEXT :: FunPtr a
ptr_glNamedProgramLocalParameter4dEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameter4dEXT"
 
glNamedProgramLocalParameter4dEXT ::
                                  GLuint ->
                                    GLenum ->
                                      GLuint ->
                                        GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glNamedProgramLocalParameter4dEXT
  = dyn_glNamedProgramLocalParameter4dEXT
      ptr_glNamedProgramLocalParameter4dEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameter4dEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glNamedProgramStringEXT #-}
 
ptr_glNamedProgramStringEXT :: FunPtr a
ptr_glNamedProgramStringEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramStringEXT"
 
glNamedProgramStringEXT ::
                        GLuint -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glNamedProgramStringEXT
  = dyn_glNamedProgramStringEXT ptr_glNamedProgramStringEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glNamedProgramStringEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetCompressedMultiTexImageEXT #-}
 
ptr_glGetCompressedMultiTexImageEXT :: FunPtr a
ptr_glGetCompressedMultiTexImageEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetCompressedMultiTexImageEXT"
 
glGetCompressedMultiTexImageEXT ::
                                GLenum -> GLenum -> GLint -> Ptr a -> IO ()
glGetCompressedMultiTexImageEXT
  = dyn_glGetCompressedMultiTexImageEXT
      ptr_glGetCompressedMultiTexImageEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCompressedMultiTexImageEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedMultiTexSubImage1DEXT #-}
 
ptr_glCompressedMultiTexSubImage1DEXT :: FunPtr a
ptr_glCompressedMultiTexSubImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedMultiTexSubImage1DEXT"
 
glCompressedMultiTexSubImage1DEXT ::
                                  GLenum ->
                                    GLenum ->
                                      GLint ->
                                        GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedMultiTexSubImage1DEXT
  = dyn_glCompressedMultiTexSubImage1DEXT
      ptr_glCompressedMultiTexSubImage1DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedMultiTexSubImage1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedMultiTexSubImage2DEXT #-}
 
ptr_glCompressedMultiTexSubImage2DEXT :: FunPtr a
ptr_glCompressedMultiTexSubImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedMultiTexSubImage2DEXT"
 
glCompressedMultiTexSubImage2DEXT ::
                                  GLenum ->
                                    GLenum ->
                                      GLint ->
                                        GLint ->
                                          GLint ->
                                            GLsizei ->
                                              GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedMultiTexSubImage2DEXT
  = dyn_glCompressedMultiTexSubImage2DEXT
      ptr_glCompressedMultiTexSubImage2DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedMultiTexSubImage2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedMultiTexSubImage3DEXT #-}
 
ptr_glCompressedMultiTexSubImage3DEXT :: FunPtr a
ptr_glCompressedMultiTexSubImage3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedMultiTexSubImage3DEXT"
 
glCompressedMultiTexSubImage3DEXT ::
                                  GLenum ->
                                    GLenum ->
                                      GLint ->
                                        GLint ->
                                          GLint ->
                                            GLint ->
                                              GLsizei ->
                                                GLsizei ->
                                                  GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedMultiTexSubImage3DEXT
  = dyn_glCompressedMultiTexSubImage3DEXT
      ptr_glCompressedMultiTexSubImage3DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedMultiTexSubImage3DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLsizei ->
                                GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedMultiTexImage1DEXT #-}
 
ptr_glCompressedMultiTexImage1DEXT :: FunPtr a
ptr_glCompressedMultiTexImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedMultiTexImage1DEXT"
 
glCompressedMultiTexImage1DEXT ::
                               GLenum ->
                                 GLenum ->
                                   GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedMultiTexImage1DEXT
  = dyn_glCompressedMultiTexImage1DEXT
      ptr_glCompressedMultiTexImage1DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedMultiTexImage1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedMultiTexImage2DEXT #-}
 
ptr_glCompressedMultiTexImage2DEXT :: FunPtr a
ptr_glCompressedMultiTexImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedMultiTexImage2DEXT"
 
glCompressedMultiTexImage2DEXT ::
                               GLenum ->
                                 GLenum ->
                                   GLint ->
                                     GLenum ->
                                       GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedMultiTexImage2DEXT
  = dyn_glCompressedMultiTexImage2DEXT
      ptr_glCompressedMultiTexImage2DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedMultiTexImage2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedMultiTexImage3DEXT #-}
 
ptr_glCompressedMultiTexImage3DEXT :: FunPtr a
ptr_glCompressedMultiTexImage3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedMultiTexImage3DEXT"
 
glCompressedMultiTexImage3DEXT ::
                               GLenum ->
                                 GLenum ->
                                   GLint ->
                                     GLenum ->
                                       GLsizei ->
                                         GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedMultiTexImage3DEXT
  = dyn_glCompressedMultiTexImage3DEXT
      ptr_glCompressedMultiTexImage3DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedMultiTexImage3DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum ->
                          GLsizei ->
                            GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetCompressedTextureImageEXT #-}
 
ptr_glGetCompressedTextureImageEXT :: FunPtr a
ptr_glGetCompressedTextureImageEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetCompressedTextureImageEXT"
 
glGetCompressedTextureImageEXT ::
                               GLuint -> GLenum -> GLint -> Ptr a -> IO ()
glGetCompressedTextureImageEXT
  = dyn_glGetCompressedTextureImageEXT
      ptr_glGetCompressedTextureImageEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCompressedTextureImageEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTextureSubImage1DEXT #-}
 
ptr_glCompressedTextureSubImage1DEXT :: FunPtr a
ptr_glCompressedTextureSubImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedTextureSubImage1DEXT"
 
glCompressedTextureSubImage1DEXT ::
                                 GLuint ->
                                   GLenum ->
                                     GLint ->
                                       GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTextureSubImage1DEXT
  = dyn_glCompressedTextureSubImage1DEXT
      ptr_glCompressedTextureSubImage1DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTextureSubImage1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTextureSubImage2DEXT #-}
 
ptr_glCompressedTextureSubImage2DEXT :: FunPtr a
ptr_glCompressedTextureSubImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedTextureSubImage2DEXT"
 
glCompressedTextureSubImage2DEXT ::
                                 GLuint ->
                                   GLenum ->
                                     GLint ->
                                       GLint ->
                                         GLint ->
                                           GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTextureSubImage2DEXT
  = dyn_glCompressedTextureSubImage2DEXT
      ptr_glCompressedTextureSubImage2DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTextureSubImage2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTextureSubImage3DEXT #-}
 
ptr_glCompressedTextureSubImage3DEXT :: FunPtr a
ptr_glCompressedTextureSubImage3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedTextureSubImage3DEXT"
 
glCompressedTextureSubImage3DEXT ::
                                 GLuint ->
                                   GLenum ->
                                     GLint ->
                                       GLint ->
                                         GLint ->
                                           GLint ->
                                             GLsizei ->
                                               GLsizei ->
                                                 GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTextureSubImage3DEXT
  = dyn_glCompressedTextureSubImage3DEXT
      ptr_glCompressedTextureSubImage3DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTextureSubImage3DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLsizei ->
                                GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTextureImage1DEXT #-}
 
ptr_glCompressedTextureImage1DEXT :: FunPtr a
ptr_glCompressedTextureImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedTextureImage1DEXT"
 
glCompressedTextureImage1DEXT ::
                              GLuint ->
                                GLenum ->
                                  GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTextureImage1DEXT
  = dyn_glCompressedTextureImage1DEXT
      ptr_glCompressedTextureImage1DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTextureImage1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTextureImage2DEXT #-}
 
ptr_glCompressedTextureImage2DEXT :: FunPtr a
ptr_glCompressedTextureImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedTextureImage2DEXT"
 
glCompressedTextureImage2DEXT ::
                              GLuint ->
                                GLenum ->
                                  GLint ->
                                    GLenum ->
                                      GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTextureImage2DEXT
  = dyn_glCompressedTextureImage2DEXT
      ptr_glCompressedTextureImage2DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTextureImage2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTextureImage3DEXT #-}
 
ptr_glCompressedTextureImage3DEXT :: FunPtr a
ptr_glCompressedTextureImage3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedTextureImage3DEXT"
 
glCompressedTextureImage3DEXT ::
                              GLuint ->
                                GLenum ->
                                  GLint ->
                                    GLenum ->
                                      GLsizei ->
                                        GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTextureImage3DEXT
  = dyn_glCompressedTextureImage3DEXT
      ptr_glCompressedTextureImage3DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTextureImage3DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLenum ->
                          GLsizei ->
                            GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetPointerIndexedvEXT #-}
 
ptr_glGetPointerIndexedvEXT :: FunPtr a
ptr_glGetPointerIndexedvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetPointerIndexedvEXT"
 
glGetPointerIndexedvEXT :: GLenum -> GLuint -> Ptr (Ptr a) -> IO ()
glGetPointerIndexedvEXT
  = dyn_glGetPointerIndexedvEXT ptr_glGetPointerIndexedvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPointerIndexedvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glGetDoubleIndexedvEXT #-}
 
ptr_glGetDoubleIndexedvEXT :: FunPtr a
ptr_glGetDoubleIndexedvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetDoubleIndexedvEXT"
 
glGetDoubleIndexedvEXT :: GLenum -> GLuint -> Ptr GLdouble -> IO ()
glGetDoubleIndexedvEXT
  = dyn_glGetDoubleIndexedvEXT ptr_glGetDoubleIndexedvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetDoubleIndexedvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetFloatIndexedvEXT #-}
 
ptr_glGetFloatIndexedvEXT :: FunPtr a
ptr_glGetFloatIndexedvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetFloatIndexedvEXT"
 
glGetFloatIndexedvEXT :: GLenum -> GLuint -> Ptr GLfloat -> IO ()
glGetFloatIndexedvEXT
  = dyn_glGetFloatIndexedvEXT ptr_glGetFloatIndexedvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetFloatIndexedvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexGenivEXT #-}
 
ptr_glGetMultiTexGenivEXT :: FunPtr a
ptr_glGetMultiTexGenivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexGenivEXT"
 
glGetMultiTexGenivEXT ::
                      GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetMultiTexGenivEXT
  = dyn_glGetMultiTexGenivEXT ptr_glGetMultiTexGenivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultiTexGenivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexGenfvEXT #-}
 
ptr_glGetMultiTexGenfvEXT :: FunPtr a
ptr_glGetMultiTexGenfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexGenfvEXT"
 
glGetMultiTexGenfvEXT ::
                      GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetMultiTexGenfvEXT
  = dyn_glGetMultiTexGenfvEXT ptr_glGetMultiTexGenfvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultiTexGenfvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexGendvEXT #-}
 
ptr_glGetMultiTexGendvEXT :: FunPtr a
ptr_glGetMultiTexGendvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexGendvEXT"
 
glGetMultiTexGendvEXT ::
                      GLenum -> GLenum -> GLenum -> Ptr GLdouble -> IO ()
glGetMultiTexGendvEXT
  = dyn_glGetMultiTexGendvEXT ptr_glGetMultiTexGendvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultiTexGendvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexEnvivEXT #-}
 
ptr_glGetMultiTexEnvivEXT :: FunPtr a
ptr_glGetMultiTexEnvivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexEnvivEXT"
 
glGetMultiTexEnvivEXT ::
                      GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetMultiTexEnvivEXT
  = dyn_glGetMultiTexEnvivEXT ptr_glGetMultiTexEnvivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultiTexEnvivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexEnvfvEXT #-}
 
ptr_glGetMultiTexEnvfvEXT :: FunPtr a
ptr_glGetMultiTexEnvfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexEnvfvEXT"
 
glGetMultiTexEnvfvEXT ::
                      GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetMultiTexEnvfvEXT
  = dyn_glGetMultiTexEnvfvEXT ptr_glGetMultiTexEnvfvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultiTexEnvfvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexGenivEXT #-}
 
ptr_glMultiTexGenivEXT :: FunPtr a
ptr_glMultiTexGenivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexGenivEXT"
 
glMultiTexGenivEXT ::
                   GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glMultiTexGenivEXT = dyn_glMultiTexGenivEXT ptr_glMultiTexGenivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexGenivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexGeniEXT #-}
 
ptr_glMultiTexGeniEXT :: FunPtr a
ptr_glMultiTexGeniEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexGeniEXT"
 
glMultiTexGeniEXT :: GLenum -> GLenum -> GLenum -> GLint -> IO ()
glMultiTexGeniEXT = dyn_glMultiTexGeniEXT ptr_glMultiTexGeniEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexGeniEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexGenfvEXT #-}
 
ptr_glMultiTexGenfvEXT :: FunPtr a
ptr_glMultiTexGenfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexGenfvEXT"
 
glMultiTexGenfvEXT ::
                   GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glMultiTexGenfvEXT = dyn_glMultiTexGenfvEXT ptr_glMultiTexGenfvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexGenfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexGenfEXT #-}
 
ptr_glMultiTexGenfEXT :: FunPtr a
ptr_glMultiTexGenfEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexGenfEXT"
 
glMultiTexGenfEXT :: GLenum -> GLenum -> GLenum -> GLfloat -> IO ()
glMultiTexGenfEXT = dyn_glMultiTexGenfEXT ptr_glMultiTexGenfEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexGenfEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexGendvEXT #-}
 
ptr_glMultiTexGendvEXT :: FunPtr a
ptr_glMultiTexGendvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexGendvEXT"
 
glMultiTexGendvEXT ::
                   GLenum -> GLenum -> GLenum -> Ptr GLdouble -> IO ()
glMultiTexGendvEXT = dyn_glMultiTexGendvEXT ptr_glMultiTexGendvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexGendvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexGendEXT #-}
 
ptr_glMultiTexGendEXT :: FunPtr a
ptr_glMultiTexGendEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexGendEXT"
 
glMultiTexGendEXT ::
                  GLenum -> GLenum -> GLenum -> GLdouble -> IO ()
glMultiTexGendEXT = dyn_glMultiTexGendEXT ptr_glMultiTexGendEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexGendEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexEnvivEXT #-}
 
ptr_glMultiTexEnvivEXT :: FunPtr a
ptr_glMultiTexEnvivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexEnvivEXT"
 
glMultiTexEnvivEXT ::
                   GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glMultiTexEnvivEXT = dyn_glMultiTexEnvivEXT ptr_glMultiTexEnvivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexEnvivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexEnviEXT #-}
 
ptr_glMultiTexEnviEXT :: FunPtr a
ptr_glMultiTexEnviEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexEnviEXT"
 
glMultiTexEnviEXT :: GLenum -> GLenum -> GLenum -> GLint -> IO ()
glMultiTexEnviEXT = dyn_glMultiTexEnviEXT ptr_glMultiTexEnviEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexEnviEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexEnvfvEXT #-}
 
ptr_glMultiTexEnvfvEXT :: FunPtr a
ptr_glMultiTexEnvfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexEnvfvEXT"
 
glMultiTexEnvfvEXT ::
                   GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glMultiTexEnvfvEXT = dyn_glMultiTexEnvfvEXT ptr_glMultiTexEnvfvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexEnvfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexEnvfEXT #-}
 
ptr_glMultiTexEnvfEXT :: FunPtr a
ptr_glMultiTexEnvfEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexEnvfEXT"
 
glMultiTexEnvfEXT :: GLenum -> GLenum -> GLenum -> GLfloat -> IO ()
glMultiTexEnvfEXT = dyn_glMultiTexEnvfEXT ptr_glMultiTexEnvfEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexEnvfEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoordPointerEXT #-}
 
ptr_glMultiTexCoordPointerEXT :: FunPtr a
ptr_glMultiTexCoordPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexCoordPointerEXT"
 
glMultiTexCoordPointerEXT ::
                          GLenum -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glMultiTexCoordPointerEXT
  = dyn_glMultiTexCoordPointerEXT ptr_glMultiTexCoordPointerEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiTexCoordPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glDisableClientStateIndexedEXT #-}
 
ptr_glDisableClientStateIndexedEXT :: FunPtr a
ptr_glDisableClientStateIndexedEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glDisableClientStateIndexedEXT"
 
glDisableClientStateIndexedEXT :: GLenum -> GLuint -> IO ()
glDisableClientStateIndexedEXT
  = dyn_glDisableClientStateIndexedEXT
      ptr_glDisableClientStateIndexedEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDisableClientStateIndexedEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glEnableClientStateIndexedEXT #-}
 
ptr_glEnableClientStateIndexedEXT :: FunPtr a
ptr_glEnableClientStateIndexedEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glEnableClientStateIndexedEXT"
 
glEnableClientStateIndexedEXT :: GLenum -> GLuint -> IO ()
glEnableClientStateIndexedEXT
  = dyn_glEnableClientStateIndexedEXT
      ptr_glEnableClientStateIndexedEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glEnableClientStateIndexedEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glBindMultiTextureEXT #-}
 
ptr_glBindMultiTextureEXT :: FunPtr a
ptr_glBindMultiTextureEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glBindMultiTextureEXT"
 
glBindMultiTextureEXT :: GLenum -> GLenum -> GLuint -> IO ()
glBindMultiTextureEXT
  = dyn_glBindMultiTextureEXT ptr_glBindMultiTextureEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindMultiTextureEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glCopyMultiTexSubImage3DEXT #-}
 
ptr_glCopyMultiTexSubImage3DEXT :: FunPtr a
ptr_glCopyMultiTexSubImage3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyMultiTexSubImage3DEXT"
 
glCopyMultiTexSubImage3DEXT ::
                            GLenum ->
                              GLenum ->
                                GLint ->
                                  GLint ->
                                    GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyMultiTexSubImage3DEXT
  = dyn_glCopyMultiTexSubImage3DEXT ptr_glCopyMultiTexSubImage3DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyMultiTexSubImage3DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glMultiTexSubImage3DEXT #-}
 
ptr_glMultiTexSubImage3DEXT :: FunPtr a
ptr_glMultiTexSubImage3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexSubImage3DEXT"
 
glMultiTexSubImage3DEXT ::
                        GLenum ->
                          GLenum ->
                            GLint ->
                              GLint ->
                                GLint ->
                                  GLint ->
                                    GLsizei ->
                                      GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glMultiTexSubImage3DEXT
  = dyn_glMultiTexSubImage3DEXT ptr_glMultiTexSubImage3DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexSubImage3DEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLsizei ->
                                GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glMultiTexImage3DEXT #-}
 
ptr_glMultiTexImage3DEXT :: FunPtr a
ptr_glMultiTexImage3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexImage3DEXT"
 
glMultiTexImage3DEXT ::
                     GLenum ->
                       GLenum ->
                         GLint ->
                           GLenum ->
                             GLsizei ->
                               GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glMultiTexImage3DEXT
  = dyn_glMultiTexImage3DEXT ptr_glMultiTexImage3DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexImage3DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum ->
                          GLsizei ->
                            GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexLevelParameterivEXT #-}
 
ptr_glGetMultiTexLevelParameterivEXT :: FunPtr a
ptr_glGetMultiTexLevelParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexLevelParameterivEXT"
 
glGetMultiTexLevelParameterivEXT ::
                                 GLenum -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO ()
glGetMultiTexLevelParameterivEXT
  = dyn_glGetMultiTexLevelParameterivEXT
      ptr_glGetMultiTexLevelParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMultiTexLevelParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexLevelParameterfvEXT #-}
 
ptr_glGetMultiTexLevelParameterfvEXT :: FunPtr a
ptr_glGetMultiTexLevelParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexLevelParameterfvEXT"
 
glGetMultiTexLevelParameterfvEXT ::
                                 GLenum -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ()
glGetMultiTexLevelParameterfvEXT
  = dyn_glGetMultiTexLevelParameterfvEXT
      ptr_glGetMultiTexLevelParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMultiTexLevelParameterfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexParameterivEXT #-}
 
ptr_glGetMultiTexParameterivEXT :: FunPtr a
ptr_glGetMultiTexParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexParameterivEXT"
 
glGetMultiTexParameterivEXT ::
                            GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetMultiTexParameterivEXT
  = dyn_glGetMultiTexParameterivEXT ptr_glGetMultiTexParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMultiTexParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexParameterfvEXT #-}
 
ptr_glGetMultiTexParameterfvEXT :: FunPtr a
ptr_glGetMultiTexParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexParameterfvEXT"
 
glGetMultiTexParameterfvEXT ::
                            GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetMultiTexParameterfvEXT
  = dyn_glGetMultiTexParameterfvEXT ptr_glGetMultiTexParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMultiTexParameterfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexImageEXT #-}
 
ptr_glGetMultiTexImageEXT :: FunPtr a
ptr_glGetMultiTexImageEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexImageEXT"
 
glGetMultiTexImageEXT ::
                      GLenum -> GLenum -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glGetMultiTexImageEXT
  = dyn_glGetMultiTexImageEXT ptr_glGetMultiTexImageEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultiTexImageEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCopyMultiTexSubImage2DEXT #-}
 
ptr_glCopyMultiTexSubImage2DEXT :: FunPtr a
ptr_glCopyMultiTexSubImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyMultiTexSubImage2DEXT"
 
glCopyMultiTexSubImage2DEXT ::
                            GLenum ->
                              GLenum ->
                                GLint ->
                                  GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyMultiTexSubImage2DEXT
  = dyn_glCopyMultiTexSubImage2DEXT ptr_glCopyMultiTexSubImage2DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyMultiTexSubImage2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyMultiTexSubImage1DEXT #-}
 
ptr_glCopyMultiTexSubImage1DEXT :: FunPtr a
ptr_glCopyMultiTexSubImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyMultiTexSubImage1DEXT"
 
glCopyMultiTexSubImage1DEXT ::
                            GLenum ->
                              GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()
glCopyMultiTexSubImage1DEXT
  = dyn_glCopyMultiTexSubImage1DEXT ptr_glCopyMultiTexSubImage1DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyMultiTexSubImage1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyMultiTexImage2DEXT #-}
 
ptr_glCopyMultiTexImage2DEXT :: FunPtr a
ptr_glCopyMultiTexImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyMultiTexImage2DEXT"
 
glCopyMultiTexImage2DEXT ::
                         GLenum ->
                           GLenum ->
                             GLint ->
                               GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()
glCopyMultiTexImage2DEXT
  = dyn_glCopyMultiTexImage2DEXT ptr_glCopyMultiTexImage2DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyMultiTexImage2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ())
 
{-# NOINLINE ptr_glCopyMultiTexImage1DEXT #-}
 
ptr_glCopyMultiTexImage1DEXT :: FunPtr a
ptr_glCopyMultiTexImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyMultiTexImage1DEXT"
 
glCopyMultiTexImage1DEXT ::
                         GLenum ->
                           GLenum ->
                             GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ()
glCopyMultiTexImage1DEXT
  = dyn_glCopyMultiTexImage1DEXT ptr_glCopyMultiTexImage1DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyMultiTexImage1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexSubImage2DEXT #-}
 
ptr_glMultiTexSubImage2DEXT :: FunPtr a
ptr_glMultiTexSubImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexSubImage2DEXT"
 
glMultiTexSubImage2DEXT ::
                        GLenum ->
                          GLenum ->
                            GLint ->
                              GLint ->
                                GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glMultiTexSubImage2DEXT
  = dyn_glMultiTexSubImage2DEXT ptr_glMultiTexSubImage2DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexSubImage2DEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glMultiTexSubImage1DEXT #-}
 
ptr_glMultiTexSubImage1DEXT :: FunPtr a
ptr_glMultiTexSubImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexSubImage1DEXT"
 
glMultiTexSubImage1DEXT ::
                        GLenum ->
                          GLenum ->
                            GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glMultiTexSubImage1DEXT
  = dyn_glMultiTexSubImage1DEXT ptr_glMultiTexSubImage1DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexSubImage1DEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glMultiTexImage2DEXT #-}
 
ptr_glMultiTexImage2DEXT :: FunPtr a
ptr_glMultiTexImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexImage2DEXT"
 
glMultiTexImage2DEXT ::
                     GLenum ->
                       GLenum ->
                         GLint ->
                           GLenum ->
                             GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glMultiTexImage2DEXT
  = dyn_glMultiTexImage2DEXT ptr_glMultiTexImage2DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexImage2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum ->
                          GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glMultiTexImage1DEXT #-}
 
ptr_glMultiTexImage1DEXT :: FunPtr a
ptr_glMultiTexImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexImage1DEXT"
 
glMultiTexImage1DEXT ::
                     GLenum ->
                       GLenum ->
                         GLint ->
                           GLenum -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glMultiTexImage1DEXT
  = dyn_glMultiTexImage1DEXT ptr_glMultiTexImage1DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexImage1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glMultiTexParameterivEXT #-}
 
ptr_glMultiTexParameterivEXT :: FunPtr a
ptr_glMultiTexParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexParameterivEXT"
 
glMultiTexParameterivEXT ::
                         GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glMultiTexParameterivEXT
  = dyn_glMultiTexParameterivEXT ptr_glMultiTexParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiTexParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexParameteriEXT #-}
 
ptr_glMultiTexParameteriEXT :: FunPtr a
ptr_glMultiTexParameteriEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexParameteriEXT"
 
glMultiTexParameteriEXT ::
                        GLenum -> GLenum -> GLenum -> GLint -> IO ()
glMultiTexParameteriEXT
  = dyn_glMultiTexParameteriEXT ptr_glMultiTexParameteriEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexParameteriEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexParameterfvEXT #-}
 
ptr_glMultiTexParameterfvEXT :: FunPtr a
ptr_glMultiTexParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexParameterfvEXT"
 
glMultiTexParameterfvEXT ::
                         GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glMultiTexParameterfvEXT
  = dyn_glMultiTexParameterfvEXT ptr_glMultiTexParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiTexParameterfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexParameterfEXT #-}
 
ptr_glMultiTexParameterfEXT :: FunPtr a
ptr_glMultiTexParameterfEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexParameterfEXT"
 
glMultiTexParameterfEXT ::
                        GLenum -> GLenum -> GLenum -> GLfloat -> IO ()
glMultiTexParameterfEXT
  = dyn_glMultiTexParameterfEXT ptr_glMultiTexParameterfEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexParameterfEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glCopyTextureSubImage3DEXT #-}
 
ptr_glCopyTextureSubImage3DEXT :: FunPtr a
ptr_glCopyTextureSubImage3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyTextureSubImage3DEXT"
 
glCopyTextureSubImage3DEXT ::
                           GLuint ->
                             GLenum ->
                               GLint ->
                                 GLint ->
                                   GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyTextureSubImage3DEXT
  = dyn_glCopyTextureSubImage3DEXT ptr_glCopyTextureSubImage3DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyTextureSubImage3DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glTextureSubImage3DEXT #-}
 
ptr_glTextureSubImage3DEXT :: FunPtr a
ptr_glTextureSubImage3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureSubImage3DEXT"
 
glTextureSubImage3DEXT ::
                       GLuint ->
                         GLenum ->
                           GLint ->
                             GLint ->
                               GLint ->
                                 GLint ->
                                   GLsizei ->
                                     GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTextureSubImage3DEXT
  = dyn_glTextureSubImage3DEXT ptr_glTextureSubImage3DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureSubImage3DEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLsizei ->
                                GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTextureImage3DEXT #-}
 
ptr_glTextureImage3DEXT :: FunPtr a
ptr_glTextureImage3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureImage3DEXT"
 
glTextureImage3DEXT ::
                    GLuint ->
                      GLenum ->
                        GLint ->
                          GLenum ->
                            GLsizei ->
                              GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glTextureImage3DEXT
  = dyn_glTextureImage3DEXT ptr_glTextureImage3DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureImage3DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLenum ->
                          GLsizei ->
                            GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetTextureLevelParameterivEXT #-}
 
ptr_glGetTextureLevelParameterivEXT :: FunPtr a
ptr_glGetTextureLevelParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetTextureLevelParameterivEXT"
 
glGetTextureLevelParameterivEXT ::
                                GLuint -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO ()
glGetTextureLevelParameterivEXT
  = dyn_glGetTextureLevelParameterivEXT
      ptr_glGetTextureLevelParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTextureLevelParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTextureLevelParameterfvEXT #-}
 
ptr_glGetTextureLevelParameterfvEXT :: FunPtr a
ptr_glGetTextureLevelParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetTextureLevelParameterfvEXT"
 
glGetTextureLevelParameterfvEXT ::
                                GLuint -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ()
glGetTextureLevelParameterfvEXT
  = dyn_glGetTextureLevelParameterfvEXT
      ptr_glGetTextureLevelParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTextureLevelParameterfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetTextureParameterivEXT #-}
 
ptr_glGetTextureParameterivEXT :: FunPtr a
ptr_glGetTextureParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetTextureParameterivEXT"
 
glGetTextureParameterivEXT ::
                           GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetTextureParameterivEXT
  = dyn_glGetTextureParameterivEXT ptr_glGetTextureParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTextureParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTextureParameterfvEXT #-}
 
ptr_glGetTextureParameterfvEXT :: FunPtr a
ptr_glGetTextureParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetTextureParameterfvEXT"
 
glGetTextureParameterfvEXT ::
                           GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetTextureParameterfvEXT
  = dyn_glGetTextureParameterfvEXT ptr_glGetTextureParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTextureParameterfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetTextureImageEXT #-}
 
ptr_glGetTextureImageEXT :: FunPtr a
ptr_glGetTextureImageEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetTextureImageEXT"
 
glGetTextureImageEXT ::
                     GLuint -> GLenum -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glGetTextureImageEXT
  = dyn_glGetTextureImageEXT ptr_glGetTextureImageEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTextureImageEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCopyTextureSubImage2DEXT #-}
 
ptr_glCopyTextureSubImage2DEXT :: FunPtr a
ptr_glCopyTextureSubImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyTextureSubImage2DEXT"
 
glCopyTextureSubImage2DEXT ::
                           GLuint ->
                             GLenum ->
                               GLint ->
                                 GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyTextureSubImage2DEXT
  = dyn_glCopyTextureSubImage2DEXT ptr_glCopyTextureSubImage2DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyTextureSubImage2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyTextureSubImage1DEXT #-}
 
ptr_glCopyTextureSubImage1DEXT :: FunPtr a
ptr_glCopyTextureSubImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyTextureSubImage1DEXT"
 
glCopyTextureSubImage1DEXT ::
                           GLuint ->
                             GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()
glCopyTextureSubImage1DEXT
  = dyn_glCopyTextureSubImage1DEXT ptr_glCopyTextureSubImage1DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyTextureSubImage1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyTextureImage2DEXT #-}
 
ptr_glCopyTextureImage2DEXT :: FunPtr a
ptr_glCopyTextureImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyTextureImage2DEXT"
 
glCopyTextureImage2DEXT ::
                        GLuint ->
                          GLenum ->
                            GLint ->
                              GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()
glCopyTextureImage2DEXT
  = dyn_glCopyTextureImage2DEXT ptr_glCopyTextureImage2DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTextureImage2DEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ())
 
{-# NOINLINE ptr_glCopyTextureImage1DEXT #-}
 
ptr_glCopyTextureImage1DEXT :: FunPtr a
ptr_glCopyTextureImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyTextureImage1DEXT"
 
glCopyTextureImage1DEXT ::
                        GLuint ->
                          GLenum ->
                            GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ()
glCopyTextureImage1DEXT
  = dyn_glCopyTextureImage1DEXT ptr_glCopyTextureImage1DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTextureImage1DEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ())
 
{-# NOINLINE ptr_glTextureSubImage2DEXT #-}
 
ptr_glTextureSubImage2DEXT :: FunPtr a
ptr_glTextureSubImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureSubImage2DEXT"
 
glTextureSubImage2DEXT ::
                       GLuint ->
                         GLenum ->
                           GLint ->
                             GLint ->
                               GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTextureSubImage2DEXT
  = dyn_glTextureSubImage2DEXT ptr_glTextureSubImage2DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureSubImage2DEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTextureSubImage1DEXT #-}
 
ptr_glTextureSubImage1DEXT :: FunPtr a
ptr_glTextureSubImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureSubImage1DEXT"
 
glTextureSubImage1DEXT ::
                       GLuint ->
                         GLenum ->
                           GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTextureSubImage1DEXT
  = dyn_glTextureSubImage1DEXT ptr_glTextureSubImage1DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureSubImage1DEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTextureImage2DEXT #-}
 
ptr_glTextureImage2DEXT :: FunPtr a
ptr_glTextureImage2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureImage2DEXT"
 
glTextureImage2DEXT ::
                    GLuint ->
                      GLenum ->
                        GLint ->
                          GLenum ->
                            GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glTextureImage2DEXT
  = dyn_glTextureImage2DEXT ptr_glTextureImage2DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureImage2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLenum ->
                          GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTextureImage1DEXT #-}
 
ptr_glTextureImage1DEXT :: FunPtr a
ptr_glTextureImage1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureImage1DEXT"
 
glTextureImage1DEXT ::
                    GLuint ->
                      GLenum ->
                        GLint ->
                          GLenum -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glTextureImage1DEXT
  = dyn_glTextureImage1DEXT ptr_glTextureImage1DEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureImage1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLenum -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTextureParameterivEXT #-}
 
ptr_glTextureParameterivEXT :: FunPtr a
ptr_glTextureParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureParameterivEXT"
 
glTextureParameterivEXT ::
                        GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()
glTextureParameterivEXT
  = dyn_glTextureParameterivEXT ptr_glTextureParameterivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureParameterivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTextureParameteriEXT #-}
 
ptr_glTextureParameteriEXT :: FunPtr a
ptr_glTextureParameteriEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureParameteriEXT"
 
glTextureParameteriEXT ::
                       GLuint -> GLenum -> GLenum -> GLint -> IO ()
glTextureParameteriEXT
  = dyn_glTextureParameteriEXT ptr_glTextureParameteriEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureParameteriEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glTextureParameterfvEXT #-}
 
ptr_glTextureParameterfvEXT :: FunPtr a
ptr_glTextureParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureParameterfvEXT"
 
glTextureParameterfvEXT ::
                        GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glTextureParameterfvEXT
  = dyn_glTextureParameterfvEXT ptr_glTextureParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureParameterfvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glTextureParameterfEXT #-}
 
ptr_glTextureParameterfEXT :: FunPtr a
ptr_glTextureParameterfEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureParameterfEXT"
 
glTextureParameterfEXT ::
                       GLuint -> GLenum -> GLenum -> GLfloat -> IO ()
glTextureParameterfEXT
  = dyn_glTextureParameterfEXT ptr_glTextureParameterfEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureParameterfEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixMultTransposedEXT #-}
 
ptr_glMatrixMultTransposedEXT :: FunPtr a
ptr_glMatrixMultTransposedEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixMultTransposedEXT"
 
glMatrixMultTransposedEXT :: GLenum -> Ptr GLdouble -> IO ()
glMatrixMultTransposedEXT
  = dyn_glMatrixMultTransposedEXT ptr_glMatrixMultTransposedEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMatrixMultTransposedEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixMultTransposefEXT #-}
 
ptr_glMatrixMultTransposefEXT :: FunPtr a
ptr_glMatrixMultTransposefEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixMultTransposefEXT"
 
glMatrixMultTransposefEXT :: GLenum -> Ptr GLfloat -> IO ()
glMatrixMultTransposefEXT
  = dyn_glMatrixMultTransposefEXT ptr_glMatrixMultTransposefEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMatrixMultTransposefEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixLoadTransposedEXT #-}
 
ptr_glMatrixLoadTransposedEXT :: FunPtr a
ptr_glMatrixLoadTransposedEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixLoadTransposedEXT"
 
glMatrixLoadTransposedEXT :: GLenum -> Ptr GLdouble -> IO ()
glMatrixLoadTransposedEXT
  = dyn_glMatrixLoadTransposedEXT ptr_glMatrixLoadTransposedEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMatrixLoadTransposedEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixLoadTransposefEXT #-}
 
ptr_glMatrixLoadTransposefEXT :: FunPtr a
ptr_glMatrixLoadTransposefEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixLoadTransposefEXT"
 
glMatrixLoadTransposefEXT :: GLenum -> Ptr GLfloat -> IO ()
glMatrixLoadTransposefEXT
  = dyn_glMatrixLoadTransposefEXT ptr_glMatrixLoadTransposefEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMatrixLoadTransposefEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixPushEXT #-}
 
ptr_glMatrixPushEXT :: FunPtr a
ptr_glMatrixPushEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixPushEXT"
 
glMatrixPushEXT :: GLenum -> IO ()
glMatrixPushEXT = dyn_glMatrixPushEXT ptr_glMatrixPushEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixPushEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glMatrixPopEXT #-}
 
ptr_glMatrixPopEXT :: FunPtr a
ptr_glMatrixPopEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixPopEXT"
 
glMatrixPopEXT :: GLenum -> IO ()
glMatrixPopEXT = dyn_glMatrixPopEXT ptr_glMatrixPopEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixPopEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glMatrixOrthoEXT #-}
 
ptr_glMatrixOrthoEXT :: FunPtr a
ptr_glMatrixOrthoEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixOrthoEXT"
 
glMatrixOrthoEXT ::
                 GLenum ->
                   GLdouble ->
                     GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glMatrixOrthoEXT = dyn_glMatrixOrthoEXT ptr_glMatrixOrthoEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixOrthoEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLdouble ->
                      GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixFrustumEXT #-}
 
ptr_glMatrixFrustumEXT :: FunPtr a
ptr_glMatrixFrustumEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixFrustumEXT"
 
glMatrixFrustumEXT ::
                   GLenum ->
                     GLdouble ->
                       GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glMatrixFrustumEXT = dyn_glMatrixFrustumEXT ptr_glMatrixFrustumEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixFrustumEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLdouble ->
                      GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixTranslatedEXT #-}
 
ptr_glMatrixTranslatedEXT :: FunPtr a
ptr_glMatrixTranslatedEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixTranslatedEXT"
 
glMatrixTranslatedEXT ::
                      GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ()
glMatrixTranslatedEXT
  = dyn_glMatrixTranslatedEXT ptr_glMatrixTranslatedEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixTranslatedEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixTranslatefEXT #-}
 
ptr_glMatrixTranslatefEXT :: FunPtr a
ptr_glMatrixTranslatefEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixTranslatefEXT"
 
glMatrixTranslatefEXT ::
                      GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ()
glMatrixTranslatefEXT
  = dyn_glMatrixTranslatefEXT ptr_glMatrixTranslatefEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixTranslatefEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixScaledEXT #-}
 
ptr_glMatrixScaledEXT :: FunPtr a
ptr_glMatrixScaledEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixScaledEXT"
 
glMatrixScaledEXT ::
                  GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ()
glMatrixScaledEXT = dyn_glMatrixScaledEXT ptr_glMatrixScaledEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixScaledEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixScalefEXT #-}
 
ptr_glMatrixScalefEXT :: FunPtr a
ptr_glMatrixScalefEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixScalefEXT"
 
glMatrixScalefEXT ::
                  GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ()
glMatrixScalefEXT = dyn_glMatrixScalefEXT ptr_glMatrixScalefEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixScalefEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixRotatedEXT #-}
 
ptr_glMatrixRotatedEXT :: FunPtr a
ptr_glMatrixRotatedEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixRotatedEXT"
 
glMatrixRotatedEXT ::
                   GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glMatrixRotatedEXT = dyn_glMatrixRotatedEXT ptr_glMatrixRotatedEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixRotatedEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixRotatefEXT #-}
 
ptr_glMatrixRotatefEXT :: FunPtr a
ptr_glMatrixRotatefEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixRotatefEXT"
 
glMatrixRotatefEXT ::
                   GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glMatrixRotatefEXT = dyn_glMatrixRotatefEXT ptr_glMatrixRotatefEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixRotatefEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixLoadIdentityEXT #-}
 
ptr_glMatrixLoadIdentityEXT :: FunPtr a
ptr_glMatrixLoadIdentityEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixLoadIdentityEXT"
 
glMatrixLoadIdentityEXT :: GLenum -> IO ()
glMatrixLoadIdentityEXT
  = dyn_glMatrixLoadIdentityEXT ptr_glMatrixLoadIdentityEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixLoadIdentityEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glMatrixMultdEXT #-}
 
ptr_glMatrixMultdEXT :: FunPtr a
ptr_glMatrixMultdEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixMultdEXT"
 
glMatrixMultdEXT :: GLenum -> Ptr GLdouble -> IO ()
glMatrixMultdEXT = dyn_glMatrixMultdEXT ptr_glMatrixMultdEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixMultdEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixMultfEXT #-}
 
ptr_glMatrixMultfEXT :: FunPtr a
ptr_glMatrixMultfEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixMultfEXT"
 
glMatrixMultfEXT :: GLenum -> Ptr GLfloat -> IO ()
glMatrixMultfEXT = dyn_glMatrixMultfEXT ptr_glMatrixMultfEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixMultfEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixLoaddEXT #-}
 
ptr_glMatrixLoaddEXT :: FunPtr a
ptr_glMatrixLoaddEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixLoaddEXT"
 
glMatrixLoaddEXT :: GLenum -> Ptr GLdouble -> IO ()
glMatrixLoaddEXT = dyn_glMatrixLoaddEXT ptr_glMatrixLoaddEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixLoaddEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixLoadfEXT #-}
 
ptr_glMatrixLoadfEXT :: FunPtr a
ptr_glMatrixLoadfEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixLoadfEXT"
 
glMatrixLoadfEXT :: GLenum -> Ptr GLfloat -> IO ()
glMatrixLoadfEXT = dyn_glMatrixLoadfEXT ptr_glMatrixLoadfEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixLoadfEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPushClientAttribDefaultEXT #-}
 
ptr_glPushClientAttribDefaultEXT :: FunPtr a
ptr_glPushClientAttribDefaultEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glPushClientAttribDefaultEXT"
 
glPushClientAttribDefaultEXT :: GLbitfield -> IO ()
glPushClientAttribDefaultEXT
  = dyn_glPushClientAttribDefaultEXT ptr_glPushClientAttribDefaultEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPushClientAttribDefaultEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbitfield -> IO ())
 
{-# NOINLINE ptr_glClientAttribDefaultEXT #-}
 
ptr_glClientAttribDefaultEXT :: FunPtr a
ptr_glClientAttribDefaultEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glClientAttribDefaultEXT"
 
glClientAttribDefaultEXT :: GLbitfield -> IO ()
glClientAttribDefaultEXT
  = dyn_glClientAttribDefaultEXT ptr_glClientAttribDefaultEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glClientAttribDefaultEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbitfield -> IO ())
 
gl_PROGRAM_MATRIX_STACK_DEPTH_EXT :: GLenum
gl_PROGRAM_MATRIX_STACK_DEPTH_EXT = 36399
 
gl_TRANSPOSE_PROGRAM_MATRIX_EXT :: GLenum
gl_TRANSPOSE_PROGRAM_MATRIX_EXT = 36398
 
gl_PROGRAM_MATRIX_EXT :: GLenum
gl_PROGRAM_MATRIX_EXT = 36397