{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.FramebufferObject
       (glRenderbufferStorage, glIsRenderbuffer, glIsFramebuffer,
        glGetRenderbufferParameteriv,
        glGetFramebufferAttachmentParameteriv, glGenerateMipmap,
        glGenRenderbuffers, glGenFramebuffers, glFramebufferTexture3D,
        glFramebufferTexture2D, glFramebufferTexture1D,
        glFramebufferRenderbuffer, glDeleteRenderbuffers,
        glDeleteFramebuffers, glCheckFramebufferStatus, glBindRenderbuffer,
        glBindFramebuffer, gl_STENCIL_INDEX8, gl_STENCIL_INDEX4,
        gl_STENCIL_INDEX1, gl_STENCIL_INDEX16, gl_STENCIL_ATTACHMENT,
        gl_RENDERBUFFER_WIDTH, gl_RENDERBUFFER_STENCIL_SIZE,
        gl_RENDERBUFFER_RED_SIZE, gl_RENDERBUFFER_INTERNAL_FORMAT,
        gl_RENDERBUFFER_HEIGHT, gl_RENDERBUFFER_GREEN_SIZE,
        gl_RENDERBUFFER, gl_RENDERBUFFER_DEPTH_SIZE,
        gl_RENDERBUFFER_BLUE_SIZE, gl_RENDERBUFFER_BINDING,
        gl_RENDERBUFFER_ALPHA_SIZE, gl_MAX_RENDERBUFFER_SIZE,
        gl_MAX_COLOR_ATTACHMENTS, gl_INVALID_FRAMEBUFFER_OPERATION,
        gl_FRAMEBUFFER_UNSUPPORTED, gl_FRAMEBUFFER_INCOMPLETE_READ_BUFFER,
        gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT,
        gl_FRAMEBUFFER_INCOMPLETE_FORMATS,
        gl_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER,
        gl_FRAMEBUFFER_INCOMPLETE_DIMENSIONS,
        gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT, gl_FRAMEBUFFER,
        gl_FRAMEBUFFER_COMPLETE, gl_FRAMEBUFFER_BINDING,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET,
        gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE,
        gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME, gl_DEPTH_ATTACHMENT,
        gl_COLOR_ATTACHMENT9, gl_COLOR_ATTACHMENT8, gl_COLOR_ATTACHMENT7,
        gl_COLOR_ATTACHMENT6, gl_COLOR_ATTACHMENT5, gl_COLOR_ATTACHMENT4,
        gl_COLOR_ATTACHMENT3, gl_COLOR_ATTACHMENT2, gl_COLOR_ATTACHMENT1,
        gl_COLOR_ATTACHMENT15, gl_COLOR_ATTACHMENT14,
        gl_COLOR_ATTACHMENT13, gl_COLOR_ATTACHMENT12,
        gl_COLOR_ATTACHMENT11, gl_COLOR_ATTACHMENT10, gl_COLOR_ATTACHMENT0)
       where
import Graphics.Rendering.OpenGL.Raw.EXT.FramebufferBlit
       (gl_DRAW_FRAMEBUFFER_BINDING)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glRenderbufferStorage #-}
 
ptr_glRenderbufferStorage :: FunPtr a
ptr_glRenderbufferStorage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glRenderbufferStorageEXT"
 
glRenderbufferStorage ::
                      GLenum -> GLenum -> GLsizei -> GLsizei -> IO ()
glRenderbufferStorage
  = dyn_glRenderbufferStorage ptr_glRenderbufferStorage
 
foreign import CALLCONV unsafe "dynamic" dyn_glRenderbufferStorage
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glIsRenderbuffer #-}
 
ptr_glIsRenderbuffer :: FunPtr a
ptr_glIsRenderbuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glIsRenderbufferEXT"
 
glIsRenderbuffer :: GLuint -> IO GLboolean
glIsRenderbuffer = dyn_glIsRenderbuffer ptr_glIsRenderbuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsRenderbuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glIsFramebuffer #-}
 
ptr_glIsFramebuffer :: FunPtr a
ptr_glIsFramebuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glIsFramebufferEXT"
 
glIsFramebuffer :: GLuint -> IO GLboolean
glIsFramebuffer = dyn_glIsFramebuffer ptr_glIsFramebuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsFramebuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetRenderbufferParameteriv #-}
 
ptr_glGetRenderbufferParameteriv :: FunPtr a
ptr_glGetRenderbufferParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glGetRenderbufferParameterivEXT"
 
glGetRenderbufferParameteriv ::
                             GLenum -> GLenum -> Ptr GLint -> IO ()
glGetRenderbufferParameteriv
  = dyn_glGetRenderbufferParameteriv ptr_glGetRenderbufferParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetRenderbufferParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetFramebufferAttachmentParameteriv #-}
 
ptr_glGetFramebufferAttachmentParameteriv :: FunPtr a
ptr_glGetFramebufferAttachmentParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glGetFramebufferAttachmentParameterivEXT"
 
glGetFramebufferAttachmentParameteriv ::
                                      GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetFramebufferAttachmentParameteriv
  = dyn_glGetFramebufferAttachmentParameteriv
      ptr_glGetFramebufferAttachmentParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetFramebufferAttachmentParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGenerateMipmap #-}
 
ptr_glGenerateMipmap :: FunPtr a
ptr_glGenerateMipmap
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glGenerateMipmapEXT"
 
glGenerateMipmap :: GLenum -> IO ()
glGenerateMipmap = dyn_glGenerateMipmap ptr_glGenerateMipmap
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenerateMipmap ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glGenRenderbuffers #-}
 
ptr_glGenRenderbuffers :: FunPtr a
ptr_glGenRenderbuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glGenRenderbuffersEXT"
 
glGenRenderbuffers :: GLsizei -> Ptr GLuint -> IO ()
glGenRenderbuffers = dyn_glGenRenderbuffers ptr_glGenRenderbuffers
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenRenderbuffers ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGenFramebuffers #-}
 
ptr_glGenFramebuffers :: FunPtr a
ptr_glGenFramebuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glGenFramebuffersEXT"
 
glGenFramebuffers :: GLsizei -> Ptr GLuint -> IO ()
glGenFramebuffers = dyn_glGenFramebuffers ptr_glGenFramebuffers
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenFramebuffers ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glFramebufferTexture3D #-}
 
ptr_glFramebufferTexture3D :: FunPtr a
ptr_glFramebufferTexture3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glFramebufferTexture3DEXT"
 
glFramebufferTexture3D ::
                       GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()
glFramebufferTexture3D
  = dyn_glFramebufferTexture3D ptr_glFramebufferTexture3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glFramebufferTexture3D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferTexture2D #-}
 
ptr_glFramebufferTexture2D :: FunPtr a
ptr_glFramebufferTexture2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glFramebufferTexture2DEXT"
 
glFramebufferTexture2D ::
                       GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO ()
glFramebufferTexture2D
  = dyn_glFramebufferTexture2D ptr_glFramebufferTexture2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glFramebufferTexture2D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferTexture1D #-}
 
ptr_glFramebufferTexture1D :: FunPtr a
ptr_glFramebufferTexture1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glFramebufferTexture1DEXT"
 
glFramebufferTexture1D ::
                       GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO ()
glFramebufferTexture1D
  = dyn_glFramebufferTexture1D ptr_glFramebufferTexture1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glFramebufferTexture1D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferRenderbuffer #-}
 
ptr_glFramebufferRenderbuffer :: FunPtr a
ptr_glFramebufferRenderbuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glFramebufferRenderbufferEXT"
 
glFramebufferRenderbuffer ::
                          GLenum -> GLenum -> GLenum -> GLuint -> IO ()
glFramebufferRenderbuffer
  = dyn_glFramebufferRenderbuffer ptr_glFramebufferRenderbuffer
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferRenderbuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteRenderbuffers #-}
 
ptr_glDeleteRenderbuffers :: FunPtr a
ptr_glDeleteRenderbuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glDeleteRenderbuffersEXT"
 
glDeleteRenderbuffers :: GLsizei -> Ptr GLuint -> IO ()
glDeleteRenderbuffers
  = dyn_glDeleteRenderbuffers ptr_glDeleteRenderbuffers
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteRenderbuffers
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteFramebuffers #-}
 
ptr_glDeleteFramebuffers :: FunPtr a
ptr_glDeleteFramebuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glDeleteFramebuffersEXT"
 
glDeleteFramebuffers :: GLsizei -> Ptr GLuint -> IO ()
glDeleteFramebuffers
  = dyn_glDeleteFramebuffers ptr_glDeleteFramebuffers
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteFramebuffers ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glCheckFramebufferStatus #-}
 
ptr_glCheckFramebufferStatus :: FunPtr a
ptr_glCheckFramebufferStatus
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glCheckFramebufferStatusEXT"
 
glCheckFramebufferStatus :: GLenum -> IO GLenum
glCheckFramebufferStatus
  = dyn_glCheckFramebufferStatus ptr_glCheckFramebufferStatus
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCheckFramebufferStatus ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLenum)
 
{-# NOINLINE ptr_glBindRenderbuffer #-}
 
ptr_glBindRenderbuffer :: FunPtr a
ptr_glBindRenderbuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glBindRenderbufferEXT"
 
glBindRenderbuffer :: GLenum -> GLuint -> IO ()
glBindRenderbuffer = dyn_glBindRenderbuffer ptr_glBindRenderbuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindRenderbuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glBindFramebuffer #-}
 
ptr_glBindFramebuffer :: FunPtr a
ptr_glBindFramebuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_framebuffer_object"
        "glBindFramebufferEXT"
 
glBindFramebuffer :: GLenum -> GLuint -> IO ()
glBindFramebuffer = dyn_glBindFramebuffer ptr_glBindFramebuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindFramebuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
gl_STENCIL_INDEX8 :: GLenum
gl_STENCIL_INDEX8 = 36168
 
gl_STENCIL_INDEX4 :: GLenum
gl_STENCIL_INDEX4 = 36167
 
gl_STENCIL_INDEX1 :: GLenum
gl_STENCIL_INDEX1 = 36166
 
gl_STENCIL_INDEX16 :: GLenum
gl_STENCIL_INDEX16 = 36169
 
gl_STENCIL_ATTACHMENT :: GLenum
gl_STENCIL_ATTACHMENT = 36128
 
gl_RENDERBUFFER_WIDTH :: GLenum
gl_RENDERBUFFER_WIDTH = 36162
 
gl_RENDERBUFFER_STENCIL_SIZE :: GLenum
gl_RENDERBUFFER_STENCIL_SIZE = 36181
 
gl_RENDERBUFFER_RED_SIZE :: GLenum
gl_RENDERBUFFER_RED_SIZE = 36176
 
gl_RENDERBUFFER_INTERNAL_FORMAT :: GLenum
gl_RENDERBUFFER_INTERNAL_FORMAT = 36164
 
gl_RENDERBUFFER_HEIGHT :: GLenum
gl_RENDERBUFFER_HEIGHT = 36163
 
gl_RENDERBUFFER_GREEN_SIZE :: GLenum
gl_RENDERBUFFER_GREEN_SIZE = 36177
 
gl_RENDERBUFFER :: GLenum
gl_RENDERBUFFER = 36161
 
gl_RENDERBUFFER_DEPTH_SIZE :: GLenum
gl_RENDERBUFFER_DEPTH_SIZE = 36180
 
gl_RENDERBUFFER_BLUE_SIZE :: GLenum
gl_RENDERBUFFER_BLUE_SIZE = 36178
 
gl_RENDERBUFFER_BINDING :: GLenum
gl_RENDERBUFFER_BINDING = 36007
 
gl_RENDERBUFFER_ALPHA_SIZE :: GLenum
gl_RENDERBUFFER_ALPHA_SIZE = 36179
 
gl_MAX_RENDERBUFFER_SIZE :: GLenum
gl_MAX_RENDERBUFFER_SIZE = 34024
 
gl_MAX_COLOR_ATTACHMENTS :: GLenum
gl_MAX_COLOR_ATTACHMENTS = 36063
 
gl_INVALID_FRAMEBUFFER_OPERATION :: GLenum
gl_INVALID_FRAMEBUFFER_OPERATION = 1286
 
gl_FRAMEBUFFER_UNSUPPORTED :: GLenum
gl_FRAMEBUFFER_UNSUPPORTED = 36061
 
gl_FRAMEBUFFER_INCOMPLETE_READ_BUFFER :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_READ_BUFFER = 36060
 
gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 36055
 
gl_FRAMEBUFFER_INCOMPLETE_FORMATS :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_FORMATS = 36058
 
gl_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = 36059
 
gl_FRAMEBUFFER_INCOMPLETE_DIMENSIONS :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 36057
 
gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 36054
 
gl_FRAMEBUFFER :: GLenum
gl_FRAMEBUFFER = 36160
 
gl_FRAMEBUFFER_COMPLETE :: GLenum
gl_FRAMEBUFFER_COMPLETE = 36053
 
gl_FRAMEBUFFER_BINDING :: GLenum
gl_FRAMEBUFFER_BINDING = gl_DRAW_FRAMEBUFFER_BINDING
 
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 36050
 
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 36051
 
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET = 36052
 
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 36048
 
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 36049
 
gl_DEPTH_ATTACHMENT :: GLenum
gl_DEPTH_ATTACHMENT = 36096
 
gl_COLOR_ATTACHMENT9 :: GLenum
gl_COLOR_ATTACHMENT9 = 36073
 
gl_COLOR_ATTACHMENT8 :: GLenum
gl_COLOR_ATTACHMENT8 = 36072
 
gl_COLOR_ATTACHMENT7 :: GLenum
gl_COLOR_ATTACHMENT7 = 36071
 
gl_COLOR_ATTACHMENT6 :: GLenum
gl_COLOR_ATTACHMENT6 = 36070
 
gl_COLOR_ATTACHMENT5 :: GLenum
gl_COLOR_ATTACHMENT5 = 36069
 
gl_COLOR_ATTACHMENT4 :: GLenum
gl_COLOR_ATTACHMENT4 = 36068
 
gl_COLOR_ATTACHMENT3 :: GLenum
gl_COLOR_ATTACHMENT3 = 36067
 
gl_COLOR_ATTACHMENT2 :: GLenum
gl_COLOR_ATTACHMENT2 = 36066
 
gl_COLOR_ATTACHMENT1 :: GLenum
gl_COLOR_ATTACHMENT1 = 36065
 
gl_COLOR_ATTACHMENT15 :: GLenum
gl_COLOR_ATTACHMENT15 = 36079
 
gl_COLOR_ATTACHMENT14 :: GLenum
gl_COLOR_ATTACHMENT14 = 36078
 
gl_COLOR_ATTACHMENT13 :: GLenum
gl_COLOR_ATTACHMENT13 = 36077
 
gl_COLOR_ATTACHMENT12 :: GLenum
gl_COLOR_ATTACHMENT12 = 36076
 
gl_COLOR_ATTACHMENT11 :: GLenum
gl_COLOR_ATTACHMENT11 = 36075
 
gl_COLOR_ATTACHMENT10 :: GLenum
gl_COLOR_ATTACHMENT10 = 36074
 
gl_COLOR_ATTACHMENT0 :: GLenum
gl_COLOR_ATTACHMENT0 = 36064