{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.PointParameters
       (glPointParameterfvARB, glPointParameterfARB,
        gl_POINT_DISTANCE_ATTENUATION_ARB,
        gl_POINT_FADE_THRESHOLD_SIZE_ARB, gl_POINT_SIZE_MAX_ARB,
        gl_POINT_SIZE_MIN_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPointParameterfvARB #-}
 
ptr_glPointParameterfvARB :: FunPtr a
ptr_glPointParameterfvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_point_parameters"
        "glPointParameterfvARB"
 
glPointParameterfvARB :: GLenum -> Ptr GLfloat -> IO ()
glPointParameterfvARB
  = dyn_glPointParameterfvARB ptr_glPointParameterfvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointParameterfvARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPointParameterfARB #-}
 
ptr_glPointParameterfARB :: FunPtr a
ptr_glPointParameterfARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_point_parameters"
        "glPointParameterfARB"
 
glPointParameterfARB :: GLenum -> GLfloat -> IO ()
glPointParameterfARB
  = dyn_glPointParameterfARB ptr_glPointParameterfARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointParameterfARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
gl_POINT_DISTANCE_ATTENUATION_ARB :: GLenum
gl_POINT_DISTANCE_ATTENUATION_ARB = 33065
 
gl_POINT_FADE_THRESHOLD_SIZE_ARB :: GLenum
gl_POINT_FADE_THRESHOLD_SIZE_ARB = 33064
 
gl_POINT_SIZE_MAX_ARB :: GLenum
gl_POINT_SIZE_MAX_ARB = 33063
 
gl_POINT_SIZE_MIN_ARB :: GLenum
gl_POINT_SIZE_MIN_ARB = 33062