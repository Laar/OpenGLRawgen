{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.ClEvent
       (gl_SYNC_CL_EVENT_COMPLETE_ARB, gl_SYNC_CL_EVENT_ARB) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_SYNC_CL_EVENT_COMPLETE_ARB :: GLenum
gl_SYNC_CL_EVENT_COMPLETE_ARB = 33345
 
gl_SYNC_CL_EVENT_ARB :: GLenum
gl_SYNC_CL_EVENT_ARB = 33344