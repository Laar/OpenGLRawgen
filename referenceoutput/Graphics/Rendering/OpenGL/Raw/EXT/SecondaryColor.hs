{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.SecondaryColor
       (glSecondaryColorPointerEXT, glSecondaryColor3usvEXT,
        glSecondaryColor3usEXT, glSecondaryColor3uivEXT,
        glSecondaryColor3uiEXT, glSecondaryColor3ubvEXT,
        glSecondaryColor3ubEXT, glSecondaryColor3svEXT,
        glSecondaryColor3sEXT, glSecondaryColor3ivEXT,
        glSecondaryColor3iEXT, glSecondaryColor3fvEXT,
        glSecondaryColor3fEXT, glSecondaryColor3dvEXT,
        glSecondaryColor3dEXT, glSecondaryColor3bvEXT,
        glSecondaryColor3bEXT, gl_SECONDARY_COLOR_ARRAY_TYPE_EXT,
        gl_SECONDARY_COLOR_ARRAY_STRIDE_EXT,
        gl_SECONDARY_COLOR_ARRAY_SIZE_EXT,
        gl_SECONDARY_COLOR_ARRAY_POINTER_EXT, gl_SECONDARY_COLOR_ARRAY_EXT,
        gl_CURRENT_SECONDARY_COLOR_EXT, gl_COLOR_SUM_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSecondaryColorPointerEXT #-}
 
ptr_glSecondaryColorPointerEXT :: FunPtr a
ptr_glSecondaryColorPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColorPointerEXT"
 
glSecondaryColorPointerEXT ::
                           GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glSecondaryColorPointerEXT
  = dyn_glSecondaryColorPointerEXT ptr_glSecondaryColorPointerEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glSecondaryColorPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3usvEXT #-}
 
ptr_glSecondaryColor3usvEXT :: FunPtr a
ptr_glSecondaryColor3usvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3usvEXT"
 
glSecondaryColor3usvEXT :: Ptr GLushort -> IO ()
glSecondaryColor3usvEXT
  = dyn_glSecondaryColor3usvEXT ptr_glSecondaryColor3usvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3usvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3usEXT #-}
 
ptr_glSecondaryColor3usEXT :: FunPtr a
ptr_glSecondaryColor3usEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3usEXT"
 
glSecondaryColor3usEXT :: GLushort -> GLushort -> GLushort -> IO ()
glSecondaryColor3usEXT
  = dyn_glSecondaryColor3usEXT ptr_glSecondaryColor3usEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3usEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLushort -> GLushort -> GLushort -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3uivEXT #-}
 
ptr_glSecondaryColor3uivEXT :: FunPtr a
ptr_glSecondaryColor3uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3uivEXT"
 
glSecondaryColor3uivEXT :: Ptr GLuint -> IO ()
glSecondaryColor3uivEXT
  = dyn_glSecondaryColor3uivEXT ptr_glSecondaryColor3uivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3uivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3uiEXT #-}
 
ptr_glSecondaryColor3uiEXT :: FunPtr a
ptr_glSecondaryColor3uiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3uiEXT"
 
glSecondaryColor3uiEXT :: GLuint -> GLuint -> GLuint -> IO ()
glSecondaryColor3uiEXT
  = dyn_glSecondaryColor3uiEXT ptr_glSecondaryColor3uiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3uiEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3ubvEXT #-}
 
ptr_glSecondaryColor3ubvEXT :: FunPtr a
ptr_glSecondaryColor3ubvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3ubvEXT"
 
glSecondaryColor3ubvEXT :: Ptr GLubyte -> IO ()
glSecondaryColor3ubvEXT
  = dyn_glSecondaryColor3ubvEXT ptr_glSecondaryColor3ubvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3ubvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3ubEXT #-}
 
ptr_glSecondaryColor3ubEXT :: FunPtr a
ptr_glSecondaryColor3ubEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3ubEXT"
 
glSecondaryColor3ubEXT :: GLubyte -> GLubyte -> GLubyte -> IO ()
glSecondaryColor3ubEXT
  = dyn_glSecondaryColor3ubEXT ptr_glSecondaryColor3ubEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3ubEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLubyte -> GLubyte -> GLubyte -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3svEXT #-}
 
ptr_glSecondaryColor3svEXT :: FunPtr a
ptr_glSecondaryColor3svEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3svEXT"
 
glSecondaryColor3svEXT :: Ptr GLshort -> IO ()
glSecondaryColor3svEXT
  = dyn_glSecondaryColor3svEXT ptr_glSecondaryColor3svEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3svEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3sEXT #-}
 
ptr_glSecondaryColor3sEXT :: FunPtr a
ptr_glSecondaryColor3sEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3sEXT"
 
glSecondaryColor3sEXT :: GLshort -> GLshort -> GLshort -> IO ()
glSecondaryColor3sEXT
  = dyn_glSecondaryColor3sEXT ptr_glSecondaryColor3sEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3sEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3ivEXT #-}
 
ptr_glSecondaryColor3ivEXT :: FunPtr a
ptr_glSecondaryColor3ivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3ivEXT"
 
glSecondaryColor3ivEXT :: Ptr GLint -> IO ()
glSecondaryColor3ivEXT
  = dyn_glSecondaryColor3ivEXT ptr_glSecondaryColor3ivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3ivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3iEXT #-}
 
ptr_glSecondaryColor3iEXT :: FunPtr a
ptr_glSecondaryColor3iEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3iEXT"
 
glSecondaryColor3iEXT :: GLint -> GLint -> GLint -> IO ()
glSecondaryColor3iEXT
  = dyn_glSecondaryColor3iEXT ptr_glSecondaryColor3iEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3iEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3fvEXT #-}
 
ptr_glSecondaryColor3fvEXT :: FunPtr a
ptr_glSecondaryColor3fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3fvEXT"
 
glSecondaryColor3fvEXT :: Ptr GLfloat -> IO ()
glSecondaryColor3fvEXT
  = dyn_glSecondaryColor3fvEXT ptr_glSecondaryColor3fvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3fvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3fEXT #-}
 
ptr_glSecondaryColor3fEXT :: FunPtr a
ptr_glSecondaryColor3fEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3fEXT"
 
glSecondaryColor3fEXT :: GLfloat -> GLfloat -> GLfloat -> IO ()
glSecondaryColor3fEXT
  = dyn_glSecondaryColor3fEXT ptr_glSecondaryColor3fEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3fEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3dvEXT #-}
 
ptr_glSecondaryColor3dvEXT :: FunPtr a
ptr_glSecondaryColor3dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3dvEXT"
 
glSecondaryColor3dvEXT :: Ptr GLdouble -> IO ()
glSecondaryColor3dvEXT
  = dyn_glSecondaryColor3dvEXT ptr_glSecondaryColor3dvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3dvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3dEXT #-}
 
ptr_glSecondaryColor3dEXT :: FunPtr a
ptr_glSecondaryColor3dEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3dEXT"
 
glSecondaryColor3dEXT :: GLdouble -> GLdouble -> GLdouble -> IO ()
glSecondaryColor3dEXT
  = dyn_glSecondaryColor3dEXT ptr_glSecondaryColor3dEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3dEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3bvEXT #-}
 
ptr_glSecondaryColor3bvEXT :: FunPtr a
ptr_glSecondaryColor3bvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3bvEXT"
 
glSecondaryColor3bvEXT :: Ptr GLbyte -> IO ()
glSecondaryColor3bvEXT
  = dyn_glSecondaryColor3bvEXT ptr_glSecondaryColor3bvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3bvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glSecondaryColor3bEXT #-}
 
ptr_glSecondaryColor3bEXT :: FunPtr a
ptr_glSecondaryColor3bEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_secondary_color"
        "glSecondaryColor3bEXT"
 
glSecondaryColor3bEXT :: GLbyte -> GLbyte -> GLbyte -> IO ()
glSecondaryColor3bEXT
  = dyn_glSecondaryColor3bEXT ptr_glSecondaryColor3bEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColor3bEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbyte -> GLbyte -> GLbyte -> IO ())
 
gl_SECONDARY_COLOR_ARRAY_TYPE_EXT :: GLenum
gl_SECONDARY_COLOR_ARRAY_TYPE_EXT = 33883
 
gl_SECONDARY_COLOR_ARRAY_STRIDE_EXT :: GLenum
gl_SECONDARY_COLOR_ARRAY_STRIDE_EXT = 33884
 
gl_SECONDARY_COLOR_ARRAY_SIZE_EXT :: GLenum
gl_SECONDARY_COLOR_ARRAY_SIZE_EXT = 33882
 
gl_SECONDARY_COLOR_ARRAY_POINTER_EXT :: GLenum
gl_SECONDARY_COLOR_ARRAY_POINTER_EXT = 33885
 
gl_SECONDARY_COLOR_ARRAY_EXT :: GLenum
gl_SECONDARY_COLOR_ARRAY_EXT = 33886
 
gl_CURRENT_SECONDARY_COLOR_EXT :: GLenum
gl_CURRENT_SECONDARY_COLOR_EXT = 33881
 
gl_COLOR_SUM_EXT :: GLenum
gl_COLOR_SUM_EXT = 33880