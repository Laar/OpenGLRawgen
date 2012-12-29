{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.FogCoord
       (glFogCoordPointerEXT, glFogCoorddvEXT, glFogCoorddEXT,
        glFogCoordfvEXT, glFogCoordfEXT, gl_FOG_COORDINATE_ARRAY_EXT,
        gl_FOG_COORDINATE_ARRAY_POINTER_EXT,
        gl_FOG_COORDINATE_ARRAY_STRIDE_EXT,
        gl_FOG_COORDINATE_ARRAY_TYPE_EXT, gl_CURRENT_FOG_COORDINATE_EXT,
        gl_FRAGMENT_DEPTH_EXT, gl_FOG_COORDINATE_EXT,
        gl_FOG_COORDINATE_SOURCE_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glFogCoordPointerEXT #-}
 
ptr_glFogCoordPointerEXT :: FunPtr a
ptr_glFogCoordPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_fog_coord"
        "glFogCoordPointerEXT"
 
glFogCoordPointerEXT :: GLenum -> GLsizei -> Ptr a -> IO ()
glFogCoordPointerEXT
  = dyn_glFogCoordPointerEXT ptr_glFogCoordPointerEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glFogCoorddvEXT #-}
 
ptr_glFogCoorddvEXT :: FunPtr a
ptr_glFogCoorddvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_fog_coord"
        "glFogCoorddvEXT"
 
glFogCoorddvEXT :: Ptr GLdouble -> IO ()
glFogCoorddvEXT = dyn_glFogCoorddvEXT ptr_glFogCoorddvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoorddvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glFogCoorddEXT #-}
 
ptr_glFogCoorddEXT :: FunPtr a
ptr_glFogCoorddEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_fog_coord"
        "glFogCoorddEXT"
 
glFogCoorddEXT :: GLdouble -> IO ()
glFogCoorddEXT = dyn_glFogCoorddEXT ptr_glFogCoorddEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoorddEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> IO ())
 
{-# NOINLINE ptr_glFogCoordfvEXT #-}
 
ptr_glFogCoordfvEXT :: FunPtr a
ptr_glFogCoordfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_fog_coord"
        "glFogCoordfvEXT"
 
glFogCoordfvEXT :: Ptr GLfloat -> IO ()
glFogCoordfvEXT = dyn_glFogCoordfvEXT ptr_glFogCoordfvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glFogCoordfEXT #-}
 
ptr_glFogCoordfEXT :: FunPtr a
ptr_glFogCoordfEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_fog_coord"
        "glFogCoordfEXT"
 
glFogCoordfEXT :: GLfloat -> IO ()
glFogCoordfEXT = dyn_glFogCoordfEXT ptr_glFogCoordfEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordfEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
gl_FOG_COORDINATE_ARRAY_EXT :: GLenum
gl_FOG_COORDINATE_ARRAY_EXT = 33879
 
gl_FOG_COORDINATE_ARRAY_POINTER_EXT :: GLenum
gl_FOG_COORDINATE_ARRAY_POINTER_EXT = 33878
 
gl_FOG_COORDINATE_ARRAY_STRIDE_EXT :: GLenum
gl_FOG_COORDINATE_ARRAY_STRIDE_EXT = 33877
 
gl_FOG_COORDINATE_ARRAY_TYPE_EXT :: GLenum
gl_FOG_COORDINATE_ARRAY_TYPE_EXT = 33876
 
gl_CURRENT_FOG_COORDINATE_EXT :: GLenum
gl_CURRENT_FOG_COORDINATE_EXT = 33875
 
gl_FRAGMENT_DEPTH_EXT :: GLenum
gl_FRAGMENT_DEPTH_EXT = 33874
 
gl_FOG_COORDINATE_EXT :: GLenum
gl_FOG_COORDINATE_EXT = 33873
 
gl_FOG_COORDINATE_SOURCE_EXT :: GLenum
gl_FOG_COORDINATE_SOURCE_EXT = 33872