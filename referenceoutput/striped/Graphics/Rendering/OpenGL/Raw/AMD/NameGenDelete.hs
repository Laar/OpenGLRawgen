{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.NameGenDelete
       (glIsName, glGenNames, glDeleteNames, gl_VERTEX_ARRAY_OBJECT,
        gl_SAMPLER_OBJECT, gl_QUERY_OBJECT, gl_PERFORMANCE_MONITOR,
        gl_DATA_BUFFER)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glIsName #-}
 
ptr_glIsName :: FunPtr a
ptr_glIsName
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_name_gen_delete"
        "glIsNameAMD"
 
glIsName :: GLenum -> GLuint -> IO GLboolean
glIsName = dyn_glIsName ptr_glIsName
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsName ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGenNames #-}
 
ptr_glGenNames :: FunPtr a
ptr_glGenNames
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_name_gen_delete"
        "glGenNamesAMD"
 
glGenNames :: GLenum -> GLuint -> Ptr GLuint -> IO ()
glGenNames = dyn_glGenNames ptr_glGenNames
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenNames ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteNames #-}
 
ptr_glDeleteNames :: FunPtr a
ptr_glDeleteNames
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_name_gen_delete"
        "glDeleteNamesAMD"
 
glDeleteNames :: GLenum -> GLuint -> Ptr GLuint -> IO ()
glDeleteNames = dyn_glDeleteNames ptr_glDeleteNames
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteNames ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint -> IO ())
 
gl_VERTEX_ARRAY_OBJECT :: GLenum
gl_VERTEX_ARRAY_OBJECT = 37204
 
gl_SAMPLER_OBJECT :: GLenum
gl_SAMPLER_OBJECT = 37205
 
gl_QUERY_OBJECT :: GLenum
gl_QUERY_OBJECT = 37203
 
gl_PERFORMANCE_MONITOR :: GLenum
gl_PERFORMANCE_MONITOR = 37202
 
gl_DATA_BUFFER :: GLenum
gl_DATA_BUFFER = 37201