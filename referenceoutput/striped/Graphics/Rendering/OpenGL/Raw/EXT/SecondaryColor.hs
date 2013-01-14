{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.SecondaryColor
       (glSecondaryColorPointer, glSecondaryColor3usv,
        glSecondaryColor3us, glSecondaryColor3uiv, glSecondaryColor3ui,
        glSecondaryColor3ubv, glSecondaryColor3ub, glSecondaryColor3sv,
        glSecondaryColor3s, glSecondaryColor3iv, glSecondaryColor3i,
        glSecondaryColor3fv, glSecondaryColor3f, glSecondaryColor3dv,
        glSecondaryColor3d, glSecondaryColor3bv, glSecondaryColor3b,
        gl_SECONDARY_COLOR_ARRAY_TYPE, gl_SECONDARY_COLOR_ARRAY_STRIDE,
        gl_SECONDARY_COLOR_ARRAY_SIZE, gl_SECONDARY_COLOR_ARRAY_POINTER,
        gl_SECONDARY_COLOR_ARRAY, gl_CURRENT_SECONDARY_COLOR, gl_COLOR_SUM)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSecondaryColorPointer #-}
 
ptr_glSecondaryColorPointer :: FunPtr a
ptr_glSecondaryColorPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColorPointerEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3usvEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3usEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3uivEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3uiEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3ubvEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3ubEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3svEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3sEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3ivEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3iEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3fvEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3fEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3dvEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3dEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3bvEXT"
 
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
        "GL_EXT_secondary_color"
        "glSecondaryColor3bEXT"
 
glSecondaryColor3b :: GLbyte -> GLbyte -> GLbyte -> IO ()
glSecondaryColor3b = dyn_glSecondaryColor3b ptr_glSecondaryColor3b
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3b ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbyte -> GLbyte -> GLbyte -> IO ())
 
gl_SECONDARY_COLOR_ARRAY_TYPE :: GLenum
gl_SECONDARY_COLOR_ARRAY_TYPE = 33883
 
gl_SECONDARY_COLOR_ARRAY_STRIDE :: GLenum
gl_SECONDARY_COLOR_ARRAY_STRIDE = 33884
 
gl_SECONDARY_COLOR_ARRAY_SIZE :: GLenum
gl_SECONDARY_COLOR_ARRAY_SIZE = 33882
 
gl_SECONDARY_COLOR_ARRAY_POINTER :: GLenum
gl_SECONDARY_COLOR_ARRAY_POINTER = 33885
 
gl_SECONDARY_COLOR_ARRAY :: GLenum
gl_SECONDARY_COLOR_ARRAY = 33886
 
gl_CURRENT_SECONDARY_COLOR :: GLenum
gl_CURRENT_SECONDARY_COLOR = 33881
 
gl_COLOR_SUM :: GLenum
gl_COLOR_SUM = 33880