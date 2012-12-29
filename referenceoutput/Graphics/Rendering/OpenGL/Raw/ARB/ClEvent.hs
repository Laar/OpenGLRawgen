{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.ClEvent
       (glCreateSyncFromCLeventARB, gl_SYNC_CL_EVENT_COMPLETE_ARB,
        gl_SYNC_CL_EVENT_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glCreateSyncFromCLeventARB #-}
 
ptr_glCreateSyncFromCLeventARB :: FunPtr a
ptr_glCreateSyncFromCLeventARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_cl_event"
        "glCreateSyncFromCLeventARB"
 
glCreateSyncFromCLeventARB ::
                           CLcontext -> CLevent -> GLbitfield -> IO GLsync
glCreateSyncFromCLeventARB
  = dyn_glCreateSyncFromCLeventARB ptr_glCreateSyncFromCLeventARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCreateSyncFromCLeventARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (CLcontext -> CLevent -> GLbitfield -> IO GLsync)
 
gl_SYNC_CL_EVENT_COMPLETE_ARB :: GLenum
gl_SYNC_CL_EVENT_COMPLETE_ARB = 33345
 
gl_SYNC_CL_EVENT_ARB :: GLenum
gl_SYNC_CL_EVENT_ARB = 33344