{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PointParameters
       (glPointParameterfv, glPointParameterf, gl_POINT_SIZE_MIN,
        gl_POINT_SIZE_MAX, gl_POINT_FADE_THRESHOLD_SIZE,
        gl_DISTANCE_ATTENUATION)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPointParameterfv #-}
 
ptr_glPointParameterfv :: FunPtr a
ptr_glPointParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_point_parameters"
        "glPointParameterfvEXT"
 
glPointParameterfv :: GLenum -> Ptr GLfloat -> IO ()
glPointParameterfv = dyn_glPointParameterfv ptr_glPointParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPointParameterf #-}
 
ptr_glPointParameterf :: FunPtr a
ptr_glPointParameterf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_point_parameters"
        "glPointParameterfEXT"
 
glPointParameterf :: GLenum -> GLfloat -> IO ()
glPointParameterf = dyn_glPointParameterf ptr_glPointParameterf
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointParameterf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
gl_POINT_SIZE_MIN :: GLenum
gl_POINT_SIZE_MIN = 33062
 
gl_POINT_SIZE_MAX :: GLenum
gl_POINT_SIZE_MAX = 33063
 
gl_POINT_FADE_THRESHOLD_SIZE :: GLenum
gl_POINT_FADE_THRESHOLD_SIZE = 33064
 
gl_DISTANCE_ATTENUATION :: GLenum
gl_DISTANCE_ATTENUATION = 33065