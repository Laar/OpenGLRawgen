{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.ProvokingVertex
       (glProvokingVertexEXT,
        gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT,
        gl_PROVOKING_VERTEX_EXT, gl_LAST_VERTEX_CONVENTION_EXT,
        gl_FIRST_VERTEX_CONVENTION_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glProvokingVertexEXT #-}
 
ptr_glProvokingVertexEXT :: FunPtr a
ptr_glProvokingVertexEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_provoking_vertex"
        "glProvokingVertexEXT"
 
glProvokingVertexEXT :: GLenum -> IO ()
glProvokingVertexEXT
  = dyn_glProvokingVertexEXT ptr_glProvokingVertexEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glProvokingVertexEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT :: GLenum
gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT = 36428
 
gl_PROVOKING_VERTEX_EXT :: GLenum
gl_PROVOKING_VERTEX_EXT = 36431
 
gl_LAST_VERTEX_CONVENTION_EXT :: GLenum
gl_LAST_VERTEX_CONVENTION_EXT = 36430
 
gl_FIRST_VERTEX_CONVENTION_EXT :: GLenum
gl_FIRST_VERTEX_CONVENTION_EXT = 36429