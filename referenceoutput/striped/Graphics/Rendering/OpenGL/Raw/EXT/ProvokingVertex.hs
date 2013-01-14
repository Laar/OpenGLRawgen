{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.ProvokingVertex
       (glProvokingVertex, gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION,
        gl_PROVOKING_VERTEX, gl_LAST_VERTEX_CONVENTION,
        gl_FIRST_VERTEX_CONVENTION)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glProvokingVertex #-}
 
ptr_glProvokingVertex :: FunPtr a
ptr_glProvokingVertex
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_provoking_vertex"
        "glProvokingVertexEXT"
 
glProvokingVertex :: GLenum -> IO ()
glProvokingVertex = dyn_glProvokingVertex ptr_glProvokingVertex
 
foreign import CALLCONV unsafe "dynamic" dyn_glProvokingVertex ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION :: GLenum
gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = 36428
 
gl_PROVOKING_VERTEX :: GLenum
gl_PROVOKING_VERTEX = 36431
 
gl_LAST_VERTEX_CONVENTION :: GLenum
gl_LAST_VERTEX_CONVENTION = 36430
 
gl_FIRST_VERTEX_CONVENTION :: GLenum
gl_FIRST_VERTEX_CONVENTION = 36429