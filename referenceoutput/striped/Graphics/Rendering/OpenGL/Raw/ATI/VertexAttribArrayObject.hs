{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.VertexAttribArrayObject
       (glVertexAttribArrayObject, glGetVertexAttribArrayObjectiv,
        glGetVertexAttribArrayObjectfv)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribArrayObject #-}
 
ptr_glVertexAttribArrayObject :: FunPtr a
ptr_glVertexAttribArrayObject
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_attrib_array_object"
        "glVertexAttribArrayObjectATI"
 
glVertexAttribArrayObject ::
                          GLuint ->
                            GLint ->
                              GLenum -> GLboolean -> GLsizei -> GLuint -> GLuint -> IO ()
glVertexAttribArrayObject
  = dyn_glVertexAttribArrayObject ptr_glVertexAttribArrayObject
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexAttribArrayObject ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint ->
                      GLenum -> GLboolean -> GLsizei -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribArrayObjectiv #-}
 
ptr_glGetVertexAttribArrayObjectiv :: FunPtr a
ptr_glGetVertexAttribArrayObjectiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_attrib_array_object"
        "glGetVertexAttribArrayObjectivATI"
 
glGetVertexAttribArrayObjectiv ::
                               GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVertexAttribArrayObjectiv
  = dyn_glGetVertexAttribArrayObjectiv
      ptr_glGetVertexAttribArrayObjectiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVertexAttribArrayObjectiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribArrayObjectfv #-}
 
ptr_glGetVertexAttribArrayObjectfv :: FunPtr a
ptr_glGetVertexAttribArrayObjectfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_attrib_array_object"
        "glGetVertexAttribArrayObjectfvATI"
 
glGetVertexAttribArrayObjectfv ::
                               GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetVertexAttribArrayObjectfv
  = dyn_glGetVertexAttribArrayObjectfv
      ptr_glGetVertexAttribArrayObjectfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVertexAttribArrayObjectfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())