{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.PinnedMemory
       (gl_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD :: GLenum
gl_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD = 37216