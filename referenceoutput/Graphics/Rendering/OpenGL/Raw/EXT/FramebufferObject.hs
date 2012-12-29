{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.FramebufferObject
       (glGenerateMipmapEXT, glGetFramebufferAttachmentParameterivEXT,
        glFramebufferRenderbufferEXT, glFramebufferTexture3DEXT,
        glFramebufferTexture2DEXT, glFramebufferTexture1DEXT,
        glCheckFramebufferStatusEXT, glGenFramebuffersEXT,
        glDeleteFramebuffersEXT, glBindFramebufferEXT, glIsFramebufferEXT,
        glGetRenderbufferParameterivEXT, glRenderbufferStorageEXT,
        glGenRenderbuffersEXT, glDeleteRenderbuffersEXT,
        glBindRenderbufferEXT, glIsRenderbufferEXT,
        gl_RENDERBUFFER_STENCIL_SIZE_EXT, gl_RENDERBUFFER_DEPTH_SIZE_EXT,
        gl_RENDERBUFFER_ALPHA_SIZE_EXT, gl_RENDERBUFFER_BLUE_SIZE_EXT,
        gl_RENDERBUFFER_GREEN_SIZE_EXT, gl_RENDERBUFFER_RED_SIZE_EXT,
        gl_STENCIL_INDEX16_EXT, gl_STENCIL_INDEX8_EXT,
        gl_STENCIL_INDEX4_EXT, gl_STENCIL_INDEX1_EXT,
        gl_RENDERBUFFER_INTERNAL_FORMAT_EXT, gl_RENDERBUFFER_HEIGHT_EXT,
        gl_RENDERBUFFER_WIDTH_EXT, gl_RENDERBUFFER_EXT, gl_FRAMEBUFFER_EXT,
        gl_STENCIL_ATTACHMENT_EXT, gl_DEPTH_ATTACHMENT_EXT,
        gl_COLOR_ATTACHMENT15_EXT, gl_COLOR_ATTACHMENT14_EXT,
        gl_COLOR_ATTACHMENT13_EXT, gl_COLOR_ATTACHMENT12_EXT,
        gl_COLOR_ATTACHMENT11_EXT, gl_COLOR_ATTACHMENT10_EXT,
        gl_COLOR_ATTACHMENT9_EXT, gl_COLOR_ATTACHMENT8_EXT,
        gl_COLOR_ATTACHMENT7_EXT, gl_COLOR_ATTACHMENT6_EXT,
        gl_COLOR_ATTACHMENT5_EXT, gl_COLOR_ATTACHMENT4_EXT,
        gl_COLOR_ATTACHMENT3_EXT, gl_COLOR_ATTACHMENT2_EXT,
        gl_COLOR_ATTACHMENT1_EXT, gl_COLOR_ATTACHMENT0_EXT,
        gl_MAX_COLOR_ATTACHMENTS_EXT, gl_FRAMEBUFFER_UNSUPPORTED_EXT,
        gl_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT,
        gl_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT,
        gl_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT,
        gl_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT,
        gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT,
        gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT,
        gl_FRAMEBUFFER_COMPLETE_EXT,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT,
        gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT,
        gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT,
        gl_RENDERBUFFER_BINDING_EXT, gl_FRAMEBUFFER_BINDING_EXT,
        gl_MAX_RENDERBUFFER_SIZE_EXT, gl_INVALID_FRAMEBUFFER_OPERATION_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.EXT.FramebufferBlit
       (gl_DRAW_FRAMEBUFFER_BINDING_EXT)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGenerateMipmapEXT #-}
 
ptr_glGenerateMipmapEXT :: FunPtr a
ptr_glGenerateMipmapEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glGenerateMipmapEXT"
 
glGenerateMipmapEXT :: GLenum -> IO ()
glGenerateMipmapEXT
  = dyn_glGenerateMipmapEXT ptr_glGenerateMipmapEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenerateMipmapEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glGetFramebufferAttachmentParameterivEXT #-}
 
ptr_glGetFramebufferAttachmentParameterivEXT :: FunPtr a
ptr_glGetFramebufferAttachmentParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glGetFramebufferAttachmentParameterivEXT"
 
glGetFramebufferAttachmentParameterivEXT ::
                                         GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetFramebufferAttachmentParameterivEXT
  = dyn_glGetFramebufferAttachmentParameterivEXT
      ptr_glGetFramebufferAttachmentParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetFramebufferAttachmentParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferRenderbufferEXT #-}
 
ptr_glFramebufferRenderbufferEXT :: FunPtr a
ptr_glFramebufferRenderbufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glFramebufferRenderbufferEXT"
 
glFramebufferRenderbufferEXT ::
                             GLenum -> GLenum -> GLenum -> GLuint -> IO ()
glFramebufferRenderbufferEXT
  = dyn_glFramebufferRenderbufferEXT ptr_glFramebufferRenderbufferEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferRenderbufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glFramebufferTexture3DEXT #-}
 
ptr_glFramebufferTexture3DEXT :: FunPtr a
ptr_glFramebufferTexture3DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glFramebufferTexture3DEXT"
 
glFramebufferTexture3DEXT ::
                          GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()
glFramebufferTexture3DEXT
  = dyn_glFramebufferTexture3DEXT ptr_glFramebufferTexture3DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferTexture3DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferTexture2DEXT #-}
 
ptr_glFramebufferTexture2DEXT :: FunPtr a
ptr_glFramebufferTexture2DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glFramebufferTexture2DEXT"
 
glFramebufferTexture2DEXT ::
                          GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO ()
glFramebufferTexture2DEXT
  = dyn_glFramebufferTexture2DEXT ptr_glFramebufferTexture2DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferTexture2DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferTexture1DEXT #-}
 
ptr_glFramebufferTexture1DEXT :: FunPtr a
ptr_glFramebufferTexture1DEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glFramebufferTexture1DEXT"
 
glFramebufferTexture1DEXT ::
                          GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO ()
glFramebufferTexture1DEXT
  = dyn_glFramebufferTexture1DEXT ptr_glFramebufferTexture1DEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferTexture1DEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glCheckFramebufferStatusEXT #-}
 
ptr_glCheckFramebufferStatusEXT :: FunPtr a
ptr_glCheckFramebufferStatusEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glCheckFramebufferStatusEXT"
 
glCheckFramebufferStatusEXT :: GLenum -> IO GLenum
glCheckFramebufferStatusEXT
  = dyn_glCheckFramebufferStatusEXT ptr_glCheckFramebufferStatusEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCheckFramebufferStatusEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLenum)
 
{-# NOINLINE ptr_glGenFramebuffersEXT #-}
 
ptr_glGenFramebuffersEXT :: FunPtr a
ptr_glGenFramebuffersEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glGenFramebuffersEXT"
 
glGenFramebuffersEXT :: GLsizei -> Ptr GLuint -> IO ()
glGenFramebuffersEXT
  = dyn_glGenFramebuffersEXT ptr_glGenFramebuffersEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenFramebuffersEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteFramebuffersEXT #-}
 
ptr_glDeleteFramebuffersEXT :: FunPtr a
ptr_glDeleteFramebuffersEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glDeleteFramebuffersEXT"
 
glDeleteFramebuffersEXT :: GLsizei -> Ptr GLuint -> IO ()
glDeleteFramebuffersEXT
  = dyn_glDeleteFramebuffersEXT ptr_glDeleteFramebuffersEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteFramebuffersEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBindFramebufferEXT #-}
 
ptr_glBindFramebufferEXT :: FunPtr a
ptr_glBindFramebufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glBindFramebufferEXT"
 
glBindFramebufferEXT :: GLenum -> GLuint -> IO ()
glBindFramebufferEXT
  = dyn_glBindFramebufferEXT ptr_glBindFramebufferEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindFramebufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glIsFramebufferEXT #-}
 
ptr_glIsFramebufferEXT :: FunPtr a
ptr_glIsFramebufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glIsFramebufferEXT"
 
glIsFramebufferEXT :: GLuint -> IO GLboolean
glIsFramebufferEXT = dyn_glIsFramebufferEXT ptr_glIsFramebufferEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsFramebufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetRenderbufferParameterivEXT #-}
 
ptr_glGetRenderbufferParameterivEXT :: FunPtr a
ptr_glGetRenderbufferParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glGetRenderbufferParameterivEXT"
 
glGetRenderbufferParameterivEXT ::
                                GLenum -> GLenum -> Ptr GLint -> IO ()
glGetRenderbufferParameterivEXT
  = dyn_glGetRenderbufferParameterivEXT
      ptr_glGetRenderbufferParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetRenderbufferParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glRenderbufferStorageEXT #-}
 
ptr_glRenderbufferStorageEXT :: FunPtr a
ptr_glRenderbufferStorageEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glRenderbufferStorageEXT"
 
glRenderbufferStorageEXT ::
                         GLenum -> GLenum -> GLsizei -> GLsizei -> IO ()
glRenderbufferStorageEXT
  = dyn_glRenderbufferStorageEXT ptr_glRenderbufferStorageEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glRenderbufferStorageEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glGenRenderbuffersEXT #-}
 
ptr_glGenRenderbuffersEXT :: FunPtr a
ptr_glGenRenderbuffersEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glGenRenderbuffersEXT"
 
glGenRenderbuffersEXT :: GLsizei -> Ptr GLuint -> IO ()
glGenRenderbuffersEXT
  = dyn_glGenRenderbuffersEXT ptr_glGenRenderbuffersEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenRenderbuffersEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteRenderbuffersEXT #-}
 
ptr_glDeleteRenderbuffersEXT :: FunPtr a
ptr_glDeleteRenderbuffersEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glDeleteRenderbuffersEXT"
 
glDeleteRenderbuffersEXT :: GLsizei -> Ptr GLuint -> IO ()
glDeleteRenderbuffersEXT
  = dyn_glDeleteRenderbuffersEXT ptr_glDeleteRenderbuffersEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDeleteRenderbuffersEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glBindRenderbufferEXT #-}
 
ptr_glBindRenderbufferEXT :: FunPtr a
ptr_glBindRenderbufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glBindRenderbufferEXT"
 
glBindRenderbufferEXT :: GLenum -> GLuint -> IO ()
glBindRenderbufferEXT
  = dyn_glBindRenderbufferEXT ptr_glBindRenderbufferEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindRenderbufferEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glIsRenderbufferEXT #-}
 
ptr_glIsRenderbufferEXT :: FunPtr a
ptr_glIsRenderbufferEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glIsRenderbufferEXT"
 
glIsRenderbufferEXT :: GLuint -> IO GLboolean
glIsRenderbufferEXT
  = dyn_glIsRenderbufferEXT ptr_glIsRenderbufferEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsRenderbufferEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
gl_RENDERBUFFER_STENCIL_SIZE_EXT :: GLenum
gl_RENDERBUFFER_STENCIL_SIZE_EXT = 36181
 
gl_RENDERBUFFER_DEPTH_SIZE_EXT :: GLenum
gl_RENDERBUFFER_DEPTH_SIZE_EXT = 36180
 
gl_RENDERBUFFER_ALPHA_SIZE_EXT :: GLenum
gl_RENDERBUFFER_ALPHA_SIZE_EXT = 36179
 
gl_RENDERBUFFER_BLUE_SIZE_EXT :: GLenum
gl_RENDERBUFFER_BLUE_SIZE_EXT = 36178
 
gl_RENDERBUFFER_GREEN_SIZE_EXT :: GLenum
gl_RENDERBUFFER_GREEN_SIZE_EXT = 36177
 
gl_RENDERBUFFER_RED_SIZE_EXT :: GLenum
gl_RENDERBUFFER_RED_SIZE_EXT = 36176
 
gl_STENCIL_INDEX16_EXT :: GLenum
gl_STENCIL_INDEX16_EXT = 36169
 
gl_STENCIL_INDEX8_EXT :: GLenum
gl_STENCIL_INDEX8_EXT = 36168
 
gl_STENCIL_INDEX4_EXT :: GLenum
gl_STENCIL_INDEX4_EXT = 36167
 
gl_STENCIL_INDEX1_EXT :: GLenum
gl_STENCIL_INDEX1_EXT = 36166
 
gl_RENDERBUFFER_INTERNAL_FORMAT_EXT :: GLenum
gl_RENDERBUFFER_INTERNAL_FORMAT_EXT = 36164
 
gl_RENDERBUFFER_HEIGHT_EXT :: GLenum
gl_RENDERBUFFER_HEIGHT_EXT = 36163
 
gl_RENDERBUFFER_WIDTH_EXT :: GLenum
gl_RENDERBUFFER_WIDTH_EXT = 36162
 
gl_RENDERBUFFER_EXT :: GLenum
gl_RENDERBUFFER_EXT = 36161
 
gl_FRAMEBUFFER_EXT :: GLenum
gl_FRAMEBUFFER_EXT = 36160
 
gl_STENCIL_ATTACHMENT_EXT :: GLenum
gl_STENCIL_ATTACHMENT_EXT = 36128
 
gl_DEPTH_ATTACHMENT_EXT :: GLenum
gl_DEPTH_ATTACHMENT_EXT = 36096
 
gl_COLOR_ATTACHMENT15_EXT :: GLenum
gl_COLOR_ATTACHMENT15_EXT = 36079
 
gl_COLOR_ATTACHMENT14_EXT :: GLenum
gl_COLOR_ATTACHMENT14_EXT = 36078
 
gl_COLOR_ATTACHMENT13_EXT :: GLenum
gl_COLOR_ATTACHMENT13_EXT = 36077
 
gl_COLOR_ATTACHMENT12_EXT :: GLenum
gl_COLOR_ATTACHMENT12_EXT = 36076
 
gl_COLOR_ATTACHMENT11_EXT :: GLenum
gl_COLOR_ATTACHMENT11_EXT = 36075
 
gl_COLOR_ATTACHMENT10_EXT :: GLenum
gl_COLOR_ATTACHMENT10_EXT = 36074
 
gl_COLOR_ATTACHMENT9_EXT :: GLenum
gl_COLOR_ATTACHMENT9_EXT = 36073
 
gl_COLOR_ATTACHMENT8_EXT :: GLenum
gl_COLOR_ATTACHMENT8_EXT = 36072
 
gl_COLOR_ATTACHMENT7_EXT :: GLenum
gl_COLOR_ATTACHMENT7_EXT = 36071
 
gl_COLOR_ATTACHMENT6_EXT :: GLenum
gl_COLOR_ATTACHMENT6_EXT = 36070
 
gl_COLOR_ATTACHMENT5_EXT :: GLenum
gl_COLOR_ATTACHMENT5_EXT = 36069
 
gl_COLOR_ATTACHMENT4_EXT :: GLenum
gl_COLOR_ATTACHMENT4_EXT = 36068
 
gl_COLOR_ATTACHMENT3_EXT :: GLenum
gl_COLOR_ATTACHMENT3_EXT = 36067
 
gl_COLOR_ATTACHMENT2_EXT :: GLenum
gl_COLOR_ATTACHMENT2_EXT = 36066
 
gl_COLOR_ATTACHMENT1_EXT :: GLenum
gl_COLOR_ATTACHMENT1_EXT = 36065
 
gl_COLOR_ATTACHMENT0_EXT :: GLenum
gl_COLOR_ATTACHMENT0_EXT = 36064
 
gl_MAX_COLOR_ATTACHMENTS_EXT :: GLenum
gl_MAX_COLOR_ATTACHMENTS_EXT = 36063
 
gl_FRAMEBUFFER_UNSUPPORTED_EXT :: GLenum
gl_FRAMEBUFFER_UNSUPPORTED_EXT = 36061
 
gl_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT = 36060
 
gl_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT = 36059
 
gl_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT = 36058
 
gl_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT = 36057
 
gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT = 36055
 
gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT = 36054
 
gl_FRAMEBUFFER_COMPLETE_EXT :: GLenum
gl_FRAMEBUFFER_COMPLETE_EXT = 36053
 
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT = 36052
 
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT = 36051
 
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT = 36050
 
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT = 36049
 
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT = 36048
 
gl_RENDERBUFFER_BINDING_EXT :: GLenum
gl_RENDERBUFFER_BINDING_EXT = 36007
 
gl_FRAMEBUFFER_BINDING_EXT :: GLenum
gl_FRAMEBUFFER_BINDING_EXT = gl_DRAW_FRAMEBUFFER_BINDING_EXT
 
gl_MAX_RENDERBUFFER_SIZE_EXT :: GLenum
gl_MAX_RENDERBUFFER_SIZE_EXT = 34024
 
gl_INVALID_FRAMEBUFFER_OPERATION_EXT :: GLenum
gl_INVALID_FRAMEBUFFER_OPERATION_EXT = 1286