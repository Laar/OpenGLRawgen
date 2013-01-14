{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.CullVertex
       (glCullParameterfvEXT, glCullParameterdvEXT,
        gl_CULL_VERTEX_OBJECT_POSITION_EXT,
        gl_CULL_VERTEX_EYE_POSITION_EXT, gl_CULL_VERTEX_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glCullParameterfvEXT #-}
 
ptr_glCullParameterfvEXT :: FunPtr a
ptr_glCullParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_cull_vertex"
        "glCullParameterfvEXT"
 
glCullParameterfvEXT :: GLenum -> Ptr GLfloat -> IO ()
glCullParameterfvEXT
  = dyn_glCullParameterfvEXT ptr_glCullParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glCullParameterfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glCullParameterdvEXT #-}
 
ptr_glCullParameterdvEXT :: FunPtr a
ptr_glCullParameterdvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_cull_vertex"
        "glCullParameterdvEXT"
 
glCullParameterdvEXT :: GLenum -> Ptr GLdouble -> IO ()
glCullParameterdvEXT
  = dyn_glCullParameterdvEXT ptr_glCullParameterdvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glCullParameterdvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
gl_CULL_VERTEX_OBJECT_POSITION_EXT :: GLenum
gl_CULL_VERTEX_OBJECT_POSITION_EXT = 33196
 
gl_CULL_VERTEX_EYE_POSITION_EXT :: GLenum
gl_CULL_VERTEX_EYE_POSITION_EXT = 33195
 
gl_CULL_VERTEX_EXT :: GLenum
gl_CULL_VERTEX_EXT = 33194