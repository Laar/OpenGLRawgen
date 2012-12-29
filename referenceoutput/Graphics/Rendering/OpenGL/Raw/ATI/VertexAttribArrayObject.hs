{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.VertexAttribArrayObject
       (glGetVertexAttribArrayObjectivATI,
        glGetVertexAttribArrayObjectfvATI, glVertexAttribArrayObjectATI)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetVertexAttribArrayObjectivATI #-}
 
ptr_glGetVertexAttribArrayObjectivATI :: FunPtr a
ptr_glGetVertexAttribArrayObjectivATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_attrib_array_object"
        "glGetVertexAttribArrayObjectivATI"
 
glGetVertexAttribArrayObjectivATI ::
                                  GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVertexAttribArrayObjectivATI
  = dyn_glGetVertexAttribArrayObjectivATI
      ptr_glGetVertexAttribArrayObjectivATI
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVertexAttribArrayObjectivATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribArrayObjectfvATI #-}
 
ptr_glGetVertexAttribArrayObjectfvATI :: FunPtr a
ptr_glGetVertexAttribArrayObjectfvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_attrib_array_object"
        "glGetVertexAttribArrayObjectfvATI"
 
glGetVertexAttribArrayObjectfvATI ::
                                  GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetVertexAttribArrayObjectfvATI
  = dyn_glGetVertexAttribArrayObjectfvATI
      ptr_glGetVertexAttribArrayObjectfvATI
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVertexAttribArrayObjectfvATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexAttribArrayObjectATI #-}
 
ptr_glVertexAttribArrayObjectATI :: FunPtr a
ptr_glVertexAttribArrayObjectATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_attrib_array_object"
        "glVertexAttribArrayObjectATI"
 
glVertexAttribArrayObjectATI ::
                             GLuint ->
                               GLint ->
                                 GLenum -> GLboolean -> GLsizei -> GLuint -> GLuint -> IO ()
glVertexAttribArrayObjectATI
  = dyn_glVertexAttribArrayObjectATI ptr_glVertexAttribArrayObjectATI
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexAttribArrayObjectATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLint ->
                      GLenum -> GLboolean -> GLsizei -> GLuint -> GLuint -> IO ())