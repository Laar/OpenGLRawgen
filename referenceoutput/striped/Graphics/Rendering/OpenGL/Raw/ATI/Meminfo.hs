{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.Meminfo
       (gl_VBO_FREE_MEMORY, gl_TEXTURE_FREE_MEMORY,
        gl_RENDERBUFFER_FREE_MEMORY)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_VBO_FREE_MEMORY :: GLenum
gl_VBO_FREE_MEMORY = 34811
 
gl_TEXTURE_FREE_MEMORY :: GLenum
gl_TEXTURE_FREE_MEMORY = 34812
 
gl_RENDERBUFFER_FREE_MEMORY :: GLenum
gl_RENDERBUFFER_FREE_MEMORY = 34813