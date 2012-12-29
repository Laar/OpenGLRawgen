{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.HalfFloat
       (glVertexAttribs4hvNV, glVertexAttribs3hvNV, glVertexAttribs2hvNV,
        glVertexAttribs1hvNV, glVertexAttrib4hvNV, glVertexAttrib4hNV,
        glVertexAttrib3hvNV, glVertexAttrib3hNV, glVertexAttrib2hvNV,
        glVertexAttrib2hNV, glVertexAttrib1hvNV, glVertexAttrib1hNV,
        glVertexWeighthvNV, glVertexWeighthNV, glSecondaryColor3hvNV,
        glSecondaryColor3hNV, glFogCoordhvNV, glFogCoordhNV,
        glMultiTexCoord4hvNV, glMultiTexCoord4hNV, glMultiTexCoord3hvNV,
        glMultiTexCoord3hNV, glMultiTexCoord2hvNV, glMultiTexCoord2hNV,
        glMultiTexCoord1hvNV, glMultiTexCoord1hNV, glTexCoord4hvNV,
        glTexCoord4hNV, glTexCoord3hvNV, glTexCoord3hNV, glTexCoord2hvNV,
        glTexCoord2hNV, glTexCoord1hvNV, glTexCoord1hNV, glColor4hvNV,
        glColor4hNV, glColor3hvNV, glColor3hNV, glNormal3hvNV,
        glNormal3hNV, glVertex4hvNV, glVertex4hNV, glVertex3hvNV,
        glVertex3hNV, glVertex2hvNV, glVertex2hNV, gl_HALF_FLOAT_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribs4hvNV #-}
 
ptr_glVertexAttribs4hvNV :: FunPtr a
ptr_glVertexAttribs4hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttribs4hvNV"
 
glVertexAttribs4hvNV :: GLuint -> GLsizei -> Ptr GLushort -> IO ()
glVertexAttribs4hvNV
  = dyn_glVertexAttribs4hvNV ptr_glVertexAttribs4hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs4hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs3hvNV #-}
 
ptr_glVertexAttribs3hvNV :: FunPtr a
ptr_glVertexAttribs3hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttribs3hvNV"
 
glVertexAttribs3hvNV :: GLuint -> GLsizei -> Ptr GLushort -> IO ()
glVertexAttribs3hvNV
  = dyn_glVertexAttribs3hvNV ptr_glVertexAttribs3hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs3hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs2hvNV #-}
 
ptr_glVertexAttribs2hvNV :: FunPtr a
ptr_glVertexAttribs2hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttribs2hvNV"
 
glVertexAttribs2hvNV :: GLuint -> GLsizei -> Ptr GLushort -> IO ()
glVertexAttribs2hvNV
  = dyn_glVertexAttribs2hvNV ptr_glVertexAttribs2hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs2hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribs1hvNV #-}
 
ptr_glVertexAttribs1hvNV :: FunPtr a
ptr_glVertexAttribs1hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttribs1hvNV"
 
glVertexAttribs1hvNV :: GLuint -> GLsizei -> Ptr GLushort -> IO ()
glVertexAttribs1hvNV
  = dyn_glVertexAttribs1hvNV ptr_glVertexAttribs1hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribs1hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4hvNV #-}
 
ptr_glVertexAttrib4hvNV :: FunPtr a
ptr_glVertexAttrib4hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib4hvNV"
 
glVertexAttrib4hvNV :: GLuint -> Ptr GLushort -> IO ()
glVertexAttrib4hvNV
  = dyn_glVertexAttrib4hvNV ptr_glVertexAttrib4hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib4hNV #-}
 
ptr_glVertexAttrib4hNV :: FunPtr a
ptr_glVertexAttrib4hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib4hNV"
 
glVertexAttrib4hNV ::
                   GLuint -> GLushort -> GLushort -> GLushort -> GLushort -> IO ()
glVertexAttrib4hNV = dyn_glVertexAttrib4hNV ptr_glVertexAttrib4hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib4hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLushort -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3hvNV #-}
 
ptr_glVertexAttrib3hvNV :: FunPtr a
ptr_glVertexAttrib3hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib3hvNV"
 
glVertexAttrib3hvNV :: GLuint -> Ptr GLushort -> IO ()
glVertexAttrib3hvNV
  = dyn_glVertexAttrib3hvNV ptr_glVertexAttrib3hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib3hNV #-}
 
ptr_glVertexAttrib3hNV :: FunPtr a
ptr_glVertexAttrib3hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib3hNV"
 
glVertexAttrib3hNV ::
                   GLuint -> GLushort -> GLushort -> GLushort -> IO ()
glVertexAttrib3hNV = dyn_glVertexAttrib3hNV ptr_glVertexAttrib3hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib3hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2hvNV #-}
 
ptr_glVertexAttrib2hvNV :: FunPtr a
ptr_glVertexAttrib2hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib2hvNV"
 
glVertexAttrib2hvNV :: GLuint -> Ptr GLushort -> IO ()
glVertexAttrib2hvNV
  = dyn_glVertexAttrib2hvNV ptr_glVertexAttrib2hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib2hNV #-}
 
ptr_glVertexAttrib2hNV :: FunPtr a
ptr_glVertexAttrib2hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib2hNV"
 
glVertexAttrib2hNV :: GLuint -> GLushort -> GLushort -> IO ()
glVertexAttrib2hNV = dyn_glVertexAttrib2hNV ptr_glVertexAttrib2hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib2hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1hvNV #-}
 
ptr_glVertexAttrib1hvNV :: FunPtr a
ptr_glVertexAttrib1hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib1hvNV"
 
glVertexAttrib1hvNV :: GLuint -> Ptr GLushort -> IO ()
glVertexAttrib1hvNV
  = dyn_glVertexAttrib1hvNV ptr_glVertexAttrib1hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttrib1hNV #-}
 
ptr_glVertexAttrib1hNV :: FunPtr a
ptr_glVertexAttrib1hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexAttrib1hNV"
 
glVertexAttrib1hNV :: GLuint -> GLushort -> IO ()
glVertexAttrib1hNV = dyn_glVertexAttrib1hNV ptr_glVertexAttrib1hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttrib1hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexWeighthvNV #-}
 
ptr_glVertexWeighthvNV :: FunPtr a
ptr_glVertexWeighthvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexWeighthvNV"
 
glVertexWeighthvNV :: Ptr GLushort -> IO ()
glVertexWeighthvNV = dyn_glVertexWeighthvNV ptr_glVertexWeighthvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexWeighthvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexWeighthNV #-}
 
ptr_glVertexWeighthNV :: FunPtr a
ptr_glVertexWeighthNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertexWeighthNV"
 
glVertexWeighthNV :: GLushort -> IO ()
glVertexWeighthNV = dyn_glVertexWeighthNV ptr_glVertexWeighthNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexWeighthNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3hvNV #-}
 
ptr_glSecondaryColor3hvNV :: FunPtr a
ptr_glSecondaryColor3hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glSecondaryColor3hvNV"
 
glSecondaryColor3hvNV :: Ptr GLushort -> IO ()
glSecondaryColor3hvNV
  = dyn_glSecondaryColor3hvNV ptr_glSecondaryColor3hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3hvNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3hNV #-}
 
ptr_glSecondaryColor3hNV :: FunPtr a
ptr_glSecondaryColor3hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glSecondaryColor3hNV"
 
glSecondaryColor3hNV :: GLushort -> GLushort -> GLushort -> IO ()
glSecondaryColor3hNV
  = dyn_glSecondaryColor3hNV ptr_glSecondaryColor3hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glFogCoordhvNV #-}
 
ptr_glFogCoordhvNV :: FunPtr a
ptr_glFogCoordhvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glFogCoordhvNV"
 
glFogCoordhvNV :: Ptr GLushort -> IO ()
glFogCoordhvNV = dyn_glFogCoordhvNV ptr_glFogCoordhvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordhvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glFogCoordhNV #-}
 
ptr_glFogCoordhNV :: FunPtr a
ptr_glFogCoordhNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glFogCoordhNV"
 
glFogCoordhNV :: GLushort -> IO ()
glFogCoordhNV = dyn_glFogCoordhNV ptr_glFogCoordhNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordhNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4hvNV #-}
 
ptr_glMultiTexCoord4hvNV :: FunPtr a
ptr_glMultiTexCoord4hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord4hvNV"
 
glMultiTexCoord4hvNV :: GLenum -> Ptr GLushort -> IO ()
glMultiTexCoord4hvNV
  = dyn_glMultiTexCoord4hvNV ptr_glMultiTexCoord4hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord4hNV #-}
 
ptr_glMultiTexCoord4hNV :: FunPtr a
ptr_glMultiTexCoord4hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord4hNV"
 
glMultiTexCoord4hNV ::
                    GLenum -> GLushort -> GLushort -> GLushort -> GLushort -> IO ()
glMultiTexCoord4hNV
  = dyn_glMultiTexCoord4hNV ptr_glMultiTexCoord4hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord4hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLushort -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3hvNV #-}
 
ptr_glMultiTexCoord3hvNV :: FunPtr a
ptr_glMultiTexCoord3hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord3hvNV"
 
glMultiTexCoord3hvNV :: GLenum -> Ptr GLushort -> IO ()
glMultiTexCoord3hvNV
  = dyn_glMultiTexCoord3hvNV ptr_glMultiTexCoord3hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord3hNV #-}
 
ptr_glMultiTexCoord3hNV :: FunPtr a
ptr_glMultiTexCoord3hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord3hNV"
 
glMultiTexCoord3hNV ::
                    GLenum -> GLushort -> GLushort -> GLushort -> IO ()
glMultiTexCoord3hNV
  = dyn_glMultiTexCoord3hNV ptr_glMultiTexCoord3hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord3hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2hvNV #-}
 
ptr_glMultiTexCoord2hvNV :: FunPtr a
ptr_glMultiTexCoord2hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord2hvNV"
 
glMultiTexCoord2hvNV :: GLenum -> Ptr GLushort -> IO ()
glMultiTexCoord2hvNV
  = dyn_glMultiTexCoord2hvNV ptr_glMultiTexCoord2hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord2hNV #-}
 
ptr_glMultiTexCoord2hNV :: FunPtr a
ptr_glMultiTexCoord2hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord2hNV"
 
glMultiTexCoord2hNV :: GLenum -> GLushort -> GLushort -> IO ()
glMultiTexCoord2hNV
  = dyn_glMultiTexCoord2hNV ptr_glMultiTexCoord2hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord2hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1hvNV #-}
 
ptr_glMultiTexCoord1hvNV :: FunPtr a
ptr_glMultiTexCoord1hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord1hvNV"
 
glMultiTexCoord1hvNV :: GLenum -> Ptr GLushort -> IO ()
glMultiTexCoord1hvNV
  = dyn_glMultiTexCoord1hvNV ptr_glMultiTexCoord1hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glMultiTexCoord1hNV #-}
 
ptr_glMultiTexCoord1hNV :: FunPtr a
ptr_glMultiTexCoord1hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glMultiTexCoord1hNV"
 
glMultiTexCoord1hNV :: GLenum -> GLushort -> IO ()
glMultiTexCoord1hNV
  = dyn_glMultiTexCoord1hNV ptr_glMultiTexCoord1hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiTexCoord1hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord4hvNV #-}
 
ptr_glTexCoord4hvNV :: FunPtr a
ptr_glTexCoord4hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord4hvNV"
 
glTexCoord4hvNV :: Ptr GLushort -> IO ()
glTexCoord4hvNV = dyn_glTexCoord4hvNV ptr_glTexCoord4hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord4hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord4hNV #-}
 
ptr_glTexCoord4hNV :: FunPtr a
ptr_glTexCoord4hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord4hNV"
 
glTexCoord4hNV ::
               GLushort -> GLushort -> GLushort -> GLushort -> IO ()
glTexCoord4hNV = dyn_glTexCoord4hNV ptr_glTexCoord4hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord4hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord3hvNV #-}
 
ptr_glTexCoord3hvNV :: FunPtr a
ptr_glTexCoord3hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord3hvNV"
 
glTexCoord3hvNV :: Ptr GLushort -> IO ()
glTexCoord3hvNV = dyn_glTexCoord3hvNV ptr_glTexCoord3hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord3hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord3hNV #-}
 
ptr_glTexCoord3hNV :: FunPtr a
ptr_glTexCoord3hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord3hNV"
 
glTexCoord3hNV :: GLushort -> GLushort -> GLushort -> IO ()
glTexCoord3hNV = dyn_glTexCoord3hNV ptr_glTexCoord3hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord3hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord2hvNV #-}
 
ptr_glTexCoord2hvNV :: FunPtr a
ptr_glTexCoord2hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord2hvNV"
 
glTexCoord2hvNV :: Ptr GLushort -> IO ()
glTexCoord2hvNV = dyn_glTexCoord2hvNV ptr_glTexCoord2hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord2hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord2hNV #-}
 
ptr_glTexCoord2hNV :: FunPtr a
ptr_glTexCoord2hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord2hNV"
 
glTexCoord2hNV :: GLushort -> GLushort -> IO ()
glTexCoord2hNV = dyn_glTexCoord2hNV ptr_glTexCoord2hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord2hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord1hvNV #-}
 
ptr_glTexCoord1hvNV :: FunPtr a
ptr_glTexCoord1hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord1hvNV"
 
glTexCoord1hvNV :: Ptr GLushort -> IO ()
glTexCoord1hvNV = dyn_glTexCoord1hvNV ptr_glTexCoord1hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord1hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glTexCoord1hNV #-}
 
ptr_glTexCoord1hNV :: FunPtr a
ptr_glTexCoord1hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glTexCoord1hNV"
 
glTexCoord1hNV :: GLushort -> IO ()
glTexCoord1hNV = dyn_glTexCoord1hNV ptr_glTexCoord1hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoord1hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> IO ())
 
{-# NOINLINE ptr_glColor4hvNV #-}
 
ptr_glColor4hvNV :: FunPtr a
ptr_glColor4hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glColor4hvNV"
 
glColor4hvNV :: Ptr GLushort -> IO ()
glColor4hvNV = dyn_glColor4hvNV ptr_glColor4hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glColor4hNV #-}
 
ptr_glColor4hNV :: FunPtr a
ptr_glColor4hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glColor4hNV"
 
glColor4hNV ::
            GLushort -> GLushort -> GLushort -> GLushort -> IO ()
glColor4hNV = dyn_glColor4hNV ptr_glColor4hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor4hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glColor3hvNV #-}
 
ptr_glColor3hvNV :: FunPtr a
ptr_glColor3hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glColor3hvNV"
 
glColor3hvNV :: Ptr GLushort -> IO ()
glColor3hvNV = dyn_glColor3hvNV ptr_glColor3hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glColor3hNV #-}
 
ptr_glColor3hNV :: FunPtr a
ptr_glColor3hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glColor3hNV"
 
glColor3hNV :: GLushort -> GLushort -> GLushort -> IO ()
glColor3hNV = dyn_glColor3hNV ptr_glColor3hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glColor3hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glNormal3hvNV #-}
 
ptr_glNormal3hvNV :: FunPtr a
ptr_glNormal3hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glNormal3hvNV"
 
glNormal3hvNV :: Ptr GLushort -> IO ()
glNormal3hvNV = dyn_glNormal3hvNV ptr_glNormal3hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormal3hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glNormal3hNV #-}
 
ptr_glNormal3hNV :: FunPtr a
ptr_glNormal3hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glNormal3hNV"
 
glNormal3hNV :: GLushort -> GLushort -> GLushort -> IO ()
glNormal3hNV = dyn_glNormal3hNV ptr_glNormal3hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormal3hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glVertex4hvNV #-}
 
ptr_glVertex4hvNV :: FunPtr a
ptr_glVertex4hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertex4hvNV"
 
glVertex4hvNV :: Ptr GLushort -> IO ()
glVertex4hvNV = dyn_glVertex4hvNV ptr_glVertex4hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex4hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertex4hNV #-}
 
ptr_glVertex4hNV :: FunPtr a
ptr_glVertex4hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertex4hNV"
 
glVertex4hNV ::
             GLushort -> GLushort -> GLushort -> GLushort -> IO ()
glVertex4hNV = dyn_glVertex4hNV ptr_glVertex4hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex4hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glVertex3hvNV #-}
 
ptr_glVertex3hvNV :: FunPtr a
ptr_glVertex3hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertex3hvNV"
 
glVertex3hvNV :: Ptr GLushort -> IO ()
glVertex3hvNV = dyn_glVertex3hvNV ptr_glVertex3hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex3hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertex3hNV #-}
 
ptr_glVertex3hNV :: FunPtr a
ptr_glVertex3hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertex3hNV"
 
glVertex3hNV :: GLushort -> GLushort -> GLushort -> IO ()
glVertex3hNV = dyn_glVertex3hNV ptr_glVertex3hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex3hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glVertex2hvNV #-}
 
ptr_glVertex2hvNV :: FunPtr a
ptr_glVertex2hvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertex2hvNV"
 
glVertex2hvNV :: Ptr GLushort -> IO ()
glVertex2hvNV = dyn_glVertex2hvNV ptr_glVertex2hvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex2hvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertex2hNV #-}
 
ptr_glVertex2hNV :: FunPtr a
ptr_glVertex2hNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_half_float"
        "glVertex2hNV"
 
glVertex2hNV :: GLushort -> GLushort -> IO ()
glVertex2hNV = dyn_glVertex2hNV ptr_glVertex2hNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertex2hNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> IO ())
 
gl_HALF_FLOAT_NV :: GLenum
gl_HALF_FLOAT_NV = 5131