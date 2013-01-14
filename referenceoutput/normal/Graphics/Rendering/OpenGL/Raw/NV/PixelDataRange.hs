{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.PixelDataRange
       (glPixelDataRangeNV, glFlushPixelDataRangeNV,
        gl_WRITE_PIXEL_DATA_RANGE_POINTER_NV, gl_WRITE_PIXEL_DATA_RANGE_NV,
        gl_WRITE_PIXEL_DATA_RANGE_LENGTH_NV,
        gl_READ_PIXEL_DATA_RANGE_POINTER_NV, gl_READ_PIXEL_DATA_RANGE_NV,
        gl_READ_PIXEL_DATA_RANGE_LENGTH_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPixelDataRangeNV #-}
 
ptr_glPixelDataRangeNV :: FunPtr a
ptr_glPixelDataRangeNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_pixel_data_range"
        "glPixelDataRangeNV"
 
glPixelDataRangeNV :: GLenum -> GLsizei -> Ptr a -> IO ()
glPixelDataRangeNV = dyn_glPixelDataRangeNV ptr_glPixelDataRangeNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPixelDataRangeNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glFlushPixelDataRangeNV #-}
 
ptr_glFlushPixelDataRangeNV :: FunPtr a
ptr_glFlushPixelDataRangeNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_pixel_data_range"
        "glFlushPixelDataRangeNV"
 
glFlushPixelDataRangeNV :: GLenum -> IO ()
glFlushPixelDataRangeNV
  = dyn_glFlushPixelDataRangeNV ptr_glFlushPixelDataRangeNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glFlushPixelDataRangeNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_WRITE_PIXEL_DATA_RANGE_POINTER_NV :: GLenum
gl_WRITE_PIXEL_DATA_RANGE_POINTER_NV = 34940
 
gl_WRITE_PIXEL_DATA_RANGE_NV :: GLenum
gl_WRITE_PIXEL_DATA_RANGE_NV = 34936
 
gl_WRITE_PIXEL_DATA_RANGE_LENGTH_NV :: GLenum
gl_WRITE_PIXEL_DATA_RANGE_LENGTH_NV = 34938
 
gl_READ_PIXEL_DATA_RANGE_POINTER_NV :: GLenum
gl_READ_PIXEL_DATA_RANGE_POINTER_NV = 34941
 
gl_READ_PIXEL_DATA_RANGE_NV :: GLenum
gl_READ_PIXEL_DATA_RANGE_NV = 34937
 
gl_READ_PIXEL_DATA_RANGE_LENGTH_NV :: GLenum
gl_READ_PIXEL_DATA_RANGE_LENGTH_NV = 34939