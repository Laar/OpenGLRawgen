{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.PixelDataRange
       (glPixelDataRange, glFlushPixelDataRange,
        gl_WRITE_PIXEL_DATA_RANGE_POINTER, gl_WRITE_PIXEL_DATA_RANGE,
        gl_WRITE_PIXEL_DATA_RANGE_LENGTH, gl_READ_PIXEL_DATA_RANGE_POINTER,
        gl_READ_PIXEL_DATA_RANGE, gl_READ_PIXEL_DATA_RANGE_LENGTH)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPixelDataRange #-}
 
ptr_glPixelDataRange :: FunPtr a
ptr_glPixelDataRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_pixel_data_range"
        "glPixelDataRangeNV"
 
glPixelDataRange :: GLenum -> GLsizei -> Ptr a -> IO ()
glPixelDataRange = dyn_glPixelDataRange ptr_glPixelDataRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glPixelDataRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glFlushPixelDataRange #-}
 
ptr_glFlushPixelDataRange :: FunPtr a
ptr_glFlushPixelDataRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_pixel_data_range"
        "glFlushPixelDataRangeNV"
 
glFlushPixelDataRange :: GLenum -> IO ()
glFlushPixelDataRange
  = dyn_glFlushPixelDataRange ptr_glFlushPixelDataRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glFlushPixelDataRange
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_WRITE_PIXEL_DATA_RANGE_POINTER :: GLenum
gl_WRITE_PIXEL_DATA_RANGE_POINTER = 34940
 
gl_WRITE_PIXEL_DATA_RANGE :: GLenum
gl_WRITE_PIXEL_DATA_RANGE = 34936
 
gl_WRITE_PIXEL_DATA_RANGE_LENGTH :: GLenum
gl_WRITE_PIXEL_DATA_RANGE_LENGTH = 34938
 
gl_READ_PIXEL_DATA_RANGE_POINTER :: GLenum
gl_READ_PIXEL_DATA_RANGE_POINTER = 34941
 
gl_READ_PIXEL_DATA_RANGE :: GLenum
gl_READ_PIXEL_DATA_RANGE = 34937
 
gl_READ_PIXEL_DATA_RANGE_LENGTH :: GLenum
gl_READ_PIXEL_DATA_RANGE_LENGTH = 34939