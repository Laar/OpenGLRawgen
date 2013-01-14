{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.MapObjectBuffer
       (glUnmapObjectBuffer, glMapObjectBuffer) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUnmapObjectBuffer #-}
 
ptr_glUnmapObjectBuffer :: FunPtr a
ptr_glUnmapObjectBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_map_object_buffer"
        "glUnmapObjectBufferATI"
 
glUnmapObjectBuffer :: GLuint -> IO ()
glUnmapObjectBuffer
  = dyn_glUnmapObjectBuffer ptr_glUnmapObjectBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glUnmapObjectBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glMapObjectBuffer #-}
 
ptr_glMapObjectBuffer :: FunPtr a
ptr_glMapObjectBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_map_object_buffer"
        "glMapObjectBufferATI"
 
glMapObjectBuffer :: GLuint -> IO (Ptr a)
glMapObjectBuffer = dyn_glMapObjectBuffer ptr_glMapObjectBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapObjectBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO (Ptr a))