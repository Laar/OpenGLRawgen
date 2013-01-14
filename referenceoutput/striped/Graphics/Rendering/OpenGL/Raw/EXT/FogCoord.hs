{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.FogCoord
       (glFogCoordfv, glFogCoordf, glFogCoorddv, glFogCoordd,
        glFogCoordPointer, gl_FRAGMENT_DEPTH, gl_FOG_COORDINATE_SOURCE,
        gl_FOG_COORDINATE, gl_FOG_COORDINATE_ARRAY_TYPE,
        gl_FOG_COORDINATE_ARRAY_STRIDE, gl_FOG_COORDINATE_ARRAY_POINTER,
        gl_FOG_COORDINATE_ARRAY, gl_CURRENT_FOG_COORDINATE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glFogCoordfv #-}
 
ptr_glFogCoordfv :: FunPtr a
ptr_glFogCoordfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_fog_coord"
        "glFogCoordfvEXT"
 
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
        "GL_EXT_fog_coord"
        "glFogCoordfEXT"
 
glFogCoordf :: GLfloat -> IO ()
glFogCoordf = dyn_glFogCoordf ptr_glFogCoordf
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
{-# NOINLINE ptr_glFogCoorddv #-}
 
ptr_glFogCoorddv :: FunPtr a
ptr_glFogCoorddv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_fog_coord"
        "glFogCoorddvEXT"
 
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
        "GL_EXT_fog_coord"
        "glFogCoorddEXT"
 
glFogCoordd :: GLdouble -> IO ()
glFogCoordd = dyn_glFogCoordd ptr_glFogCoordd
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordd ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> IO ())
 
{-# NOINLINE ptr_glFogCoordPointer #-}
 
ptr_glFogCoordPointer :: FunPtr a
ptr_glFogCoordPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_fog_coord"
        "glFogCoordPointerEXT"
 
glFogCoordPointer :: GLenum -> GLsizei -> Ptr a -> IO ()
glFogCoordPointer = dyn_glFogCoordPointer ptr_glFogCoordPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr a -> IO ())
 
gl_FRAGMENT_DEPTH :: GLenum
gl_FRAGMENT_DEPTH = 33874
 
gl_FOG_COORDINATE_SOURCE :: GLenum
gl_FOG_COORDINATE_SOURCE = 33872
 
gl_FOG_COORDINATE :: GLenum
gl_FOG_COORDINATE = 33873
 
gl_FOG_COORDINATE_ARRAY_TYPE :: GLenum
gl_FOG_COORDINATE_ARRAY_TYPE = 33876
 
gl_FOG_COORDINATE_ARRAY_STRIDE :: GLenum
gl_FOG_COORDINATE_ARRAY_STRIDE = 33877
 
gl_FOG_COORDINATE_ARRAY_POINTER :: GLenum
gl_FOG_COORDINATE_ARRAY_POINTER = 33878
 
gl_FOG_COORDINATE_ARRAY :: GLenum
gl_FOG_COORDINATE_ARRAY = 33879
 
gl_CURRENT_FOG_COORDINATE :: GLenum
gl_CURRENT_FOG_COORDINATE = 33875