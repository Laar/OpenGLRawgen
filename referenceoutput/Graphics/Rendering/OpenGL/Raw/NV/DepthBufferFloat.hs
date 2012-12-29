{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.DepthBufferFloat
       (glDepthBoundsdNV, glClearDepthdNV, glDepthRangedNV,
        gl_DEPTH_BUFFER_FLOAT_MODE_NV,
        gl_FLOAT_32_UNSIGNED_INT_24_8_REV_NV, gl_DEPTH32F_STENCIL8_NV,
        gl_DEPTH_COMPONENT32F_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glDepthBoundsdNV #-}
 
ptr_glDepthBoundsdNV :: FunPtr a
ptr_glDepthBoundsdNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_depth_buffer_float"
        "glDepthBoundsdNV"
 
glDepthBoundsdNV :: GLdouble -> GLdouble -> IO ()
glDepthBoundsdNV = dyn_glDepthBoundsdNV ptr_glDepthBoundsdNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glDepthBoundsdNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glClearDepthdNV #-}
 
ptr_glClearDepthdNV :: FunPtr a
ptr_glClearDepthdNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_depth_buffer_float"
        "glClearDepthdNV"
 
glClearDepthdNV :: GLdouble -> IO ()
glClearDepthdNV = dyn_glClearDepthdNV ptr_glClearDepthdNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glClearDepthdNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> IO ())
 
{-# NOINLINE ptr_glDepthRangedNV #-}
 
ptr_glDepthRangedNV :: FunPtr a
ptr_glDepthRangedNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_depth_buffer_float"
        "glDepthRangedNV"
 
glDepthRangedNV :: GLdouble -> GLdouble -> IO ()
glDepthRangedNV = dyn_glDepthRangedNV ptr_glDepthRangedNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glDepthRangedNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLdouble -> GLdouble -> IO ())
 
gl_DEPTH_BUFFER_FLOAT_MODE_NV :: GLenum
gl_DEPTH_BUFFER_FLOAT_MODE_NV = 36271
 
gl_FLOAT_32_UNSIGNED_INT_24_8_REV_NV :: GLenum
gl_FLOAT_32_UNSIGNED_INT_24_8_REV_NV = 36269
 
gl_DEPTH32F_STENCIL8_NV :: GLenum
gl_DEPTH32F_STENCIL8_NV = 36268
 
gl_DEPTH_COMPONENT32F_NV :: GLenum
gl_DEPTH_COMPONENT32F_NV = 36267