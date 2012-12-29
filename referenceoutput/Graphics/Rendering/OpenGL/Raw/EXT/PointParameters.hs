{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PointParameters
       (glPointParameterfvEXT, glPointParameterfEXT,
        gl_DISTANCE_ATTENUATION_EXT, gl_POINT_FADE_THRESHOLD_SIZE_EXT,
        gl_POINT_SIZE_MAX_EXT, gl_POINT_SIZE_MIN_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPointParameterfvEXT #-}
 
ptr_glPointParameterfvEXT :: FunPtr a
ptr_glPointParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_point_parameters"
        "glPointParameterfvEXT"
 
glPointParameterfvEXT :: GLenum -> Ptr GLfloat -> IO ()
glPointParameterfvEXT
  = dyn_glPointParameterfvEXT ptr_glPointParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointParameterfvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPointParameterfEXT #-}
 
ptr_glPointParameterfEXT :: FunPtr a
ptr_glPointParameterfEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_point_parameters"
        "glPointParameterfEXT"
 
glPointParameterfEXT :: GLenum -> GLfloat -> IO ()
glPointParameterfEXT
  = dyn_glPointParameterfEXT ptr_glPointParameterfEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointParameterfEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
gl_DISTANCE_ATTENUATION_EXT :: GLenum
gl_DISTANCE_ATTENUATION_EXT = 33065
 
gl_POINT_FADE_THRESHOLD_SIZE_EXT :: GLenum
gl_POINT_FADE_THRESHOLD_SIZE_EXT = 33064
 
gl_POINT_SIZE_MAX_EXT :: GLenum
gl_POINT_SIZE_MAX_EXT = 33063
 
gl_POINT_SIZE_MIN_EXT :: GLenum
gl_POINT_SIZE_MIN_EXT = 33062