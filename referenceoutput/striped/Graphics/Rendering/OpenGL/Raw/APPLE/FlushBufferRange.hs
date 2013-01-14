{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.FlushBufferRange
       (glFlushMappedBufferRange, glBufferParameteri,
        gl_BUFFER_SERIALIZED_MODIFY, gl_BUFFER_FLUSHING_UNMAP)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glFlushMappedBufferRange #-}
 
ptr_glFlushMappedBufferRange :: FunPtr a
ptr_glFlushMappedBufferRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_flush_buffer_range"
        "glFlushMappedBufferRangeAPPLE"
 
glFlushMappedBufferRange ::
                         GLenum -> GLintptr -> GLsizeiptr -> IO ()
glFlushMappedBufferRange
  = dyn_glFlushMappedBufferRange ptr_glFlushMappedBufferRange
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFlushMappedBufferRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLintptr -> GLsizeiptr -> IO ())
 
{-# NOINLINE ptr_glBufferParameteri #-}
 
ptr_glBufferParameteri :: FunPtr a
ptr_glBufferParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_flush_buffer_range"
        "glBufferParameteriAPPLE"
 
glBufferParameteri :: GLenum -> GLenum -> GLint -> IO ()
glBufferParameteri = dyn_glBufferParameteri ptr_glBufferParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glBufferParameteri ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> IO ())
 
gl_BUFFER_SERIALIZED_MODIFY :: GLenum
gl_BUFFER_SERIALIZED_MODIFY = 35346
 
gl_BUFFER_FLUSHING_UNMAP :: GLenum
gl_BUFFER_FLUSHING_UNMAP = 35347