{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.FragmentProgram
       (glGetProgramNamedParameterdvNV, glGetProgramNamedParameterfvNV,
        glProgramNamedParameter4dvNV, glProgramNamedParameter4fvNV,
        glProgramNamedParameter4dNV, glProgramNamedParameter4fNV,
        gl_PROGRAM_ERROR_STRING_NV, gl_FRAGMENT_PROGRAM_BINDING_NV,
        gl_MAX_TEXTURE_IMAGE_UNITS_NV, gl_MAX_TEXTURE_COORDS_NV,
        gl_FRAGMENT_PROGRAM_NV,
        gl_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetProgramNamedParameterdvNV #-}
 
ptr_glGetProgramNamedParameterdvNV :: FunPtr a
ptr_glGetProgramNamedParameterdvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fragment_program"
        "glGetProgramNamedParameterdvNV"
 
glGetProgramNamedParameterdvNV ::
                               GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLdouble -> IO ()
glGetProgramNamedParameterdvNV
  = dyn_glGetProgramNamedParameterdvNV
      ptr_glGetProgramNamedParameterdvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramNamedParameterdvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glGetProgramNamedParameterfvNV #-}
 
ptr_glGetProgramNamedParameterfvNV :: FunPtr a
ptr_glGetProgramNamedParameterfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fragment_program"
        "glGetProgramNamedParameterfvNV"
 
glGetProgramNamedParameterfvNV ::
                               GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLfloat -> IO ()
glGetProgramNamedParameterfvNV
  = dyn_glGetProgramNamedParameterfvNV
      ptr_glGetProgramNamedParameterfvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetProgramNamedParameterfvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramNamedParameter4dvNV #-}
 
ptr_glProgramNamedParameter4dvNV :: FunPtr a
ptr_glProgramNamedParameter4dvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fragment_program"
        "glProgramNamedParameter4dvNV"
 
glProgramNamedParameter4dvNV ::
                             GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLdouble -> IO ()
glProgramNamedParameter4dvNV
  = dyn_glProgramNamedParameter4dvNV ptr_glProgramNamedParameter4dvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramNamedParameter4dvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramNamedParameter4fvNV #-}
 
ptr_glProgramNamedParameter4fvNV :: FunPtr a
ptr_glProgramNamedParameter4fvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fragment_program"
        "glProgramNamedParameter4fvNV"
 
glProgramNamedParameter4fvNV ::
                             GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLfloat -> IO ()
glProgramNamedParameter4fvNV
  = dyn_glProgramNamedParameter4fvNV ptr_glProgramNamedParameter4fvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramNamedParameter4fvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glProgramNamedParameter4dNV #-}
 
ptr_glProgramNamedParameter4dNV :: FunPtr a
ptr_glProgramNamedParameter4dNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fragment_program"
        "glProgramNamedParameter4dNV"
 
glProgramNamedParameter4dNV ::
                            GLuint ->
                              GLsizei ->
                                Ptr GLubyte ->
                                  GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glProgramNamedParameter4dNV
  = dyn_glProgramNamedParameter4dNV ptr_glProgramNamedParameter4dNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramNamedParameter4dNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei ->
                      Ptr GLubyte ->
                        GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glProgramNamedParameter4fNV #-}
 
ptr_glProgramNamedParameter4fNV :: FunPtr a
ptr_glProgramNamedParameter4fNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_fragment_program"
        "glProgramNamedParameter4fNV"
 
glProgramNamedParameter4fNV ::
                            GLuint ->
                              GLsizei ->
                                Ptr GLubyte -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glProgramNamedParameter4fNV
  = dyn_glProgramNamedParameter4fNV ptr_glProgramNamedParameter4fNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glProgramNamedParameter4fNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei ->
                      Ptr GLubyte -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
gl_PROGRAM_ERROR_STRING_NV :: GLenum
gl_PROGRAM_ERROR_STRING_NV = 34932
 
gl_FRAGMENT_PROGRAM_BINDING_NV :: GLenum
gl_FRAGMENT_PROGRAM_BINDING_NV = 34931
 
gl_MAX_TEXTURE_IMAGE_UNITS_NV :: GLenum
gl_MAX_TEXTURE_IMAGE_UNITS_NV = 34930
 
gl_MAX_TEXTURE_COORDS_NV :: GLenum
gl_MAX_TEXTURE_COORDS_NV = 34929
 
gl_FRAGMENT_PROGRAM_NV :: GLenum
gl_FRAGMENT_PROGRAM_NV = 34928
 
gl_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV :: GLenum
gl_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV = 34920