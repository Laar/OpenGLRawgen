{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.ClEvent
       (gl_SYNC_CL_EVENT_COMPLETE, gl_SYNC_CL_EVENT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_SYNC_CL_EVENT_COMPLETE :: GLenum
gl_SYNC_CL_EVENT_COMPLETE = 33345
 
gl_SYNC_CL_EVENT :: GLenum
gl_SYNC_CL_EVENT = 33344