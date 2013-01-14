{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.DirectStateAccess
       (glUnmapNamedBuffer, glTextureSubImage3D, glTextureSubImage2D,
        glTextureSubImage1D, glTextureRenderbuffer, glTextureParameteriv,
        glTextureParameteri, glTextureParameterfv, glTextureParameterf,
        glTextureParameterIuiv, glTextureParameterIiv, glTextureImage3D,
        glTextureImage2D, glTextureImage1D, glTextureBuffer,
        glPushClientAttribDefault, glProgramUniformMatrix4x3fv,
        glProgramUniformMatrix4x3dv, glProgramUniformMatrix4x2fv,
        glProgramUniformMatrix4x2dv, glProgramUniformMatrix4fv,
        glProgramUniformMatrix4dv, glProgramUniformMatrix3x4fv,
        glProgramUniformMatrix3x4dv, glProgramUniformMatrix3x2fv,
        glProgramUniformMatrix3x2dv, glProgramUniformMatrix3fv,
        glProgramUniformMatrix3dv, glProgramUniformMatrix2x4fv,
        glProgramUniformMatrix2x4dv, glProgramUniformMatrix2x3fv,
        glProgramUniformMatrix2x3dv, glProgramUniformMatrix2fv,
        glProgramUniformMatrix2dv, glProgramUniform4uiv,
        glProgramUniform4ui, glProgramUniform4iv, glProgramUniform4i,
        glProgramUniform4fv, glProgramUniform4f, glProgramUniform4dv,
        glProgramUniform4d, glProgramUniform3uiv, glProgramUniform3ui,
        glProgramUniform3iv, glProgramUniform3i, glProgramUniform3fv,
        glProgramUniform3f, glProgramUniform3dv, glProgramUniform3d,
        glProgramUniform2uiv, glProgramUniform2ui, glProgramUniform2iv,
        glProgramUniform2i, glProgramUniform2fv, glProgramUniform2f,
        glProgramUniform2dv, glProgramUniform2d, glProgramUniform1uiv,
        glProgramUniform1ui, glProgramUniform1iv, glProgramUniform1i,
        glProgramUniform1fv, glProgramUniform1f, glProgramUniform1dv,
        glProgramUniform1d, glNamedRenderbufferStorageMultisample,
        glNamedRenderbufferStorageMultisampleCoverage,
        glNamedRenderbufferStorage, glNamedProgramString,
        glNamedProgramLocalParametersI4uiv,
        glNamedProgramLocalParametersI4iv,
        glNamedProgramLocalParameters4fv,
        glNamedProgramLocalParameterI4uiv,
        glNamedProgramLocalParameterI4ui, glNamedProgramLocalParameterI4iv,
        glNamedProgramLocalParameterI4i, glNamedProgramLocalParameter4fv,
        glNamedProgramLocalParameter4f, glNamedProgramLocalParameter4dv,
        glNamedProgramLocalParameter4d, glNamedFramebufferTextureLayer,
        glNamedFramebufferTextureFace, glNamedFramebufferTexture,
        glNamedFramebufferTexture3D, glNamedFramebufferTexture2D,
        glNamedFramebufferTexture1D, glNamedFramebufferRenderbuffer,
        glNamedCopyBufferSubData, glNamedBufferSubData, glNamedBufferData,
        glMultiTexSubImage3D, glMultiTexSubImage2D, glMultiTexSubImage1D,
        glMultiTexRenderbuffer, glMultiTexParameteriv,
        glMultiTexParameteri, glMultiTexParameterfv, glMultiTexParameterf,
        glMultiTexParameterIuiv, glMultiTexParameterIiv, glMultiTexImage3D,
        glMultiTexImage2D, glMultiTexImage1D, glMultiTexGeniv,
        glMultiTexGeni, glMultiTexGenfv, glMultiTexGenf, glMultiTexGendv,
        glMultiTexGend, glMultiTexEnviv, glMultiTexEnvi, glMultiTexEnvfv,
        glMultiTexEnvf, glMultiTexCoordPointer, glMultiTexBuffer,
        glMatrixTranslatef, glMatrixTranslated, glMatrixScalef,
        glMatrixScaled, glMatrixRotatef, glMatrixRotated, glMatrixPush,
        glMatrixPop, glMatrixOrtho, glMatrixMultf, glMatrixMultd,
        glMatrixMultTransposef, glMatrixMultTransposed, glMatrixLoadf,
        glMatrixLoadd, glMatrixLoadTransposef, glMatrixLoadTransposed,
        glMatrixLoadIdentity, glMatrixFrustum, glMapNamedBufferRange,
        glMapNamedBuffer, glGetTextureParameteriv, glGetTextureParameterfv,
        glGetTextureParameterIuiv, glGetTextureParameterIiv,
        glGetTextureLevelParameteriv, glGetTextureLevelParameterfv,
        glGetTextureImage, glGetPointerIndexedv,
        glGetNamedRenderbufferParameteriv, glGetNamedProgramiv,
        glGetNamedProgramString, glGetNamedProgramLocalParameterfv,
        glGetNamedProgramLocalParameterdv,
        glGetNamedProgramLocalParameterIuiv,
        glGetNamedProgramLocalParameterIiv,
        glGetNamedFramebufferAttachmentParameteriv,
        glGetNamedBufferSubData, glGetNamedBufferPointerv,
        glGetNamedBufferParameteriv, glGetMultiTexParameteriv,
        glGetMultiTexParameterfv, glGetMultiTexParameterIuiv,
        glGetMultiTexParameterIiv, glGetMultiTexLevelParameteriv,
        glGetMultiTexLevelParameterfv, glGetMultiTexImage,
        glGetMultiTexGeniv, glGetMultiTexGenfv, glGetMultiTexGendv,
        glGetMultiTexEnviv, glGetMultiTexEnvfv,
        glGetFramebufferParameteriv, glGetFloatIndexedv,
        glGetDoubleIndexedv, glGetCompressedTextureImage,
        glGetCompressedMultiTexImage, glGenerateTextureMipmap,
        glGenerateMultiTexMipmap, glFramebufferReadBuffer,
        glFramebufferDrawBuffers, glFramebufferDrawBuffer,
        glFlushMappedNamedBufferRange, glEnableClientStateIndexed,
        glDisableClientStateIndexed, glCopyTextureSubImage3D,
        glCopyTextureSubImage2D, glCopyTextureSubImage1D,
        glCopyTextureImage2D, glCopyTextureImage1D,
        glCopyMultiTexSubImage3D, glCopyMultiTexSubImage2D,
        glCopyMultiTexSubImage1D, glCopyMultiTexImage2D,
        glCopyMultiTexImage1D, glCompressedTextureSubImage3D,
        glCompressedTextureSubImage2D, glCompressedTextureSubImage1D,
        glCompressedTextureImage3D, glCompressedTextureImage2D,
        glCompressedTextureImage1D, glCompressedMultiTexSubImage3D,
        glCompressedMultiTexSubImage2D, glCompressedMultiTexSubImage1D,
        glCompressedMultiTexImage3D, glCompressedMultiTexImage2D,
        glCompressedMultiTexImage1D, glClientAttribDefault,
        glCheckNamedFramebufferStatus, glBindMultiTexture,
        gl_TRANSPOSE_PROGRAM_MATRIX, gl_PROGRAM_MATRIX_STACK_DEPTH,
        gl_PROGRAM_MATRIX)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUnmapNamedBuffer #-}
 
ptr_glUnmapNamedBuffer :: FunPtr a
ptr_glUnmapNamedBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glUnmapNamedBufferEXT"
 
glUnmapNamedBuffer :: GLuint -> IO GLboolean
glUnmapNamedBuffer = dyn_glUnmapNamedBuffer ptr_glUnmapNamedBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glUnmapNamedBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glTextureSubImage3D #-}
 
ptr_glTextureSubImage3D :: FunPtr a
ptr_glTextureSubImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureSubImage3DEXT"
 
glTextureSubImage3D ::
                    GLuint ->
                      GLenum ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLint ->
                                GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTextureSubImage3D
  = dyn_glTextureSubImage3D ptr_glTextureSubImage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureSubImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLsizei ->
                                GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTextureSubImage2D #-}
 
ptr_glTextureSubImage2D :: FunPtr a
ptr_glTextureSubImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureSubImage2DEXT"
 
glTextureSubImage2D ::
                    GLuint ->
                      GLenum ->
                        GLint ->
                          GLint ->
                            GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTextureSubImage2D
  = dyn_glTextureSubImage2D ptr_glTextureSubImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureSubImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTextureSubImage1D #-}
 
ptr_glTextureSubImage1D :: FunPtr a
ptr_glTextureSubImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureSubImage1DEXT"
 
glTextureSubImage1D ::
                    GLuint ->
                      GLenum ->
                        GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTextureSubImage1D
  = dyn_glTextureSubImage1D ptr_glTextureSubImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureSubImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTextureRenderbuffer #-}
 
ptr_glTextureRenderbuffer :: FunPtr a
ptr_glTextureRenderbuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureRenderbufferEXT"
 
glTextureRenderbuffer :: GLuint -> GLenum -> GLuint -> IO ()
glTextureRenderbuffer
  = dyn_glTextureRenderbuffer ptr_glTextureRenderbuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureRenderbuffer
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glTextureParameteriv #-}
 
ptr_glTextureParameteriv :: FunPtr a
ptr_glTextureParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureParameterivEXT"
 
glTextureParameteriv ::
                     GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()
glTextureParameteriv
  = dyn_glTextureParameteriv ptr_glTextureParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTextureParameteri #-}
 
ptr_glTextureParameteri :: FunPtr a
ptr_glTextureParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureParameteriEXT"
 
glTextureParameteri :: GLuint -> GLenum -> GLenum -> GLint -> IO ()
glTextureParameteri
  = dyn_glTextureParameteri ptr_glTextureParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureParameteri ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glTextureParameterfv #-}
 
ptr_glTextureParameterfv :: FunPtr a
ptr_glTextureParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureParameterfvEXT"
 
glTextureParameterfv ::
                     GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glTextureParameterfv
  = dyn_glTextureParameterfv ptr_glTextureParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glTextureParameterf #-}
 
ptr_glTextureParameterf :: FunPtr a
ptr_glTextureParameterf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureParameterfEXT"
 
glTextureParameterf ::
                    GLuint -> GLenum -> GLenum -> GLfloat -> IO ()
glTextureParameterf
  = dyn_glTextureParameterf ptr_glTextureParameterf
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureParameterf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glTextureParameterIuiv #-}
 
ptr_glTextureParameterIuiv :: FunPtr a
ptr_glTextureParameterIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureParameterIuivEXT"
 
glTextureParameterIuiv ::
                       GLuint -> GLenum -> GLenum -> Ptr GLuint -> IO ()
glTextureParameterIuiv
  = dyn_glTextureParameterIuiv ptr_glTextureParameterIuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureParameterIuiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glTextureParameterIiv #-}
 
ptr_glTextureParameterIiv :: FunPtr a
ptr_glTextureParameterIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureParameterIivEXT"
 
glTextureParameterIiv ::
                      GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()
glTextureParameterIiv
  = dyn_glTextureParameterIiv ptr_glTextureParameterIiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureParameterIiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTextureImage3D #-}
 
ptr_glTextureImage3D :: FunPtr a
ptr_glTextureImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureImage3DEXT"
 
glTextureImage3D ::
                 GLuint ->
                   GLenum ->
                     GLint ->
                       GLenum ->
                         GLsizei ->
                           GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glTextureImage3D = dyn_glTextureImage3D ptr_glTextureImage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLenum ->
                          GLsizei ->
                            GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTextureImage2D #-}
 
ptr_glTextureImage2D :: FunPtr a
ptr_glTextureImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureImage2DEXT"
 
glTextureImage2D ::
                 GLuint ->
                   GLenum ->
                     GLint ->
                       GLenum ->
                         GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glTextureImage2D = dyn_glTextureImage2D ptr_glTextureImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLenum ->
                          GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTextureImage1D #-}
 
ptr_glTextureImage1D :: FunPtr a
ptr_glTextureImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureImage1DEXT"
 
glTextureImage1D ::
                 GLuint ->
                   GLenum ->
                     GLint ->
                       GLenum -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glTextureImage1D = dyn_glTextureImage1D ptr_glTextureImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLenum -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTextureBuffer #-}
 
ptr_glTextureBuffer :: FunPtr a
ptr_glTextureBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glTextureBufferEXT"
 
glTextureBuffer :: GLuint -> GLenum -> GLenum -> GLuint -> IO ()
glTextureBuffer = dyn_glTextureBuffer ptr_glTextureBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glTextureBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glPushClientAttribDefault #-}
 
ptr_glPushClientAttribDefault :: FunPtr a
ptr_glPushClientAttribDefault
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glPushClientAttribDefaultEXT"
 
glPushClientAttribDefault :: GLbitfield -> IO ()
glPushClientAttribDefault
  = dyn_glPushClientAttribDefault ptr_glPushClientAttribDefault
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPushClientAttribDefault ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbitfield -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4x3fv #-}
 
ptr_glProgramUniformMatrix4x3fv :: FunPtr a
ptr_glProgramUniformMatrix4x3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix4x3fvEXT"
 
glProgramUniformMatrix4x3fv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix4x3fv
  = dyn_glProgramUniformMatrix4x3fv ptr_glProgramUniformMatrix4x3fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4x3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4x3dv #-}
 
ptr_glProgramUniformMatrix4x3dv :: FunPtr a
ptr_glProgramUniformMatrix4x3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix4x3dvEXT"
 
glProgramUniformMatrix4x3dv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix4x3dv
  = dyn_glProgramUniformMatrix4x3dv ptr_glProgramUniformMatrix4x3dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4x3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4x2fv #-}
 
ptr_glProgramUniformMatrix4x2fv :: FunPtr a
ptr_glProgramUniformMatrix4x2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix4x2fvEXT"
 
glProgramUniformMatrix4x2fv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix4x2fv
  = dyn_glProgramUniformMatrix4x2fv ptr_glProgramUniformMatrix4x2fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4x2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4x2dv #-}
 
ptr_glProgramUniformMatrix4x2dv :: FunPtr a
ptr_glProgramUniformMatrix4x2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix4x2dvEXT"
 
glProgramUniformMatrix4x2dv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix4x2dv
  = dyn_glProgramUniformMatrix4x2dv ptr_glProgramUniformMatrix4x2dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4x2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4fv #-}
 
ptr_glProgramUniformMatrix4fv :: FunPtr a
ptr_glProgramUniformMatrix4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix4fvEXT"
 
glProgramUniformMatrix4fv ::
                          GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix4fv
  = dyn_glProgramUniformMatrix4fv ptr_glProgramUniformMatrix4fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix4dv #-}
 
ptr_glProgramUniformMatrix4dv :: FunPtr a
ptr_glProgramUniformMatrix4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix4dvEXT"
 
glProgramUniformMatrix4dv ::
                          GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix4dv
  = dyn_glProgramUniformMatrix4dv ptr_glProgramUniformMatrix4dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3x4fv #-}
 
ptr_glProgramUniformMatrix3x4fv :: FunPtr a
ptr_glProgramUniformMatrix3x4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix3x4fvEXT"
 
glProgramUniformMatrix3x4fv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix3x4fv
  = dyn_glProgramUniformMatrix3x4fv ptr_glProgramUniformMatrix3x4fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3x4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3x4dv #-}
 
ptr_glProgramUniformMatrix3x4dv :: FunPtr a
ptr_glProgramUniformMatrix3x4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix3x4dvEXT"
 
glProgramUniformMatrix3x4dv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix3x4dv
  = dyn_glProgramUniformMatrix3x4dv ptr_glProgramUniformMatrix3x4dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3x4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3x2fv #-}
 
ptr_glProgramUniformMatrix3x2fv :: FunPtr a
ptr_glProgramUniformMatrix3x2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix3x2fvEXT"
 
glProgramUniformMatrix3x2fv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix3x2fv
  = dyn_glProgramUniformMatrix3x2fv ptr_glProgramUniformMatrix3x2fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3x2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3x2dv #-}
 
ptr_glProgramUniformMatrix3x2dv :: FunPtr a
ptr_glProgramUniformMatrix3x2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix3x2dvEXT"
 
glProgramUniformMatrix3x2dv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix3x2dv
  = dyn_glProgramUniformMatrix3x2dv ptr_glProgramUniformMatrix3x2dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3x2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3fv #-}
 
ptr_glProgramUniformMatrix3fv :: FunPtr a
ptr_glProgramUniformMatrix3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix3fvEXT"
 
glProgramUniformMatrix3fv ::
                          GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix3fv
  = dyn_glProgramUniformMatrix3fv ptr_glProgramUniformMatrix3fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix3dv #-}
 
ptr_glProgramUniformMatrix3dv :: FunPtr a
ptr_glProgramUniformMatrix3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix3dvEXT"
 
glProgramUniformMatrix3dv ::
                          GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix3dv
  = dyn_glProgramUniformMatrix3dv ptr_glProgramUniformMatrix3dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2x4fv #-}
 
ptr_glProgramUniformMatrix2x4fv :: FunPtr a
ptr_glProgramUniformMatrix2x4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix2x4fvEXT"
 
glProgramUniformMatrix2x4fv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix2x4fv
  = dyn_glProgramUniformMatrix2x4fv ptr_glProgramUniformMatrix2x4fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2x4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2x4dv #-}
 
ptr_glProgramUniformMatrix2x4dv :: FunPtr a
ptr_glProgramUniformMatrix2x4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix2x4dvEXT"
 
glProgramUniformMatrix2x4dv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix2x4dv
  = dyn_glProgramUniformMatrix2x4dv ptr_glProgramUniformMatrix2x4dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2x4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2x3fv #-}
 
ptr_glProgramUniformMatrix2x3fv :: FunPtr a
ptr_glProgramUniformMatrix2x3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix2x3fvEXT"
 
glProgramUniformMatrix2x3fv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix2x3fv
  = dyn_glProgramUniformMatrix2x3fv ptr_glProgramUniformMatrix2x3fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2x3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2x3dv #-}
 
ptr_glProgramUniformMatrix2x3dv :: FunPtr a
ptr_glProgramUniformMatrix2x3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix2x3dvEXT"
 
glProgramUniformMatrix2x3dv ::
                            GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix2x3dv
  = dyn_glProgramUniformMatrix2x3dv ptr_glProgramUniformMatrix2x3dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2x3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2fv #-}
 
ptr_glProgramUniformMatrix2fv :: FunPtr a
ptr_glProgramUniformMatrix2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix2fvEXT"
 
glProgramUniformMatrix2fv ::
                          GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glProgramUniformMatrix2fv
  = dyn_glProgramUniformMatrix2fv ptr_glProgramUniformMatrix2fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniformMatrix2dv #-}
 
ptr_glProgramUniformMatrix2dv :: FunPtr a
ptr_glProgramUniformMatrix2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniformMatrix2dvEXT"
 
glProgramUniformMatrix2dv ::
                          GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ()
glProgramUniformMatrix2dv
  = dyn_glProgramUniformMatrix2dv ptr_glProgramUniformMatrix2dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramUniformMatrix2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4uiv #-}
 
ptr_glProgramUniform4uiv :: FunPtr a
ptr_glProgramUniform4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4uivEXT"
 
glProgramUniform4uiv ::
                     GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()
glProgramUniform4uiv
  = dyn_glProgramUniform4uiv ptr_glProgramUniform4uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4ui #-}
 
ptr_glProgramUniform4ui :: FunPtr a
ptr_glProgramUniform4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4uiEXT"
 
glProgramUniform4ui ::
                    GLuint -> GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glProgramUniform4ui
  = dyn_glProgramUniform4ui ptr_glProgramUniform4ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4iv #-}
 
ptr_glProgramUniform4iv :: FunPtr a
ptr_glProgramUniform4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4ivEXT"
 
glProgramUniform4iv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()
glProgramUniform4iv
  = dyn_glProgramUniform4iv ptr_glProgramUniform4iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4i #-}
 
ptr_glProgramUniform4i :: FunPtr a
ptr_glProgramUniform4i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4iEXT"
 
glProgramUniform4i ::
                   GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> IO ()
glProgramUniform4i = dyn_glProgramUniform4i ptr_glProgramUniform4i
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4fv #-}
 
ptr_glProgramUniform4fv :: FunPtr a
ptr_glProgramUniform4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4fvEXT"
 
glProgramUniform4fv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramUniform4fv
  = dyn_glProgramUniform4fv ptr_glProgramUniform4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4f #-}
 
ptr_glProgramUniform4f :: FunPtr a
ptr_glProgramUniform4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4fEXT"
 
glProgramUniform4f ::
                   GLuint ->
                     GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glProgramUniform4f = dyn_glProgramUniform4f ptr_glProgramUniform4f
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4dv #-}
 
ptr_glProgramUniform4dv :: FunPtr a
ptr_glProgramUniform4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4dvEXT"
 
glProgramUniform4dv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()
glProgramUniform4dv
  = dyn_glProgramUniform4dv ptr_glProgramUniform4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform4d #-}
 
ptr_glProgramUniform4d :: FunPtr a
ptr_glProgramUniform4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform4dEXT"
 
glProgramUniform4d ::
                   GLuint ->
                     GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glProgramUniform4d = dyn_glProgramUniform4d ptr_glProgramUniform4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3uiv #-}
 
ptr_glProgramUniform3uiv :: FunPtr a
ptr_glProgramUniform3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3uivEXT"
 
glProgramUniform3uiv ::
                     GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()
glProgramUniform3uiv
  = dyn_glProgramUniform3uiv ptr_glProgramUniform3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3ui #-}
 
ptr_glProgramUniform3ui :: FunPtr a
ptr_glProgramUniform3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3uiEXT"
 
glProgramUniform3ui ::
                    GLuint -> GLint -> GLuint -> GLuint -> GLuint -> IO ()
glProgramUniform3ui
  = dyn_glProgramUniform3ui ptr_glProgramUniform3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3iv #-}
 
ptr_glProgramUniform3iv :: FunPtr a
ptr_glProgramUniform3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3ivEXT"
 
glProgramUniform3iv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()
glProgramUniform3iv
  = dyn_glProgramUniform3iv ptr_glProgramUniform3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3i #-}
 
ptr_glProgramUniform3i :: FunPtr a
ptr_glProgramUniform3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3iEXT"
 
glProgramUniform3i ::
                   GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
glProgramUniform3i = dyn_glProgramUniform3i ptr_glProgramUniform3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3fv #-}
 
ptr_glProgramUniform3fv :: FunPtr a
ptr_glProgramUniform3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3fvEXT"
 
glProgramUniform3fv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramUniform3fv
  = dyn_glProgramUniform3fv ptr_glProgramUniform3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3f #-}
 
ptr_glProgramUniform3f :: FunPtr a
ptr_glProgramUniform3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3fEXT"
 
glProgramUniform3f ::
                   GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> IO ()
glProgramUniform3f = dyn_glProgramUniform3f ptr_glProgramUniform3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3dv #-}
 
ptr_glProgramUniform3dv :: FunPtr a
ptr_glProgramUniform3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3dvEXT"
 
glProgramUniform3dv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()
glProgramUniform3dv
  = dyn_glProgramUniform3dv ptr_glProgramUniform3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform3d #-}
 
ptr_glProgramUniform3d :: FunPtr a
ptr_glProgramUniform3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform3dEXT"
 
glProgramUniform3d ::
                   GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> IO ()
glProgramUniform3d = dyn_glProgramUniform3d ptr_glProgramUniform3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2uiv #-}
 
ptr_glProgramUniform2uiv :: FunPtr a
ptr_glProgramUniform2uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2uivEXT"
 
glProgramUniform2uiv ::
                     GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()
glProgramUniform2uiv
  = dyn_glProgramUniform2uiv ptr_glProgramUniform2uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2ui #-}
 
ptr_glProgramUniform2ui :: FunPtr a
ptr_glProgramUniform2ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2uiEXT"
 
glProgramUniform2ui :: GLuint -> GLint -> GLuint -> GLuint -> IO ()
glProgramUniform2ui
  = dyn_glProgramUniform2ui ptr_glProgramUniform2ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2iv #-}
 
ptr_glProgramUniform2iv :: FunPtr a
ptr_glProgramUniform2iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2ivEXT"
 
glProgramUniform2iv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()
glProgramUniform2iv
  = dyn_glProgramUniform2iv ptr_glProgramUniform2iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2i #-}
 
ptr_glProgramUniform2i :: FunPtr a
ptr_glProgramUniform2i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2iEXT"
 
glProgramUniform2i :: GLuint -> GLint -> GLint -> GLint -> IO ()
glProgramUniform2i = dyn_glProgramUniform2i ptr_glProgramUniform2i
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2fv #-}
 
ptr_glProgramUniform2fv :: FunPtr a
ptr_glProgramUniform2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2fvEXT"
 
glProgramUniform2fv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramUniform2fv
  = dyn_glProgramUniform2fv ptr_glProgramUniform2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2f #-}
 
ptr_glProgramUniform2f :: FunPtr a
ptr_glProgramUniform2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2fEXT"
 
glProgramUniform2f ::
                   GLuint -> GLint -> GLfloat -> GLfloat -> IO ()
glProgramUniform2f = dyn_glProgramUniform2f ptr_glProgramUniform2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2dv #-}
 
ptr_glProgramUniform2dv :: FunPtr a
ptr_glProgramUniform2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2dvEXT"
 
glProgramUniform2dv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()
glProgramUniform2dv
  = dyn_glProgramUniform2dv ptr_glProgramUniform2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform2d #-}
 
ptr_glProgramUniform2d :: FunPtr a
ptr_glProgramUniform2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform2dEXT"
 
glProgramUniform2d ::
                   GLuint -> GLint -> GLdouble -> GLdouble -> IO ()
glProgramUniform2d = dyn_glProgramUniform2d ptr_glProgramUniform2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1uiv #-}
 
ptr_glProgramUniform1uiv :: FunPtr a
ptr_glProgramUniform1uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1uivEXT"
 
glProgramUniform1uiv ::
                     GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ()
glProgramUniform1uiv
  = dyn_glProgramUniform1uiv ptr_glProgramUniform1uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1ui #-}
 
ptr_glProgramUniform1ui :: FunPtr a
ptr_glProgramUniform1ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1uiEXT"
 
glProgramUniform1ui :: GLuint -> GLint -> GLuint -> IO ()
glProgramUniform1ui
  = dyn_glProgramUniform1ui ptr_glProgramUniform1ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1iv #-}
 
ptr_glProgramUniform1iv :: FunPtr a
ptr_glProgramUniform1iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1ivEXT"
 
glProgramUniform1iv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ()
glProgramUniform1iv
  = dyn_glProgramUniform1iv ptr_glProgramUniform1iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1i #-}
 
ptr_glProgramUniform1i :: FunPtr a
ptr_glProgramUniform1i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1iEXT"
 
glProgramUniform1i :: GLuint -> GLint -> GLint -> IO ()
glProgramUniform1i = dyn_glProgramUniform1i ptr_glProgramUniform1i
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1fv #-}
 
ptr_glProgramUniform1fv :: FunPtr a
ptr_glProgramUniform1fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1fvEXT"
 
glProgramUniform1fv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ()
glProgramUniform1fv
  = dyn_glProgramUniform1fv ptr_glProgramUniform1fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1f #-}
 
ptr_glProgramUniform1f :: FunPtr a
ptr_glProgramUniform1f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1fEXT"
 
glProgramUniform1f :: GLuint -> GLint -> GLfloat -> IO ()
glProgramUniform1f = dyn_glProgramUniform1f ptr_glProgramUniform1f
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1dv #-}
 
ptr_glProgramUniform1dv :: FunPtr a
ptr_glProgramUniform1dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1dvEXT"
 
glProgramUniform1dv ::
                    GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ()
glProgramUniform1dv
  = dyn_glProgramUniform1dv ptr_glProgramUniform1dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLsizei -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramUniform1d #-}
 
ptr_glProgramUniform1d :: FunPtr a
ptr_glProgramUniform1d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glProgramUniform1dEXT"
 
glProgramUniform1d :: GLuint -> GLint -> GLdouble -> IO ()
glProgramUniform1d = dyn_glProgramUniform1d ptr_glProgramUniform1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramUniform1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glNamedRenderbufferStorageMultisample #-}
 
ptr_glNamedRenderbufferStorageMultisample :: FunPtr a
ptr_glNamedRenderbufferStorageMultisample
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedRenderbufferStorageMultisampleEXT"
 
glNamedRenderbufferStorageMultisample ::
                                      GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()
glNamedRenderbufferStorageMultisample
  = dyn_glNamedRenderbufferStorageMultisample
      ptr_glNamedRenderbufferStorageMultisample
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedRenderbufferStorageMultisample ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glNamedRenderbufferStorageMultisampleCoverage #-}
 
ptr_glNamedRenderbufferStorageMultisampleCoverage :: FunPtr a
ptr_glNamedRenderbufferStorageMultisampleCoverage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedRenderbufferStorageMultisampleCoverageEXT"
 
glNamedRenderbufferStorageMultisampleCoverage ::
                                              GLuint ->
                                                GLsizei ->
                                                  GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()
glNamedRenderbufferStorageMultisampleCoverage
  = dyn_glNamedRenderbufferStorageMultisampleCoverage
      ptr_glNamedRenderbufferStorageMultisampleCoverage
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedRenderbufferStorageMultisampleCoverage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glNamedRenderbufferStorage #-}
 
ptr_glNamedRenderbufferStorage :: FunPtr a
ptr_glNamedRenderbufferStorage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedRenderbufferStorageEXT"
 
glNamedRenderbufferStorage ::
                           GLuint -> GLenum -> GLsizei -> GLsizei -> IO ()
glNamedRenderbufferStorage
  = dyn_glNamedRenderbufferStorage ptr_glNamedRenderbufferStorage
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedRenderbufferStorage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glNamedProgramString #-}
 
ptr_glNamedProgramString :: FunPtr a
ptr_glNamedProgramString
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramStringEXT"
 
glNamedProgramString ::
                     GLuint -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ()
glNamedProgramString
  = dyn_glNamedProgramString ptr_glNamedProgramString
 
foreign import CALLCONV unsafe "dynamic" dyn_glNamedProgramString ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParametersI4uiv #-}
 
ptr_glNamedProgramLocalParametersI4uiv :: FunPtr a
ptr_glNamedProgramLocalParametersI4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParametersI4uivEXT"
 
glNamedProgramLocalParametersI4uiv ::
                                   GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ()
glNamedProgramLocalParametersI4uiv
  = dyn_glNamedProgramLocalParametersI4uiv
      ptr_glNamedProgramLocalParametersI4uiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParametersI4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParametersI4iv #-}
 
ptr_glNamedProgramLocalParametersI4iv :: FunPtr a
ptr_glNamedProgramLocalParametersI4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParametersI4ivEXT"
 
glNamedProgramLocalParametersI4iv ::
                                  GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ()
glNamedProgramLocalParametersI4iv
  = dyn_glNamedProgramLocalParametersI4iv
      ptr_glNamedProgramLocalParametersI4iv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParametersI4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameters4fv #-}
 
ptr_glNamedProgramLocalParameters4fv :: FunPtr a
ptr_glNamedProgramLocalParameters4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameters4fvEXT"
 
glNamedProgramLocalParameters4fv ::
                                 GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glNamedProgramLocalParameters4fv
  = dyn_glNamedProgramLocalParameters4fv
      ptr_glNamedProgramLocalParameters4fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameters4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameterI4uiv #-}
 
ptr_glNamedProgramLocalParameterI4uiv :: FunPtr a
ptr_glNamedProgramLocalParameterI4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameterI4uivEXT"
 
glNamedProgramLocalParameterI4uiv ::
                                  GLuint -> GLenum -> GLuint -> Ptr GLuint -> IO ()
glNamedProgramLocalParameterI4uiv
  = dyn_glNamedProgramLocalParameterI4uiv
      ptr_glNamedProgramLocalParameterI4uiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameterI4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameterI4ui #-}
 
ptr_glNamedProgramLocalParameterI4ui :: FunPtr a
ptr_glNamedProgramLocalParameterI4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameterI4uiEXT"
 
glNamedProgramLocalParameterI4ui ::
                                 GLuint ->
                                   GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glNamedProgramLocalParameterI4ui
  = dyn_glNamedProgramLocalParameterI4ui
      ptr_glNamedProgramLocalParameterI4ui
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameterI4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameterI4iv #-}
 
ptr_glNamedProgramLocalParameterI4iv :: FunPtr a
ptr_glNamedProgramLocalParameterI4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameterI4ivEXT"
 
glNamedProgramLocalParameterI4iv ::
                                 GLuint -> GLenum -> GLuint -> Ptr GLint -> IO ()
glNamedProgramLocalParameterI4iv
  = dyn_glNamedProgramLocalParameterI4iv
      ptr_glNamedProgramLocalParameterI4iv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameterI4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameterI4i #-}
 
ptr_glNamedProgramLocalParameterI4i :: FunPtr a
ptr_glNamedProgramLocalParameterI4i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameterI4iEXT"
 
glNamedProgramLocalParameterI4i ::
                                GLuint ->
                                  GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
glNamedProgramLocalParameterI4i
  = dyn_glNamedProgramLocalParameterI4i
      ptr_glNamedProgramLocalParameterI4i
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameterI4i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameter4fv #-}
 
ptr_glNamedProgramLocalParameter4fv :: FunPtr a
ptr_glNamedProgramLocalParameter4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameter4fvEXT"
 
glNamedProgramLocalParameter4fv ::
                                GLuint -> GLenum -> GLuint -> Ptr GLfloat -> IO ()
glNamedProgramLocalParameter4fv
  = dyn_glNamedProgramLocalParameter4fv
      ptr_glNamedProgramLocalParameter4fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameter4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameter4f #-}
 
ptr_glNamedProgramLocalParameter4f :: FunPtr a
ptr_glNamedProgramLocalParameter4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameter4fEXT"
 
glNamedProgramLocalParameter4f ::
                               GLuint ->
                                 GLenum ->
                                   GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glNamedProgramLocalParameter4f
  = dyn_glNamedProgramLocalParameter4f
      ptr_glNamedProgramLocalParameter4f
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameter4f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameter4dv #-}
 
ptr_glNamedProgramLocalParameter4dv :: FunPtr a
ptr_glNamedProgramLocalParameter4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameter4dvEXT"
 
glNamedProgramLocalParameter4dv ::
                                GLuint -> GLenum -> GLuint -> Ptr GLdouble -> IO ()
glNamedProgramLocalParameter4dv
  = dyn_glNamedProgramLocalParameter4dv
      ptr_glNamedProgramLocalParameter4dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameter4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glNamedProgramLocalParameter4d #-}
 
ptr_glNamedProgramLocalParameter4d :: FunPtr a
ptr_glNamedProgramLocalParameter4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedProgramLocalParameter4dEXT"
 
glNamedProgramLocalParameter4d ::
                               GLuint ->
                                 GLenum ->
                                   GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glNamedProgramLocalParameter4d
  = dyn_glNamedProgramLocalParameter4d
      ptr_glNamedProgramLocalParameter4d
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedProgramLocalParameter4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferTextureLayer #-}
 
ptr_glNamedFramebufferTextureLayer :: FunPtr a
ptr_glNamedFramebufferTextureLayer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedFramebufferTextureLayerEXT"
 
glNamedFramebufferTextureLayer ::
                               GLuint -> GLenum -> GLuint -> GLint -> GLint -> IO ()
glNamedFramebufferTextureLayer
  = dyn_glNamedFramebufferTextureLayer
      ptr_glNamedFramebufferTextureLayer
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferTextureLayer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferTextureFace #-}
 
ptr_glNamedFramebufferTextureFace :: FunPtr a
ptr_glNamedFramebufferTextureFace
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedFramebufferTextureFaceEXT"
 
glNamedFramebufferTextureFace ::
                              GLuint -> GLenum -> GLuint -> GLint -> GLenum -> IO ()
glNamedFramebufferTextureFace
  = dyn_glNamedFramebufferTextureFace
      ptr_glNamedFramebufferTextureFace
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferTextureFace ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> GLint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferTexture #-}
 
ptr_glNamedFramebufferTexture :: FunPtr a
ptr_glNamedFramebufferTexture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedFramebufferTextureEXT"
 
glNamedFramebufferTexture ::
                          GLuint -> GLenum -> GLuint -> GLint -> IO ()
glNamedFramebufferTexture
  = dyn_glNamedFramebufferTexture ptr_glNamedFramebufferTexture
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferTexture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferTexture3D #-}
 
ptr_glNamedFramebufferTexture3D :: FunPtr a
ptr_glNamedFramebufferTexture3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedFramebufferTexture3DEXT"
 
glNamedFramebufferTexture3D ::
                            GLuint -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()
glNamedFramebufferTexture3D
  = dyn_glNamedFramebufferTexture3D ptr_glNamedFramebufferTexture3D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferTexture3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferTexture2D #-}
 
ptr_glNamedFramebufferTexture2D :: FunPtr a
ptr_glNamedFramebufferTexture2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedFramebufferTexture2DEXT"
 
glNamedFramebufferTexture2D ::
                            GLuint -> GLenum -> GLenum -> GLuint -> GLint -> IO ()
glNamedFramebufferTexture2D
  = dyn_glNamedFramebufferTexture2D ptr_glNamedFramebufferTexture2D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferTexture2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferTexture1D #-}
 
ptr_glNamedFramebufferTexture1D :: FunPtr a
ptr_glNamedFramebufferTexture1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedFramebufferTexture1DEXT"
 
glNamedFramebufferTexture1D ::
                            GLuint -> GLenum -> GLenum -> GLuint -> GLint -> IO ()
glNamedFramebufferTexture1D
  = dyn_glNamedFramebufferTexture1D ptr_glNamedFramebufferTexture1D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferTexture1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glNamedFramebufferRenderbuffer #-}
 
ptr_glNamedFramebufferRenderbuffer :: FunPtr a
ptr_glNamedFramebufferRenderbuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedFramebufferRenderbufferEXT"
 
glNamedFramebufferRenderbuffer ::
                               GLuint -> GLenum -> GLenum -> GLuint -> IO ()
glNamedFramebufferRenderbuffer
  = dyn_glNamedFramebufferRenderbuffer
      ptr_glNamedFramebufferRenderbuffer
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedFramebufferRenderbuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glNamedCopyBufferSubData #-}
 
ptr_glNamedCopyBufferSubData :: FunPtr a
ptr_glNamedCopyBufferSubData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedCopyBufferSubDataEXT"
 
glNamedCopyBufferSubData ::
                         GLuint -> GLuint -> GLintptr -> GLintptr -> GLsizeiptr -> IO ()
glNamedCopyBufferSubData
  = dyn_glNamedCopyBufferSubData ptr_glNamedCopyBufferSubData
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glNamedCopyBufferSubData ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLintptr -> GLintptr -> GLsizeiptr -> IO ())
 
{-# NOINLINE ptr_glNamedBufferSubData #-}
 
ptr_glNamedBufferSubData :: FunPtr a
ptr_glNamedBufferSubData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedBufferSubDataEXT"
 
glNamedBufferSubData ::
                     GLuint -> GLintptr -> GLsizeiptr -> Ptr a -> IO ()
glNamedBufferSubData
  = dyn_glNamedBufferSubData ptr_glNamedBufferSubData
 
foreign import CALLCONV unsafe "dynamic" dyn_glNamedBufferSubData ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLintptr -> GLsizeiptr -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glNamedBufferData #-}
 
ptr_glNamedBufferData :: FunPtr a
ptr_glNamedBufferData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glNamedBufferDataEXT"
 
glNamedBufferData ::
                  GLuint -> GLsizeiptr -> Ptr a -> GLenum -> IO ()
glNamedBufferData = dyn_glNamedBufferData ptr_glNamedBufferData
 
foreign import CALLCONV unsafe "dynamic" dyn_glNamedBufferData ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizeiptr -> Ptr a -> GLenum -> IO ())
 
{-# NOINLINE ptr_glMultiTexSubImage3D #-}
 
ptr_glMultiTexSubImage3D :: FunPtr a
ptr_glMultiTexSubImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexSubImage3DEXT"
 
glMultiTexSubImage3D ::
                     GLenum ->
                       GLenum ->
                         GLint ->
                           GLint ->
                             GLint ->
                               GLint ->
                                 GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glMultiTexSubImage3D
  = dyn_glMultiTexSubImage3D ptr_glMultiTexSubImage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexSubImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLsizei ->
                                GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glMultiTexSubImage2D #-}
 
ptr_glMultiTexSubImage2D :: FunPtr a
ptr_glMultiTexSubImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexSubImage2DEXT"
 
glMultiTexSubImage2D ::
                     GLenum ->
                       GLenum ->
                         GLint ->
                           GLint ->
                             GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glMultiTexSubImage2D
  = dyn_glMultiTexSubImage2D ptr_glMultiTexSubImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexSubImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glMultiTexSubImage1D #-}
 
ptr_glMultiTexSubImage1D :: FunPtr a
ptr_glMultiTexSubImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexSubImage1DEXT"
 
glMultiTexSubImage1D ::
                     GLenum ->
                       GLenum ->
                         GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glMultiTexSubImage1D
  = dyn_glMultiTexSubImage1D ptr_glMultiTexSubImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexSubImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glMultiTexRenderbuffer #-}
 
ptr_glMultiTexRenderbuffer :: FunPtr a
ptr_glMultiTexRenderbuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexRenderbufferEXT"
 
glMultiTexRenderbuffer :: GLenum -> GLenum -> GLuint -> IO ()
glMultiTexRenderbuffer
  = dyn_glMultiTexRenderbuffer ptr_glMultiTexRenderbuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexRenderbuffer
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glMultiTexParameteriv #-}
 
ptr_glMultiTexParameteriv :: FunPtr a
ptr_glMultiTexParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexParameterivEXT"
 
glMultiTexParameteriv ::
                      GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glMultiTexParameteriv
  = dyn_glMultiTexParameteriv ptr_glMultiTexParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexParameteriv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexParameteri #-}
 
ptr_glMultiTexParameteri :: FunPtr a
ptr_glMultiTexParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexParameteriEXT"
 
glMultiTexParameteri ::
                     GLenum -> GLenum -> GLenum -> GLint -> IO ()
glMultiTexParameteri
  = dyn_glMultiTexParameteri ptr_glMultiTexParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexParameteri ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexParameterfv #-}
 
ptr_glMultiTexParameterfv :: FunPtr a
ptr_glMultiTexParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexParameterfvEXT"
 
glMultiTexParameterfv ::
                      GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glMultiTexParameterfv
  = dyn_glMultiTexParameterfv ptr_glMultiTexParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexParameterfv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexParameterf #-}
 
ptr_glMultiTexParameterf :: FunPtr a
ptr_glMultiTexParameterf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexParameterfEXT"
 
glMultiTexParameterf ::
                     GLenum -> GLenum -> GLenum -> GLfloat -> IO ()
glMultiTexParameterf
  = dyn_glMultiTexParameterf ptr_glMultiTexParameterf
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexParameterf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexParameterIuiv #-}
 
ptr_glMultiTexParameterIuiv :: FunPtr a
ptr_glMultiTexParameterIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexParameterIuivEXT"
 
glMultiTexParameterIuiv ::
                        GLenum -> GLenum -> GLenum -> Ptr GLuint -> IO ()
glMultiTexParameterIuiv
  = dyn_glMultiTexParameterIuiv ptr_glMultiTexParameterIuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexParameterIuiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glMultiTexParameterIiv #-}
 
ptr_glMultiTexParameterIiv :: FunPtr a
ptr_glMultiTexParameterIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexParameterIivEXT"
 
glMultiTexParameterIiv ::
                       GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glMultiTexParameterIiv
  = dyn_glMultiTexParameterIiv ptr_glMultiTexParameterIiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexParameterIiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexImage3D #-}
 
ptr_glMultiTexImage3D :: FunPtr a
ptr_glMultiTexImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexImage3DEXT"
 
glMultiTexImage3D ::
                  GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum ->
                          GLsizei ->
                            GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glMultiTexImage3D = dyn_glMultiTexImage3D ptr_glMultiTexImage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum ->
                          GLsizei ->
                            GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glMultiTexImage2D #-}
 
ptr_glMultiTexImage2D :: FunPtr a
ptr_glMultiTexImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexImage2DEXT"
 
glMultiTexImage2D ::
                  GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum ->
                          GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glMultiTexImage2D = dyn_glMultiTexImage2D ptr_glMultiTexImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum ->
                          GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glMultiTexImage1D #-}
 
ptr_glMultiTexImage1D :: FunPtr a
ptr_glMultiTexImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexImage1DEXT"
 
glMultiTexImage1D ::
                  GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glMultiTexImage1D = dyn_glMultiTexImage1D ptr_glMultiTexImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glMultiTexGeniv #-}
 
ptr_glMultiTexGeniv :: FunPtr a
ptr_glMultiTexGeniv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexGenivEXT"
 
glMultiTexGeniv :: GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glMultiTexGeniv = dyn_glMultiTexGeniv ptr_glMultiTexGeniv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexGeniv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexGeni #-}
 
ptr_glMultiTexGeni :: FunPtr a
ptr_glMultiTexGeni
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexGeniEXT"
 
glMultiTexGeni :: GLenum -> GLenum -> GLenum -> GLint -> IO ()
glMultiTexGeni = dyn_glMultiTexGeni ptr_glMultiTexGeni
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexGeni ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexGenfv #-}
 
ptr_glMultiTexGenfv :: FunPtr a
ptr_glMultiTexGenfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexGenfvEXT"
 
glMultiTexGenfv ::
                GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glMultiTexGenfv = dyn_glMultiTexGenfv ptr_glMultiTexGenfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexGenfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexGenf #-}
 
ptr_glMultiTexGenf :: FunPtr a
ptr_glMultiTexGenf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexGenfEXT"
 
glMultiTexGenf :: GLenum -> GLenum -> GLenum -> GLfloat -> IO ()
glMultiTexGenf = dyn_glMultiTexGenf ptr_glMultiTexGenf
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexGenf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexGendv #-}
 
ptr_glMultiTexGendv :: FunPtr a
ptr_glMultiTexGendv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexGendvEXT"
 
glMultiTexGendv ::
                GLenum -> GLenum -> GLenum -> Ptr GLdouble -> IO ()
glMultiTexGendv = dyn_glMultiTexGendv ptr_glMultiTexGendv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexGendv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexGend #-}
 
ptr_glMultiTexGend :: FunPtr a
ptr_glMultiTexGend
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexGendEXT"
 
glMultiTexGend :: GLenum -> GLenum -> GLenum -> GLdouble -> IO ()
glMultiTexGend = dyn_glMultiTexGend ptr_glMultiTexGend
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexGend ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultiTexEnviv #-}
 
ptr_glMultiTexEnviv :: FunPtr a
ptr_glMultiTexEnviv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexEnvivEXT"
 
glMultiTexEnviv :: GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glMultiTexEnviv = dyn_glMultiTexEnviv ptr_glMultiTexEnviv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexEnviv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexEnvi #-}
 
ptr_glMultiTexEnvi :: FunPtr a
ptr_glMultiTexEnvi
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexEnviEXT"
 
glMultiTexEnvi :: GLenum -> GLenum -> GLenum -> GLint -> IO ()
glMultiTexEnvi = dyn_glMultiTexEnvi ptr_glMultiTexEnvi
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexEnvi ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glMultiTexEnvfv #-}
 
ptr_glMultiTexEnvfv :: FunPtr a
ptr_glMultiTexEnvfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexEnvfvEXT"
 
glMultiTexEnvfv ::
                GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glMultiTexEnvfv = dyn_glMultiTexEnvfv ptr_glMultiTexEnvfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexEnvfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexEnvf #-}
 
ptr_glMultiTexEnvf :: FunPtr a
ptr_glMultiTexEnvf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexEnvfEXT"
 
glMultiTexEnvf :: GLenum -> GLenum -> GLenum -> GLfloat -> IO ()
glMultiTexEnvf = dyn_glMultiTexEnvf ptr_glMultiTexEnvf
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexEnvf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoordPointer #-}
 
ptr_glMultiTexCoordPointer :: FunPtr a
ptr_glMultiTexCoordPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexCoordPointerEXT"
 
glMultiTexCoordPointer ::
                       GLenum -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glMultiTexCoordPointer
  = dyn_glMultiTexCoordPointer ptr_glMultiTexCoordPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoordPointer
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glMultiTexBuffer #-}
 
ptr_glMultiTexBuffer :: FunPtr a
ptr_glMultiTexBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMultiTexBufferEXT"
 
glMultiTexBuffer :: GLenum -> GLenum -> GLenum -> GLuint -> IO ()
glMultiTexBuffer = dyn_glMultiTexBuffer ptr_glMultiTexBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glMatrixTranslatef #-}
 
ptr_glMatrixTranslatef :: FunPtr a
ptr_glMatrixTranslatef
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixTranslatefEXT"
 
glMatrixTranslatef ::
                   GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ()
glMatrixTranslatef = dyn_glMatrixTranslatef ptr_glMatrixTranslatef
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixTranslatef ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixTranslated #-}
 
ptr_glMatrixTranslated :: FunPtr a
ptr_glMatrixTranslated
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixTranslatedEXT"
 
glMatrixTranslated ::
                   GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ()
glMatrixTranslated = dyn_glMatrixTranslated ptr_glMatrixTranslated
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixTranslated ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixScalef #-}
 
ptr_glMatrixScalef :: FunPtr a
ptr_glMatrixScalef
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixScalefEXT"
 
glMatrixScalef :: GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ()
glMatrixScalef = dyn_glMatrixScalef ptr_glMatrixScalef
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixScalef ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixScaled #-}
 
ptr_glMatrixScaled :: FunPtr a
ptr_glMatrixScaled
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixScaledEXT"
 
glMatrixScaled ::
               GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ()
glMatrixScaled = dyn_glMatrixScaled ptr_glMatrixScaled
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixScaled ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixRotatef #-}
 
ptr_glMatrixRotatef :: FunPtr a
ptr_glMatrixRotatef
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixRotatefEXT"
 
glMatrixRotatef ::
                GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glMatrixRotatef = dyn_glMatrixRotatef ptr_glMatrixRotatef
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixRotatef ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixRotated #-}
 
ptr_glMatrixRotated :: FunPtr a
ptr_glMatrixRotated
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixRotatedEXT"
 
glMatrixRotated ::
                GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glMatrixRotated = dyn_glMatrixRotated ptr_glMatrixRotated
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixRotated ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixPush #-}
 
ptr_glMatrixPush :: FunPtr a
ptr_glMatrixPush
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixPushEXT"
 
glMatrixPush :: GLenum -> IO ()
glMatrixPush = dyn_glMatrixPush ptr_glMatrixPush
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixPush ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glMatrixPop #-}
 
ptr_glMatrixPop :: FunPtr a
ptr_glMatrixPop
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixPopEXT"
 
glMatrixPop :: GLenum -> IO ()
glMatrixPop = dyn_glMatrixPop ptr_glMatrixPop
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixPop ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glMatrixOrtho #-}
 
ptr_glMatrixOrtho :: FunPtr a
ptr_glMatrixOrtho
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixOrthoEXT"
 
glMatrixOrtho ::
              GLenum ->
                GLdouble ->
                  GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glMatrixOrtho = dyn_glMatrixOrtho ptr_glMatrixOrtho
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixOrtho ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLdouble ->
                      GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixMultf #-}
 
ptr_glMatrixMultf :: FunPtr a
ptr_glMatrixMultf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixMultfEXT"
 
glMatrixMultf :: GLenum -> Ptr GLfloat -> IO ()
glMatrixMultf = dyn_glMatrixMultf ptr_glMatrixMultf
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixMultf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixMultd #-}
 
ptr_glMatrixMultd :: FunPtr a
ptr_glMatrixMultd
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixMultdEXT"
 
glMatrixMultd :: GLenum -> Ptr GLdouble -> IO ()
glMatrixMultd = dyn_glMatrixMultd ptr_glMatrixMultd
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixMultd ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixMultTransposef #-}
 
ptr_glMatrixMultTransposef :: FunPtr a
ptr_glMatrixMultTransposef
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixMultTransposefEXT"
 
glMatrixMultTransposef :: GLenum -> Ptr GLfloat -> IO ()
glMatrixMultTransposef
  = dyn_glMatrixMultTransposef ptr_glMatrixMultTransposef
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixMultTransposef
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixMultTransposed #-}
 
ptr_glMatrixMultTransposed :: FunPtr a
ptr_glMatrixMultTransposed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixMultTransposedEXT"
 
glMatrixMultTransposed :: GLenum -> Ptr GLdouble -> IO ()
glMatrixMultTransposed
  = dyn_glMatrixMultTransposed ptr_glMatrixMultTransposed
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixMultTransposed
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixLoadf #-}
 
ptr_glMatrixLoadf :: FunPtr a
ptr_glMatrixLoadf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixLoadfEXT"
 
glMatrixLoadf :: GLenum -> Ptr GLfloat -> IO ()
glMatrixLoadf = dyn_glMatrixLoadf ptr_glMatrixLoadf
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixLoadf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixLoadd #-}
 
ptr_glMatrixLoadd :: FunPtr a
ptr_glMatrixLoadd
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixLoaddEXT"
 
glMatrixLoadd :: GLenum -> Ptr GLdouble -> IO ()
glMatrixLoadd = dyn_glMatrixLoadd ptr_glMatrixLoadd
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixLoadd ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixLoadTransposef #-}
 
ptr_glMatrixLoadTransposef :: FunPtr a
ptr_glMatrixLoadTransposef
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixLoadTransposefEXT"
 
glMatrixLoadTransposef :: GLenum -> Ptr GLfloat -> IO ()
glMatrixLoadTransposef
  = dyn_glMatrixLoadTransposef ptr_glMatrixLoadTransposef
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixLoadTransposef
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixLoadTransposed #-}
 
ptr_glMatrixLoadTransposed :: FunPtr a
ptr_glMatrixLoadTransposed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixLoadTransposedEXT"
 
glMatrixLoadTransposed :: GLenum -> Ptr GLdouble -> IO ()
glMatrixLoadTransposed
  = dyn_glMatrixLoadTransposed ptr_glMatrixLoadTransposed
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixLoadTransposed
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMatrixLoadIdentity #-}
 
ptr_glMatrixLoadIdentity :: FunPtr a
ptr_glMatrixLoadIdentity
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixLoadIdentityEXT"
 
glMatrixLoadIdentity :: GLenum -> IO ()
glMatrixLoadIdentity
  = dyn_glMatrixLoadIdentity ptr_glMatrixLoadIdentity
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixLoadIdentity ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glMatrixFrustum #-}
 
ptr_glMatrixFrustum :: FunPtr a
ptr_glMatrixFrustum
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMatrixFrustumEXT"
 
glMatrixFrustum ::
                GLenum ->
                  GLdouble ->
                    GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glMatrixFrustum = dyn_glMatrixFrustum ptr_glMatrixFrustum
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixFrustum ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLdouble ->
                      GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMapNamedBufferRange #-}
 
ptr_glMapNamedBufferRange :: FunPtr a
ptr_glMapNamedBufferRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMapNamedBufferRangeEXT"
 
glMapNamedBufferRange ::
                      GLuint -> GLintptr -> GLsizeiptr -> GLbitfield -> IO (Ptr a)
glMapNamedBufferRange
  = dyn_glMapNamedBufferRange ptr_glMapNamedBufferRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapNamedBufferRange
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLintptr -> GLsizeiptr -> GLbitfield -> IO (Ptr a))
 
{-# NOINLINE ptr_glMapNamedBuffer #-}
 
ptr_glMapNamedBuffer :: FunPtr a
ptr_glMapNamedBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glMapNamedBufferEXT"
 
glMapNamedBuffer :: GLuint -> GLenum -> IO (Ptr a)
glMapNamedBuffer = dyn_glMapNamedBuffer ptr_glMapNamedBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapNamedBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO (Ptr a))
 
{-# NOINLINE ptr_glGetTextureParameteriv #-}
 
ptr_glGetTextureParameteriv :: FunPtr a
ptr_glGetTextureParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetTextureParameterivEXT"
 
glGetTextureParameteriv ::
                        GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetTextureParameteriv
  = dyn_glGetTextureParameteriv ptr_glGetTextureParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTextureParameteriv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTextureParameterfv #-}
 
ptr_glGetTextureParameterfv :: FunPtr a
ptr_glGetTextureParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetTextureParameterfvEXT"
 
glGetTextureParameterfv ::
                        GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetTextureParameterfv
  = dyn_glGetTextureParameterfv ptr_glGetTextureParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTextureParameterfv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetTextureParameterIuiv #-}
 
ptr_glGetTextureParameterIuiv :: FunPtr a
ptr_glGetTextureParameterIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetTextureParameterIuivEXT"
 
glGetTextureParameterIuiv ::
                          GLuint -> GLenum -> GLenum -> Ptr GLuint -> IO ()
glGetTextureParameterIuiv
  = dyn_glGetTextureParameterIuiv ptr_glGetTextureParameterIuiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTextureParameterIuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetTextureParameterIiv #-}
 
ptr_glGetTextureParameterIiv :: FunPtr a
ptr_glGetTextureParameterIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetTextureParameterIivEXT"
 
glGetTextureParameterIiv ::
                         GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetTextureParameterIiv
  = dyn_glGetTextureParameterIiv ptr_glGetTextureParameterIiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTextureParameterIiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTextureLevelParameteriv #-}
 
ptr_glGetTextureLevelParameteriv :: FunPtr a
ptr_glGetTextureLevelParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetTextureLevelParameterivEXT"
 
glGetTextureLevelParameteriv ::
                             GLuint -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO ()
glGetTextureLevelParameteriv
  = dyn_glGetTextureLevelParameteriv ptr_glGetTextureLevelParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTextureLevelParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTextureLevelParameterfv #-}
 
ptr_glGetTextureLevelParameterfv :: FunPtr a
ptr_glGetTextureLevelParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetTextureLevelParameterfvEXT"
 
glGetTextureLevelParameterfv ::
                             GLuint -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ()
glGetTextureLevelParameterfv
  = dyn_glGetTextureLevelParameterfv ptr_glGetTextureLevelParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTextureLevelParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetTextureImage #-}
 
ptr_glGetTextureImage :: FunPtr a
ptr_glGetTextureImage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetTextureImageEXT"
 
glGetTextureImage ::
                  GLuint -> GLenum -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glGetTextureImage = dyn_glGetTextureImage ptr_glGetTextureImage
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTextureImage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetPointerIndexedv #-}
 
ptr_glGetPointerIndexedv :: FunPtr a
ptr_glGetPointerIndexedv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetPointerIndexedvEXT"
 
glGetPointerIndexedv :: GLenum -> GLuint -> Ptr (Ptr a) -> IO ()
glGetPointerIndexedv
  = dyn_glGetPointerIndexedv ptr_glGetPointerIndexedv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPointerIndexedv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glGetNamedRenderbufferParameteriv #-}
 
ptr_glGetNamedRenderbufferParameteriv :: FunPtr a
ptr_glGetNamedRenderbufferParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedRenderbufferParameterivEXT"
 
glGetNamedRenderbufferParameteriv ::
                                  GLuint -> GLenum -> Ptr GLint -> IO ()
glGetNamedRenderbufferParameteriv
  = dyn_glGetNamedRenderbufferParameteriv
      ptr_glGetNamedRenderbufferParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedRenderbufferParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetNamedProgramiv #-}
 
ptr_glGetNamedProgramiv :: FunPtr a
ptr_glGetNamedProgramiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedProgramivEXT"
 
glGetNamedProgramiv ::
                    GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetNamedProgramiv
  = dyn_glGetNamedProgramiv ptr_glGetNamedProgramiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetNamedProgramiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetNamedProgramString #-}
 
ptr_glGetNamedProgramString :: FunPtr a
ptr_glGetNamedProgramString
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedProgramStringEXT"
 
glGetNamedProgramString ::
                        GLuint -> GLenum -> GLenum -> Ptr a -> IO ()
glGetNamedProgramString
  = dyn_glGetNamedProgramString ptr_glGetNamedProgramString
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetNamedProgramString
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetNamedProgramLocalParameterfv #-}
 
ptr_glGetNamedProgramLocalParameterfv :: FunPtr a
ptr_glGetNamedProgramLocalParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedProgramLocalParameterfvEXT"
 
glGetNamedProgramLocalParameterfv ::
                                  GLuint -> GLenum -> GLuint -> Ptr GLfloat -> IO ()
glGetNamedProgramLocalParameterfv
  = dyn_glGetNamedProgramLocalParameterfv
      ptr_glGetNamedProgramLocalParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedProgramLocalParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetNamedProgramLocalParameterdv #-}
 
ptr_glGetNamedProgramLocalParameterdv :: FunPtr a
ptr_glGetNamedProgramLocalParameterdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedProgramLocalParameterdvEXT"
 
glGetNamedProgramLocalParameterdv ::
                                  GLuint -> GLenum -> GLuint -> Ptr GLdouble -> IO ()
glGetNamedProgramLocalParameterdv
  = dyn_glGetNamedProgramLocalParameterdv
      ptr_glGetNamedProgramLocalParameterdv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedProgramLocalParameterdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetNamedProgramLocalParameterIuiv #-}
 
ptr_glGetNamedProgramLocalParameterIuiv :: FunPtr a
ptr_glGetNamedProgramLocalParameterIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedProgramLocalParameterIuivEXT"
 
glGetNamedProgramLocalParameterIuiv ::
                                    GLuint -> GLenum -> GLuint -> Ptr GLuint -> IO ()
glGetNamedProgramLocalParameterIuiv
  = dyn_glGetNamedProgramLocalParameterIuiv
      ptr_glGetNamedProgramLocalParameterIuiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedProgramLocalParameterIuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetNamedProgramLocalParameterIiv #-}
 
ptr_glGetNamedProgramLocalParameterIiv :: FunPtr a
ptr_glGetNamedProgramLocalParameterIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedProgramLocalParameterIivEXT"
 
glGetNamedProgramLocalParameterIiv ::
                                   GLuint -> GLenum -> GLuint -> Ptr GLint -> IO ()
glGetNamedProgramLocalParameterIiv
  = dyn_glGetNamedProgramLocalParameterIiv
      ptr_glGetNamedProgramLocalParameterIiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedProgramLocalParameterIiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetNamedFramebufferAttachmentParameteriv #-}
 
ptr_glGetNamedFramebufferAttachmentParameteriv :: FunPtr a
ptr_glGetNamedFramebufferAttachmentParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedFramebufferAttachmentParameterivEXT"
 
glGetNamedFramebufferAttachmentParameteriv ::
                                           GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetNamedFramebufferAttachmentParameteriv
  = dyn_glGetNamedFramebufferAttachmentParameteriv
      ptr_glGetNamedFramebufferAttachmentParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedFramebufferAttachmentParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetNamedBufferSubData #-}
 
ptr_glGetNamedBufferSubData :: FunPtr a
ptr_glGetNamedBufferSubData
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedBufferSubDataEXT"
 
glGetNamedBufferSubData ::
                        GLuint -> GLintptr -> GLsizeiptr -> Ptr a -> IO ()
glGetNamedBufferSubData
  = dyn_glGetNamedBufferSubData ptr_glGetNamedBufferSubData
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetNamedBufferSubData
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLintptr -> GLsizeiptr -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetNamedBufferPointerv #-}
 
ptr_glGetNamedBufferPointerv :: FunPtr a
ptr_glGetNamedBufferPointerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedBufferPointervEXT"
 
glGetNamedBufferPointerv ::
                         GLuint -> GLenum -> Ptr (Ptr a) -> IO ()
glGetNamedBufferPointerv
  = dyn_glGetNamedBufferPointerv ptr_glGetNamedBufferPointerv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedBufferPointerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glGetNamedBufferParameteriv #-}
 
ptr_glGetNamedBufferParameteriv :: FunPtr a
ptr_glGetNamedBufferParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetNamedBufferParameterivEXT"
 
glGetNamedBufferParameteriv ::
                            GLuint -> GLenum -> Ptr GLint -> IO ()
glGetNamedBufferParameteriv
  = dyn_glGetNamedBufferParameteriv ptr_glGetNamedBufferParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetNamedBufferParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexParameteriv #-}
 
ptr_glGetMultiTexParameteriv :: FunPtr a
ptr_glGetMultiTexParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexParameterivEXT"
 
glGetMultiTexParameteriv ::
                         GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetMultiTexParameteriv
  = dyn_glGetMultiTexParameteriv ptr_glGetMultiTexParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMultiTexParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexParameterfv #-}
 
ptr_glGetMultiTexParameterfv :: FunPtr a
ptr_glGetMultiTexParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexParameterfvEXT"
 
glGetMultiTexParameterfv ::
                         GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetMultiTexParameterfv
  = dyn_glGetMultiTexParameterfv ptr_glGetMultiTexParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMultiTexParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexParameterIuiv #-}
 
ptr_glGetMultiTexParameterIuiv :: FunPtr a
ptr_glGetMultiTexParameterIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexParameterIuivEXT"
 
glGetMultiTexParameterIuiv ::
                           GLenum -> GLenum -> GLenum -> Ptr GLuint -> IO ()
glGetMultiTexParameterIuiv
  = dyn_glGetMultiTexParameterIuiv ptr_glGetMultiTexParameterIuiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMultiTexParameterIuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexParameterIiv #-}
 
ptr_glGetMultiTexParameterIiv :: FunPtr a
ptr_glGetMultiTexParameterIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexParameterIivEXT"
 
glGetMultiTexParameterIiv ::
                          GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetMultiTexParameterIiv
  = dyn_glGetMultiTexParameterIiv ptr_glGetMultiTexParameterIiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMultiTexParameterIiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexLevelParameteriv #-}
 
ptr_glGetMultiTexLevelParameteriv :: FunPtr a
ptr_glGetMultiTexLevelParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexLevelParameterivEXT"
 
glGetMultiTexLevelParameteriv ::
                              GLenum -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO ()
glGetMultiTexLevelParameteriv
  = dyn_glGetMultiTexLevelParameteriv
      ptr_glGetMultiTexLevelParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMultiTexLevelParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexLevelParameterfv #-}
 
ptr_glGetMultiTexLevelParameterfv :: FunPtr a
ptr_glGetMultiTexLevelParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexLevelParameterfvEXT"
 
glGetMultiTexLevelParameterfv ::
                              GLenum -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ()
glGetMultiTexLevelParameterfv
  = dyn_glGetMultiTexLevelParameterfv
      ptr_glGetMultiTexLevelParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMultiTexLevelParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexImage #-}
 
ptr_glGetMultiTexImage :: FunPtr a
ptr_glGetMultiTexImage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexImageEXT"
 
glGetMultiTexImage ::
                   GLenum -> GLenum -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glGetMultiTexImage = dyn_glGetMultiTexImage ptr_glGetMultiTexImage
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultiTexImage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexGeniv #-}
 
ptr_glGetMultiTexGeniv :: FunPtr a
ptr_glGetMultiTexGeniv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexGenivEXT"
 
glGetMultiTexGeniv ::
                   GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetMultiTexGeniv = dyn_glGetMultiTexGeniv ptr_glGetMultiTexGeniv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultiTexGeniv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexGenfv #-}
 
ptr_glGetMultiTexGenfv :: FunPtr a
ptr_glGetMultiTexGenfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexGenfvEXT"
 
glGetMultiTexGenfv ::
                   GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetMultiTexGenfv = dyn_glGetMultiTexGenfv ptr_glGetMultiTexGenfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultiTexGenfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexGendv #-}
 
ptr_glGetMultiTexGendv :: FunPtr a
ptr_glGetMultiTexGendv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexGendvEXT"
 
glGetMultiTexGendv ::
                   GLenum -> GLenum -> GLenum -> Ptr GLdouble -> IO ()
glGetMultiTexGendv = dyn_glGetMultiTexGendv ptr_glGetMultiTexGendv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultiTexGendv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexEnviv #-}
 
ptr_glGetMultiTexEnviv :: FunPtr a
ptr_glGetMultiTexEnviv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexEnvivEXT"
 
glGetMultiTexEnviv ::
                   GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetMultiTexEnviv = dyn_glGetMultiTexEnviv ptr_glGetMultiTexEnviv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultiTexEnviv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMultiTexEnvfv #-}
 
ptr_glGetMultiTexEnvfv :: FunPtr a
ptr_glGetMultiTexEnvfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetMultiTexEnvfvEXT"
 
glGetMultiTexEnvfv ::
                   GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetMultiTexEnvfv = dyn_glGetMultiTexEnvfv ptr_glGetMultiTexEnvfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMultiTexEnvfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetFramebufferParameteriv #-}
 
ptr_glGetFramebufferParameteriv :: FunPtr a
ptr_glGetFramebufferParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetFramebufferParameterivEXT"
 
glGetFramebufferParameteriv ::
                            GLuint -> GLenum -> Ptr GLint -> IO ()
glGetFramebufferParameteriv
  = dyn_glGetFramebufferParameteriv ptr_glGetFramebufferParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetFramebufferParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetFloatIndexedv #-}
 
ptr_glGetFloatIndexedv :: FunPtr a
ptr_glGetFloatIndexedv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetFloatIndexedvEXT"
 
glGetFloatIndexedv :: GLenum -> GLuint -> Ptr GLfloat -> IO ()
glGetFloatIndexedv = dyn_glGetFloatIndexedv ptr_glGetFloatIndexedv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetFloatIndexedv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetDoubleIndexedv #-}
 
ptr_glGetDoubleIndexedv :: FunPtr a
ptr_glGetDoubleIndexedv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetDoubleIndexedvEXT"
 
glGetDoubleIndexedv :: GLenum -> GLuint -> Ptr GLdouble -> IO ()
glGetDoubleIndexedv
  = dyn_glGetDoubleIndexedv ptr_glGetDoubleIndexedv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetDoubleIndexedv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetCompressedTextureImage #-}
 
ptr_glGetCompressedTextureImage :: FunPtr a
ptr_glGetCompressedTextureImage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetCompressedTextureImageEXT"
 
glGetCompressedTextureImage ::
                            GLuint -> GLenum -> GLint -> Ptr a -> IO ()
glGetCompressedTextureImage
  = dyn_glGetCompressedTextureImage ptr_glGetCompressedTextureImage
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCompressedTextureImage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetCompressedMultiTexImage #-}
 
ptr_glGetCompressedMultiTexImage :: FunPtr a
ptr_glGetCompressedMultiTexImage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGetCompressedMultiTexImageEXT"
 
glGetCompressedMultiTexImage ::
                             GLenum -> GLenum -> GLint -> Ptr a -> IO ()
glGetCompressedMultiTexImage
  = dyn_glGetCompressedMultiTexImage ptr_glGetCompressedMultiTexImage
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCompressedMultiTexImage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGenerateTextureMipmap #-}
 
ptr_glGenerateTextureMipmap :: FunPtr a
ptr_glGenerateTextureMipmap
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGenerateTextureMipmapEXT"
 
glGenerateTextureMipmap :: GLuint -> GLenum -> IO ()
glGenerateTextureMipmap
  = dyn_glGenerateTextureMipmap ptr_glGenerateTextureMipmap
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenerateTextureMipmap
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glGenerateMultiTexMipmap #-}
 
ptr_glGenerateMultiTexMipmap :: FunPtr a
ptr_glGenerateMultiTexMipmap
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glGenerateMultiTexMipmapEXT"
 
glGenerateMultiTexMipmap :: GLenum -> GLenum -> IO ()
glGenerateMultiTexMipmap
  = dyn_glGenerateMultiTexMipmap ptr_glGenerateMultiTexMipmap
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGenerateMultiTexMipmap ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glFramebufferReadBuffer #-}
 
ptr_glFramebufferReadBuffer :: FunPtr a
ptr_glFramebufferReadBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glFramebufferReadBufferEXT"
 
glFramebufferReadBuffer :: GLuint -> GLenum -> IO ()
glFramebufferReadBuffer
  = dyn_glFramebufferReadBuffer ptr_glFramebufferReadBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glFramebufferReadBuffer
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glFramebufferDrawBuffers #-}
 
ptr_glFramebufferDrawBuffers :: FunPtr a
ptr_glFramebufferDrawBuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glFramebufferDrawBuffersEXT"
 
glFramebufferDrawBuffers ::
                         GLuint -> GLsizei -> Ptr GLenum -> IO ()
glFramebufferDrawBuffers
  = dyn_glFramebufferDrawBuffers ptr_glFramebufferDrawBuffers
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferDrawBuffers ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLenum -> IO ())
 
{-# NOINLINE ptr_glFramebufferDrawBuffer #-}
 
ptr_glFramebufferDrawBuffer :: FunPtr a
ptr_glFramebufferDrawBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glFramebufferDrawBufferEXT"
 
glFramebufferDrawBuffer :: GLuint -> GLenum -> IO ()
glFramebufferDrawBuffer
  = dyn_glFramebufferDrawBuffer ptr_glFramebufferDrawBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glFramebufferDrawBuffer
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glFlushMappedNamedBufferRange #-}
 
ptr_glFlushMappedNamedBufferRange :: FunPtr a
ptr_glFlushMappedNamedBufferRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glFlushMappedNamedBufferRangeEXT"
 
glFlushMappedNamedBufferRange ::
                              GLuint -> GLintptr -> GLsizeiptr -> IO ()
glFlushMappedNamedBufferRange
  = dyn_glFlushMappedNamedBufferRange
      ptr_glFlushMappedNamedBufferRange
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFlushMappedNamedBufferRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLintptr -> GLsizeiptr -> IO ())
 
{-# NOINLINE ptr_glEnableClientStateIndexed #-}
 
ptr_glEnableClientStateIndexed :: FunPtr a
ptr_glEnableClientStateIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glEnableClientStateIndexedEXT"
 
glEnableClientStateIndexed :: GLenum -> GLuint -> IO ()
glEnableClientStateIndexed
  = dyn_glEnableClientStateIndexed ptr_glEnableClientStateIndexed
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glEnableClientStateIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glDisableClientStateIndexed #-}
 
ptr_glDisableClientStateIndexed :: FunPtr a
ptr_glDisableClientStateIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glDisableClientStateIndexedEXT"
 
glDisableClientStateIndexed :: GLenum -> GLuint -> IO ()
glDisableClientStateIndexed
  = dyn_glDisableClientStateIndexed ptr_glDisableClientStateIndexed
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDisableClientStateIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glCopyTextureSubImage3D #-}
 
ptr_glCopyTextureSubImage3D :: FunPtr a
ptr_glCopyTextureSubImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyTextureSubImage3DEXT"
 
glCopyTextureSubImage3D ::
                        GLuint ->
                          GLenum ->
                            GLint ->
                              GLint ->
                                GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyTextureSubImage3D
  = dyn_glCopyTextureSubImage3D ptr_glCopyTextureSubImage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTextureSubImage3D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyTextureSubImage2D #-}
 
ptr_glCopyTextureSubImage2D :: FunPtr a
ptr_glCopyTextureSubImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyTextureSubImage2DEXT"
 
glCopyTextureSubImage2D ::
                        GLuint ->
                          GLenum ->
                            GLint ->
                              GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyTextureSubImage2D
  = dyn_glCopyTextureSubImage2D ptr_glCopyTextureSubImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTextureSubImage2D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyTextureSubImage1D #-}
 
ptr_glCopyTextureSubImage1D :: FunPtr a
ptr_glCopyTextureSubImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyTextureSubImage1DEXT"
 
glCopyTextureSubImage1D ::
                        GLuint ->
                          GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()
glCopyTextureSubImage1D
  = dyn_glCopyTextureSubImage1D ptr_glCopyTextureSubImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTextureSubImage1D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyTextureImage2D #-}
 
ptr_glCopyTextureImage2D :: FunPtr a
ptr_glCopyTextureImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyTextureImage2DEXT"
 
glCopyTextureImage2D ::
                     GLuint ->
                       GLenum ->
                         GLint ->
                           GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()
glCopyTextureImage2D
  = dyn_glCopyTextureImage2D ptr_glCopyTextureImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTextureImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ())
 
{-# NOINLINE ptr_glCopyTextureImage1D #-}
 
ptr_glCopyTextureImage1D :: FunPtr a
ptr_glCopyTextureImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyTextureImage1DEXT"
 
glCopyTextureImage1D ::
                     GLuint ->
                       GLenum ->
                         GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ()
glCopyTextureImage1D
  = dyn_glCopyTextureImage1D ptr_glCopyTextureImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTextureImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ())
 
{-# NOINLINE ptr_glCopyMultiTexSubImage3D #-}
 
ptr_glCopyMultiTexSubImage3D :: FunPtr a
ptr_glCopyMultiTexSubImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyMultiTexSubImage3DEXT"
 
glCopyMultiTexSubImage3D ::
                         GLenum ->
                           GLenum ->
                             GLint ->
                               GLint ->
                                 GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyMultiTexSubImage3D
  = dyn_glCopyMultiTexSubImage3D ptr_glCopyMultiTexSubImage3D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyMultiTexSubImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyMultiTexSubImage2D #-}
 
ptr_glCopyMultiTexSubImage2D :: FunPtr a
ptr_glCopyMultiTexSubImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyMultiTexSubImage2DEXT"
 
glCopyMultiTexSubImage2D ::
                         GLenum ->
                           GLenum ->
                             GLint ->
                               GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyMultiTexSubImage2D
  = dyn_glCopyMultiTexSubImage2D ptr_glCopyMultiTexSubImage2D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyMultiTexSubImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyMultiTexSubImage1D #-}
 
ptr_glCopyMultiTexSubImage1D :: FunPtr a
ptr_glCopyMultiTexSubImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyMultiTexSubImage1DEXT"
 
glCopyMultiTexSubImage1D ::
                         GLenum ->
                           GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()
glCopyMultiTexSubImage1D
  = dyn_glCopyMultiTexSubImage1D ptr_glCopyMultiTexSubImage1D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCopyMultiTexSubImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyMultiTexImage2D #-}
 
ptr_glCopyMultiTexImage2D :: FunPtr a
ptr_glCopyMultiTexImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyMultiTexImage2DEXT"
 
glCopyMultiTexImage2D ::
                      GLenum ->
                        GLenum ->
                          GLint ->
                            GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()
glCopyMultiTexImage2D
  = dyn_glCopyMultiTexImage2D ptr_glCopyMultiTexImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyMultiTexImage2D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ())
 
{-# NOINLINE ptr_glCopyMultiTexImage1D #-}
 
ptr_glCopyMultiTexImage1D :: FunPtr a
ptr_glCopyMultiTexImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCopyMultiTexImage1DEXT"
 
glCopyMultiTexImage1D ::
                      GLenum ->
                        GLenum ->
                          GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ()
glCopyMultiTexImage1D
  = dyn_glCopyMultiTexImage1D ptr_glCopyMultiTexImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyMultiTexImage1D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ())
 
{-# NOINLINE ptr_glCompressedTextureSubImage3D #-}
 
ptr_glCompressedTextureSubImage3D :: FunPtr a
ptr_glCompressedTextureSubImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedTextureSubImage3DEXT"
 
glCompressedTextureSubImage3D ::
                              GLuint ->
                                GLenum ->
                                  GLint ->
                                    GLint ->
                                      GLint ->
                                        GLint ->
                                          GLsizei ->
                                            GLsizei ->
                                              GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTextureSubImage3D
  = dyn_glCompressedTextureSubImage3D
      ptr_glCompressedTextureSubImage3D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTextureSubImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLsizei ->
                                GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTextureSubImage2D #-}
 
ptr_glCompressedTextureSubImage2D :: FunPtr a
ptr_glCompressedTextureSubImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedTextureSubImage2DEXT"
 
glCompressedTextureSubImage2D ::
                              GLuint ->
                                GLenum ->
                                  GLint ->
                                    GLint ->
                                      GLint ->
                                        GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTextureSubImage2D
  = dyn_glCompressedTextureSubImage2D
      ptr_glCompressedTextureSubImage2D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTextureSubImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTextureSubImage1D #-}
 
ptr_glCompressedTextureSubImage1D :: FunPtr a
ptr_glCompressedTextureSubImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedTextureSubImage1DEXT"
 
glCompressedTextureSubImage1D ::
                              GLuint ->
                                GLenum ->
                                  GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTextureSubImage1D
  = dyn_glCompressedTextureSubImage1D
      ptr_glCompressedTextureSubImage1D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTextureSubImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTextureImage3D #-}
 
ptr_glCompressedTextureImage3D :: FunPtr a
ptr_glCompressedTextureImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedTextureImage3DEXT"
 
glCompressedTextureImage3D ::
                           GLuint ->
                             GLenum ->
                               GLint ->
                                 GLenum ->
                                   GLsizei ->
                                     GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTextureImage3D
  = dyn_glCompressedTextureImage3D ptr_glCompressedTextureImage3D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTextureImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLenum ->
                          GLsizei ->
                            GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTextureImage2D #-}
 
ptr_glCompressedTextureImage2D :: FunPtr a
ptr_glCompressedTextureImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedTextureImage2DEXT"
 
glCompressedTextureImage2D ::
                           GLuint ->
                             GLenum ->
                               GLint ->
                                 GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTextureImage2D
  = dyn_glCompressedTextureImage2D ptr_glCompressedTextureImage2D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTextureImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint ->
                        GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTextureImage1D #-}
 
ptr_glCompressedTextureImage1D :: FunPtr a
ptr_glCompressedTextureImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedTextureImage1DEXT"
 
glCompressedTextureImage1D ::
                           GLuint ->
                             GLenum ->
                               GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTextureImage1D
  = dyn_glCompressedTextureImage1D ptr_glCompressedTextureImage1D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTextureImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedMultiTexSubImage3D #-}
 
ptr_glCompressedMultiTexSubImage3D :: FunPtr a
ptr_glCompressedMultiTexSubImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedMultiTexSubImage3DEXT"
 
glCompressedMultiTexSubImage3D ::
                               GLenum ->
                                 GLenum ->
                                   GLint ->
                                     GLint ->
                                       GLint ->
                                         GLint ->
                                           GLsizei ->
                                             GLsizei ->
                                               GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedMultiTexSubImage3D
  = dyn_glCompressedMultiTexSubImage3D
      ptr_glCompressedMultiTexSubImage3D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedMultiTexSubImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLsizei ->
                                GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedMultiTexSubImage2D #-}
 
ptr_glCompressedMultiTexSubImage2D :: FunPtr a
ptr_glCompressedMultiTexSubImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedMultiTexSubImage2DEXT"
 
glCompressedMultiTexSubImage2D ::
                               GLenum ->
                                 GLenum ->
                                   GLint ->
                                     GLint ->
                                       GLint ->
                                         GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedMultiTexSubImage2D
  = dyn_glCompressedMultiTexSubImage2D
      ptr_glCompressedMultiTexSubImage2D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedMultiTexSubImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedMultiTexSubImage1D #-}
 
ptr_glCompressedMultiTexSubImage1D :: FunPtr a
ptr_glCompressedMultiTexSubImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedMultiTexSubImage1DEXT"
 
glCompressedMultiTexSubImage1D ::
                               GLenum ->
                                 GLenum ->
                                   GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedMultiTexSubImage1D
  = dyn_glCompressedMultiTexSubImage1D
      ptr_glCompressedMultiTexSubImage1D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedMultiTexSubImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedMultiTexImage3D #-}
 
ptr_glCompressedMultiTexImage3D :: FunPtr a
ptr_glCompressedMultiTexImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedMultiTexImage3DEXT"
 
glCompressedMultiTexImage3D ::
                            GLenum ->
                              GLenum ->
                                GLint ->
                                  GLenum ->
                                    GLsizei ->
                                      GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedMultiTexImage3D
  = dyn_glCompressedMultiTexImage3D ptr_glCompressedMultiTexImage3D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedMultiTexImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum ->
                          GLsizei ->
                            GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedMultiTexImage2D #-}
 
ptr_glCompressedMultiTexImage2D :: FunPtr a
ptr_glCompressedMultiTexImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedMultiTexImage2DEXT"
 
glCompressedMultiTexImage2D ::
                            GLenum ->
                              GLenum ->
                                GLint ->
                                  GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedMultiTexImage2D
  = dyn_glCompressedMultiTexImage2D ptr_glCompressedMultiTexImage2D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedMultiTexImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint ->
                        GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedMultiTexImage1D #-}
 
ptr_glCompressedMultiTexImage1D :: FunPtr a
ptr_glCompressedMultiTexImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCompressedMultiTexImage1DEXT"
 
glCompressedMultiTexImage1D ::
                            GLenum ->
                              GLenum ->
                                GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedMultiTexImage1D
  = dyn_glCompressedMultiTexImage1D ptr_glCompressedMultiTexImage1D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedMultiTexImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glClientAttribDefault #-}
 
ptr_glClientAttribDefault :: FunPtr a
ptr_glClientAttribDefault
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glClientAttribDefaultEXT"
 
glClientAttribDefault :: GLbitfield -> IO ()
glClientAttribDefault
  = dyn_glClientAttribDefault ptr_glClientAttribDefault
 
foreign import CALLCONV unsafe "dynamic" dyn_glClientAttribDefault
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbitfield -> IO ())
 
{-# NOINLINE ptr_glCheckNamedFramebufferStatus #-}
 
ptr_glCheckNamedFramebufferStatus :: FunPtr a
ptr_glCheckNamedFramebufferStatus
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glCheckNamedFramebufferStatusEXT"
 
glCheckNamedFramebufferStatus :: GLuint -> GLenum -> IO GLenum
glCheckNamedFramebufferStatus
  = dyn_glCheckNamedFramebufferStatus
      ptr_glCheckNamedFramebufferStatus
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCheckNamedFramebufferStatus ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO GLenum)
 
{-# NOINLINE ptr_glBindMultiTexture #-}
 
ptr_glBindMultiTexture :: FunPtr a
ptr_glBindMultiTexture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_direct_state_access"
        "glBindMultiTextureEXT"
 
glBindMultiTexture :: GLenum -> GLenum -> GLuint -> IO ()
glBindMultiTexture = dyn_glBindMultiTexture ptr_glBindMultiTexture
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindMultiTexture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> IO ())
 
gl_TRANSPOSE_PROGRAM_MATRIX :: GLenum
gl_TRANSPOSE_PROGRAM_MATRIX = 36398
 
gl_PROGRAM_MATRIX_STACK_DEPTH :: GLenum
gl_PROGRAM_MATRIX_STACK_DEPTH = 36399
 
gl_PROGRAM_MATRIX :: GLenum
gl_PROGRAM_MATRIX = 36397