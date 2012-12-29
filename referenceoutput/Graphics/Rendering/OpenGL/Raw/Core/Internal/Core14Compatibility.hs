{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core14Compatibility
       (glWindowPos3sv, glWindowPos3s, glWindowPos3iv, glWindowPos3i,
        glWindowPos3fv, glWindowPos3f, glWindowPos3dv, glWindowPos3d,
        glWindowPos2sv, glWindowPos2s, glWindowPos2iv, glWindowPos2i,
        glWindowPos2fv, glWindowPos2f, glWindowPos2dv, glWindowPos2d,
        glSecondaryColorPointer, glSecondaryColor3usv, glSecondaryColor3us,
        glSecondaryColor3uiv, glSecondaryColor3ui, glSecondaryColor3ubv,
        glSecondaryColor3ub, glSecondaryColor3sv, glSecondaryColor3s,
        glSecondaryColor3iv, glSecondaryColor3i, glSecondaryColor3fv,
        glSecondaryColor3f, glSecondaryColor3dv, glSecondaryColor3d,
        glSecondaryColor3bv, glSecondaryColor3b, glFogCoordPointer,
        glFogCoorddv, glFogCoordd, glFogCoordfv, glFogCoordf,
        gl_COMPARE_R_TO_TEXTURE, gl_DEPTH_TEXTURE_MODE,
        gl_TEXTURE_FILTER_CONTROL, gl_SECONDARY_COLOR_ARRAY,
        gl_SECONDARY_COLOR_ARRAY_POINTER, gl_SECONDARY_COLOR_ARRAY_STRIDE,
        gl_SECONDARY_COLOR_ARRAY_TYPE, gl_SECONDARY_COLOR_ARRAY_SIZE,
        gl_CURRENT_SECONDARY_COLOR, gl_COLOR_SUM, gl_FOG_COORDINATE_ARRAY,
        gl_FOG_COORDINATE_ARRAY_POINTER, gl_FOG_COORDINATE_ARRAY_STRIDE,
        gl_FOG_COORDINATE_ARRAY_TYPE, gl_CURRENT_FOG_COORDINATE,
        gl_FRAGMENT_DEPTH, gl_FOG_COORDINATE, gl_FOG_COORDINATE_SOURCE,
        gl_GENERATE_MIPMAP_HINT, gl_GENERATE_MIPMAP,
        gl_POINT_DISTANCE_ATTENUATION, gl_POINT_SIZE_MAX,
        gl_POINT_SIZE_MIN)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glWindowPos3sv #-}
 
ptr_glWindowPos3sv :: FunPtr a
ptr_glWindowPos3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos3sv"
 
glWindowPos3sv :: Ptr GLshort -> IO ()
glWindowPos3sv = dyn_glWindowPos3sv ptr_glWindowPos3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glWindowPos3s #-}
 
ptr_glWindowPos3s :: FunPtr a
ptr_glWindowPos3s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos3s"
 
glWindowPos3s :: GLshort -> GLshort -> GLshort -> IO ()
glWindowPos3s = dyn_glWindowPos3s ptr_glWindowPos3s
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glWindowPos3iv #-}
 
ptr_glWindowPos3iv :: FunPtr a
ptr_glWindowPos3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos3iv"
 
glWindowPos3iv :: Ptr GLint -> IO ()
glWindowPos3iv = dyn_glWindowPos3iv ptr_glWindowPos3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glWindowPos3i #-}
 
ptr_glWindowPos3i :: FunPtr a
ptr_glWindowPos3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos3i"
 
glWindowPos3i :: GLint -> GLint -> GLint -> IO ()
glWindowPos3i = dyn_glWindowPos3i ptr_glWindowPos3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glWindowPos3fv #-}
 
ptr_glWindowPos3fv :: FunPtr a
ptr_glWindowPos3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos3fv"
 
glWindowPos3fv :: Ptr GLfloat -> IO ()
glWindowPos3fv = dyn_glWindowPos3fv ptr_glWindowPos3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glWindowPos3f #-}
 
ptr_glWindowPos3f :: FunPtr a
ptr_glWindowPos3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos3f"
 
glWindowPos3f :: GLfloat -> GLfloat -> GLfloat -> IO ()
glWindowPos3f = dyn_glWindowPos3f ptr_glWindowPos3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glWindowPos3dv #-}
 
ptr_glWindowPos3dv :: FunPtr a
ptr_glWindowPos3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos3dv"
 
glWindowPos3dv :: Ptr GLdouble -> IO ()
glWindowPos3dv = dyn_glWindowPos3dv ptr_glWindowPos3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glWindowPos3d #-}
 
ptr_glWindowPos3d :: FunPtr a
ptr_glWindowPos3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos3d"
 
glWindowPos3d :: GLdouble -> GLdouble -> GLdouble -> IO ()
glWindowPos3d = dyn_glWindowPos3d ptr_glWindowPos3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glWindowPos2sv #-}
 
ptr_glWindowPos2sv :: FunPtr a
ptr_glWindowPos2sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos2sv"
 
glWindowPos2sv :: Ptr GLshort -> IO ()
glWindowPos2sv = dyn_glWindowPos2sv ptr_glWindowPos2sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glWindowPos2s #-}
 
ptr_glWindowPos2s :: FunPtr a
ptr_glWindowPos2s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos2s"
 
glWindowPos2s :: GLshort -> GLshort -> IO ()
glWindowPos2s = dyn_glWindowPos2s ptr_glWindowPos2s
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glWindowPos2iv #-}
 
ptr_glWindowPos2iv :: FunPtr a
ptr_glWindowPos2iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos2iv"
 
glWindowPos2iv :: Ptr GLint -> IO ()
glWindowPos2iv = dyn_glWindowPos2iv ptr_glWindowPos2iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glWindowPos2i #-}
 
ptr_glWindowPos2i :: FunPtr a
ptr_glWindowPos2i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos2i"
 
glWindowPos2i :: GLint -> GLint -> IO ()
glWindowPos2i = dyn_glWindowPos2i ptr_glWindowPos2i
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glWindowPos2fv #-}
 
ptr_glWindowPos2fv :: FunPtr a
ptr_glWindowPos2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos2fv"
 
glWindowPos2fv :: Ptr GLfloat -> IO ()
glWindowPos2fv = dyn_glWindowPos2fv ptr_glWindowPos2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glWindowPos2f #-}
 
ptr_glWindowPos2f :: FunPtr a
ptr_glWindowPos2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos2f"
 
glWindowPos2f :: GLfloat -> GLfloat -> IO ()
glWindowPos2f = dyn_glWindowPos2f ptr_glWindowPos2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glWindowPos2dv #-}
 
ptr_glWindowPos2dv :: FunPtr a
ptr_glWindowPos2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos2dv"
 
glWindowPos2dv :: Ptr GLdouble -> IO ()
glWindowPos2dv = dyn_glWindowPos2dv ptr_glWindowPos2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glWindowPos2d #-}
 
ptr_glWindowPos2d :: FunPtr a
ptr_glWindowPos2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glWindowPos2d"
 
glWindowPos2d :: GLdouble -> GLdouble -> IO ()
glWindowPos2d = dyn_glWindowPos2d ptr_glWindowPos2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glWindowPos2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glSecondaryColorPointer #-}
 
ptr_glSecondaryColorPointer :: FunPtr a
ptr_glSecondaryColorPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColorPointer"
 
glSecondaryColorPointer ::
                        GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glSecondaryColorPointer
  = dyn_glSecondaryColorPointer ptr_glSecondaryColorPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColorPointer
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3usv #-}
 
ptr_glSecondaryColor3usv :: FunPtr a
ptr_glSecondaryColor3usv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3usv"
 
glSecondaryColor3usv :: Ptr GLushort -> IO ()
glSecondaryColor3usv
  = dyn_glSecondaryColor3usv ptr_glSecondaryColor3usv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3usv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3us #-}
 
ptr_glSecondaryColor3us :: FunPtr a
ptr_glSecondaryColor3us
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3us"
 
glSecondaryColor3us :: GLushort -> GLushort -> GLushort -> IO ()
glSecondaryColor3us
  = dyn_glSecondaryColor3us ptr_glSecondaryColor3us
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3us ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3uiv #-}
 
ptr_glSecondaryColor3uiv :: FunPtr a
ptr_glSecondaryColor3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3uiv"
 
glSecondaryColor3uiv :: Ptr GLuint -> IO ()
glSecondaryColor3uiv
  = dyn_glSecondaryColor3uiv ptr_glSecondaryColor3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3ui #-}
 
ptr_glSecondaryColor3ui :: FunPtr a
ptr_glSecondaryColor3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3ui"
 
glSecondaryColor3ui :: GLuint -> GLuint -> GLuint -> IO ()
glSecondaryColor3ui
  = dyn_glSecondaryColor3ui ptr_glSecondaryColor3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3ubv #-}
 
ptr_glSecondaryColor3ubv :: FunPtr a
ptr_glSecondaryColor3ubv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3ubv"
 
glSecondaryColor3ubv :: Ptr GLubyte -> IO ()
glSecondaryColor3ubv
  = dyn_glSecondaryColor3ubv ptr_glSecondaryColor3ubv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3ubv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3ub #-}
 
ptr_glSecondaryColor3ub :: FunPtr a
ptr_glSecondaryColor3ub
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3ub"
 
glSecondaryColor3ub :: GLubyte -> GLubyte -> GLubyte -> IO ()
glSecondaryColor3ub
  = dyn_glSecondaryColor3ub ptr_glSecondaryColor3ub
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3ub ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLubyte -> GLubyte -> GLubyte -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3sv #-}
 
ptr_glSecondaryColor3sv :: FunPtr a
ptr_glSecondaryColor3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3sv"
 
glSecondaryColor3sv :: Ptr GLshort -> IO ()
glSecondaryColor3sv
  = dyn_glSecondaryColor3sv ptr_glSecondaryColor3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3s #-}
 
ptr_glSecondaryColor3s :: FunPtr a
ptr_glSecondaryColor3s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3s"
 
glSecondaryColor3s :: GLshort -> GLshort -> GLshort -> IO ()
glSecondaryColor3s = dyn_glSecondaryColor3s ptr_glSecondaryColor3s
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3iv #-}
 
ptr_glSecondaryColor3iv :: FunPtr a
ptr_glSecondaryColor3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3iv"
 
glSecondaryColor3iv :: Ptr GLint -> IO ()
glSecondaryColor3iv
  = dyn_glSecondaryColor3iv ptr_glSecondaryColor3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3i #-}
 
ptr_glSecondaryColor3i :: FunPtr a
ptr_glSecondaryColor3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3i"
 
glSecondaryColor3i :: GLint -> GLint -> GLint -> IO ()
glSecondaryColor3i = dyn_glSecondaryColor3i ptr_glSecondaryColor3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3fv #-}
 
ptr_glSecondaryColor3fv :: FunPtr a
ptr_glSecondaryColor3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3fv"
 
glSecondaryColor3fv :: Ptr GLfloat -> IO ()
glSecondaryColor3fv
  = dyn_glSecondaryColor3fv ptr_glSecondaryColor3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3f #-}
 
ptr_glSecondaryColor3f :: FunPtr a
ptr_glSecondaryColor3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3f"
 
glSecondaryColor3f :: GLfloat -> GLfloat -> GLfloat -> IO ()
glSecondaryColor3f = dyn_glSecondaryColor3f ptr_glSecondaryColor3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3dv #-}
 
ptr_glSecondaryColor3dv :: FunPtr a
ptr_glSecondaryColor3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3dv"
 
glSecondaryColor3dv :: Ptr GLdouble -> IO ()
glSecondaryColor3dv
  = dyn_glSecondaryColor3dv ptr_glSecondaryColor3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3d #-}
 
ptr_glSecondaryColor3d :: FunPtr a
ptr_glSecondaryColor3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3d"
 
glSecondaryColor3d :: GLdouble -> GLdouble -> GLdouble -> IO ()
glSecondaryColor3d = dyn_glSecondaryColor3d ptr_glSecondaryColor3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3bv #-}
 
ptr_glSecondaryColor3bv :: FunPtr a
ptr_glSecondaryColor3bv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3bv"
 
glSecondaryColor3bv :: Ptr GLbyte -> IO ()
glSecondaryColor3bv
  = dyn_glSecondaryColor3bv ptr_glSecondaryColor3bv
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3bv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3b #-}
 
ptr_glSecondaryColor3b :: FunPtr a
ptr_glSecondaryColor3b
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glSecondaryColor3b"
 
glSecondaryColor3b :: GLbyte -> GLbyte -> GLbyte -> IO ()
glSecondaryColor3b = dyn_glSecondaryColor3b ptr_glSecondaryColor3b
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3b ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbyte -> GLbyte -> GLbyte -> IO ())
 
{-# NOINLINE ptr_glFogCoordPointer #-}
 
ptr_glFogCoordPointer :: FunPtr a
ptr_glFogCoordPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glFogCoordPointer"
 
glFogCoordPointer :: GLenum -> GLsizei -> Ptr a -> IO ()
glFogCoordPointer = dyn_glFogCoordPointer ptr_glFogCoordPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glFogCoorddv #-}
 
ptr_glFogCoorddv :: FunPtr a
ptr_glFogCoorddv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glFogCoorddv"
 
glFogCoorddv :: Ptr GLdouble -> IO ()
glFogCoorddv = dyn_glFogCoorddv ptr_glFogCoorddv
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoorddv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glFogCoordd #-}
 
ptr_glFogCoordd :: FunPtr a
ptr_glFogCoordd
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glFogCoordd"
 
glFogCoordd :: GLdouble -> IO ()
glFogCoordd = dyn_glFogCoordd ptr_glFogCoordd
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordd ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> IO ())
 
{-# NOINLINE ptr_glFogCoordfv #-}
 
ptr_glFogCoordfv :: FunPtr a
ptr_glFogCoordfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glFogCoordfv"
 
glFogCoordfv :: Ptr GLfloat -> IO ()
glFogCoordfv = dyn_glFogCoordfv ptr_glFogCoordfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glFogCoordf #-}
 
ptr_glFogCoordf :: FunPtr a
ptr_glFogCoordf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4_DEPRECATED"
        "glFogCoordf"
 
glFogCoordf :: GLfloat -> IO ()
glFogCoordf = dyn_glFogCoordf ptr_glFogCoordf
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
gl_COMPARE_R_TO_TEXTURE :: GLenum
gl_COMPARE_R_TO_TEXTURE = 34894
 
gl_DEPTH_TEXTURE_MODE :: GLenum
gl_DEPTH_TEXTURE_MODE = 34891
 
gl_TEXTURE_FILTER_CONTROL :: GLenum
gl_TEXTURE_FILTER_CONTROL = 34048
 
gl_SECONDARY_COLOR_ARRAY :: GLenum
gl_SECONDARY_COLOR_ARRAY = 33886
 
gl_SECONDARY_COLOR_ARRAY_POINTER :: GLenum
gl_SECONDARY_COLOR_ARRAY_POINTER = 33885
 
gl_SECONDARY_COLOR_ARRAY_STRIDE :: GLenum
gl_SECONDARY_COLOR_ARRAY_STRIDE = 33884
 
gl_SECONDARY_COLOR_ARRAY_TYPE :: GLenum
gl_SECONDARY_COLOR_ARRAY_TYPE = 33883
 
gl_SECONDARY_COLOR_ARRAY_SIZE :: GLenum
gl_SECONDARY_COLOR_ARRAY_SIZE = 33882
 
gl_CURRENT_SECONDARY_COLOR :: GLenum
gl_CURRENT_SECONDARY_COLOR = 33881
 
gl_COLOR_SUM :: GLenum
gl_COLOR_SUM = 33880
 
gl_FOG_COORDINATE_ARRAY :: GLenum
gl_FOG_COORDINATE_ARRAY = 33879
 
gl_FOG_COORDINATE_ARRAY_POINTER :: GLenum
gl_FOG_COORDINATE_ARRAY_POINTER = 33878
 
gl_FOG_COORDINATE_ARRAY_STRIDE :: GLenum
gl_FOG_COORDINATE_ARRAY_STRIDE = 33877
 
gl_FOG_COORDINATE_ARRAY_TYPE :: GLenum
gl_FOG_COORDINATE_ARRAY_TYPE = 33876
 
gl_CURRENT_FOG_COORDINATE :: GLenum
gl_CURRENT_FOG_COORDINATE = 33875
 
gl_FRAGMENT_DEPTH :: GLenum
gl_FRAGMENT_DEPTH = 33874
 
gl_FOG_COORDINATE :: GLenum
gl_FOG_COORDINATE = 33873
 
gl_FOG_COORDINATE_SOURCE :: GLenum
gl_FOG_COORDINATE_SOURCE = 33872
 
gl_GENERATE_MIPMAP_HINT :: GLenum
gl_GENERATE_MIPMAP_HINT = 33170
 
gl_GENERATE_MIPMAP :: GLenum
gl_GENERATE_MIPMAP = 33169
 
gl_POINT_DISTANCE_ATTENUATION :: GLenum
gl_POINT_DISTANCE_ATTENUATION = 33065
 
gl_POINT_SIZE_MAX :: GLenum
gl_POINT_SIZE_MAX = 33063
 
gl_POINT_SIZE_MIN :: GLenum
gl_POINT_SIZE_MIN = 33062