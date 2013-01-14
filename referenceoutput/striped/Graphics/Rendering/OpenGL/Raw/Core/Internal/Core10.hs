{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core10
       (glViewport, glTexParameteriv, glTexParameteri, glTexParameterfv,
        glTexParameterf, glTexImage2D, glTexImage1D, glStencilOp,
        glStencilMask, glStencilFunc, glScissor, glReadPixels,
        glReadBuffer, glPolygonMode, glPointSize, glPixelStorei,
        glPixelStoref, glLogicOp, glLineWidth, glIsEnabled, glHint,
        glGetTexParameteriv, glGetTexParameterfv, glGetTexLevelParameteriv,
        glGetTexLevelParameterfv, glGetTexImage, glGetString,
        glGetIntegerv, glGetFloatv, glGetError, glGetDoublev,
        glGetBooleanv, glFrontFace, glFlush, glFinish, glEnable,
        glDrawBuffer, glDisable, glDepthRange, glDepthMask, glDepthFunc,
        glCullFace, glColorMask, glClearStencil, glClearDepth,
        glClearColor, glClear, glBlendFunc)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glViewport #-}
 
ptr_glViewport :: FunPtr a
ptr_glViewport
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glViewport"
 
glViewport :: GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glViewport = dyn_glViewport ptr_glViewport
 
foreign import CALLCONV unsafe "dynamic" dyn_glViewport ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glTexParameteriv #-}
 
ptr_glTexParameteriv :: FunPtr a
ptr_glTexParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glTexParameteriv"
 
glTexParameteriv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glTexParameteriv = dyn_glTexParameteriv ptr_glTexParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTexParameteri #-}
 
ptr_glTexParameteri :: FunPtr a
ptr_glTexParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glTexParameteri"
 
glTexParameteri :: GLenum -> GLenum -> GLint -> IO ()
glTexParameteri = dyn_glTexParameteri ptr_glTexParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexParameteri ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glTexParameterfv #-}
 
ptr_glTexParameterfv :: FunPtr a
ptr_glTexParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glTexParameterfv"
 
glTexParameterfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glTexParameterfv = dyn_glTexParameterfv ptr_glTexParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glTexParameterf #-}
 
ptr_glTexParameterf :: FunPtr a
ptr_glTexParameterf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glTexParameterf"
 
glTexParameterf :: GLenum -> GLenum -> GLfloat -> IO ()
glTexParameterf = dyn_glTexParameterf ptr_glTexParameterf
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexParameterf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glTexImage2D #-}
 
ptr_glTexImage2D :: FunPtr a
ptr_glTexImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glTexImage2D"
 
glTexImage2D ::
             GLenum ->
               GLint ->
                 GLint ->
                   GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glTexImage2D = dyn_glTexImage2D ptr_glTexImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTexImage1D #-}
 
ptr_glTexImage1D :: FunPtr a
ptr_glTexImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glTexImage1D"
 
glTexImage1D ::
             GLenum ->
               GLint ->
                 GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glTexImage1D = dyn_glTexImage1D ptr_glTexImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glStencilOp #-}
 
ptr_glStencilOp :: FunPtr a
ptr_glStencilOp
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glStencilOp"
 
glStencilOp :: GLenum -> GLenum -> GLenum -> IO ()
glStencilOp = dyn_glStencilOp ptr_glStencilOp
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilOp ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glStencilMask #-}
 
ptr_glStencilMask :: FunPtr a
ptr_glStencilMask
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glStencilMask"
 
glStencilMask :: GLuint -> IO ()
glStencilMask = dyn_glStencilMask ptr_glStencilMask
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilMask ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glStencilFunc #-}
 
ptr_glStencilFunc :: FunPtr a
ptr_glStencilFunc
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glStencilFunc"
 
glStencilFunc :: GLenum -> GLint -> GLuint -> IO ()
glStencilFunc = dyn_glStencilFunc ptr_glStencilFunc
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilFunc ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glScissor #-}
 
ptr_glScissor :: FunPtr a
ptr_glScissor
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glScissor"
 
glScissor :: GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glScissor = dyn_glScissor ptr_glScissor
 
foreign import CALLCONV unsafe "dynamic" dyn_glScissor ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glReadPixels #-}
 
ptr_glReadPixels :: FunPtr a
ptr_glReadPixels
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glReadPixels"
 
glReadPixels ::
             GLint ->
               GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glReadPixels = dyn_glReadPixels ptr_glReadPixels
 
foreign import CALLCONV unsafe "dynamic" dyn_glReadPixels ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint ->
                    GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glReadBuffer #-}
 
ptr_glReadBuffer :: FunPtr a
ptr_glReadBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glReadBuffer"
 
glReadBuffer :: GLenum -> IO ()
glReadBuffer = dyn_glReadBuffer ptr_glReadBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glReadBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glPolygonMode #-}
 
ptr_glPolygonMode :: FunPtr a
ptr_glPolygonMode
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glPolygonMode"
 
glPolygonMode :: GLenum -> GLenum -> IO ()
glPolygonMode = dyn_glPolygonMode ptr_glPolygonMode
 
foreign import CALLCONV unsafe "dynamic" dyn_glPolygonMode ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glPointSize #-}
 
ptr_glPointSize :: FunPtr a
ptr_glPointSize
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glPointSize"
 
glPointSize :: GLfloat -> IO ()
glPointSize = dyn_glPointSize ptr_glPointSize
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointSize ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
{-# NOINLINE ptr_glPixelStorei #-}
 
ptr_glPixelStorei :: FunPtr a
ptr_glPixelStorei
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glPixelStorei"
 
glPixelStorei :: GLenum -> GLint -> IO ()
glPixelStorei = dyn_glPixelStorei ptr_glPixelStorei
 
foreign import CALLCONV unsafe "dynamic" dyn_glPixelStorei ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glPixelStoref #-}
 
ptr_glPixelStoref :: FunPtr a
ptr_glPixelStoref
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glPixelStoref"
 
glPixelStoref :: GLenum -> GLfloat -> IO ()
glPixelStoref = dyn_glPixelStoref ptr_glPixelStoref
 
foreign import CALLCONV unsafe "dynamic" dyn_glPixelStoref ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glLogicOp #-}
 
ptr_glLogicOp :: FunPtr a
ptr_glLogicOp
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glLogicOp"
 
glLogicOp :: GLenum -> IO ()
glLogicOp = dyn_glLogicOp ptr_glLogicOp
 
foreign import CALLCONV unsafe "dynamic" dyn_glLogicOp ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glLineWidth #-}
 
ptr_glLineWidth :: FunPtr a
ptr_glLineWidth
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glLineWidth"
 
glLineWidth :: GLfloat -> IO ()
glLineWidth = dyn_glLineWidth ptr_glLineWidth
 
foreign import CALLCONV unsafe "dynamic" dyn_glLineWidth ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
{-# NOINLINE ptr_glIsEnabled #-}
 
ptr_glIsEnabled :: FunPtr a
ptr_glIsEnabled
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glIsEnabled"
 
glIsEnabled :: GLenum -> IO GLboolean
glIsEnabled = dyn_glIsEnabled ptr_glIsEnabled
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsEnabled ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLboolean)
 
{-# NOINLINE ptr_glHint #-}
 
ptr_glHint :: FunPtr a
ptr_glHint
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glHint"
 
glHint :: GLenum -> GLenum -> IO ()
glHint = dyn_glHint ptr_glHint
 
foreign import CALLCONV unsafe "dynamic" dyn_glHint ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glGetTexParameteriv #-}
 
ptr_glGetTexParameteriv :: FunPtr a
ptr_glGetTexParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glGetTexParameteriv"
 
glGetTexParameteriv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetTexParameteriv
  = dyn_glGetTexParameteriv ptr_glGetTexParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTexParameterfv #-}
 
ptr_glGetTexParameterfv :: FunPtr a
ptr_glGetTexParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glGetTexParameterfv"
 
glGetTexParameterfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetTexParameterfv
  = dyn_glGetTexParameterfv ptr_glGetTexParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetTexLevelParameteriv #-}
 
ptr_glGetTexLevelParameteriv :: FunPtr a
ptr_glGetTexLevelParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glGetTexLevelParameteriv"
 
glGetTexLevelParameteriv ::
                         GLenum -> GLint -> GLenum -> Ptr GLint -> IO ()
glGetTexLevelParameteriv
  = dyn_glGetTexLevelParameteriv ptr_glGetTexLevelParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTexLevelParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTexLevelParameterfv #-}
 
ptr_glGetTexLevelParameterfv :: FunPtr a
ptr_glGetTexLevelParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glGetTexLevelParameterfv"
 
glGetTexLevelParameterfv ::
                         GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ()
glGetTexLevelParameterfv
  = dyn_glGetTexLevelParameterfv ptr_glGetTexLevelParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTexLevelParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetTexImage #-}
 
ptr_glGetTexImage :: FunPtr a
ptr_glGetTexImage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glGetTexImage"
 
glGetTexImage ::
              GLenum -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glGetTexImage = dyn_glGetTexImage ptr_glGetTexImage
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexImage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetString #-}
 
ptr_glGetString :: FunPtr a
ptr_glGetString
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glGetString"
 
glGetString :: GLenum -> IO (Ptr GLchar)
glGetString = dyn_glGetString ptr_glGetString
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetString ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO (Ptr GLchar))
 
{-# NOINLINE ptr_glGetIntegerv #-}
 
ptr_glGetIntegerv :: FunPtr a
ptr_glGetIntegerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glGetIntegerv"
 
glGetIntegerv :: GLenum -> Ptr GLint -> IO ()
glGetIntegerv = dyn_glGetIntegerv ptr_glGetIntegerv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetIntegerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetFloatv #-}
 
ptr_glGetFloatv :: FunPtr a
ptr_glGetFloatv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glGetFloatv"
 
glGetFloatv :: GLenum -> Ptr GLfloat -> IO ()
glGetFloatv = dyn_glGetFloatv ptr_glGetFloatv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetFloatv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetError #-}
 
ptr_glGetError :: FunPtr a
ptr_glGetError
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glGetError"
 
glGetError :: IO GLenum
glGetError = dyn_glGetError ptr_glGetError
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetError ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (IO GLenum)
 
{-# NOINLINE ptr_glGetDoublev #-}
 
ptr_glGetDoublev :: FunPtr a
ptr_glGetDoublev
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glGetDoublev"
 
glGetDoublev :: GLenum -> Ptr GLdouble -> IO ()
glGetDoublev = dyn_glGetDoublev ptr_glGetDoublev
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetDoublev ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetBooleanv #-}
 
ptr_glGetBooleanv :: FunPtr a
ptr_glGetBooleanv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glGetBooleanv"
 
glGetBooleanv :: GLenum -> Ptr GLboolean -> IO ()
glGetBooleanv = dyn_glGetBooleanv ptr_glGetBooleanv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetBooleanv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLboolean -> IO ())
 
{-# NOINLINE ptr_glFrontFace #-}
 
ptr_glFrontFace :: FunPtr a
ptr_glFrontFace
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glFrontFace"
 
glFrontFace :: GLenum -> IO ()
glFrontFace = dyn_glFrontFace ptr_glFrontFace
 
foreign import CALLCONV unsafe "dynamic" dyn_glFrontFace ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glFlush #-}
 
ptr_glFlush :: FunPtr a
ptr_glFlush
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glFlush"
 
glFlush :: IO ()
glFlush = dyn_glFlush ptr_glFlush
 
foreign import CALLCONV unsafe "dynamic" dyn_glFlush ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glFinish #-}
 
ptr_glFinish :: FunPtr a
ptr_glFinish
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glFinish"
 
glFinish :: IO ()
glFinish = dyn_glFinish ptr_glFinish
 
foreign import CALLCONV unsafe "dynamic" dyn_glFinish ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glEnable #-}
 
ptr_glEnable :: FunPtr a
ptr_glEnable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glEnable"
 
glEnable :: GLenum -> IO ()
glEnable = dyn_glEnable ptr_glEnable
 
foreign import CALLCONV unsafe "dynamic" dyn_glEnable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glDrawBuffer #-}
 
ptr_glDrawBuffer :: FunPtr a
ptr_glDrawBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glDrawBuffer"
 
glDrawBuffer :: GLenum -> IO ()
glDrawBuffer = dyn_glDrawBuffer ptr_glDrawBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glDisable #-}
 
ptr_glDisable :: FunPtr a
ptr_glDisable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glDisable"
 
glDisable :: GLenum -> IO ()
glDisable = dyn_glDisable ptr_glDisable
 
foreign import CALLCONV unsafe "dynamic" dyn_glDisable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glDepthRange #-}
 
ptr_glDepthRange :: FunPtr a
ptr_glDepthRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glDepthRange"
 
glDepthRange :: GLdouble -> GLdouble -> IO ()
glDepthRange = dyn_glDepthRange ptr_glDepthRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glDepthRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glDepthMask #-}
 
ptr_glDepthMask :: FunPtr a
ptr_glDepthMask
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glDepthMask"
 
glDepthMask :: GLboolean -> IO ()
glDepthMask = dyn_glDepthMask ptr_glDepthMask
 
foreign import CALLCONV unsafe "dynamic" dyn_glDepthMask ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLboolean -> IO ())
 
{-# NOINLINE ptr_glDepthFunc #-}
 
ptr_glDepthFunc :: FunPtr a
ptr_glDepthFunc
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glDepthFunc"
 
glDepthFunc :: GLenum -> IO ()
glDepthFunc = dyn_glDepthFunc ptr_glDepthFunc
 
foreign import CALLCONV unsafe "dynamic" dyn_glDepthFunc ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glCullFace #-}
 
ptr_glCullFace :: FunPtr a
ptr_glCullFace
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glCullFace"
 
glCullFace :: GLenum -> IO ()
glCullFace = dyn_glCullFace ptr_glCullFace
 
foreign import CALLCONV unsafe "dynamic" dyn_glCullFace ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glColorMask #-}
 
ptr_glColorMask :: FunPtr a
ptr_glColorMask
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glColorMask"
 
glColorMask ::
            GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ()
glColorMask = dyn_glColorMask ptr_glColorMask
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorMask ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glClearStencil #-}
 
ptr_glClearStencil :: FunPtr a
ptr_glClearStencil
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glClearStencil"
 
glClearStencil :: GLint -> IO ()
glClearStencil = dyn_glClearStencil ptr_glClearStencil
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearStencil ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> IO ())
 
{-# NOINLINE ptr_glClearDepth #-}
 
ptr_glClearDepth :: FunPtr a
ptr_glClearDepth
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glClearDepth"
 
glClearDepth :: GLdouble -> IO ()
glClearDepth = dyn_glClearDepth ptr_glClearDepth
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearDepth ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> IO ())
 
{-# NOINLINE ptr_glClearColor #-}
 
ptr_glClearColor :: FunPtr a
ptr_glClearColor
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glClearColor"
 
glClearColor :: GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glClearColor = dyn_glClearColor ptr_glClearColor
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearColor ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glClear #-}
 
ptr_glClear :: FunPtr a
ptr_glClear
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glClear"
 
glClear :: GLbitfield -> IO ()
glClear = dyn_glClear ptr_glClear
 
foreign import CALLCONV unsafe "dynamic" dyn_glClear ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbitfield -> IO ())
 
{-# NOINLINE ptr_glBlendFunc #-}
 
ptr_glBlendFunc :: FunPtr a
ptr_glBlendFunc
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0"
        "glBlendFunc"
 
glBlendFunc :: GLenum -> GLenum -> IO ()
glBlendFunc = dyn_glBlendFunc ptr_glBlendFunc
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendFunc ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())