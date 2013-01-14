{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.X11SyncObject
       (glImportSyncEXT, gl_SYNC_X11_FENCE_EXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glImportSyncEXT #-}
 
ptr_glImportSyncEXT :: FunPtr a
ptr_glImportSyncEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_x11_sync_object"
        "glImportSyncEXT"
 
glImportSyncEXT :: GLenum -> GLintptr -> GLbitfield -> IO GLsync
glImportSyncEXT = dyn_glImportSyncEXT ptr_glImportSyncEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glImportSyncEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLintptr -> GLbitfield -> IO GLsync)
 
gl_SYNC_X11_FENCE_EXT :: GLenum
gl_SYNC_X11_FENCE_EXT = 37089