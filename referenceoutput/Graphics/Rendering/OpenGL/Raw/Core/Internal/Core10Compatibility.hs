{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core10Compatibility
       (glTranslatef, glTranslated, glScalef, glScaled, glRotatef,
        glRotated, glPushMatrix, glPopMatrix, glOrtho, glMultMatrixd,
        glMultMatrixf, glMatrixMode, glLoadMatrixd, glLoadMatrixf,
        glLoadIdentity, glFrustum, glIsList, glGetTexGeniv, glGetTexGenfv,
        glGetTexGendv, glGetTexEnviv, glGetTexEnvfv, glGetPolygonStipple,
        glGetPixelMapusv, glGetPixelMapuiv, glGetPixelMapfv,
        glGetMaterialiv, glGetMaterialfv, glGetMapiv, glGetMapfv,
        glGetMapdv, glGetLightiv, glGetLightfv, glGetClipPlane,
        glDrawPixels, glCopyPixels, glPixelMapusv, glPixelMapuiv,
        glPixelMapfv, glPixelTransferi, glPixelTransferf, glPixelZoom,
        glAlphaFunc, glEvalPoint2, glEvalMesh2, glEvalPoint1, glEvalMesh1,
        glEvalCoord2fv, glEvalCoord2f, glEvalCoord2dv, glEvalCoord2d,
        glEvalCoord1fv, glEvalCoord1f, glEvalCoord1dv, glEvalCoord1d,
        glMapGrid2f, glMapGrid2d, glMapGrid1f, glMapGrid1d, glMap2f,
        glMap2d, glMap1f, glMap1d, glPushAttrib, glPopAttrib, glAccum,
        glIndexMask, glClearIndex, glClearAccum, glPushName, glPopName,
        glPassThrough, glLoadName, glInitNames, glRenderMode,
        glSelectBuffer, glFeedbackBuffer, glTexGeniv, glTexGeni,
        glTexGenfv, glTexGenf, glTexGendv, glTexGend, glTexEnviv,
        glTexEnvi, glTexEnvfv, glTexEnvf, glShadeModel, glPolygonStipple,
        glMaterialiv, glMateriali, glMaterialfv, glMaterialf,
        glLineStipple, glLightModeliv, glLightModeli, glLightModelfv,
        glLightModelf, glLightiv, glLighti, glLightfv, glLightf, glFogiv,
        glFogi, glFogfv, glFogf, glColorMaterial, glClipPlane, glVertex4sv,
        glVertex4s, glVertex4iv, glVertex4i, glVertex4fv, glVertex4f,
        glVertex4dv, glVertex4d, glVertex3sv, glVertex3s, glVertex3iv,
        glVertex3i, glVertex3fv, glVertex3f, glVertex3dv, glVertex3d,
        glVertex2sv, glVertex2s, glVertex2iv, glVertex2i, glVertex2fv,
        glVertex2f, glVertex2dv, glVertex2d, glTexCoord4sv, glTexCoord4s,
        glTexCoord4iv, glTexCoord4i, glTexCoord4fv, glTexCoord4f,
        glTexCoord4dv, glTexCoord4d, glTexCoord3sv, glTexCoord3s,
        glTexCoord3iv, glTexCoord3i, glTexCoord3fv, glTexCoord3f,
        glTexCoord3dv, glTexCoord3d, glTexCoord2sv, glTexCoord2s,
        glTexCoord2iv, glTexCoord2i, glTexCoord2fv, glTexCoord2f,
        glTexCoord2dv, glTexCoord2d, glTexCoord1sv, glTexCoord1s,
        glTexCoord1iv, glTexCoord1i, glTexCoord1fv, glTexCoord1f,
        glTexCoord1dv, glTexCoord1d, glRectsv, glRects, glRectiv, glRecti,
        glRectfv, glRectf, glRectdv, glRectd, glRasterPos4sv,
        glRasterPos4s, glRasterPos4iv, glRasterPos4i, glRasterPos4fv,
        glRasterPos4f, glRasterPos4dv, glRasterPos4d, glRasterPos3sv,
        glRasterPos3s, glRasterPos3iv, glRasterPos3i, glRasterPos3fv,
        glRasterPos3f, glRasterPos3dv, glRasterPos3d, glRasterPos2sv,
        glRasterPos2s, glRasterPos2iv, glRasterPos2i, glRasterPos2fv,
        glRasterPos2f, glRasterPos2dv, glRasterPos2d, glNormal3sv,
        glNormal3s, glNormal3iv, glNormal3i, glNormal3fv, glNormal3f,
        glNormal3dv, glNormal3d, glNormal3bv, glNormal3b, glIndexsv,
        glIndexs, glIndexiv, glIndexi, glIndexfv, glIndexf, glIndexdv,
        glIndexd, glEnd, glEdgeFlagv, glEdgeFlag, glColor4usv, glColor4us,
        glColor4uiv, glColor4ui, glColor4ubv, glColor4ub, glColor4sv,
        glColor4s, glColor4iv, glColor4i, glColor4fv, glColor4f,
        glColor4dv, glColor4d, glColor4bv, glColor4b, glColor3usv,
        glColor3us, glColor3uiv, glColor3ui, glColor3ubv, glColor3ub,
        glColor3sv, glColor3s, glColor3iv, glColor3i, glColor3fv,
        glColor3f, glColor3dv, glColor3d, glColor3bv, glColor3b, glBitmap,
        glBegin, glListBase, glGenLists, glDeleteLists, glCallLists,
        glCallList, glEndList, glNewList)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTranslatef #-}
 
ptr_glTranslatef :: FunPtr a
ptr_glTranslatef
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTranslatef"
 
glTranslatef :: GLfloat -> GLfloat -> GLfloat -> IO ()
glTranslatef = dyn_glTranslatef ptr_glTranslatef
 
foreign import CALLCONV unsafe "dynamic" dyn_glTranslatef ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glTranslated #-}
 
ptr_glTranslated :: FunPtr a
ptr_glTranslated
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTranslated"
 
glTranslated :: GLdouble -> GLdouble -> GLdouble -> IO ()
glTranslated = dyn_glTranslated ptr_glTranslated
 
foreign import CALLCONV unsafe "dynamic" dyn_glTranslated ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glScalef #-}
 
ptr_glScalef :: FunPtr a
ptr_glScalef
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glScalef"
 
glScalef :: GLfloat -> GLfloat -> GLfloat -> IO ()
glScalef = dyn_glScalef ptr_glScalef
 
foreign import CALLCONV unsafe "dynamic" dyn_glScalef ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glScaled #-}
 
ptr_glScaled :: FunPtr a
ptr_glScaled
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glScaled"
 
glScaled :: GLdouble -> GLdouble -> GLdouble -> IO ()
glScaled = dyn_glScaled ptr_glScaled
 
foreign import CALLCONV unsafe "dynamic" dyn_glScaled ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glRotatef #-}
 
ptr_glRotatef :: FunPtr a
ptr_glRotatef
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRotatef"
 
glRotatef :: GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glRotatef = dyn_glRotatef ptr_glRotatef
 
foreign import CALLCONV unsafe "dynamic" dyn_glRotatef ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glRotated #-}
 
ptr_glRotated :: FunPtr a
ptr_glRotated
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRotated"
 
glRotated :: GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glRotated = dyn_glRotated ptr_glRotated
 
foreign import CALLCONV unsafe "dynamic" dyn_glRotated ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glPushMatrix #-}
 
ptr_glPushMatrix :: FunPtr a
ptr_glPushMatrix
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glPushMatrix"
 
glPushMatrix :: IO ()
glPushMatrix = dyn_glPushMatrix ptr_glPushMatrix
 
foreign import CALLCONV unsafe "dynamic" dyn_glPushMatrix ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glPopMatrix #-}
 
ptr_glPopMatrix :: FunPtr a
ptr_glPopMatrix
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glPopMatrix"
 
glPopMatrix :: IO ()
glPopMatrix = dyn_glPopMatrix ptr_glPopMatrix
 
foreign import CALLCONV unsafe "dynamic" dyn_glPopMatrix ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glOrtho #-}
 
ptr_glOrtho :: FunPtr a
ptr_glOrtho
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glOrtho"
 
glOrtho ::
        GLdouble ->
          GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glOrtho = dyn_glOrtho ptr_glOrtho
 
foreign import CALLCONV unsafe "dynamic" dyn_glOrtho ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble ->
                    GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultMatrixd #-}
 
ptr_glMultMatrixd :: FunPtr a
ptr_glMultMatrixd
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMultMatrixd"
 
glMultMatrixd :: Ptr GLdouble -> IO ()
glMultMatrixd = dyn_glMultMatrixd ptr_glMultMatrixd
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultMatrixd ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMultMatrixf #-}
 
ptr_glMultMatrixf :: FunPtr a
ptr_glMultMatrixf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMultMatrixf"
 
glMultMatrixf :: Ptr GLfloat -> IO ()
glMultMatrixf = dyn_glMultMatrixf ptr_glMultMatrixf
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultMatrixf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMatrixMode #-}
 
ptr_glMatrixMode :: FunPtr a
ptr_glMatrixMode
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMatrixMode"
 
glMatrixMode :: GLenum -> IO ()
glMatrixMode = dyn_glMatrixMode ptr_glMatrixMode
 
foreign import CALLCONV unsafe "dynamic" dyn_glMatrixMode ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glLoadMatrixd #-}
 
ptr_glLoadMatrixd :: FunPtr a
ptr_glLoadMatrixd
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glLoadMatrixd"
 
glLoadMatrixd :: Ptr GLdouble -> IO ()
glLoadMatrixd = dyn_glLoadMatrixd ptr_glLoadMatrixd
 
foreign import CALLCONV unsafe "dynamic" dyn_glLoadMatrixd ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glLoadMatrixf #-}
 
ptr_glLoadMatrixf :: FunPtr a
ptr_glLoadMatrixf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glLoadMatrixf"
 
glLoadMatrixf :: Ptr GLfloat -> IO ()
glLoadMatrixf = dyn_glLoadMatrixf ptr_glLoadMatrixf
 
foreign import CALLCONV unsafe "dynamic" dyn_glLoadMatrixf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glLoadIdentity #-}
 
ptr_glLoadIdentity :: FunPtr a
ptr_glLoadIdentity
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glLoadIdentity"
 
glLoadIdentity :: IO ()
glLoadIdentity = dyn_glLoadIdentity ptr_glLoadIdentity
 
foreign import CALLCONV unsafe "dynamic" dyn_glLoadIdentity ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glFrustum #-}
 
ptr_glFrustum :: FunPtr a
ptr_glFrustum
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glFrustum"
 
glFrustum ::
          GLdouble ->
            GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glFrustum = dyn_glFrustum ptr_glFrustum
 
foreign import CALLCONV unsafe "dynamic" dyn_glFrustum ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble ->
                    GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glIsList #-}
 
ptr_glIsList :: FunPtr a
ptr_glIsList
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glIsList"
 
glIsList :: GLuint -> IO GLboolean
glIsList = dyn_glIsList ptr_glIsList
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsList ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetTexGeniv #-}
 
ptr_glGetTexGeniv :: FunPtr a
ptr_glGetTexGeniv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetTexGeniv"
 
glGetTexGeniv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetTexGeniv = dyn_glGetTexGeniv ptr_glGetTexGeniv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexGeniv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTexGenfv #-}
 
ptr_glGetTexGenfv :: FunPtr a
ptr_glGetTexGenfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetTexGenfv"
 
glGetTexGenfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetTexGenfv = dyn_glGetTexGenfv ptr_glGetTexGenfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexGenfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetTexGendv #-}
 
ptr_glGetTexGendv :: FunPtr a
ptr_glGetTexGendv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetTexGendv"
 
glGetTexGendv :: GLenum -> GLenum -> Ptr GLdouble -> IO ()
glGetTexGendv = dyn_glGetTexGendv ptr_glGetTexGendv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexGendv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetTexEnviv #-}
 
ptr_glGetTexEnviv :: FunPtr a
ptr_glGetTexEnviv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetTexEnviv"
 
glGetTexEnviv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetTexEnviv = dyn_glGetTexEnviv ptr_glGetTexEnviv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexEnviv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTexEnvfv #-}
 
ptr_glGetTexEnvfv :: FunPtr a
ptr_glGetTexEnvfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetTexEnvfv"
 
glGetTexEnvfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetTexEnvfv = dyn_glGetTexEnvfv ptr_glGetTexEnvfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexEnvfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPolygonStipple #-}
 
ptr_glGetPolygonStipple :: FunPtr a
ptr_glGetPolygonStipple
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetPolygonStipple"
 
glGetPolygonStipple :: Ptr GLubyte -> IO ()
glGetPolygonStipple
  = dyn_glGetPolygonStipple ptr_glGetPolygonStipple
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPolygonStipple ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glGetPixelMapusv #-}
 
ptr_glGetPixelMapusv :: FunPtr a
ptr_glGetPixelMapusv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetPixelMapusv"
 
glGetPixelMapusv :: GLenum -> Ptr GLushort -> IO ()
glGetPixelMapusv = dyn_glGetPixelMapusv ptr_glGetPixelMapusv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPixelMapusv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glGetPixelMapuiv #-}
 
ptr_glGetPixelMapuiv :: FunPtr a
ptr_glGetPixelMapuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetPixelMapuiv"
 
glGetPixelMapuiv :: GLenum -> Ptr GLuint -> IO ()
glGetPixelMapuiv = dyn_glGetPixelMapuiv ptr_glGetPixelMapuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPixelMapuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetPixelMapfv #-}
 
ptr_glGetPixelMapfv :: FunPtr a
ptr_glGetPixelMapfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetPixelMapfv"
 
glGetPixelMapfv :: GLenum -> Ptr GLfloat -> IO ()
glGetPixelMapfv = dyn_glGetPixelMapfv ptr_glGetPixelMapfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPixelMapfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMaterialiv #-}
 
ptr_glGetMaterialiv :: FunPtr a
ptr_glGetMaterialiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetMaterialiv"
 
glGetMaterialiv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetMaterialiv = dyn_glGetMaterialiv ptr_glGetMaterialiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMaterialiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMaterialfv #-}
 
ptr_glGetMaterialfv :: FunPtr a
ptr_glGetMaterialfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetMaterialfv"
 
glGetMaterialfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetMaterialfv = dyn_glGetMaterialfv ptr_glGetMaterialfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMaterialfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMapiv #-}
 
ptr_glGetMapiv :: FunPtr a
ptr_glGetMapiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetMapiv"
 
glGetMapiv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetMapiv = dyn_glGetMapiv ptr_glGetMapiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMapiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMapfv #-}
 
ptr_glGetMapfv :: FunPtr a
ptr_glGetMapfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetMapfv"
 
glGetMapfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetMapfv = dyn_glGetMapfv ptr_glGetMapfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMapfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMapdv #-}
 
ptr_glGetMapdv :: FunPtr a
ptr_glGetMapdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetMapdv"
 
glGetMapdv :: GLenum -> GLenum -> Ptr GLdouble -> IO ()
glGetMapdv = dyn_glGetMapdv ptr_glGetMapdv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMapdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetLightiv #-}
 
ptr_glGetLightiv :: FunPtr a
ptr_glGetLightiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetLightiv"
 
glGetLightiv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetLightiv = dyn_glGetLightiv ptr_glGetLightiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetLightiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetLightfv #-}
 
ptr_glGetLightfv :: FunPtr a
ptr_glGetLightfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetLightfv"
 
glGetLightfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetLightfv = dyn_glGetLightfv ptr_glGetLightfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetLightfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetClipPlane #-}
 
ptr_glGetClipPlane :: FunPtr a
ptr_glGetClipPlane
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGetClipPlane"
 
glGetClipPlane :: GLenum -> Ptr GLdouble -> IO ()
glGetClipPlane = dyn_glGetClipPlane ptr_glGetClipPlane
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetClipPlane ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glDrawPixels #-}
 
ptr_glDrawPixels :: FunPtr a
ptr_glDrawPixels
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glDrawPixels"
 
glDrawPixels ::
             GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glDrawPixels = dyn_glDrawPixels ptr_glDrawPixels
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawPixels ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCopyPixels #-}
 
ptr_glCopyPixels :: FunPtr a
ptr_glCopyPixels
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glCopyPixels"
 
glCopyPixels ::
             GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> IO ()
glCopyPixels = dyn_glCopyPixels ptr_glCopyPixels
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyPixels ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> IO ())
 
{-# NOINLINE ptr_glPixelMapusv #-}
 
ptr_glPixelMapusv :: FunPtr a
ptr_glPixelMapusv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glPixelMapusv"
 
glPixelMapusv :: GLenum -> GLint -> Ptr GLushort -> IO ()
glPixelMapusv = dyn_glPixelMapusv ptr_glPixelMapusv
 
foreign import CALLCONV unsafe "dynamic" dyn_glPixelMapusv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glPixelMapuiv #-}
 
ptr_glPixelMapuiv :: FunPtr a
ptr_glPixelMapuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glPixelMapuiv"
 
glPixelMapuiv :: GLenum -> GLint -> Ptr GLuint -> IO ()
glPixelMapuiv = dyn_glPixelMapuiv ptr_glPixelMapuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glPixelMapuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glPixelMapfv #-}
 
ptr_glPixelMapfv :: FunPtr a
ptr_glPixelMapfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glPixelMapfv"
 
glPixelMapfv :: GLenum -> GLint -> Ptr GLfloat -> IO ()
glPixelMapfv = dyn_glPixelMapfv ptr_glPixelMapfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glPixelMapfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPixelTransferi #-}
 
ptr_glPixelTransferi :: FunPtr a
ptr_glPixelTransferi
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glPixelTransferi"
 
glPixelTransferi :: GLenum -> GLint -> IO ()
glPixelTransferi = dyn_glPixelTransferi ptr_glPixelTransferi
 
foreign import CALLCONV unsafe "dynamic" dyn_glPixelTransferi ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glPixelTransferf #-}
 
ptr_glPixelTransferf :: FunPtr a
ptr_glPixelTransferf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glPixelTransferf"
 
glPixelTransferf :: GLenum -> GLfloat -> IO ()
glPixelTransferf = dyn_glPixelTransferf ptr_glPixelTransferf
 
foreign import CALLCONV unsafe "dynamic" dyn_glPixelTransferf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glPixelZoom #-}
 
ptr_glPixelZoom :: FunPtr a
ptr_glPixelZoom
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glPixelZoom"
 
glPixelZoom :: GLfloat -> GLfloat -> IO ()
glPixelZoom = dyn_glPixelZoom ptr_glPixelZoom
 
foreign import CALLCONV unsafe "dynamic" dyn_glPixelZoom ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glAlphaFunc #-}
 
ptr_glAlphaFunc :: FunPtr a
ptr_glAlphaFunc
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glAlphaFunc"
 
glAlphaFunc :: GLenum -> GLclampf -> IO ()
glAlphaFunc = dyn_glAlphaFunc ptr_glAlphaFunc
 
foreign import CALLCONV unsafe "dynamic" dyn_glAlphaFunc ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLclampf -> IO ())
 
{-# NOINLINE ptr_glEvalPoint2 #-}
 
ptr_glEvalPoint2 :: FunPtr a
ptr_glEvalPoint2
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEvalPoint2"
 
glEvalPoint2 :: GLint -> GLint -> IO ()
glEvalPoint2 = dyn_glEvalPoint2 ptr_glEvalPoint2
 
foreign import CALLCONV unsafe "dynamic" dyn_glEvalPoint2 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glEvalMesh2 #-}
 
ptr_glEvalMesh2 :: FunPtr a
ptr_glEvalMesh2
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEvalMesh2"
 
glEvalMesh2 :: GLenum -> GLint -> GLint -> GLint -> GLint -> IO ()
glEvalMesh2 = dyn_glEvalMesh2 ptr_glEvalMesh2
 
foreign import CALLCONV unsafe "dynamic" dyn_glEvalMesh2 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glEvalPoint1 #-}
 
ptr_glEvalPoint1 :: FunPtr a
ptr_glEvalPoint1
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEvalPoint1"
 
glEvalPoint1 :: GLint -> IO ()
glEvalPoint1 = dyn_glEvalPoint1 ptr_glEvalPoint1
 
foreign import CALLCONV unsafe "dynamic" dyn_glEvalPoint1 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> IO ())
 
{-# NOINLINE ptr_glEvalMesh1 #-}
 
ptr_glEvalMesh1 :: FunPtr a
ptr_glEvalMesh1
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEvalMesh1"
 
glEvalMesh1 :: GLenum -> GLint -> GLint -> IO ()
glEvalMesh1 = dyn_glEvalMesh1 ptr_glEvalMesh1
 
foreign import CALLCONV unsafe "dynamic" dyn_glEvalMesh1 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glEvalCoord2fv #-}
 
ptr_glEvalCoord2fv :: FunPtr a
ptr_glEvalCoord2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEvalCoord2fv"
 
glEvalCoord2fv :: Ptr GLfloat -> IO ()
glEvalCoord2fv = dyn_glEvalCoord2fv ptr_glEvalCoord2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glEvalCoord2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glEvalCoord2f #-}
 
ptr_glEvalCoord2f :: FunPtr a
ptr_glEvalCoord2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEvalCoord2f"
 
glEvalCoord2f :: GLfloat -> GLfloat -> IO ()
glEvalCoord2f = dyn_glEvalCoord2f ptr_glEvalCoord2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glEvalCoord2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glEvalCoord2dv #-}
 
ptr_glEvalCoord2dv :: FunPtr a
ptr_glEvalCoord2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEvalCoord2dv"
 
glEvalCoord2dv :: Ptr GLdouble -> IO ()
glEvalCoord2dv = dyn_glEvalCoord2dv ptr_glEvalCoord2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glEvalCoord2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glEvalCoord2d #-}
 
ptr_glEvalCoord2d :: FunPtr a
ptr_glEvalCoord2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEvalCoord2d"
 
glEvalCoord2d :: GLdouble -> GLdouble -> IO ()
glEvalCoord2d = dyn_glEvalCoord2d ptr_glEvalCoord2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glEvalCoord2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glEvalCoord1fv #-}
 
ptr_glEvalCoord1fv :: FunPtr a
ptr_glEvalCoord1fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEvalCoord1fv"
 
glEvalCoord1fv :: Ptr GLfloat -> IO ()
glEvalCoord1fv = dyn_glEvalCoord1fv ptr_glEvalCoord1fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glEvalCoord1fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glEvalCoord1f #-}
 
ptr_glEvalCoord1f :: FunPtr a
ptr_glEvalCoord1f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEvalCoord1f"
 
glEvalCoord1f :: GLfloat -> IO ()
glEvalCoord1f = dyn_glEvalCoord1f ptr_glEvalCoord1f
 
foreign import CALLCONV unsafe "dynamic" dyn_glEvalCoord1f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
{-# NOINLINE ptr_glEvalCoord1dv #-}
 
ptr_glEvalCoord1dv :: FunPtr a
ptr_glEvalCoord1dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEvalCoord1dv"
 
glEvalCoord1dv :: Ptr GLdouble -> IO ()
glEvalCoord1dv = dyn_glEvalCoord1dv ptr_glEvalCoord1dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glEvalCoord1dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glEvalCoord1d #-}
 
ptr_glEvalCoord1d :: FunPtr a
ptr_glEvalCoord1d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEvalCoord1d"
 
glEvalCoord1d :: GLdouble -> IO ()
glEvalCoord1d = dyn_glEvalCoord1d ptr_glEvalCoord1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glEvalCoord1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> IO ())
 
{-# NOINLINE ptr_glMapGrid2f #-}
 
ptr_glMapGrid2f :: FunPtr a
ptr_glMapGrid2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMapGrid2f"
 
glMapGrid2f ::
            GLint -> GLfloat -> GLfloat -> GLint -> GLfloat -> GLfloat -> IO ()
glMapGrid2f = dyn_glMapGrid2f ptr_glMapGrid2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapGrid2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint ->
                    GLfloat -> GLfloat -> GLint -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMapGrid2d #-}
 
ptr_glMapGrid2d :: FunPtr a
ptr_glMapGrid2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMapGrid2d"
 
glMapGrid2d ::
            GLint ->
              GLdouble -> GLdouble -> GLint -> GLdouble -> GLdouble -> IO ()
glMapGrid2d = dyn_glMapGrid2d ptr_glMapGrid2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapGrid2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint ->
                    GLdouble -> GLdouble -> GLint -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMapGrid1f #-}
 
ptr_glMapGrid1f :: FunPtr a
ptr_glMapGrid1f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMapGrid1f"
 
glMapGrid1f :: GLint -> GLfloat -> GLfloat -> IO ()
glMapGrid1f = dyn_glMapGrid1f ptr_glMapGrid1f
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapGrid1f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMapGrid1d #-}
 
ptr_glMapGrid1d :: FunPtr a
ptr_glMapGrid1d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMapGrid1d"
 
glMapGrid1d :: GLint -> GLdouble -> GLdouble -> IO ()
glMapGrid1d = dyn_glMapGrid1d ptr_glMapGrid1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapGrid1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glMap2f #-}
 
ptr_glMap2f :: FunPtr a
ptr_glMap2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMap2f"
 
glMap2f ::
        GLenum ->
          GLfloat ->
            GLfloat ->
              GLint ->
                GLint ->
                  GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()
glMap2f = dyn_glMap2f ptr_glMap2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glMap2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLfloat ->
                      GLfloat ->
                        GLint ->
                          GLint ->
                            GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMap2d #-}
 
ptr_glMap2d :: FunPtr a
ptr_glMap2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMap2d"
 
glMap2d ::
        GLenum ->
          GLdouble ->
            GLdouble ->
              GLint ->
                GLint ->
                  GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()
glMap2d = dyn_glMap2d ptr_glMap2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glMap2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLdouble ->
                      GLdouble ->
                        GLint ->
                          GLint ->
                            GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMap1f #-}
 
ptr_glMap1f :: FunPtr a
ptr_glMap1f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMap1f"
 
glMap1f ::
        GLenum ->
          GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()
glMap1f = dyn_glMap1f ptr_glMap1f
 
foreign import CALLCONV unsafe "dynamic" dyn_glMap1f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMap1d #-}
 
ptr_glMap1d :: FunPtr a
ptr_glMap1d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMap1d"
 
glMap1d ::
        GLenum ->
          GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()
glMap1d = dyn_glMap1d ptr_glMap1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glMap1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glPushAttrib #-}
 
ptr_glPushAttrib :: FunPtr a
ptr_glPushAttrib
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glPushAttrib"
 
glPushAttrib :: GLbitfield -> IO ()
glPushAttrib = dyn_glPushAttrib ptr_glPushAttrib
 
foreign import CALLCONV unsafe "dynamic" dyn_glPushAttrib ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbitfield -> IO ())
 
{-# NOINLINE ptr_glPopAttrib #-}
 
ptr_glPopAttrib :: FunPtr a
ptr_glPopAttrib
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glPopAttrib"
 
glPopAttrib :: IO ()
glPopAttrib = dyn_glPopAttrib ptr_glPopAttrib
 
foreign import CALLCONV unsafe "dynamic" dyn_glPopAttrib ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glAccum #-}
 
ptr_glAccum :: FunPtr a
ptr_glAccum
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glAccum"
 
glAccum :: GLenum -> GLfloat -> IO ()
glAccum = dyn_glAccum ptr_glAccum
 
foreign import CALLCONV unsafe "dynamic" dyn_glAccum ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glIndexMask #-}
 
ptr_glIndexMask :: FunPtr a
ptr_glIndexMask
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glIndexMask"
 
glIndexMask :: GLuint -> IO ()
glIndexMask = dyn_glIndexMask ptr_glIndexMask
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexMask ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glClearIndex #-}
 
ptr_glClearIndex :: FunPtr a
ptr_glClearIndex
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glClearIndex"
 
glClearIndex :: GLfloat -> IO ()
glClearIndex = dyn_glClearIndex ptr_glClearIndex
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearIndex ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
{-# NOINLINE ptr_glClearAccum #-}
 
ptr_glClearAccum :: FunPtr a
ptr_glClearAccum
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glClearAccum"
 
glClearAccum :: GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glClearAccum = dyn_glClearAccum ptr_glClearAccum
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearAccum ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glPushName #-}
 
ptr_glPushName :: FunPtr a
ptr_glPushName
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glPushName"
 
glPushName :: GLuint -> IO ()
glPushName = dyn_glPushName ptr_glPushName
 
foreign import CALLCONV unsafe "dynamic" dyn_glPushName ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glPopName #-}
 
ptr_glPopName :: FunPtr a
ptr_glPopName
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glPopName"
 
glPopName :: IO ()
glPopName = dyn_glPopName ptr_glPopName
 
foreign import CALLCONV unsafe "dynamic" dyn_glPopName ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glPassThrough #-}
 
ptr_glPassThrough :: FunPtr a
ptr_glPassThrough
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glPassThrough"
 
glPassThrough :: GLfloat -> IO ()
glPassThrough = dyn_glPassThrough ptr_glPassThrough
 
foreign import CALLCONV unsafe "dynamic" dyn_glPassThrough ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
{-# NOINLINE ptr_glLoadName #-}
 
ptr_glLoadName :: FunPtr a
ptr_glLoadName
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glLoadName"
 
glLoadName :: GLuint -> IO ()
glLoadName = dyn_glLoadName ptr_glLoadName
 
foreign import CALLCONV unsafe "dynamic" dyn_glLoadName ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glInitNames #-}
 
ptr_glInitNames :: FunPtr a
ptr_glInitNames
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glInitNames"
 
glInitNames :: IO ()
glInitNames = dyn_glInitNames ptr_glInitNames
 
foreign import CALLCONV unsafe "dynamic" dyn_glInitNames ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glRenderMode #-}
 
ptr_glRenderMode :: FunPtr a
ptr_glRenderMode
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRenderMode"
 
glRenderMode :: GLenum -> IO GLint
glRenderMode = dyn_glRenderMode ptr_glRenderMode
 
foreign import CALLCONV unsafe "dynamic" dyn_glRenderMode ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLint)
 
{-# NOINLINE ptr_glSelectBuffer #-}
 
ptr_glSelectBuffer :: FunPtr a
ptr_glSelectBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glSelectBuffer"
 
glSelectBuffer :: GLsizei -> Ptr GLuint -> IO ()
glSelectBuffer = dyn_glSelectBuffer ptr_glSelectBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glSelectBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glFeedbackBuffer #-}
 
ptr_glFeedbackBuffer :: FunPtr a
ptr_glFeedbackBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glFeedbackBuffer"
 
glFeedbackBuffer :: GLsizei -> GLenum -> Ptr GLfloat -> IO ()
glFeedbackBuffer = dyn_glFeedbackBuffer ptr_glFeedbackBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glFeedbackBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glTexGeniv #-}
 
ptr_glTexGeniv :: FunPtr a
ptr_glTexGeniv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexGeniv"
 
glTexGeniv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glTexGeniv = dyn_glTexGeniv ptr_glTexGeniv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexGeniv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTexGeni #-}
 
ptr_glTexGeni :: FunPtr a
ptr_glTexGeni
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexGeni"
 
glTexGeni :: GLenum -> GLenum -> GLint -> IO ()
glTexGeni = dyn_glTexGeni ptr_glTexGeni
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexGeni ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glTexGenfv #-}
 
ptr_glTexGenfv :: FunPtr a
ptr_glTexGenfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexGenfv"
 
glTexGenfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glTexGenfv = dyn_glTexGenfv ptr_glTexGenfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexGenfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glTexGenf #-}
 
ptr_glTexGenf :: FunPtr a
ptr_glTexGenf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexGenf"
 
glTexGenf :: GLenum -> GLenum -> GLfloat -> IO ()
glTexGenf = dyn_glTexGenf ptr_glTexGenf
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexGenf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glTexGendv #-}
 
ptr_glTexGendv :: FunPtr a
ptr_glTexGendv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexGendv"
 
glTexGendv :: GLenum -> GLenum -> Ptr GLdouble -> IO ()
glTexGendv = dyn_glTexGendv ptr_glTexGendv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexGendv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glTexGend #-}
 
ptr_glTexGend :: FunPtr a
ptr_glTexGend
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexGend"
 
glTexGend :: GLenum -> GLenum -> GLdouble -> IO ()
glTexGend = dyn_glTexGend ptr_glTexGend
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexGend ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glTexEnviv #-}
 
ptr_glTexEnviv :: FunPtr a
ptr_glTexEnviv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexEnviv"
 
glTexEnviv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glTexEnviv = dyn_glTexEnviv ptr_glTexEnviv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexEnviv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTexEnvi #-}
 
ptr_glTexEnvi :: FunPtr a
ptr_glTexEnvi
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexEnvi"
 
glTexEnvi :: GLenum -> GLenum -> GLint -> IO ()
glTexEnvi = dyn_glTexEnvi ptr_glTexEnvi
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexEnvi ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glTexEnvfv #-}
 
ptr_glTexEnvfv :: FunPtr a
ptr_glTexEnvfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexEnvfv"
 
glTexEnvfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glTexEnvfv = dyn_glTexEnvfv ptr_glTexEnvfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexEnvfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glTexEnvf #-}
 
ptr_glTexEnvf :: FunPtr a
ptr_glTexEnvf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexEnvf"
 
glTexEnvf :: GLenum -> GLenum -> GLfloat -> IO ()
glTexEnvf = dyn_glTexEnvf ptr_glTexEnvf
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexEnvf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glShadeModel #-}
 
ptr_glShadeModel :: FunPtr a
ptr_glShadeModel
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glShadeModel"
 
glShadeModel :: GLenum -> IO ()
glShadeModel = dyn_glShadeModel ptr_glShadeModel
 
foreign import CALLCONV unsafe "dynamic" dyn_glShadeModel ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glPolygonStipple #-}
 
ptr_glPolygonStipple :: FunPtr a
ptr_glPolygonStipple
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glPolygonStipple"
 
glPolygonStipple :: Ptr GLubyte -> IO ()
glPolygonStipple = dyn_glPolygonStipple ptr_glPolygonStipple
 
foreign import CALLCONV unsafe "dynamic" dyn_glPolygonStipple ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glMaterialiv #-}
 
ptr_glMaterialiv :: FunPtr a
ptr_glMaterialiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMaterialiv"
 
glMaterialiv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glMaterialiv = dyn_glMaterialiv ptr_glMaterialiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMaterialiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMateriali #-}
 
ptr_glMateriali :: FunPtr a
ptr_glMateriali
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMateriali"
 
glMateriali :: GLenum -> GLenum -> GLint -> IO ()
glMateriali = dyn_glMateriali ptr_glMateriali
 
foreign import CALLCONV unsafe "dynamic" dyn_glMateriali ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glMaterialfv #-}
 
ptr_glMaterialfv :: FunPtr a
ptr_glMaterialfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMaterialfv"
 
glMaterialfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glMaterialfv = dyn_glMaterialfv ptr_glMaterialfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMaterialfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMaterialf #-}
 
ptr_glMaterialf :: FunPtr a
ptr_glMaterialf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glMaterialf"
 
glMaterialf :: GLenum -> GLenum -> GLfloat -> IO ()
glMaterialf = dyn_glMaterialf ptr_glMaterialf
 
foreign import CALLCONV unsafe "dynamic" dyn_glMaterialf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glLineStipple #-}
 
ptr_glLineStipple :: FunPtr a
ptr_glLineStipple
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glLineStipple"
 
glLineStipple :: GLint -> GLushort -> IO ()
glLineStipple = dyn_glLineStipple ptr_glLineStipple
 
foreign import CALLCONV unsafe "dynamic" dyn_glLineStipple ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLushort -> IO ())
 
{-# NOINLINE ptr_glLightModeliv #-}
 
ptr_glLightModeliv :: FunPtr a
ptr_glLightModeliv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glLightModeliv"
 
glLightModeliv :: GLenum -> Ptr GLint -> IO ()
glLightModeliv = dyn_glLightModeliv ptr_glLightModeliv
 
foreign import CALLCONV unsafe "dynamic" dyn_glLightModeliv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glLightModeli #-}
 
ptr_glLightModeli :: FunPtr a
ptr_glLightModeli
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glLightModeli"
 
glLightModeli :: GLenum -> GLint -> IO ()
glLightModeli = dyn_glLightModeli ptr_glLightModeli
 
foreign import CALLCONV unsafe "dynamic" dyn_glLightModeli ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glLightModelfv #-}
 
ptr_glLightModelfv :: FunPtr a
ptr_glLightModelfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glLightModelfv"
 
glLightModelfv :: GLenum -> Ptr GLfloat -> IO ()
glLightModelfv = dyn_glLightModelfv ptr_glLightModelfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glLightModelfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glLightModelf #-}
 
ptr_glLightModelf :: FunPtr a
ptr_glLightModelf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glLightModelf"
 
glLightModelf :: GLenum -> GLfloat -> IO ()
glLightModelf = dyn_glLightModelf ptr_glLightModelf
 
foreign import CALLCONV unsafe "dynamic" dyn_glLightModelf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glLightiv #-}
 
ptr_glLightiv :: FunPtr a
ptr_glLightiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glLightiv"
 
glLightiv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glLightiv = dyn_glLightiv ptr_glLightiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glLightiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glLighti #-}
 
ptr_glLighti :: FunPtr a
ptr_glLighti
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glLighti"
 
glLighti :: GLenum -> GLenum -> GLint -> IO ()
glLighti = dyn_glLighti ptr_glLighti
 
foreign import CALLCONV unsafe "dynamic" dyn_glLighti ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glLightfv #-}
 
ptr_glLightfv :: FunPtr a
ptr_glLightfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glLightfv"
 
glLightfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glLightfv = dyn_glLightfv ptr_glLightfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glLightfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glLightf #-}
 
ptr_glLightf :: FunPtr a
ptr_glLightf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glLightf"
 
glLightf :: GLenum -> GLenum -> GLfloat -> IO ()
glLightf = dyn_glLightf ptr_glLightf
 
foreign import CALLCONV unsafe "dynamic" dyn_glLightf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glFogiv #-}
 
ptr_glFogiv :: FunPtr a
ptr_glFogiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glFogiv"
 
glFogiv :: GLenum -> Ptr GLint -> IO ()
glFogiv = dyn_glFogiv ptr_glFogiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glFogi #-}
 
ptr_glFogi :: FunPtr a
ptr_glFogi
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glFogi"
 
glFogi :: GLenum -> GLint -> IO ()
glFogi = dyn_glFogi ptr_glFogi
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogi ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glFogfv #-}
 
ptr_glFogfv :: FunPtr a
ptr_glFogfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glFogfv"
 
glFogfv :: GLenum -> Ptr GLfloat -> IO ()
glFogfv = dyn_glFogfv ptr_glFogfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glFogf #-}
 
ptr_glFogf :: FunPtr a
ptr_glFogf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glFogf"
 
glFogf :: GLenum -> GLfloat -> IO ()
glFogf = dyn_glFogf ptr_glFogf
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glColorMaterial #-}
 
ptr_glColorMaterial :: FunPtr a
ptr_glColorMaterial
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColorMaterial"
 
glColorMaterial :: GLenum -> GLenum -> IO ()
glColorMaterial = dyn_glColorMaterial ptr_glColorMaterial
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorMaterial ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glClipPlane #-}
 
ptr_glClipPlane :: FunPtr a
ptr_glClipPlane
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glClipPlane"
 
glClipPlane :: GLenum -> Ptr GLdouble -> IO ()
glClipPlane = dyn_glClipPlane ptr_glClipPlane
 
foreign import CALLCONV unsafe "dynamic" dyn_glClipPlane ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertex4sv #-}
 
ptr_glVertex4sv :: FunPtr a
ptr_glVertex4sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex4sv"
 
glVertex4sv :: Ptr GLshort -> IO ()
glVertex4sv = dyn_glVertex4sv ptr_glVertex4sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex4sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertex4s #-}
 
ptr_glVertex4s :: FunPtr a
ptr_glVertex4s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex4s"
 
glVertex4s :: GLshort -> GLshort -> GLshort -> GLshort -> IO ()
glVertex4s = dyn_glVertex4s ptr_glVertex4s
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex4s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertex4iv #-}
 
ptr_glVertex4iv :: FunPtr a
ptr_glVertex4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex4iv"
 
glVertex4iv :: Ptr GLint -> IO ()
glVertex4iv = dyn_glVertex4iv ptr_glVertex4iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertex4i #-}
 
ptr_glVertex4i :: FunPtr a
ptr_glVertex4i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex4i"
 
glVertex4i :: GLint -> GLint -> GLint -> GLint -> IO ()
glVertex4i = dyn_glVertex4i ptr_glVertex4i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex4i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertex4fv #-}
 
ptr_glVertex4fv :: FunPtr a
ptr_glVertex4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex4fv"
 
glVertex4fv :: Ptr GLfloat -> IO ()
glVertex4fv = dyn_glVertex4fv ptr_glVertex4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertex4f #-}
 
ptr_glVertex4f :: FunPtr a
ptr_glVertex4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex4f"
 
glVertex4f :: GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glVertex4f = dyn_glVertex4f ptr_glVertex4f
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex4f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertex4dv #-}
 
ptr_glVertex4dv :: FunPtr a
ptr_glVertex4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex4dv"
 
glVertex4dv :: Ptr GLdouble -> IO ()
glVertex4dv = dyn_glVertex4dv ptr_glVertex4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertex4d #-}
 
ptr_glVertex4d :: FunPtr a
ptr_glVertex4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex4d"
 
glVertex4d :: GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertex4d = dyn_glVertex4d ptr_glVertex4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertex3sv #-}
 
ptr_glVertex3sv :: FunPtr a
ptr_glVertex3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex3sv"
 
glVertex3sv :: Ptr GLshort -> IO ()
glVertex3sv = dyn_glVertex3sv ptr_glVertex3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertex3s #-}
 
ptr_glVertex3s :: FunPtr a
ptr_glVertex3s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex3s"
 
glVertex3s :: GLshort -> GLshort -> GLshort -> IO ()
glVertex3s = dyn_glVertex3s ptr_glVertex3s
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex3s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertex3iv #-}
 
ptr_glVertex3iv :: FunPtr a
ptr_glVertex3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex3iv"
 
glVertex3iv :: Ptr GLint -> IO ()
glVertex3iv = dyn_glVertex3iv ptr_glVertex3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertex3i #-}
 
ptr_glVertex3i :: FunPtr a
ptr_glVertex3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex3i"
 
glVertex3i :: GLint -> GLint -> GLint -> IO ()
glVertex3i = dyn_glVertex3i ptr_glVertex3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertex3fv #-}
 
ptr_glVertex3fv :: FunPtr a
ptr_glVertex3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex3fv"
 
glVertex3fv :: Ptr GLfloat -> IO ()
glVertex3fv = dyn_glVertex3fv ptr_glVertex3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertex3f #-}
 
ptr_glVertex3f :: FunPtr a
ptr_glVertex3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex3f"
 
glVertex3f :: GLfloat -> GLfloat -> GLfloat -> IO ()
glVertex3f = dyn_glVertex3f ptr_glVertex3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertex3dv #-}
 
ptr_glVertex3dv :: FunPtr a
ptr_glVertex3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex3dv"
 
glVertex3dv :: Ptr GLdouble -> IO ()
glVertex3dv = dyn_glVertex3dv ptr_glVertex3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertex3d #-}
 
ptr_glVertex3d :: FunPtr a
ptr_glVertex3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex3d"
 
glVertex3d :: GLdouble -> GLdouble -> GLdouble -> IO ()
glVertex3d = dyn_glVertex3d ptr_glVertex3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertex2sv #-}
 
ptr_glVertex2sv :: FunPtr a
ptr_glVertex2sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex2sv"
 
glVertex2sv :: Ptr GLshort -> IO ()
glVertex2sv = dyn_glVertex2sv ptr_glVertex2sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex2sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertex2s #-}
 
ptr_glVertex2s :: FunPtr a
ptr_glVertex2s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex2s"
 
glVertex2s :: GLshort -> GLshort -> IO ()
glVertex2s = dyn_glVertex2s ptr_glVertex2s
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex2s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glVertex2iv #-}
 
ptr_glVertex2iv :: FunPtr a
ptr_glVertex2iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex2iv"
 
glVertex2iv :: Ptr GLint -> IO ()
glVertex2iv = dyn_glVertex2iv ptr_glVertex2iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex2iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertex2i #-}
 
ptr_glVertex2i :: FunPtr a
ptr_glVertex2i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex2i"
 
glVertex2i :: GLint -> GLint -> IO ()
glVertex2i = dyn_glVertex2i ptr_glVertex2i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex2i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertex2fv #-}
 
ptr_glVertex2fv :: FunPtr a
ptr_glVertex2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex2fv"
 
glVertex2fv :: Ptr GLfloat -> IO ()
glVertex2fv = dyn_glVertex2fv ptr_glVertex2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertex2f #-}
 
ptr_glVertex2f :: FunPtr a
ptr_glVertex2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex2f"
 
glVertex2f :: GLfloat -> GLfloat -> IO ()
glVertex2f = dyn_glVertex2f ptr_glVertex2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertex2dv #-}
 
ptr_glVertex2dv :: FunPtr a
ptr_glVertex2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex2dv"
 
glVertex2dv :: Ptr GLdouble -> IO ()
glVertex2dv = dyn_glVertex2dv ptr_glVertex2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertex2d #-}
 
ptr_glVertex2d :: FunPtr a
ptr_glVertex2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glVertex2d"
 
glVertex2d :: GLdouble -> GLdouble -> IO ()
glVertex2d = dyn_glVertex2d ptr_glVertex2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glTexCoord4sv #-}
 
ptr_glTexCoord4sv :: FunPtr a
ptr_glTexCoord4sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord4sv"
 
glTexCoord4sv :: Ptr GLshort -> IO ()
glTexCoord4sv = dyn_glTexCoord4sv ptr_glTexCoord4sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord4sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glTexCoord4s #-}
 
ptr_glTexCoord4s :: FunPtr a
ptr_glTexCoord4s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord4s"
 
glTexCoord4s :: GLshort -> GLshort -> GLshort -> GLshort -> IO ()
glTexCoord4s = dyn_glTexCoord4s ptr_glTexCoord4s
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord4s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glTexCoord4iv #-}
 
ptr_glTexCoord4iv :: FunPtr a
ptr_glTexCoord4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord4iv"
 
glTexCoord4iv :: Ptr GLint -> IO ()
glTexCoord4iv = dyn_glTexCoord4iv ptr_glTexCoord4iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTexCoord4i #-}
 
ptr_glTexCoord4i :: FunPtr a
ptr_glTexCoord4i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord4i"
 
glTexCoord4i :: GLint -> GLint -> GLint -> GLint -> IO ()
glTexCoord4i = dyn_glTexCoord4i ptr_glTexCoord4i
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord4i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glTexCoord4fv #-}
 
ptr_glTexCoord4fv :: FunPtr a
ptr_glTexCoord4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord4fv"
 
glTexCoord4fv :: Ptr GLfloat -> IO ()
glTexCoord4fv = dyn_glTexCoord4fv ptr_glTexCoord4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glTexCoord4f #-}
 
ptr_glTexCoord4f :: FunPtr a
ptr_glTexCoord4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord4f"
 
glTexCoord4f :: GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glTexCoord4f = dyn_glTexCoord4f ptr_glTexCoord4f
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord4f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glTexCoord4dv #-}
 
ptr_glTexCoord4dv :: FunPtr a
ptr_glTexCoord4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord4dv"
 
glTexCoord4dv :: Ptr GLdouble -> IO ()
glTexCoord4dv = dyn_glTexCoord4dv ptr_glTexCoord4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glTexCoord4d #-}
 
ptr_glTexCoord4d :: FunPtr a
ptr_glTexCoord4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord4d"
 
glTexCoord4d ::
             GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glTexCoord4d = dyn_glTexCoord4d ptr_glTexCoord4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glTexCoord3sv #-}
 
ptr_glTexCoord3sv :: FunPtr a
ptr_glTexCoord3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord3sv"
 
glTexCoord3sv :: Ptr GLshort -> IO ()
glTexCoord3sv = dyn_glTexCoord3sv ptr_glTexCoord3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glTexCoord3s #-}
 
ptr_glTexCoord3s :: FunPtr a
ptr_glTexCoord3s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord3s"
 
glTexCoord3s :: GLshort -> GLshort -> GLshort -> IO ()
glTexCoord3s = dyn_glTexCoord3s ptr_glTexCoord3s
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord3s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glTexCoord3iv #-}
 
ptr_glTexCoord3iv :: FunPtr a
ptr_glTexCoord3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord3iv"
 
glTexCoord3iv :: Ptr GLint -> IO ()
glTexCoord3iv = dyn_glTexCoord3iv ptr_glTexCoord3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTexCoord3i #-}
 
ptr_glTexCoord3i :: FunPtr a
ptr_glTexCoord3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord3i"
 
glTexCoord3i :: GLint -> GLint -> GLint -> IO ()
glTexCoord3i = dyn_glTexCoord3i ptr_glTexCoord3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glTexCoord3fv #-}
 
ptr_glTexCoord3fv :: FunPtr a
ptr_glTexCoord3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord3fv"
 
glTexCoord3fv :: Ptr GLfloat -> IO ()
glTexCoord3fv = dyn_glTexCoord3fv ptr_glTexCoord3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glTexCoord3f #-}
 
ptr_glTexCoord3f :: FunPtr a
ptr_glTexCoord3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord3f"
 
glTexCoord3f :: GLfloat -> GLfloat -> GLfloat -> IO ()
glTexCoord3f = dyn_glTexCoord3f ptr_glTexCoord3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glTexCoord3dv #-}
 
ptr_glTexCoord3dv :: FunPtr a
ptr_glTexCoord3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord3dv"
 
glTexCoord3dv :: Ptr GLdouble -> IO ()
glTexCoord3dv = dyn_glTexCoord3dv ptr_glTexCoord3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glTexCoord3d #-}
 
ptr_glTexCoord3d :: FunPtr a
ptr_glTexCoord3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord3d"
 
glTexCoord3d :: GLdouble -> GLdouble -> GLdouble -> IO ()
glTexCoord3d = dyn_glTexCoord3d ptr_glTexCoord3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glTexCoord2sv #-}
 
ptr_glTexCoord2sv :: FunPtr a
ptr_glTexCoord2sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord2sv"
 
glTexCoord2sv :: Ptr GLshort -> IO ()
glTexCoord2sv = dyn_glTexCoord2sv ptr_glTexCoord2sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord2sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glTexCoord2s #-}
 
ptr_glTexCoord2s :: FunPtr a
ptr_glTexCoord2s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord2s"
 
glTexCoord2s :: GLshort -> GLshort -> IO ()
glTexCoord2s = dyn_glTexCoord2s ptr_glTexCoord2s
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord2s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glTexCoord2iv #-}
 
ptr_glTexCoord2iv :: FunPtr a
ptr_glTexCoord2iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord2iv"
 
glTexCoord2iv :: Ptr GLint -> IO ()
glTexCoord2iv = dyn_glTexCoord2iv ptr_glTexCoord2iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord2iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTexCoord2i #-}
 
ptr_glTexCoord2i :: FunPtr a
ptr_glTexCoord2i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord2i"
 
glTexCoord2i :: GLint -> GLint -> IO ()
glTexCoord2i = dyn_glTexCoord2i ptr_glTexCoord2i
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord2i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glTexCoord2fv #-}
 
ptr_glTexCoord2fv :: FunPtr a
ptr_glTexCoord2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord2fv"
 
glTexCoord2fv :: Ptr GLfloat -> IO ()
glTexCoord2fv = dyn_glTexCoord2fv ptr_glTexCoord2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glTexCoord2f #-}
 
ptr_glTexCoord2f :: FunPtr a
ptr_glTexCoord2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord2f"
 
glTexCoord2f :: GLfloat -> GLfloat -> IO ()
glTexCoord2f = dyn_glTexCoord2f ptr_glTexCoord2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glTexCoord2dv #-}
 
ptr_glTexCoord2dv :: FunPtr a
ptr_glTexCoord2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord2dv"
 
glTexCoord2dv :: Ptr GLdouble -> IO ()
glTexCoord2dv = dyn_glTexCoord2dv ptr_glTexCoord2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glTexCoord2d #-}
 
ptr_glTexCoord2d :: FunPtr a
ptr_glTexCoord2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord2d"
 
glTexCoord2d :: GLdouble -> GLdouble -> IO ()
glTexCoord2d = dyn_glTexCoord2d ptr_glTexCoord2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glTexCoord1sv #-}
 
ptr_glTexCoord1sv :: FunPtr a
ptr_glTexCoord1sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord1sv"
 
glTexCoord1sv :: Ptr GLshort -> IO ()
glTexCoord1sv = dyn_glTexCoord1sv ptr_glTexCoord1sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord1sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glTexCoord1s #-}
 
ptr_glTexCoord1s :: FunPtr a
ptr_glTexCoord1s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord1s"
 
glTexCoord1s :: GLshort -> IO ()
glTexCoord1s = dyn_glTexCoord1s ptr_glTexCoord1s
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord1s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> IO ())
 
{-# NOINLINE ptr_glTexCoord1iv #-}
 
ptr_glTexCoord1iv :: FunPtr a
ptr_glTexCoord1iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord1iv"
 
glTexCoord1iv :: Ptr GLint -> IO ()
glTexCoord1iv = dyn_glTexCoord1iv ptr_glTexCoord1iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord1iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTexCoord1i #-}
 
ptr_glTexCoord1i :: FunPtr a
ptr_glTexCoord1i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord1i"
 
glTexCoord1i :: GLint -> IO ()
glTexCoord1i = dyn_glTexCoord1i ptr_glTexCoord1i
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord1i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> IO ())
 
{-# NOINLINE ptr_glTexCoord1fv #-}
 
ptr_glTexCoord1fv :: FunPtr a
ptr_glTexCoord1fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord1fv"
 
glTexCoord1fv :: Ptr GLfloat -> IO ()
glTexCoord1fv = dyn_glTexCoord1fv ptr_glTexCoord1fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord1fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glTexCoord1f #-}
 
ptr_glTexCoord1f :: FunPtr a
ptr_glTexCoord1f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord1f"
 
glTexCoord1f :: GLfloat -> IO ()
glTexCoord1f = dyn_glTexCoord1f ptr_glTexCoord1f
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord1f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
{-# NOINLINE ptr_glTexCoord1dv #-}
 
ptr_glTexCoord1dv :: FunPtr a
ptr_glTexCoord1dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord1dv"
 
glTexCoord1dv :: Ptr GLdouble -> IO ()
glTexCoord1dv = dyn_glTexCoord1dv ptr_glTexCoord1dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord1dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glTexCoord1d #-}
 
ptr_glTexCoord1d :: FunPtr a
ptr_glTexCoord1d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glTexCoord1d"
 
glTexCoord1d :: GLdouble -> IO ()
glTexCoord1d = dyn_glTexCoord1d ptr_glTexCoord1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> IO ())
 
{-# NOINLINE ptr_glRectsv #-}
 
ptr_glRectsv :: FunPtr a
ptr_glRectsv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRectsv"
 
glRectsv :: Ptr GLshort -> Ptr GLshort -> IO ()
glRectsv = dyn_glRectsv ptr_glRectsv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRectsv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glRects #-}
 
ptr_glRects :: FunPtr a
ptr_glRects
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRects"
 
glRects :: GLshort -> GLshort -> GLshort -> GLshort -> IO ()
glRects = dyn_glRects ptr_glRects
 
foreign import CALLCONV unsafe "dynamic" dyn_glRects ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glRectiv #-}
 
ptr_glRectiv :: FunPtr a
ptr_glRectiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRectiv"
 
glRectiv :: Ptr GLint -> Ptr GLint -> IO ()
glRectiv = dyn_glRectiv ptr_glRectiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRectiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glRecti #-}
 
ptr_glRecti :: FunPtr a
ptr_glRecti
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRecti"
 
glRecti :: GLint -> GLint -> GLint -> GLint -> IO ()
glRecti = dyn_glRecti ptr_glRecti
 
foreign import CALLCONV unsafe "dynamic" dyn_glRecti ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glRectfv #-}
 
ptr_glRectfv :: FunPtr a
ptr_glRectfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRectfv"
 
glRectfv :: Ptr GLfloat -> Ptr GLfloat -> IO ()
glRectfv = dyn_glRectfv ptr_glRectfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRectfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glRectf #-}
 
ptr_glRectf :: FunPtr a
ptr_glRectf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRectf"
 
glRectf :: GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glRectf = dyn_glRectf ptr_glRectf
 
foreign import CALLCONV unsafe "dynamic" dyn_glRectf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glRectdv #-}
 
ptr_glRectdv :: FunPtr a
ptr_glRectdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRectdv"
 
glRectdv :: Ptr GLdouble -> Ptr GLdouble -> IO ()
glRectdv = dyn_glRectdv ptr_glRectdv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRectdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glRectd #-}
 
ptr_glRectd :: FunPtr a
ptr_glRectd
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRectd"
 
glRectd :: GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glRectd = dyn_glRectd ptr_glRectd
 
foreign import CALLCONV unsafe "dynamic" dyn_glRectd ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glRasterPos4sv #-}
 
ptr_glRasterPos4sv :: FunPtr a
ptr_glRasterPos4sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos4sv"
 
glRasterPos4sv :: Ptr GLshort -> IO ()
glRasterPos4sv = dyn_glRasterPos4sv ptr_glRasterPos4sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos4sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glRasterPos4s #-}
 
ptr_glRasterPos4s :: FunPtr a
ptr_glRasterPos4s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos4s"
 
glRasterPos4s :: GLshort -> GLshort -> GLshort -> GLshort -> IO ()
glRasterPos4s = dyn_glRasterPos4s ptr_glRasterPos4s
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos4s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glRasterPos4iv #-}
 
ptr_glRasterPos4iv :: FunPtr a
ptr_glRasterPos4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos4iv"
 
glRasterPos4iv :: Ptr GLint -> IO ()
glRasterPos4iv = dyn_glRasterPos4iv ptr_glRasterPos4iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glRasterPos4i #-}
 
ptr_glRasterPos4i :: FunPtr a
ptr_glRasterPos4i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos4i"
 
glRasterPos4i :: GLint -> GLint -> GLint -> GLint -> IO ()
glRasterPos4i = dyn_glRasterPos4i ptr_glRasterPos4i
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos4i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glRasterPos4fv #-}
 
ptr_glRasterPos4fv :: FunPtr a
ptr_glRasterPos4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos4fv"
 
glRasterPos4fv :: Ptr GLfloat -> IO ()
glRasterPos4fv = dyn_glRasterPos4fv ptr_glRasterPos4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glRasterPos4f #-}
 
ptr_glRasterPos4f :: FunPtr a
ptr_glRasterPos4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos4f"
 
glRasterPos4f :: GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glRasterPos4f = dyn_glRasterPos4f ptr_glRasterPos4f
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos4f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glRasterPos4dv #-}
 
ptr_glRasterPos4dv :: FunPtr a
ptr_glRasterPos4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos4dv"
 
glRasterPos4dv :: Ptr GLdouble -> IO ()
glRasterPos4dv = dyn_glRasterPos4dv ptr_glRasterPos4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glRasterPos4d #-}
 
ptr_glRasterPos4d :: FunPtr a
ptr_glRasterPos4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos4d"
 
glRasterPos4d ::
              GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glRasterPos4d = dyn_glRasterPos4d ptr_glRasterPos4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glRasterPos3sv #-}
 
ptr_glRasterPos3sv :: FunPtr a
ptr_glRasterPos3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos3sv"
 
glRasterPos3sv :: Ptr GLshort -> IO ()
glRasterPos3sv = dyn_glRasterPos3sv ptr_glRasterPos3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glRasterPos3s #-}
 
ptr_glRasterPos3s :: FunPtr a
ptr_glRasterPos3s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos3s"
 
glRasterPos3s :: GLshort -> GLshort -> GLshort -> IO ()
glRasterPos3s = dyn_glRasterPos3s ptr_glRasterPos3s
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos3s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glRasterPos3iv #-}
 
ptr_glRasterPos3iv :: FunPtr a
ptr_glRasterPos3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos3iv"
 
glRasterPos3iv :: Ptr GLint -> IO ()
glRasterPos3iv = dyn_glRasterPos3iv ptr_glRasterPos3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glRasterPos3i #-}
 
ptr_glRasterPos3i :: FunPtr a
ptr_glRasterPos3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos3i"
 
glRasterPos3i :: GLint -> GLint -> GLint -> IO ()
glRasterPos3i = dyn_glRasterPos3i ptr_glRasterPos3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glRasterPos3fv #-}
 
ptr_glRasterPos3fv :: FunPtr a
ptr_glRasterPos3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos3fv"
 
glRasterPos3fv :: Ptr GLfloat -> IO ()
glRasterPos3fv = dyn_glRasterPos3fv ptr_glRasterPos3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glRasterPos3f #-}
 
ptr_glRasterPos3f :: FunPtr a
ptr_glRasterPos3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos3f"
 
glRasterPos3f :: GLfloat -> GLfloat -> GLfloat -> IO ()
glRasterPos3f = dyn_glRasterPos3f ptr_glRasterPos3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glRasterPos3dv #-}
 
ptr_glRasterPos3dv :: FunPtr a
ptr_glRasterPos3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos3dv"
 
glRasterPos3dv :: Ptr GLdouble -> IO ()
glRasterPos3dv = dyn_glRasterPos3dv ptr_glRasterPos3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glRasterPos3d #-}
 
ptr_glRasterPos3d :: FunPtr a
ptr_glRasterPos3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos3d"
 
glRasterPos3d :: GLdouble -> GLdouble -> GLdouble -> IO ()
glRasterPos3d = dyn_glRasterPos3d ptr_glRasterPos3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glRasterPos2sv #-}
 
ptr_glRasterPos2sv :: FunPtr a
ptr_glRasterPos2sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos2sv"
 
glRasterPos2sv :: Ptr GLshort -> IO ()
glRasterPos2sv = dyn_glRasterPos2sv ptr_glRasterPos2sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos2sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glRasterPos2s #-}
 
ptr_glRasterPos2s :: FunPtr a
ptr_glRasterPos2s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos2s"
 
glRasterPos2s :: GLshort -> GLshort -> IO ()
glRasterPos2s = dyn_glRasterPos2s ptr_glRasterPos2s
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos2s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glRasterPos2iv #-}
 
ptr_glRasterPos2iv :: FunPtr a
ptr_glRasterPos2iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos2iv"
 
glRasterPos2iv :: Ptr GLint -> IO ()
glRasterPos2iv = dyn_glRasterPos2iv ptr_glRasterPos2iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos2iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glRasterPos2i #-}
 
ptr_glRasterPos2i :: FunPtr a
ptr_glRasterPos2i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos2i"
 
glRasterPos2i :: GLint -> GLint -> IO ()
glRasterPos2i = dyn_glRasterPos2i ptr_glRasterPos2i
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos2i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glRasterPos2fv #-}
 
ptr_glRasterPos2fv :: FunPtr a
ptr_glRasterPos2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos2fv"
 
glRasterPos2fv :: Ptr GLfloat -> IO ()
glRasterPos2fv = dyn_glRasterPos2fv ptr_glRasterPos2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glRasterPos2f #-}
 
ptr_glRasterPos2f :: FunPtr a
ptr_glRasterPos2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos2f"
 
glRasterPos2f :: GLfloat -> GLfloat -> IO ()
glRasterPos2f = dyn_glRasterPos2f ptr_glRasterPos2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glRasterPos2dv #-}
 
ptr_glRasterPos2dv :: FunPtr a
ptr_glRasterPos2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos2dv"
 
glRasterPos2dv :: Ptr GLdouble -> IO ()
glRasterPos2dv = dyn_glRasterPos2dv ptr_glRasterPos2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glRasterPos2d #-}
 
ptr_glRasterPos2d :: FunPtr a
ptr_glRasterPos2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glRasterPos2d"
 
glRasterPos2d :: GLdouble -> GLdouble -> IO ()
glRasterPos2d = dyn_glRasterPos2d ptr_glRasterPos2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glRasterPos2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glNormal3sv #-}
 
ptr_glNormal3sv :: FunPtr a
ptr_glNormal3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glNormal3sv"
 
glNormal3sv :: Ptr GLshort -> IO ()
glNormal3sv = dyn_glNormal3sv ptr_glNormal3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormal3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glNormal3s #-}
 
ptr_glNormal3s :: FunPtr a
ptr_glNormal3s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glNormal3s"
 
glNormal3s :: GLshort -> GLshort -> GLshort -> IO ()
glNormal3s = dyn_glNormal3s ptr_glNormal3s
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormal3s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glNormal3iv #-}
 
ptr_glNormal3iv :: FunPtr a
ptr_glNormal3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glNormal3iv"
 
glNormal3iv :: Ptr GLint -> IO ()
glNormal3iv = dyn_glNormal3iv ptr_glNormal3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormal3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glNormal3i #-}
 
ptr_glNormal3i :: FunPtr a
ptr_glNormal3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glNormal3i"
 
glNormal3i :: GLint -> GLint -> GLint -> IO ()
glNormal3i = dyn_glNormal3i ptr_glNormal3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormal3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glNormal3fv #-}
 
ptr_glNormal3fv :: FunPtr a
ptr_glNormal3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glNormal3fv"
 
glNormal3fv :: Ptr GLfloat -> IO ()
glNormal3fv = dyn_glNormal3fv ptr_glNormal3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormal3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glNormal3f #-}
 
ptr_glNormal3f :: FunPtr a
ptr_glNormal3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glNormal3f"
 
glNormal3f :: GLfloat -> GLfloat -> GLfloat -> IO ()
glNormal3f = dyn_glNormal3f ptr_glNormal3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormal3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glNormal3dv #-}
 
ptr_glNormal3dv :: FunPtr a
ptr_glNormal3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glNormal3dv"
 
glNormal3dv :: Ptr GLdouble -> IO ()
glNormal3dv = dyn_glNormal3dv ptr_glNormal3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormal3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glNormal3d #-}
 
ptr_glNormal3d :: FunPtr a
ptr_glNormal3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glNormal3d"
 
glNormal3d :: GLdouble -> GLdouble -> GLdouble -> IO ()
glNormal3d = dyn_glNormal3d ptr_glNormal3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormal3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glNormal3bv #-}
 
ptr_glNormal3bv :: FunPtr a
ptr_glNormal3bv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glNormal3bv"
 
glNormal3bv :: Ptr GLbyte -> IO ()
glNormal3bv = dyn_glNormal3bv ptr_glNormal3bv
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormal3bv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glNormal3b #-}
 
ptr_glNormal3b :: FunPtr a
ptr_glNormal3b
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glNormal3b"
 
glNormal3b :: GLbyte -> GLbyte -> GLbyte -> IO ()
glNormal3b = dyn_glNormal3b ptr_glNormal3b
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormal3b ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbyte -> GLbyte -> GLbyte -> IO ())
 
{-# NOINLINE ptr_glIndexsv #-}
 
ptr_glIndexsv :: FunPtr a
ptr_glIndexsv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glIndexsv"
 
glIndexsv :: Ptr GLshort -> IO ()
glIndexsv = dyn_glIndexsv ptr_glIndexsv
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexsv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glIndexs #-}
 
ptr_glIndexs :: FunPtr a
ptr_glIndexs
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glIndexs"
 
glIndexs :: GLshort -> IO ()
glIndexs = dyn_glIndexs ptr_glIndexs
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexs ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> IO ())
 
{-# NOINLINE ptr_glIndexiv #-}
 
ptr_glIndexiv :: FunPtr a
ptr_glIndexiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glIndexiv"
 
glIndexiv :: Ptr GLint -> IO ()
glIndexiv = dyn_glIndexiv ptr_glIndexiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glIndexi #-}
 
ptr_glIndexi :: FunPtr a
ptr_glIndexi
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glIndexi"
 
glIndexi :: GLint -> IO ()
glIndexi = dyn_glIndexi ptr_glIndexi
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexi ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> IO ())
 
{-# NOINLINE ptr_glIndexfv #-}
 
ptr_glIndexfv :: FunPtr a
ptr_glIndexfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glIndexfv"
 
glIndexfv :: Ptr GLfloat -> IO ()
glIndexfv = dyn_glIndexfv ptr_glIndexfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glIndexf #-}
 
ptr_glIndexf :: FunPtr a
ptr_glIndexf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glIndexf"
 
glIndexf :: GLfloat -> IO ()
glIndexf = dyn_glIndexf ptr_glIndexf
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
{-# NOINLINE ptr_glIndexdv #-}
 
ptr_glIndexdv :: FunPtr a
ptr_glIndexdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glIndexdv"
 
glIndexdv :: Ptr GLdouble -> IO ()
glIndexdv = dyn_glIndexdv ptr_glIndexdv
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glIndexd #-}
 
ptr_glIndexd :: FunPtr a
ptr_glIndexd
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glIndexd"
 
glIndexd :: GLdouble -> IO ()
glIndexd = dyn_glIndexd ptr_glIndexd
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexd ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> IO ())
 
{-# NOINLINE ptr_glEnd #-}
 
ptr_glEnd :: FunPtr a
ptr_glEnd
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEnd"
 
glEnd :: IO ()
glEnd = dyn_glEnd ptr_glEnd
 
foreign import CALLCONV unsafe "dynamic" dyn_glEnd ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glEdgeFlagv #-}
 
ptr_glEdgeFlagv :: FunPtr a
ptr_glEdgeFlagv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEdgeFlagv"
 
glEdgeFlagv :: Ptr GLboolean -> IO ()
glEdgeFlagv = dyn_glEdgeFlagv ptr_glEdgeFlagv
 
foreign import CALLCONV unsafe "dynamic" dyn_glEdgeFlagv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLboolean -> IO ())
 
{-# NOINLINE ptr_glEdgeFlag #-}
 
ptr_glEdgeFlag :: FunPtr a
ptr_glEdgeFlag
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEdgeFlag"
 
glEdgeFlag :: GLboolean -> IO ()
glEdgeFlag = dyn_glEdgeFlag ptr_glEdgeFlag
 
foreign import CALLCONV unsafe "dynamic" dyn_glEdgeFlag ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLboolean -> IO ())
 
{-# NOINLINE ptr_glColor4usv #-}
 
ptr_glColor4usv :: FunPtr a
ptr_glColor4usv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4usv"
 
glColor4usv :: Ptr GLushort -> IO ()
glColor4usv = dyn_glColor4usv ptr_glColor4usv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4usv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glColor4us #-}
 
ptr_glColor4us :: FunPtr a
ptr_glColor4us
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4us"
 
glColor4us :: GLushort -> GLushort -> GLushort -> GLushort -> IO ()
glColor4us = dyn_glColor4us ptr_glColor4us
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4us ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glColor4uiv #-}
 
ptr_glColor4uiv :: FunPtr a
ptr_glColor4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4uiv"
 
glColor4uiv :: Ptr GLuint -> IO ()
glColor4uiv = dyn_glColor4uiv ptr_glColor4uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glColor4ui #-}
 
ptr_glColor4ui :: FunPtr a
ptr_glColor4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4ui"
 
glColor4ui :: GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glColor4ui = dyn_glColor4ui ptr_glColor4ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glColor4ubv #-}
 
ptr_glColor4ubv :: FunPtr a
ptr_glColor4ubv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4ubv"
 
glColor4ubv :: Ptr GLubyte -> IO ()
glColor4ubv = dyn_glColor4ubv ptr_glColor4ubv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4ubv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glColor4ub #-}
 
ptr_glColor4ub :: FunPtr a
ptr_glColor4ub
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4ub"
 
glColor4ub :: GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO ()
glColor4ub = dyn_glColor4ub ptr_glColor4ub
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4ub ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLubyte -> GLubyte -> GLubyte -> GLubyte -> IO ())
 
{-# NOINLINE ptr_glColor4sv #-}
 
ptr_glColor4sv :: FunPtr a
ptr_glColor4sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4sv"
 
glColor4sv :: Ptr GLshort -> IO ()
glColor4sv = dyn_glColor4sv ptr_glColor4sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glColor4s #-}
 
ptr_glColor4s :: FunPtr a
ptr_glColor4s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4s"
 
glColor4s :: GLshort -> GLshort -> GLshort -> GLshort -> IO ()
glColor4s = dyn_glColor4s ptr_glColor4s
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glColor4iv #-}
 
ptr_glColor4iv :: FunPtr a
ptr_glColor4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4iv"
 
glColor4iv :: Ptr GLint -> IO ()
glColor4iv = dyn_glColor4iv ptr_glColor4iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glColor4i #-}
 
ptr_glColor4i :: FunPtr a
ptr_glColor4i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4i"
 
glColor4i :: GLint -> GLint -> GLint -> GLint -> IO ()
glColor4i = dyn_glColor4i ptr_glColor4i
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glColor4fv #-}
 
ptr_glColor4fv :: FunPtr a
ptr_glColor4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4fv"
 
glColor4fv :: Ptr GLfloat -> IO ()
glColor4fv = dyn_glColor4fv ptr_glColor4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glColor4f #-}
 
ptr_glColor4f :: FunPtr a
ptr_glColor4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4f"
 
glColor4f :: GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glColor4f = dyn_glColor4f ptr_glColor4f
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glColor4dv #-}
 
ptr_glColor4dv :: FunPtr a
ptr_glColor4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4dv"
 
glColor4dv :: Ptr GLdouble -> IO ()
glColor4dv = dyn_glColor4dv ptr_glColor4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glColor4d #-}
 
ptr_glColor4d :: FunPtr a
ptr_glColor4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4d"
 
glColor4d :: GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glColor4d = dyn_glColor4d ptr_glColor4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glColor4bv #-}
 
ptr_glColor4bv :: FunPtr a
ptr_glColor4bv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4bv"
 
glColor4bv :: Ptr GLbyte -> IO ()
glColor4bv = dyn_glColor4bv ptr_glColor4bv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4bv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glColor4b #-}
 
ptr_glColor4b :: FunPtr a
ptr_glColor4b
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor4b"
 
glColor4b :: GLbyte -> GLbyte -> GLbyte -> GLbyte -> IO ()
glColor4b = dyn_glColor4b ptr_glColor4b
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4b ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbyte -> GLbyte -> GLbyte -> GLbyte -> IO ())
 
{-# NOINLINE ptr_glColor3usv #-}
 
ptr_glColor3usv :: FunPtr a
ptr_glColor3usv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3usv"
 
glColor3usv :: Ptr GLushort -> IO ()
glColor3usv = dyn_glColor3usv ptr_glColor3usv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3usv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glColor3us #-}
 
ptr_glColor3us :: FunPtr a
ptr_glColor3us
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3us"
 
glColor3us :: GLushort -> GLushort -> GLushort -> IO ()
glColor3us = dyn_glColor3us ptr_glColor3us
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3us ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glColor3uiv #-}
 
ptr_glColor3uiv :: FunPtr a
ptr_glColor3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3uiv"
 
glColor3uiv :: Ptr GLuint -> IO ()
glColor3uiv = dyn_glColor3uiv ptr_glColor3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glColor3ui #-}
 
ptr_glColor3ui :: FunPtr a
ptr_glColor3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3ui"
 
glColor3ui :: GLuint -> GLuint -> GLuint -> IO ()
glColor3ui = dyn_glColor3ui ptr_glColor3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glColor3ubv #-}
 
ptr_glColor3ubv :: FunPtr a
ptr_glColor3ubv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3ubv"
 
glColor3ubv :: Ptr GLubyte -> IO ()
glColor3ubv = dyn_glColor3ubv ptr_glColor3ubv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3ubv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glColor3ub #-}
 
ptr_glColor3ub :: FunPtr a
ptr_glColor3ub
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3ub"
 
glColor3ub :: GLubyte -> GLubyte -> GLubyte -> IO ()
glColor3ub = dyn_glColor3ub ptr_glColor3ub
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3ub ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLubyte -> GLubyte -> GLubyte -> IO ())
 
{-# NOINLINE ptr_glColor3sv #-}
 
ptr_glColor3sv :: FunPtr a
ptr_glColor3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3sv"
 
glColor3sv :: Ptr GLshort -> IO ()
glColor3sv = dyn_glColor3sv ptr_glColor3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glColor3s #-}
 
ptr_glColor3s :: FunPtr a
ptr_glColor3s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3s"
 
glColor3s :: GLshort -> GLshort -> GLshort -> IO ()
glColor3s = dyn_glColor3s ptr_glColor3s
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glColor3iv #-}
 
ptr_glColor3iv :: FunPtr a
ptr_glColor3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3iv"
 
glColor3iv :: Ptr GLint -> IO ()
glColor3iv = dyn_glColor3iv ptr_glColor3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glColor3i #-}
 
ptr_glColor3i :: FunPtr a
ptr_glColor3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3i"
 
glColor3i :: GLint -> GLint -> GLint -> IO ()
glColor3i = dyn_glColor3i ptr_glColor3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glColor3fv #-}
 
ptr_glColor3fv :: FunPtr a
ptr_glColor3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3fv"
 
glColor3fv :: Ptr GLfloat -> IO ()
glColor3fv = dyn_glColor3fv ptr_glColor3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glColor3f #-}
 
ptr_glColor3f :: FunPtr a
ptr_glColor3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3f"
 
glColor3f :: GLfloat -> GLfloat -> GLfloat -> IO ()
glColor3f = dyn_glColor3f ptr_glColor3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glColor3dv #-}
 
ptr_glColor3dv :: FunPtr a
ptr_glColor3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3dv"
 
glColor3dv :: Ptr GLdouble -> IO ()
glColor3dv = dyn_glColor3dv ptr_glColor3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glColor3d #-}
 
ptr_glColor3d :: FunPtr a
ptr_glColor3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3d"
 
glColor3d :: GLdouble -> GLdouble -> GLdouble -> IO ()
glColor3d = dyn_glColor3d ptr_glColor3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glColor3bv #-}
 
ptr_glColor3bv :: FunPtr a
ptr_glColor3bv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3bv"
 
glColor3bv :: Ptr GLbyte -> IO ()
glColor3bv = dyn_glColor3bv ptr_glColor3bv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3bv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glColor3b #-}
 
ptr_glColor3b :: FunPtr a
ptr_glColor3b
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glColor3b"
 
glColor3b :: GLbyte -> GLbyte -> GLbyte -> IO ()
glColor3b = dyn_glColor3b ptr_glColor3b
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3b ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbyte -> GLbyte -> GLbyte -> IO ())
 
{-# NOINLINE ptr_glBitmap #-}
 
ptr_glBitmap :: FunPtr a
ptr_glBitmap
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glBitmap"
 
glBitmap ::
         GLsizei ->
           GLsizei ->
             GLfloat -> GLfloat -> GLfloat -> GLfloat -> Ptr GLubyte -> IO ()
glBitmap = dyn_glBitmap ptr_glBitmap
 
foreign import CALLCONV unsafe "dynamic" dyn_glBitmap ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei ->
                    GLsizei ->
                      GLfloat -> GLfloat -> GLfloat -> GLfloat -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glBegin #-}
 
ptr_glBegin :: FunPtr a
ptr_glBegin
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glBegin"
 
glBegin :: GLenum -> IO ()
glBegin = dyn_glBegin ptr_glBegin
 
foreign import CALLCONV unsafe "dynamic" dyn_glBegin ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glListBase #-}
 
ptr_glListBase :: FunPtr a
ptr_glListBase
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glListBase"
 
glListBase :: GLuint -> IO ()
glListBase = dyn_glListBase ptr_glListBase
 
foreign import CALLCONV unsafe "dynamic" dyn_glListBase ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glGenLists #-}
 
ptr_glGenLists :: FunPtr a
ptr_glGenLists
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glGenLists"
 
glGenLists :: GLsizei -> IO GLuint
glGenLists = dyn_glGenLists ptr_glGenLists
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenLists ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> IO GLuint)
 
{-# NOINLINE ptr_glDeleteLists #-}
 
ptr_glDeleteLists :: FunPtr a
ptr_glDeleteLists
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glDeleteLists"
 
glDeleteLists :: GLuint -> GLsizei -> IO ()
glDeleteLists = dyn_glDeleteLists ptr_glDeleteLists
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteLists ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCallLists #-}
 
ptr_glCallLists :: FunPtr a
ptr_glCallLists
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glCallLists"
 
glCallLists :: GLsizei -> GLenum -> Ptr a -> IO ()
glCallLists = dyn_glCallLists ptr_glCallLists
 
foreign import CALLCONV unsafe "dynamic" dyn_glCallLists ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCallList #-}
 
ptr_glCallList :: FunPtr a
ptr_glCallList
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glCallList"
 
glCallList :: GLuint -> IO ()
glCallList = dyn_glCallList ptr_glCallList
 
foreign import CALLCONV unsafe "dynamic" dyn_glCallList ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glEndList #-}
 
ptr_glEndList :: FunPtr a
ptr_glEndList
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glEndList"
 
glEndList :: IO ()
glEndList = dyn_glEndList ptr_glEndList
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndList ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glNewList #-}
 
ptr_glNewList :: FunPtr a
ptr_glNewList
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_0_DEPRECATED"
        "glNewList"
 
glNewList :: GLuint -> GLenum -> IO ()
glNewList = dyn_glNewList ptr_glNewList
 
foreign import CALLCONV unsafe "dynamic" dyn_glNewList ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())