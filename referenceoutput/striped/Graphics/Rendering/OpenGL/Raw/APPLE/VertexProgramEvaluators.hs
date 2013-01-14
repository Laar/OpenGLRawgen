{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.VertexProgramEvaluators
       (glMapVertexAttrib2f, glMapVertexAttrib2d, glMapVertexAttrib1f,
        glMapVertexAttrib1d, glIsVertexAttribEnabled, glEnableVertexAttrib,
        glDisableVertexAttrib, gl_VERTEX_ATTRIB_MAP2_SIZE,
        gl_VERTEX_ATTRIB_MAP2_ORDER, gl_VERTEX_ATTRIB_MAP2_DOMAIN,
        gl_VERTEX_ATTRIB_MAP2_COEFF, gl_VERTEX_ATTRIB_MAP2,
        gl_VERTEX_ATTRIB_MAP1_SIZE, gl_VERTEX_ATTRIB_MAP1_ORDER,
        gl_VERTEX_ATTRIB_MAP1_DOMAIN, gl_VERTEX_ATTRIB_MAP1_COEFF,
        gl_VERTEX_ATTRIB_MAP1)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMapVertexAttrib2f #-}
 
ptr_glMapVertexAttrib2f :: FunPtr a
ptr_glMapVertexAttrib2f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_program_evaluators"
        "glMapVertexAttrib2fAPPLE"
 
glMapVertexAttrib2f ::
                    GLuint ->
                      GLuint ->
                        GLfloat ->
                          GLfloat ->
                            GLint ->
                              GLint ->
                                GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()
glMapVertexAttrib2f
  = dyn_glMapVertexAttrib2f ptr_glMapVertexAttrib2f
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapVertexAttrib2f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLfloat ->
                        GLfloat ->
                          GLint ->
                            GLint ->
                              GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMapVertexAttrib2d #-}
 
ptr_glMapVertexAttrib2d :: FunPtr a
ptr_glMapVertexAttrib2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_program_evaluators"
        "glMapVertexAttrib2dAPPLE"
 
glMapVertexAttrib2d ::
                    GLuint ->
                      GLuint ->
                        GLdouble ->
                          GLdouble ->
                            GLint ->
                              GLint ->
                                GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()
glMapVertexAttrib2d
  = dyn_glMapVertexAttrib2d ptr_glMapVertexAttrib2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapVertexAttrib2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLdouble ->
                        GLdouble ->
                          GLint ->
                            GLint ->
                              GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glMapVertexAttrib1f #-}
 
ptr_glMapVertexAttrib1f :: FunPtr a
ptr_glMapVertexAttrib1f
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_program_evaluators"
        "glMapVertexAttrib1fAPPLE"
 
glMapVertexAttrib1f ::
                    GLuint ->
                      GLuint ->
                        GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ()
glMapVertexAttrib1f
  = dyn_glMapVertexAttrib1f ptr_glMapVertexAttrib1f
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapVertexAttrib1f ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMapVertexAttrib1d #-}
 
ptr_glMapVertexAttrib1d :: FunPtr a
ptr_glMapVertexAttrib1d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_program_evaluators"
        "glMapVertexAttrib1dAPPLE"
 
glMapVertexAttrib1d ::
                    GLuint ->
                      GLuint ->
                        GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ()
glMapVertexAttrib1d
  = dyn_glMapVertexAttrib1d ptr_glMapVertexAttrib1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapVertexAttrib1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glIsVertexAttribEnabled #-}
 
ptr_glIsVertexAttribEnabled :: FunPtr a
ptr_glIsVertexAttribEnabled
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_program_evaluators"
        "glIsVertexAttribEnabledAPPLE"
 
glIsVertexAttribEnabled :: GLuint -> GLenum -> IO GLboolean
glIsVertexAttribEnabled
  = dyn_glIsVertexAttribEnabled ptr_glIsVertexAttribEnabled
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsVertexAttribEnabled
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO GLboolean)
 
{-# NOINLINE ptr_glEnableVertexAttrib #-}
 
ptr_glEnableVertexAttrib :: FunPtr a
ptr_glEnableVertexAttrib
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_program_evaluators"
        "glEnableVertexAttribAPPLE"
 
glEnableVertexAttrib :: GLuint -> GLenum -> IO ()
glEnableVertexAttrib
  = dyn_glEnableVertexAttrib ptr_glEnableVertexAttrib
 
foreign import CALLCONV unsafe "dynamic" dyn_glEnableVertexAttrib ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glDisableVertexAttrib #-}
 
ptr_glDisableVertexAttrib :: FunPtr a
ptr_glDisableVertexAttrib
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_vertex_program_evaluators"
        "glDisableVertexAttribAPPLE"
 
glDisableVertexAttrib :: GLuint -> GLenum -> IO ()
glDisableVertexAttrib
  = dyn_glDisableVertexAttrib ptr_glDisableVertexAttrib
 
foreign import CALLCONV unsafe "dynamic" dyn_glDisableVertexAttrib
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
gl_VERTEX_ATTRIB_MAP2_SIZE :: GLenum
gl_VERTEX_ATTRIB_MAP2_SIZE = 35334
 
gl_VERTEX_ATTRIB_MAP2_ORDER :: GLenum
gl_VERTEX_ATTRIB_MAP2_ORDER = 35336
 
gl_VERTEX_ATTRIB_MAP2_DOMAIN :: GLenum
gl_VERTEX_ATTRIB_MAP2_DOMAIN = 35337
 
gl_VERTEX_ATTRIB_MAP2_COEFF :: GLenum
gl_VERTEX_ATTRIB_MAP2_COEFF = 35335
 
gl_VERTEX_ATTRIB_MAP2 :: GLenum
gl_VERTEX_ATTRIB_MAP2 = 35329
 
gl_VERTEX_ATTRIB_MAP1_SIZE :: GLenum
gl_VERTEX_ATTRIB_MAP1_SIZE = 35330
 
gl_VERTEX_ATTRIB_MAP1_ORDER :: GLenum
gl_VERTEX_ATTRIB_MAP1_ORDER = 35332
 
gl_VERTEX_ATTRIB_MAP1_DOMAIN :: GLenum
gl_VERTEX_ATTRIB_MAP1_DOMAIN = 35333
 
gl_VERTEX_ATTRIB_MAP1_COEFF :: GLenum
gl_VERTEX_ATTRIB_MAP1_COEFF = 35331
 
gl_VERTEX_ATTRIB_MAP1 :: GLenum
gl_VERTEX_ATTRIB_MAP1 = 35328