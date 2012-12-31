{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.CoordinateFrame
       (glTangentPointerEXT, glTangent3svEXT, glTangent3sEXT,
        glTangent3ivEXT, glTangent3iEXT, glTangent3fvEXT, glTangent3fEXT,
        glTangent3dvEXT, glTangent3dEXT, glTangent3bvEXT, glTangent3bEXT,
        glBinormalPointerEXT, glBinormal3svEXT, glBinormal3sEXT,
        glBinormal3ivEXT, glBinormal3iEXT, glBinormal3fvEXT,
        glBinormal3fEXT, glBinormal3dvEXT, glBinormal3dEXT,
        glBinormal3bvEXT, glBinormal3bEXT, gl_TANGENT_ARRAY_TYPE_EXT,
        gl_TANGENT_ARRAY_STRIDE_EXT, gl_TANGENT_ARRAY_POINTER_EXT,
        gl_TANGENT_ARRAY_EXT, gl_MAP2_TANGENT_EXT, gl_MAP2_BINORMAL_EXT,
        gl_MAP1_TANGENT_EXT, gl_MAP1_BINORMAL_EXT, gl_CURRENT_TANGENT_EXT,
        gl_CURRENT_BINORMAL_EXT, gl_BINORMAL_ARRAY_TYPE_EXT,
        gl_BINORMAL_ARRAY_STRIDE_EXT, gl_BINORMAL_ARRAY_POINTER_EXT,
        gl_BINORMAL_ARRAY_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTangentPointerEXT #-}
 
ptr_glTangentPointerEXT :: FunPtr a
ptr_glTangentPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangentPointerEXT"
 
glTangentPointerEXT :: GLenum -> GLsizei -> Ptr a -> IO ()
glTangentPointerEXT
  = dyn_glTangentPointerEXT ptr_glTangentPointerEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangentPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTangent3svEXT #-}
 
ptr_glTangent3svEXT :: FunPtr a
ptr_glTangent3svEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3svEXT"
 
glTangent3svEXT :: Ptr GLshort -> IO ()
glTangent3svEXT = dyn_glTangent3svEXT ptr_glTangent3svEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3svEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glTangent3sEXT #-}
 
ptr_glTangent3sEXT :: FunPtr a
ptr_glTangent3sEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3sEXT"
 
glTangent3sEXT :: GLshort -> GLshort -> GLshort -> IO ()
glTangent3sEXT = dyn_glTangent3sEXT ptr_glTangent3sEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3sEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glTangent3ivEXT #-}
 
ptr_glTangent3ivEXT :: FunPtr a
ptr_glTangent3ivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3ivEXT"
 
glTangent3ivEXT :: Ptr GLint -> IO ()
glTangent3ivEXT = dyn_glTangent3ivEXT ptr_glTangent3ivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3ivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTangent3iEXT #-}
 
ptr_glTangent3iEXT :: FunPtr a
ptr_glTangent3iEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3iEXT"
 
glTangent3iEXT :: GLint -> GLint -> GLint -> IO ()
glTangent3iEXT = dyn_glTangent3iEXT ptr_glTangent3iEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3iEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glTangent3fvEXT #-}
 
ptr_glTangent3fvEXT :: FunPtr a
ptr_glTangent3fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3fvEXT"
 
glTangent3fvEXT :: Ptr GLfloat -> IO ()
glTangent3fvEXT = dyn_glTangent3fvEXT ptr_glTangent3fvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glTangent3fEXT #-}
 
ptr_glTangent3fEXT :: FunPtr a
ptr_glTangent3fEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3fEXT"
 
glTangent3fEXT :: GLfloat -> GLfloat -> GLfloat -> IO ()
glTangent3fEXT = dyn_glTangent3fEXT ptr_glTangent3fEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3fEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glTangent3dvEXT #-}
 
ptr_glTangent3dvEXT :: FunPtr a
ptr_glTangent3dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3dvEXT"
 
glTangent3dvEXT :: Ptr GLdouble -> IO ()
glTangent3dvEXT = dyn_glTangent3dvEXT ptr_glTangent3dvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3dvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glTangent3dEXT #-}
 
ptr_glTangent3dEXT :: FunPtr a
ptr_glTangent3dEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3dEXT"
 
glTangent3dEXT :: GLdouble -> GLdouble -> GLdouble -> IO ()
glTangent3dEXT = dyn_glTangent3dEXT ptr_glTangent3dEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3dEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glTangent3bvEXT #-}
 
ptr_glTangent3bvEXT :: FunPtr a
ptr_glTangent3bvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3bvEXT"
 
glTangent3bvEXT :: Ptr GLbyte -> IO ()
glTangent3bvEXT = dyn_glTangent3bvEXT ptr_glTangent3bvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3bvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glTangent3bEXT #-}
 
ptr_glTangent3bEXT :: FunPtr a
ptr_glTangent3bEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3bEXT"
 
glTangent3bEXT :: GLbyte -> GLbyte -> GLbyte -> IO ()
glTangent3bEXT = dyn_glTangent3bEXT ptr_glTangent3bEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3bEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbyte -> GLbyte -> GLbyte -> IO ())
 
{-# NOINLINE ptr_glBinormalPointerEXT #-}
 
ptr_glBinormalPointerEXT :: FunPtr a
ptr_glBinormalPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormalPointerEXT"
 
glBinormalPointerEXT :: GLenum -> GLsizei -> Ptr a -> IO ()
glBinormalPointerEXT
  = dyn_glBinormalPointerEXT ptr_glBinormalPointerEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormalPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glBinormal3svEXT #-}
 
ptr_glBinormal3svEXT :: FunPtr a
ptr_glBinormal3svEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3svEXT"
 
glBinormal3svEXT :: Ptr GLshort -> IO ()
glBinormal3svEXT = dyn_glBinormal3svEXT ptr_glBinormal3svEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3svEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glBinormal3sEXT #-}
 
ptr_glBinormal3sEXT :: FunPtr a
ptr_glBinormal3sEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3sEXT"
 
glBinormal3sEXT :: GLshort -> GLshort -> GLshort -> IO ()
glBinormal3sEXT = dyn_glBinormal3sEXT ptr_glBinormal3sEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3sEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glBinormal3ivEXT #-}
 
ptr_glBinormal3ivEXT :: FunPtr a
ptr_glBinormal3ivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3ivEXT"
 
glBinormal3ivEXT :: Ptr GLint -> IO ()
glBinormal3ivEXT = dyn_glBinormal3ivEXT ptr_glBinormal3ivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3ivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glBinormal3iEXT #-}
 
ptr_glBinormal3iEXT :: FunPtr a
ptr_glBinormal3iEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3iEXT"
 
glBinormal3iEXT :: GLint -> GLint -> GLint -> IO ()
glBinormal3iEXT = dyn_glBinormal3iEXT ptr_glBinormal3iEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3iEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glBinormal3fvEXT #-}
 
ptr_glBinormal3fvEXT :: FunPtr a
ptr_glBinormal3fvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3fvEXT"
 
glBinormal3fvEXT :: Ptr GLfloat -> IO ()
glBinormal3fvEXT = dyn_glBinormal3fvEXT ptr_glBinormal3fvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3fvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glBinormal3fEXT #-}
 
ptr_glBinormal3fEXT :: FunPtr a
ptr_glBinormal3fEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3fEXT"
 
glBinormal3fEXT :: GLfloat -> GLfloat -> GLfloat -> IO ()
glBinormal3fEXT = dyn_glBinormal3fEXT ptr_glBinormal3fEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3fEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glBinormal3dvEXT #-}
 
ptr_glBinormal3dvEXT :: FunPtr a
ptr_glBinormal3dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3dvEXT"
 
glBinormal3dvEXT :: Ptr GLdouble -> IO ()
glBinormal3dvEXT = dyn_glBinormal3dvEXT ptr_glBinormal3dvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3dvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glBinormal3dEXT #-}
 
ptr_glBinormal3dEXT :: FunPtr a
ptr_glBinormal3dEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3dEXT"
 
glBinormal3dEXT :: GLdouble -> GLdouble -> GLdouble -> IO ()
glBinormal3dEXT = dyn_glBinormal3dEXT ptr_glBinormal3dEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3dEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glBinormal3bvEXT #-}
 
ptr_glBinormal3bvEXT :: FunPtr a
ptr_glBinormal3bvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3bvEXT"
 
glBinormal3bvEXT :: Ptr GLbyte -> IO ()
glBinormal3bvEXT = dyn_glBinormal3bvEXT ptr_glBinormal3bvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3bvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glBinormal3bEXT #-}
 
ptr_glBinormal3bEXT :: FunPtr a
ptr_glBinormal3bEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3bEXT"
 
glBinormal3bEXT :: GLbyte -> GLbyte -> GLbyte -> IO ()
glBinormal3bEXT = dyn_glBinormal3bEXT ptr_glBinormal3bEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3bEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbyte -> GLbyte -> GLbyte -> IO ())
 
gl_TANGENT_ARRAY_TYPE_EXT :: GLenum
gl_TANGENT_ARRAY_TYPE_EXT = 33854
 
gl_TANGENT_ARRAY_STRIDE_EXT :: GLenum
gl_TANGENT_ARRAY_STRIDE_EXT = 33855
 
gl_TANGENT_ARRAY_POINTER_EXT :: GLenum
gl_TANGENT_ARRAY_POINTER_EXT = 33858
 
gl_TANGENT_ARRAY_EXT :: GLenum
gl_TANGENT_ARRAY_EXT = 33849
 
gl_MAP2_TANGENT_EXT :: GLenum
gl_MAP2_TANGENT_EXT = 33861
 
gl_MAP2_BINORMAL_EXT :: GLenum
gl_MAP2_BINORMAL_EXT = 33863
 
gl_MAP1_TANGENT_EXT :: GLenum
gl_MAP1_TANGENT_EXT = 33860
 
gl_MAP1_BINORMAL_EXT :: GLenum
gl_MAP1_BINORMAL_EXT = 33862
 
gl_CURRENT_TANGENT_EXT :: GLenum
gl_CURRENT_TANGENT_EXT = 33851
 
gl_CURRENT_BINORMAL_EXT :: GLenum
gl_CURRENT_BINORMAL_EXT = 33852
 
gl_BINORMAL_ARRAY_TYPE_EXT :: GLenum
gl_BINORMAL_ARRAY_TYPE_EXT = 33856
 
gl_BINORMAL_ARRAY_STRIDE_EXT :: GLenum
gl_BINORMAL_ARRAY_STRIDE_EXT = 33857
 
gl_BINORMAL_ARRAY_POINTER_EXT :: GLenum
gl_BINORMAL_ARRAY_POINTER_EXT = 33859
 
gl_BINORMAL_ARRAY_EXT :: GLenum
gl_BINORMAL_ARRAY_EXT = 33850