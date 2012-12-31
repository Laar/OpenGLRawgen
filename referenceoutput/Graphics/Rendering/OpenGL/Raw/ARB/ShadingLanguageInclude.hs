{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.ShadingLanguageInclude
       (glNamedStringARB, glIsNamedStringARB, glGetNamedStringivARB,
        glGetNamedStringARB, glDeleteNamedStringARB,
        glCompileShaderIncludeARB, gl_SHADER_INCLUDE_ARB,
        gl_NAMED_STRING_TYPE_ARB, gl_NAMED_STRING_LENGTH_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glNamedStringARB #-}
 
ptr_glNamedStringARB :: FunPtr a
ptr_glNamedStringARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shading_language_include"
        "glNamedStringARB"
 
glNamedStringARB ::
                 GLenum -> GLint -> Ptr GLchar -> GLint -> Ptr GLchar -> IO ()
glNamedStringARB = dyn_glNamedStringARB ptr_glNamedStringARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glNamedStringARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> Ptr GLchar -> GLint -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glIsNamedStringARB #-}
 
ptr_glIsNamedStringARB :: FunPtr a
ptr_glIsNamedStringARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shading_language_include"
        "glIsNamedStringARB"
 
glIsNamedStringARB :: GLint -> Ptr GLchar -> IO GLboolean
glIsNamedStringARB = dyn_glIsNamedStringARB ptr_glIsNamedStringARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsNamedStringARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLchar -> IO GLboolean)
 
{-# NOINLINE ptr_glGetNamedStringivARB #-}
 
ptr_glGetNamedStringivARB :: FunPtr a
ptr_glGetNamedStringivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shading_language_include"
        "glGetNamedStringivARB"
 
glGetNamedStringivARB ::
                      GLint -> Ptr GLchar -> GLenum -> Ptr GLint -> IO ()
glGetNamedStringivARB
  = dyn_glGetNamedStringivARB ptr_glGetNamedStringivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetNamedStringivARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLchar -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetNamedStringARB #-}
 
ptr_glGetNamedStringARB :: FunPtr a
ptr_glGetNamedStringARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shading_language_include"
        "glGetNamedStringARB"
 
glGetNamedStringARB ::
                    GLint -> Ptr GLchar -> GLsizei -> Ptr GLint -> Ptr GLchar -> IO ()
glGetNamedStringARB
  = dyn_glGetNamedStringARB ptr_glGetNamedStringARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetNamedStringARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint ->
                    Ptr GLchar -> GLsizei -> Ptr GLint -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glDeleteNamedStringARB #-}
 
ptr_glDeleteNamedStringARB :: FunPtr a
ptr_glDeleteNamedStringARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shading_language_include"
        "glDeleteNamedStringARB"
 
glDeleteNamedStringARB :: GLint -> Ptr GLchar -> IO ()
glDeleteNamedStringARB
  = dyn_glDeleteNamedStringARB ptr_glDeleteNamedStringARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteNamedStringARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glCompileShaderIncludeARB #-}
 
ptr_glCompileShaderIncludeARB :: FunPtr a
ptr_glCompileShaderIncludeARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shading_language_include"
        "glCompileShaderIncludeARB"
 
glCompileShaderIncludeARB ::
                          GLuint -> GLsizei -> Ptr (Ptr GLchar) -> Ptr GLint -> IO ()
glCompileShaderIncludeARB
  = dyn_glCompileShaderIncludeARB ptr_glCompileShaderIncludeARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompileShaderIncludeARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr (Ptr GLchar) -> Ptr GLint -> IO ())
 
gl_SHADER_INCLUDE_ARB :: GLenum
gl_SHADER_INCLUDE_ARB = 36270
 
gl_NAMED_STRING_TYPE_ARB :: GLenum
gl_NAMED_STRING_TYPE_ARB = 36330
 
gl_NAMED_STRING_LENGTH_ARB :: GLenum
gl_NAMED_STRING_LENGTH_ARB = 36329