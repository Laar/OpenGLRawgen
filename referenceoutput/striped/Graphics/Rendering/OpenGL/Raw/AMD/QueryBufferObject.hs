{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.QueryBufferObject
       (gl_QUERY_RESULT_NO_WAIT, gl_QUERY_BUFFER_BINDING, gl_QUERY_BUFFER)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_QUERY_RESULT_NO_WAIT :: GLenum
gl_QUERY_RESULT_NO_WAIT = 37268
 
gl_QUERY_BUFFER_BINDING :: GLenum
gl_QUERY_BUFFER_BINDING = 37267
 
gl_QUERY_BUFFER :: GLenum
gl_QUERY_BUFFER = 37266