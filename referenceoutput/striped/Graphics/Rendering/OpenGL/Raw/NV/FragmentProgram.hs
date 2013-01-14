{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.FragmentProgram
       (glProgramNamedParameter4fv, glProgramNamedParameter4f,
        glProgramNamedParameter4dv, glProgramNamedParameter4d,
        glGetProgramNamedParameterfv, glGetProgramNamedParameterdv,
        gl_PROGRAM_ERROR_STRING, gl_MAX_TEXTURE_IMAGE_UNITS,
        gl_MAX_TEXTURE_COORDS, gl_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS,
        gl_FRAGMENT_PROGRAM, gl_FRAGMENT_PROGRAM_BINDING)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glProgramNamedParameter4fv #-}
 
ptr_glProgramNamedParameter4fv :: FunPtr a
ptr_glProgramNamedParameter4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fragment_program"
        "glProgramNamedParameter4fvNV"
 
glProgramNamedParameter4fv ::
                           GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLfloat -> IO ()
glProgramNamedParameter4fv
  = dyn_glProgramNamedParameter4fv ptr_glProgramNamedParameter4fv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramNamedParameter4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramNamedParameter4f #-}
 
ptr_glProgramNamedParameter4f :: FunPtr a
ptr_glProgramNamedParameter4f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fragment_program"
        "glProgramNamedParameter4fNV"
 
glProgramNamedParameter4f ::
                          GLuint ->
                            GLsizei ->
                              Ptr GLubyte -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glProgramNamedParameter4f
  = dyn_glProgramNamedParameter4f ptr_glProgramNamedParameter4f
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramNamedParameter4f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei ->
                      Ptr GLubyte -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramNamedParameter4dv #-}
 
ptr_glProgramNamedParameter4dv :: FunPtr a
ptr_glProgramNamedParameter4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fragment_program"
        "glProgramNamedParameter4dvNV"
 
glProgramNamedParameter4dv ::
                           GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLdouble -> IO ()
glProgramNamedParameter4dv
  = dyn_glProgramNamedParameter4dv ptr_glProgramNamedParameter4dv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramNamedParameter4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramNamedParameter4d #-}
 
ptr_glProgramNamedParameter4d :: FunPtr a
ptr_glProgramNamedParameter4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fragment_program"
        "glProgramNamedParameter4dNV"
 
glProgramNamedParameter4d ::
                          GLuint ->
                            GLsizei ->
                              Ptr GLubyte ->
                                GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glProgramNamedParameter4d
  = dyn_glProgramNamedParameter4d ptr_glProgramNamedParameter4d
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramNamedParameter4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei ->
                      Ptr GLubyte ->
                        GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetProgramNamedParameterfv #-}
 
ptr_glGetProgramNamedParameterfv :: FunPtr a
ptr_glGetProgramNamedParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fragment_program"
        "glGetProgramNamedParameterfvNV"
 
glGetProgramNamedParameterfv ::
                             GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLfloat -> IO ()
glGetProgramNamedParameterfv
  = dyn_glGetProgramNamedParameterfv ptr_glGetProgramNamedParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramNamedParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetProgramNamedParameterdv #-}
 
ptr_glGetProgramNamedParameterdv :: FunPtr a
ptr_glGetProgramNamedParameterdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fragment_program"
        "glGetProgramNamedParameterdvNV"
 
glGetProgramNamedParameterdv ::
                             GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLdouble -> IO ()
glGetProgramNamedParameterdv
  = dyn_glGetProgramNamedParameterdv ptr_glGetProgramNamedParameterdv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramNamedParameterdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLdouble -> IO ())
 
gl_PROGRAM_ERROR_STRING :: GLenum
gl_PROGRAM_ERROR_STRING = 34932
 
gl_MAX_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_TEXTURE_IMAGE_UNITS = 34930
 
gl_MAX_TEXTURE_COORDS :: GLenum
gl_MAX_TEXTURE_COORDS = 34929
 
gl_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS :: GLenum
gl_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS = 34920
 
gl_FRAGMENT_PROGRAM :: GLenum
gl_FRAGMENT_PROGRAM = 34928
 
gl_FRAGMENT_PROGRAM_BINDING :: GLenum
gl_FRAGMENT_PROGRAM_BINDING = 34931