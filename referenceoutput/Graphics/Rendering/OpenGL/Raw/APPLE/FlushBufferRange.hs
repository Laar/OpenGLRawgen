{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.FlushBufferRange
       (glFlushMappedBufferRangeAPPLE, glBufferParameteriAPPLE,
        gl_BUFFER_SERIALIZED_MODIFY_APPLE, gl_BUFFER_FLUSHING_UNMAP_APPLE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glFlushMappedBufferRangeAPPLE #-}
 
ptr_glFlushMappedBufferRangeAPPLE :: FunPtr a
ptr_glFlushMappedBufferRangeAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_flush_buffer_range"
        "glFlushMappedBufferRangeAPPLE"
 
glFlushMappedBufferRangeAPPLE ::
                              GLenum -> GLintptr -> GLsizeiptr -> IO ()
glFlushMappedBufferRangeAPPLE
  = dyn_glFlushMappedBufferRangeAPPLE
      ptr_glFlushMappedBufferRangeAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFlushMappedBufferRangeAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLintptr -> GLsizeiptr -> IO ())
 
{-# NOINLINE ptr_glBufferParameteriAPPLE #-}
 
ptr_glBufferParameteriAPPLE :: FunPtr a
ptr_glBufferParameteriAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_flush_buffer_range"
        "glBufferParameteriAPPLE"
 
glBufferParameteriAPPLE :: GLenum -> GLenum -> GLint -> IO ()
glBufferParameteriAPPLE
  = dyn_glBufferParameteriAPPLE ptr_glBufferParameteriAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glBufferParameteriAPPLE
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> IO ())
 
gl_BUFFER_SERIALIZED_MODIFY_APPLE :: GLenum
gl_BUFFER_SERIALIZED_MODIFY_APPLE = 35346
 
gl_BUFFER_FLUSHING_UNMAP_APPLE :: GLenum
gl_BUFFER_FLUSHING_UNMAP_APPLE = 35347