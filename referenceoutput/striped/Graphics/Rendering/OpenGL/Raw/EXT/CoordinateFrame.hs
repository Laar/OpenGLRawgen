{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.CoordinateFrame
       (glTangentPointer, glTangent3sv, glTangent3s, glTangent3iv,
        glTangent3i, glTangent3fv, glTangent3f, glTangent3dv, glTangent3d,
        glTangent3bv, glTangent3b, glBinormalPointer, glBinormal3sv,
        glBinormal3s, glBinormal3iv, glBinormal3i, glBinormal3fv,
        glBinormal3f, glBinormal3dv, glBinormal3d, glBinormal3bv,
        glBinormal3b, gl_TANGENT_ARRAY_TYPE, gl_TANGENT_ARRAY_STRIDE,
        gl_TANGENT_ARRAY_POINTER, gl_TANGENT_ARRAY, gl_MAP2_TANGENT,
        gl_MAP2_BINORMAL, gl_MAP1_TANGENT, gl_MAP1_BINORMAL,
        gl_CURRENT_TANGENT, gl_CURRENT_BINORMAL, gl_BINORMAL_ARRAY_TYPE,
        gl_BINORMAL_ARRAY_STRIDE, gl_BINORMAL_ARRAY_POINTER,
        gl_BINORMAL_ARRAY)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTangentPointer #-}
 
ptr_glTangentPointer :: FunPtr a
ptr_glTangentPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangentPointerEXT"
 
glTangentPointer :: GLenum -> GLsizei -> Ptr a -> IO ()
glTangentPointer = dyn_glTangentPointer ptr_glTangentPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangentPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTangent3sv #-}
 
ptr_glTangent3sv :: FunPtr a
ptr_glTangent3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3svEXT"
 
glTangent3sv :: Ptr GLshort -> IO ()
glTangent3sv = dyn_glTangent3sv ptr_glTangent3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glTangent3s #-}
 
ptr_glTangent3s :: FunPtr a
ptr_glTangent3s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3sEXT"
 
glTangent3s :: GLshort -> GLshort -> GLshort -> IO ()
glTangent3s = dyn_glTangent3s ptr_glTangent3s
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glTangent3iv #-}
 
ptr_glTangent3iv :: FunPtr a
ptr_glTangent3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3ivEXT"
 
glTangent3iv :: Ptr GLint -> IO ()
glTangent3iv = dyn_glTangent3iv ptr_glTangent3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTangent3i #-}
 
ptr_glTangent3i :: FunPtr a
ptr_glTangent3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3iEXT"
 
glTangent3i :: GLint -> GLint -> GLint -> IO ()
glTangent3i = dyn_glTangent3i ptr_glTangent3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glTangent3fv #-}
 
ptr_glTangent3fv :: FunPtr a
ptr_glTangent3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3fvEXT"
 
glTangent3fv :: Ptr GLfloat -> IO ()
glTangent3fv = dyn_glTangent3fv ptr_glTangent3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glTangent3f #-}
 
ptr_glTangent3f :: FunPtr a
ptr_glTangent3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3fEXT"
 
glTangent3f :: GLfloat -> GLfloat -> GLfloat -> IO ()
glTangent3f = dyn_glTangent3f ptr_glTangent3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glTangent3dv #-}
 
ptr_glTangent3dv :: FunPtr a
ptr_glTangent3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3dvEXT"
 
glTangent3dv :: Ptr GLdouble -> IO ()
glTangent3dv = dyn_glTangent3dv ptr_glTangent3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glTangent3d #-}
 
ptr_glTangent3d :: FunPtr a
ptr_glTangent3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3dEXT"
 
glTangent3d :: GLdouble -> GLdouble -> GLdouble -> IO ()
glTangent3d = dyn_glTangent3d ptr_glTangent3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glTangent3bv #-}
 
ptr_glTangent3bv :: FunPtr a
ptr_glTangent3bv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3bvEXT"
 
glTangent3bv :: Ptr GLbyte -> IO ()
glTangent3bv = dyn_glTangent3bv ptr_glTangent3bv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3bv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glTangent3b #-}
 
ptr_glTangent3b :: FunPtr a
ptr_glTangent3b
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glTangent3bEXT"
 
glTangent3b :: GLbyte -> GLbyte -> GLbyte -> IO ()
glTangent3b = dyn_glTangent3b ptr_glTangent3b
 
foreign import CALLCONV unsafe "dynamic" dyn_glTangent3b ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbyte -> GLbyte -> GLbyte -> IO ())
 
{-# NOINLINE ptr_glBinormalPointer #-}
 
ptr_glBinormalPointer :: FunPtr a
ptr_glBinormalPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormalPointerEXT"
 
glBinormalPointer :: GLenum -> GLsizei -> Ptr a -> IO ()
glBinormalPointer = dyn_glBinormalPointer ptr_glBinormalPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormalPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glBinormal3sv #-}
 
ptr_glBinormal3sv :: FunPtr a
ptr_glBinormal3sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3svEXT"
 
glBinormal3sv :: Ptr GLshort -> IO ()
glBinormal3sv = dyn_glBinormal3sv ptr_glBinormal3sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glBinormal3s #-}
 
ptr_glBinormal3s :: FunPtr a
ptr_glBinormal3s
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3sEXT"
 
glBinormal3s :: GLshort -> GLshort -> GLshort -> IO ()
glBinormal3s = dyn_glBinormal3s ptr_glBinormal3s
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3s ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLshort -> GLshort -> GLshort -> IO ())
 
{-# NOINLINE ptr_glBinormal3iv #-}
 
ptr_glBinormal3iv :: FunPtr a
ptr_glBinormal3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3ivEXT"
 
glBinormal3iv :: Ptr GLint -> IO ()
glBinormal3iv = dyn_glBinormal3iv ptr_glBinormal3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glBinormal3i #-}
 
ptr_glBinormal3i :: FunPtr a
ptr_glBinormal3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3iEXT"
 
glBinormal3i :: GLint -> GLint -> GLint -> IO ()
glBinormal3i = dyn_glBinormal3i ptr_glBinormal3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glBinormal3fv #-}
 
ptr_glBinormal3fv :: FunPtr a
ptr_glBinormal3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3fvEXT"
 
glBinormal3fv :: Ptr GLfloat -> IO ()
glBinormal3fv = dyn_glBinormal3fv ptr_glBinormal3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glBinormal3f #-}
 
ptr_glBinormal3f :: FunPtr a
ptr_glBinormal3f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3fEXT"
 
glBinormal3f :: GLfloat -> GLfloat -> GLfloat -> IO ()
glBinormal3f = dyn_glBinormal3f ptr_glBinormal3f
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glBinormal3dv #-}
 
ptr_glBinormal3dv :: FunPtr a
ptr_glBinormal3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3dvEXT"
 
glBinormal3dv :: Ptr GLdouble -> IO ()
glBinormal3dv = dyn_glBinormal3dv ptr_glBinormal3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glBinormal3d #-}
 
ptr_glBinormal3d :: FunPtr a
ptr_glBinormal3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3dEXT"
 
glBinormal3d :: GLdouble -> GLdouble -> GLdouble -> IO ()
glBinormal3d = dyn_glBinormal3d ptr_glBinormal3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glBinormal3bv #-}
 
ptr_glBinormal3bv :: FunPtr a
ptr_glBinormal3bv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3bvEXT"
 
glBinormal3bv :: Ptr GLbyte -> IO ()
glBinormal3bv = dyn_glBinormal3bv ptr_glBinormal3bv
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3bv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glBinormal3b #-}
 
ptr_glBinormal3b :: FunPtr a
ptr_glBinormal3b
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_coordinate_frame"
        "glBinormal3bEXT"
 
glBinormal3b :: GLbyte -> GLbyte -> GLbyte -> IO ()
glBinormal3b = dyn_glBinormal3b ptr_glBinormal3b
 
foreign import CALLCONV unsafe "dynamic" dyn_glBinormal3b ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbyte -> GLbyte -> GLbyte -> IO ())
 
gl_TANGENT_ARRAY_TYPE :: GLenum
gl_TANGENT_ARRAY_TYPE = 33854
 
gl_TANGENT_ARRAY_STRIDE :: GLenum
gl_TANGENT_ARRAY_STRIDE = 33855
 
gl_TANGENT_ARRAY_POINTER :: GLenum
gl_TANGENT_ARRAY_POINTER = 33858
 
gl_TANGENT_ARRAY :: GLenum
gl_TANGENT_ARRAY = 33849
 
gl_MAP2_TANGENT :: GLenum
gl_MAP2_TANGENT = 33861
 
gl_MAP2_BINORMAL :: GLenum
gl_MAP2_BINORMAL = 33863
 
gl_MAP1_TANGENT :: GLenum
gl_MAP1_TANGENT = 33860
 
gl_MAP1_BINORMAL :: GLenum
gl_MAP1_BINORMAL = 33862
 
gl_CURRENT_TANGENT :: GLenum
gl_CURRENT_TANGENT = 33851
 
gl_CURRENT_BINORMAL :: GLenum
gl_CURRENT_BINORMAL = 33852
 
gl_BINORMAL_ARRAY_TYPE :: GLenum
gl_BINORMAL_ARRAY_TYPE = 33856
 
gl_BINORMAL_ARRAY_STRIDE :: GLenum
gl_BINORMAL_ARRAY_STRIDE = 33857
 
gl_BINORMAL_ARRAY_POINTER :: GLenum
gl_BINORMAL_ARRAY_POINTER = 33859
 
gl_BINORMAL_ARRAY :: GLenum
gl_BINORMAL_ARRAY = 33850