{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.X11SyncObject
       (glImportSync, gl_SYNC_X11_FENCE) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glImportSync #-}
 
ptr_glImportSync :: FunPtr a
ptr_glImportSync
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_x11_sync_object"
        "glImportSyncEXT"
 
glImportSync :: GLenum -> GLintptr -> GLbitfield -> IO GLsync
glImportSync = dyn_glImportSync ptr_glImportSync
 
foreign import CALLCONV unsafe "dynamic" dyn_glImportSync ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLintptr -> GLbitfield -> IO GLsync)
 
gl_SYNC_X11_FENCE :: GLenum
gl_SYNC_X11_FENCE = 37089