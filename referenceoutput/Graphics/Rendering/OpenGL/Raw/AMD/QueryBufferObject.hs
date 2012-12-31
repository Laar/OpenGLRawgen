{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.QueryBufferObject
       (gl_QUERY_RESULT_NO_WAIT_AMD, gl_QUERY_BUFFER_BINDING_AMD,
        gl_QUERY_BUFFER_AMD)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_QUERY_RESULT_NO_WAIT_AMD :: GLenum
gl_QUERY_RESULT_NO_WAIT_AMD = 37268
 
gl_QUERY_BUFFER_BINDING_AMD :: GLenum
gl_QUERY_BUFFER_BINDING_AMD = 37267
 
gl_QUERY_BUFFER_AMD :: GLenum
gl_QUERY_BUFFER_AMD = 37266