{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.DepthBufferFloat
       (glDepthRanged, glDepthBoundsd, glClearDepthd,
        gl_FLOAT_32_UNSIGNED_INT_24_8_REV, gl_DEPTH_COMPONENT32F,
        gl_DEPTH_BUFFER_FLOAT_MODE, gl_DEPTH32F_STENCIL8)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glDepthRanged #-}
 
ptr_glDepthRanged :: FunPtr a
ptr_glDepthRanged
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_depth_buffer_float"
        "glDepthRangedNV"
 
glDepthRanged :: GLdouble -> GLdouble -> IO ()
glDepthRanged = dyn_glDepthRanged ptr_glDepthRanged
 
foreign import CALLCONV unsafe "dynamic" dyn_glDepthRanged ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glDepthBoundsd #-}
 
ptr_glDepthBoundsd :: FunPtr a
ptr_glDepthBoundsd
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_depth_buffer_float"
        "glDepthBoundsdNV"
 
glDepthBoundsd :: GLdouble -> GLdouble -> IO ()
glDepthBoundsd = dyn_glDepthBoundsd ptr_glDepthBoundsd
 
foreign import CALLCONV unsafe "dynamic" dyn_glDepthBoundsd ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glClearDepthd #-}
 
ptr_glClearDepthd :: FunPtr a
ptr_glClearDepthd
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_depth_buffer_float"
        "glClearDepthdNV"
 
glClearDepthd :: GLdouble -> IO ()
glClearDepthd = dyn_glClearDepthd ptr_glClearDepthd
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearDepthd ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> IO ())
 
gl_FLOAT_32_UNSIGNED_INT_24_8_REV :: GLenum
gl_FLOAT_32_UNSIGNED_INT_24_8_REV = 36269
 
gl_DEPTH_COMPONENT32F :: GLenum
gl_DEPTH_COMPONENT32F = 36267
 
gl_DEPTH_BUFFER_FLOAT_MODE :: GLenum
gl_DEPTH_BUFFER_FLOAT_MODE = 36271
 
gl_DEPTH32F_STENCIL8 :: GLenum
gl_DEPTH32F_STENCIL8 = 36268