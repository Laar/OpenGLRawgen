{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.HalfFloat
       (glVertexWeighthv, glVertexWeighth, glVertexAttribs4hv,
        glVertexAttribs3hv, glVertexAttribs2hv, glVertexAttribs1hv,
        glVertexAttrib4hv, glVertexAttrib4h, glVertexAttrib3hv,
        glVertexAttrib3h, glVertexAttrib2hv, glVertexAttrib2h,
        glVertexAttrib1hv, glVertexAttrib1h, glVertex4hv, glVertex4h,
        glVertex3hv, glVertex3h, glVertex2hv, glVertex2h, glTexCoord4hv,
        glTexCoord4h, glTexCoord3hv, glTexCoord3h, glTexCoord2hv,
        glTexCoord2h, glTexCoord1hv, glTexCoord1h, glSecondaryColor3hv,
        glSecondaryColor3h, glNormal3hv, glNormal3h, glMultiTexCoord4hv,
        glMultiTexCoord4h, glMultiTexCoord3hv, glMultiTexCoord3h,
        glMultiTexCoord2hv, glMultiTexCoord2h, glMultiTexCoord1hv,
        glMultiTexCoord1h, glFogCoordhv, glFogCoordh, glColor4hv,
        glColor4h, glColor3hv, glColor3h, gl_HALF_FLOAT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexWeighthv #-}
 
ptr_glVertexWeighthv :: FunPtr a
ptr_glVertexWeighthv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexWeighthvNV"
 
glVertexWeighthv :: Ptr GLushort -> IO ()
glVertexWeighthv = dyn_glVertexWeighthv ptr_glVertexWeighthv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexWeighthv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexWeighth #-}
 
ptr_glVertexWeighth :: FunPtr a
ptr_glVertexWeighth
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexWeighthNV"
 
glVertexWeighth :: GLushort -> IO ()
glVertexWeighth = dyn_glVertexWeighth ptr_glVertexWeighth
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexWeighth ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs4hv #-}
 
ptr_glVertexAttribs4hv :: FunPtr a
ptr_glVertexAttribs4hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttribs4hvNV"
 
glVertexAttribs4hv :: GLuint -> GLsizei -> Ptr GLushort -> IO ()
glVertexAttribs4hv = dyn_glVertexAttribs4hv ptr_glVertexAttribs4hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs4hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs3hv #-}
 
ptr_glVertexAttribs3hv :: FunPtr a
ptr_glVertexAttribs3hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttribs3hvNV"
 
glVertexAttribs3hv :: GLuint -> GLsizei -> Ptr GLushort -> IO ()
glVertexAttribs3hv = dyn_glVertexAttribs3hv ptr_glVertexAttribs3hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs3hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs2hv #-}
 
ptr_glVertexAttribs2hv :: FunPtr a
ptr_glVertexAttribs2hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttribs2hvNV"
 
glVertexAttribs2hv :: GLuint -> GLsizei -> Ptr GLushort -> IO ()
glVertexAttribs2hv = dyn_glVertexAttribs2hv ptr_glVertexAttribs2hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs2hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs1hv #-}
 
ptr_glVertexAttribs1hv :: FunPtr a
ptr_glVertexAttribs1hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttribs1hvNV"
 
glVertexAttribs1hv :: GLuint -> GLsizei -> Ptr GLushort -> IO ()
glVertexAttribs1hv = dyn_glVertexAttribs1hv ptr_glVertexAttribs1hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs1hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4hv #-}
 
ptr_glVertexAttrib4hv :: FunPtr a
ptr_glVertexAttrib4hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib4hvNV"
 
glVertexAttrib4hv :: GLuint -> Ptr GLushort -> IO ()
glVertexAttrib4hv = dyn_glVertexAttrib4hv ptr_glVertexAttrib4hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4h #-}
 
ptr_glVertexAttrib4h :: FunPtr a
ptr_glVertexAttrib4h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib4hNV"
 
glVertexAttrib4h ::
                 GLuint -> GLushort -> GLushort -> GLushort -> GLushort -> IO ()
glVertexAttrib4h = dyn_glVertexAttrib4h ptr_glVertexAttrib4h
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLushort -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3hv #-}
 
ptr_glVertexAttrib3hv :: FunPtr a
ptr_glVertexAttrib3hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib3hvNV"
 
glVertexAttrib3hv :: GLuint -> Ptr GLushort -> IO ()
glVertexAttrib3hv = dyn_glVertexAttrib3hv ptr_glVertexAttrib3hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3h #-}
 
ptr_glVertexAttrib3h :: FunPtr a
ptr_glVertexAttrib3h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib3hNV"
 
glVertexAttrib3h ::
                 GLuint -> GLushort -> GLushort -> GLushort -> IO ()
glVertexAttrib3h = dyn_glVertexAttrib3h ptr_glVertexAttrib3h
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2hv #-}
 
ptr_glVertexAttrib2hv :: FunPtr a
ptr_glVertexAttrib2hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib2hvNV"
 
glVertexAttrib2hv :: GLuint -> Ptr GLushort -> IO ()
glVertexAttrib2hv = dyn_glVertexAttrib2hv ptr_glVertexAttrib2hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2h #-}
 
ptr_glVertexAttrib2h :: FunPtr a
ptr_glVertexAttrib2h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib2hNV"
 
glVertexAttrib2h :: GLuint -> GLushort -> GLushort -> IO ()
glVertexAttrib2h = dyn_glVertexAttrib2h ptr_glVertexAttrib2h
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1hv #-}
 
ptr_glVertexAttrib1hv :: FunPtr a
ptr_glVertexAttrib1hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib1hvNV"
 
glVertexAttrib1hv :: GLuint -> Ptr GLushort -> IO ()
glVertexAttrib1hv = dyn_glVertexAttrib1hv ptr_glVertexAttrib1hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1h #-}
 
ptr_glVertexAttrib1h :: FunPtr a
ptr_glVertexAttrib1h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib1hNV"
 
glVertexAttrib1h :: GLuint -> GLushort -> IO ()
glVertexAttrib1h = dyn_glVertexAttrib1h ptr_glVertexAttrib1h
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLushort -> IO ())
 
{-# NOINLINE ptr_glVertex4hv #-}
 
ptr_glVertex4hv :: FunPtr a
ptr_glVertex4hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertex4hvNV"
 
glVertex4hv :: Ptr GLushort -> IO ()
glVertex4hv = dyn_glVertex4hv ptr_glVertex4hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex4hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertex4h #-}
 
ptr_glVertex4h :: FunPtr a
ptr_glVertex4h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertex4hNV"
 
glVertex4h :: GLushort -> GLushort -> GLushort -> GLushort -> IO ()
glVertex4h = dyn_glVertex4h ptr_glVertex4h
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex4h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glVertex3hv #-}
 
ptr_glVertex3hv :: FunPtr a
ptr_glVertex3hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertex3hvNV"
 
glVertex3hv :: Ptr GLushort -> IO ()
glVertex3hv = dyn_glVertex3hv ptr_glVertex3hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex3hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertex3h #-}
 
ptr_glVertex3h :: FunPtr a
ptr_glVertex3h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertex3hNV"
 
glVertex3h :: GLushort -> GLushort -> GLushort -> IO ()
glVertex3h = dyn_glVertex3h ptr_glVertex3h
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex3h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glVertex2hv #-}
 
ptr_glVertex2hv :: FunPtr a
ptr_glVertex2hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertex2hvNV"
 
glVertex2hv :: Ptr GLushort -> IO ()
glVertex2hv = dyn_glVertex2hv ptr_glVertex2hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex2hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertex2h #-}
 
ptr_glVertex2h :: FunPtr a
ptr_glVertex2h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertex2hNV"
 
glVertex2h :: GLushort -> GLushort -> IO ()
glVertex2h = dyn_glVertex2h ptr_glVertex2h
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex2h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord4hv #-}
 
ptr_glTexCoord4hv :: FunPtr a
ptr_glTexCoord4hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord4hvNV"
 
glTexCoord4hv :: Ptr GLushort -> IO ()
glTexCoord4hv = dyn_glTexCoord4hv ptr_glTexCoord4hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord4hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord4h #-}
 
ptr_glTexCoord4h :: FunPtr a
ptr_glTexCoord4h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord4hNV"
 
glTexCoord4h ::
             GLushort -> GLushort -> GLushort -> GLushort -> IO ()
glTexCoord4h = dyn_glTexCoord4h ptr_glTexCoord4h
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord4h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord3hv #-}
 
ptr_glTexCoord3hv :: FunPtr a
ptr_glTexCoord3hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord3hvNV"
 
glTexCoord3hv :: Ptr GLushort -> IO ()
glTexCoord3hv = dyn_glTexCoord3hv ptr_glTexCoord3hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord3hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord3h #-}
 
ptr_glTexCoord3h :: FunPtr a
ptr_glTexCoord3h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord3hNV"
 
glTexCoord3h :: GLushort -> GLushort -> GLushort -> IO ()
glTexCoord3h = dyn_glTexCoord3h ptr_glTexCoord3h
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord3h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord2hv #-}
 
ptr_glTexCoord2hv :: FunPtr a
ptr_glTexCoord2hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord2hvNV"
 
glTexCoord2hv :: Ptr GLushort -> IO ()
glTexCoord2hv = dyn_glTexCoord2hv ptr_glTexCoord2hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord2hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord2h #-}
 
ptr_glTexCoord2h :: FunPtr a
ptr_glTexCoord2h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord2hNV"
 
glTexCoord2h :: GLushort -> GLushort -> IO ()
glTexCoord2h = dyn_glTexCoord2h ptr_glTexCoord2h
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord2h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord1hv #-}
 
ptr_glTexCoord1hv :: FunPtr a
ptr_glTexCoord1hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord1hvNV"
 
glTexCoord1hv :: Ptr GLushort -> IO ()
glTexCoord1hv = dyn_glTexCoord1hv ptr_glTexCoord1hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord1hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord1h #-}
 
ptr_glTexCoord1h :: FunPtr a
ptr_glTexCoord1h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord1hNV"
 
glTexCoord1h :: GLushort -> IO ()
glTexCoord1h = dyn_glTexCoord1h ptr_glTexCoord1h
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord1h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3hv #-}
 
ptr_glSecondaryColor3hv :: FunPtr a
ptr_glSecondaryColor3hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glSecondaryColor3hvNV"
 
glSecondaryColor3hv :: Ptr GLushort -> IO ()
glSecondaryColor3hv
  = dyn_glSecondaryColor3hv ptr_glSecondaryColor3hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3h #-}
 
ptr_glSecondaryColor3h :: FunPtr a
ptr_glSecondaryColor3h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glSecondaryColor3hNV"
 
glSecondaryColor3h :: GLushort -> GLushort -> GLushort -> IO ()
glSecondaryColor3h = dyn_glSecondaryColor3h ptr_glSecondaryColor3h
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glNormal3hv #-}
 
ptr_glNormal3hv :: FunPtr a
ptr_glNormal3hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glNormal3hvNV"
 
glNormal3hv :: Ptr GLushort -> IO ()
glNormal3hv = dyn_glNormal3hv ptr_glNormal3hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormal3hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glNormal3h #-}
 
ptr_glNormal3h :: FunPtr a
ptr_glNormal3h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glNormal3hNV"
 
glNormal3h :: GLushort -> GLushort -> GLushort -> IO ()
glNormal3h = dyn_glNormal3h ptr_glNormal3h
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormal3h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4hv #-}
 
ptr_glMultiTexCoord4hv :: FunPtr a
ptr_glMultiTexCoord4hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord4hvNV"
 
glMultiTexCoord4hv :: GLenum -> Ptr GLushort -> IO ()
glMultiTexCoord4hv = dyn_glMultiTexCoord4hv ptr_glMultiTexCoord4hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4h #-}
 
ptr_glMultiTexCoord4h :: FunPtr a
ptr_glMultiTexCoord4h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord4hNV"
 
glMultiTexCoord4h ::
                  GLenum -> GLushort -> GLushort -> GLushort -> GLushort -> IO ()
glMultiTexCoord4h = dyn_glMultiTexCoord4h ptr_glMultiTexCoord4h
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLushort -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3hv #-}
 
ptr_glMultiTexCoord3hv :: FunPtr a
ptr_glMultiTexCoord3hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord3hvNV"
 
glMultiTexCoord3hv :: GLenum -> Ptr GLushort -> IO ()
glMultiTexCoord3hv = dyn_glMultiTexCoord3hv ptr_glMultiTexCoord3hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3h #-}
 
ptr_glMultiTexCoord3h :: FunPtr a
ptr_glMultiTexCoord3h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord3hNV"
 
glMultiTexCoord3h ::
                  GLenum -> GLushort -> GLushort -> GLushort -> IO ()
glMultiTexCoord3h = dyn_glMultiTexCoord3h ptr_glMultiTexCoord3h
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2hv #-}
 
ptr_glMultiTexCoord2hv :: FunPtr a
ptr_glMultiTexCoord2hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord2hvNV"
 
glMultiTexCoord2hv :: GLenum -> Ptr GLushort -> IO ()
glMultiTexCoord2hv = dyn_glMultiTexCoord2hv ptr_glMultiTexCoord2hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2h #-}
 
ptr_glMultiTexCoord2h :: FunPtr a
ptr_glMultiTexCoord2h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord2hNV"
 
glMultiTexCoord2h :: GLenum -> GLushort -> GLushort -> IO ()
glMultiTexCoord2h = dyn_glMultiTexCoord2h ptr_glMultiTexCoord2h
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1hv #-}
 
ptr_glMultiTexCoord1hv :: FunPtr a
ptr_glMultiTexCoord1hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord1hvNV"
 
glMultiTexCoord1hv :: GLenum -> Ptr GLushort -> IO ()
glMultiTexCoord1hv = dyn_glMultiTexCoord1hv ptr_glMultiTexCoord1hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1h #-}
 
ptr_glMultiTexCoord1h :: FunPtr a
ptr_glMultiTexCoord1h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord1hNV"
 
glMultiTexCoord1h :: GLenum -> GLushort -> IO ()
glMultiTexCoord1h = dyn_glMultiTexCoord1h ptr_glMultiTexCoord1h
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLushort -> IO ())
 
{-# NOINLINE ptr_glFogCoordhv #-}
 
ptr_glFogCoordhv :: FunPtr a
ptr_glFogCoordhv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glFogCoordhvNV"
 
glFogCoordhv :: Ptr GLushort -> IO ()
glFogCoordhv = dyn_glFogCoordhv ptr_glFogCoordhv
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordhv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glFogCoordh #-}
 
ptr_glFogCoordh :: FunPtr a
ptr_glFogCoordh
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glFogCoordhNV"
 
glFogCoordh :: GLushort -> IO ()
glFogCoordh = dyn_glFogCoordh ptr_glFogCoordh
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordh ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> IO ())
 
{-# NOINLINE ptr_glColor4hv #-}
 
ptr_glColor4hv :: FunPtr a
ptr_glColor4hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glColor4hvNV"
 
glColor4hv :: Ptr GLushort -> IO ()
glColor4hv = dyn_glColor4hv ptr_glColor4hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glColor4h #-}
 
ptr_glColor4h :: FunPtr a
ptr_glColor4h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glColor4hNV"
 
glColor4h :: GLushort -> GLushort -> GLushort -> GLushort -> IO ()
glColor4h = dyn_glColor4h ptr_glColor4h
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glColor3hv #-}
 
ptr_glColor3hv :: FunPtr a
ptr_glColor3hv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glColor3hvNV"
 
glColor3hv :: Ptr GLushort -> IO ()
glColor3hv = dyn_glColor3hv ptr_glColor3hv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3hv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glColor3h #-}
 
ptr_glColor3h :: FunPtr a
ptr_glColor3h
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glColor3hNV"
 
glColor3h :: GLushort -> GLushort -> GLushort -> IO ()
glColor3h = dyn_glColor3h ptr_glColor3h
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3h ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> IO ())
 
gl_HALF_FLOAT :: GLenum
gl_HALF_FLOAT = 5131