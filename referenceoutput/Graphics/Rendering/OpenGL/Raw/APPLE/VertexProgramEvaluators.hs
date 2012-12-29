{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.VertexProgramEvaluators
       (glMapVertexAttrib2fAPPLE, glMapVertexAttrib2dAPPLE,
        glMapVertexAttrib1fAPPLE, glMapVertexAttrib1dAPPLE,
        glIsVertexAttribEnabledAPPLE, glDisableVertexAttribAPPLE,
        glEnableVertexAttribAPPLE, gl_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE,
        gl_VERTEX_ATTRIB_MAP2_ORDER_APPLE,
        gl_VERTEX_ATTRIB_MAP2_COEFF_APPLE,
        gl_VERTEX_ATTRIB_MAP2_SIZE_APPLE,
        gl_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE,
        gl_VERTEX_ATTRIB_MAP1_ORDER_APPLE,
        gl_VERTEX_ATTRIB_MAP1_COEFF_APPLE,
        gl_VERTEX_ATTRIB_MAP1_SIZE_APPLE, gl_VERTEX_ATTRIB_MAP2_APPLE,
        gl_VERTEX_ATTRIB_MAP1_APPLE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMapVertexAttrib2fAPPLE #-}
 
ptr_glMapVertexAttrib2fAPPLE :: FunPtr a
ptr_glMapVertexAttrib2fAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_program_evaluators"
        "glMapVertexAttrib2fAPPLE"
 
glMapVertexAttrib2fAPPLE ::
                         GLuint ->
                           GLuint ->
                             GLfloat ->
                               GLfloat ->
                                 GLint ->
                                   GLint ->
                                     GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()
glMapVertexAttrib2fAPPLE
  = dyn_glMapVertexAttrib2fAPPLE ptr_glMapVertexAttrib2fAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMapVertexAttrib2fAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLfloat ->
                        GLfloat ->
                          GLint ->
                            GLint ->
                              GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMapVertexAttrib2dAPPLE #-}
 
ptr_glMapVertexAttrib2dAPPLE :: FunPtr a
ptr_glMapVertexAttrib2dAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_program_evaluators"
        "glMapVertexAttrib2dAPPLE"
 
glMapVertexAttrib2dAPPLE ::
                         GLuint ->
                           GLuint ->
                             GLdouble ->
                               GLdouble ->
                                 GLint ->
                                   GLint ->
                                     GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()
glMapVertexAttrib2dAPPLE
  = dyn_glMapVertexAttrib2dAPPLE ptr_glMapVertexAttrib2dAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMapVertexAttrib2dAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLdouble ->
                        GLdouble ->
                          GLint ->
                            GLint ->
                              GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMapVertexAttrib1fAPPLE #-}
 
ptr_glMapVertexAttrib1fAPPLE :: FunPtr a
ptr_glMapVertexAttrib1fAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_program_evaluators"
        "glMapVertexAttrib1fAPPLE"
 
glMapVertexAttrib1fAPPLE ::
                         GLuint ->
                           GLuint ->
                             GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()
glMapVertexAttrib1fAPPLE
  = dyn_glMapVertexAttrib1fAPPLE ptr_glMapVertexAttrib1fAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMapVertexAttrib1fAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMapVertexAttrib1dAPPLE #-}
 
ptr_glMapVertexAttrib1dAPPLE :: FunPtr a
ptr_glMapVertexAttrib1dAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_program_evaluators"
        "glMapVertexAttrib1dAPPLE"
 
glMapVertexAttrib1dAPPLE ::
                         GLuint ->
                           GLuint ->
                             GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()
glMapVertexAttrib1dAPPLE
  = dyn_glMapVertexAttrib1dAPPLE ptr_glMapVertexAttrib1dAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMapVertexAttrib1dAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glIsVertexAttribEnabledAPPLE #-}
 
ptr_glIsVertexAttribEnabledAPPLE :: FunPtr a
ptr_glIsVertexAttribEnabledAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_program_evaluators"
        "glIsVertexAttribEnabledAPPLE"
 
glIsVertexAttribEnabledAPPLE :: GLuint -> GLenum -> IO GLboolean
glIsVertexAttribEnabledAPPLE
  = dyn_glIsVertexAttribEnabledAPPLE ptr_glIsVertexAttribEnabledAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glIsVertexAttribEnabledAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO GLboolean)
 
{-# NOINLINE ptr_glDisableVertexAttribAPPLE #-}
 
ptr_glDisableVertexAttribAPPLE :: FunPtr a
ptr_glDisableVertexAttribAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_program_evaluators"
        "glDisableVertexAttribAPPLE"
 
glDisableVertexAttribAPPLE :: GLuint -> GLenum -> IO ()
glDisableVertexAttribAPPLE
  = dyn_glDisableVertexAttribAPPLE ptr_glDisableVertexAttribAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDisableVertexAttribAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glEnableVertexAttribAPPLE #-}
 
ptr_glEnableVertexAttribAPPLE :: FunPtr a
ptr_glEnableVertexAttribAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_program_evaluators"
        "glEnableVertexAttribAPPLE"
 
glEnableVertexAttribAPPLE :: GLuint -> GLenum -> IO ()
glEnableVertexAttribAPPLE
  = dyn_glEnableVertexAttribAPPLE ptr_glEnableVertexAttribAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glEnableVertexAttribAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
gl_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE = 35337
 
gl_VERTEX_ATTRIB_MAP2_ORDER_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP2_ORDER_APPLE = 35336
 
gl_VERTEX_ATTRIB_MAP2_COEFF_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP2_COEFF_APPLE = 35335
 
gl_VERTEX_ATTRIB_MAP2_SIZE_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP2_SIZE_APPLE = 35334
 
gl_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE = 35333
 
gl_VERTEX_ATTRIB_MAP1_ORDER_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP1_ORDER_APPLE = 35332
 
gl_VERTEX_ATTRIB_MAP1_COEFF_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP1_COEFF_APPLE = 35331
 
gl_VERTEX_ATTRIB_MAP1_SIZE_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP1_SIZE_APPLE = 35330
 
gl_VERTEX_ATTRIB_MAP2_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP2_APPLE = 35329
 
gl_VERTEX_ATTRIB_MAP1_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP1_APPLE = 35328