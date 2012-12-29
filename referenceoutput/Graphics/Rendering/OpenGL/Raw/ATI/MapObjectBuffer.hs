{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.MapObjectBuffer
       (glUnmapObjectBufferATI, glMapObjectBufferATI) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUnmapObjectBufferATI #-}
 
ptr_glUnmapObjectBufferATI :: FunPtr a
ptr_glUnmapObjectBufferATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_map_object_buffer"
        "glUnmapObjectBufferATI"
 
glUnmapObjectBufferATI :: GLuint -> IO ()
glUnmapObjectBufferATI
  = dyn_glUnmapObjectBufferATI ptr_glUnmapObjectBufferATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glUnmapObjectBufferATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glMapObjectBufferATI #-}
 
ptr_glMapObjectBufferATI :: FunPtr a
ptr_glMapObjectBufferATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_map_object_buffer"
        "glMapObjectBufferATI"
 
glMapObjectBufferATI :: GLuint -> IO (Ptr a)
glMapObjectBufferATI
  = dyn_glMapObjectBufferATI ptr_glMapObjectBufferATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapObjectBufferATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO (Ptr a))