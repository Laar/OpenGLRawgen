{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.CullVertex
       (glCullParameterfv, glCullParameterdv,
        gl_CULL_VERTEX_OBJECT_POSITION, gl_CULL_VERTEX_EYE_POSITION,
        gl_CULL_VERTEX)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glCullParameterfv #-}
 
ptr_glCullParameterfv :: FunPtr a
ptr_glCullParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_cull_vertex"
        "glCullParameterfvEXT"
 
glCullParameterfv :: GLenum -> Ptr GLfloat -> IO ()
glCullParameterfv = dyn_glCullParameterfv ptr_glCullParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glCullParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glCullParameterdv #-}
 
ptr_glCullParameterdv :: FunPtr a
ptr_glCullParameterdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_cull_vertex"
        "glCullParameterdvEXT"
 
glCullParameterdv :: GLenum -> Ptr GLdouble -> IO ()
glCullParameterdv = dyn_glCullParameterdv ptr_glCullParameterdv
 
foreign import CALLCONV unsafe "dynamic" dyn_glCullParameterdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLdouble -> IO ())
 
gl_CULL_VERTEX_OBJECT_POSITION :: GLenum
gl_CULL_VERTEX_OBJECT_POSITION = 33196
 
gl_CULL_VERTEX_EYE_POSITION :: GLenum
gl_CULL_VERTEX_EYE_POSITION = 33195
 
gl_CULL_VERTEX :: GLenum
gl_CULL_VERTEX = 33194