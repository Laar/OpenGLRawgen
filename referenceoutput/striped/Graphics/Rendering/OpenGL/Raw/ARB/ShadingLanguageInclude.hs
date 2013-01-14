{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.ShadingLanguageInclude
       (glNamedString, glIsNamedString, glGetNamedStringiv,
        glGetNamedString, glDeleteNamedString, glCompileShaderInclude,
        gl_SHADER_INCLUDE, gl_NAMED_STRING_TYPE, gl_NAMED_STRING_LENGTH)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glNamedString #-}
 
ptr_glNamedString :: FunPtr a
ptr_glNamedString
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shading_language_include"
        "glNamedStringARB"
 
glNamedString ::
              GLenum -> GLint -> Ptr GLchar -> GLint -> Ptr GLchar -> IO ()
glNamedString = dyn_glNamedString ptr_glNamedString
 
foreign import CALLCONV unsafe "dynamic" dyn_glNamedString ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> Ptr GLchar -> GLint -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glIsNamedString #-}
 
ptr_glIsNamedString :: FunPtr a
ptr_glIsNamedString
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shading_language_include"
        "glIsNamedStringARB"
 
glIsNamedString :: GLint -> Ptr GLchar -> IO GLboolean
glIsNamedString = dyn_glIsNamedString ptr_glIsNamedString
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsNamedString ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLchar -> IO GLboolean)
 
{-# NOINLINE ptr_glGetNamedStringiv #-}
 
ptr_glGetNamedStringiv :: FunPtr a
ptr_glGetNamedStringiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shading_language_include"
        "glGetNamedStringivARB"
 
glGetNamedStringiv ::
                   GLint -> Ptr GLchar -> GLenum -> Ptr GLint -> IO ()
glGetNamedStringiv = dyn_glGetNamedStringiv ptr_glGetNamedStringiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetNamedStringiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLchar -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetNamedString #-}
 
ptr_glGetNamedString :: FunPtr a
ptr_glGetNamedString
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shading_language_include"
        "glGetNamedStringARB"
 
glGetNamedString ::
                 GLint -> Ptr GLchar -> GLsizei -> Ptr GLint -> Ptr GLchar -> IO ()
glGetNamedString = dyn_glGetNamedString ptr_glGetNamedString
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetNamedString ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint ->
                    Ptr GLchar -> GLsizei -> Ptr GLint -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glDeleteNamedString #-}
 
ptr_glDeleteNamedString :: FunPtr a
ptr_glDeleteNamedString
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shading_language_include"
        "glDeleteNamedStringARB"
 
glDeleteNamedString :: GLint -> Ptr GLchar -> IO ()
glDeleteNamedString
  = dyn_glDeleteNamedString ptr_glDeleteNamedString
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteNamedString ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLchar -> IO ())
 
{-# NOINLINE ptr_glCompileShaderInclude #-}
 
ptr_glCompileShaderInclude :: FunPtr a
ptr_glCompileShaderInclude
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_shading_language_include"
        "glCompileShaderIncludeARB"
 
glCompileShaderInclude ::
                       GLuint -> GLsizei -> Ptr (Ptr GLchar) -> Ptr GLint -> IO ()
glCompileShaderInclude
  = dyn_glCompileShaderInclude ptr_glCompileShaderInclude
 
foreign import CALLCONV unsafe "dynamic" dyn_glCompileShaderInclude
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr (Ptr GLchar) -> Ptr GLint -> IO ())
 
gl_SHADER_INCLUDE :: GLenum
gl_SHADER_INCLUDE = 36270
 
gl_NAMED_STRING_TYPE :: GLenum
gl_NAMED_STRING_TYPE = 36330
 
gl_NAMED_STRING_LENGTH :: GLenum
gl_NAMED_STRING_LENGTH = 36329