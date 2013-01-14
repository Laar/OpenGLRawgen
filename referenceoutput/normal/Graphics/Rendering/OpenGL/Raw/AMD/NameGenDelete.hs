{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.NameGenDelete
       (glIsNameAMD, glGenNamesAMD, glDeleteNamesAMD,
        gl_VERTEX_ARRAY_OBJECT_AMD, gl_SAMPLER_OBJECT_AMD,
        gl_QUERY_OBJECT_AMD, gl_PERFORMANCE_MONITOR_AMD,
        gl_DATA_BUFFER_AMD)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glIsNameAMD #-}
 
ptr_glIsNameAMD :: FunPtr a
ptr_glIsNameAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_name_gen_delete"
        "glIsNameAMD"
 
glIsNameAMD :: GLenum -> GLuint -> IO GLboolean
glIsNameAMD = dyn_glIsNameAMD ptr_glIsNameAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsNameAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGenNamesAMD #-}
 
ptr_glGenNamesAMD :: FunPtr a
ptr_glGenNamesAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_name_gen_delete"
        "glGenNamesAMD"
 
glGenNamesAMD :: GLenum -> GLuint -> Ptr GLuint -> IO ()
glGenNamesAMD = dyn_glGenNamesAMD ptr_glGenNamesAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenNamesAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteNamesAMD #-}
 
ptr_glDeleteNamesAMD :: FunPtr a
ptr_glDeleteNamesAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_name_gen_delete"
        "glDeleteNamesAMD"
 
glDeleteNamesAMD :: GLenum -> GLuint -> Ptr GLuint -> IO ()
glDeleteNamesAMD = dyn_glDeleteNamesAMD ptr_glDeleteNamesAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteNamesAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint -> IO ())
 
gl_VERTEX_ARRAY_OBJECT_AMD :: GLenum
gl_VERTEX_ARRAY_OBJECT_AMD = 37204
 
gl_SAMPLER_OBJECT_AMD :: GLenum
gl_SAMPLER_OBJECT_AMD = 37205
 
gl_QUERY_OBJECT_AMD :: GLenum
gl_QUERY_OBJECT_AMD = 37203
 
gl_PERFORMANCE_MONITOR_AMD :: GLenum
gl_PERFORMANCE_MONITOR_AMD = 37202
 
gl_DATA_BUFFER_AMD :: GLenum
gl_DATA_BUFFER_AMD = 37201