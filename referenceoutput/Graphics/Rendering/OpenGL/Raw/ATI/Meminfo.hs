{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.Meminfo
       (gl_RENDERBUFFER_FREE_MEMORY_ATI, gl_TEXTURE_FREE_MEMORY_ATI,
        gl_VBO_FREE_MEMORY_ATI)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_RENDERBUFFER_FREE_MEMORY_ATI :: GLenum
gl_RENDERBUFFER_FREE_MEMORY_ATI = 34813
 
gl_TEXTURE_FREE_MEMORY_ATI :: GLenum
gl_TEXTURE_FREE_MEMORY_ATI = 34812
 
gl_VBO_FREE_MEMORY_ATI :: GLenum
gl_VBO_FREE_MEMORY_ATI = 34811