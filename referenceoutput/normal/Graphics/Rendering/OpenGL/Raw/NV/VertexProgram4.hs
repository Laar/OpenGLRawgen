{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexProgram4
       (glVertexAttribIPointerEXT, glVertexAttribI4usvEXT,
        glVertexAttribI4uivEXT, glVertexAttribI4uiEXT,
        glVertexAttribI4ubvEXT, glVertexAttribI4svEXT,
        glVertexAttribI4ivEXT, glVertexAttribI4iEXT, glVertexAttribI4bvEXT,
        glVertexAttribI3uivEXT, glVertexAttribI3uiEXT,
        glVertexAttribI3ivEXT, glVertexAttribI3iEXT,
        glVertexAttribI2uivEXT, glVertexAttribI2uiEXT,
        glVertexAttribI2ivEXT, glVertexAttribI2iEXT,
        glVertexAttribI1uivEXT, glVertexAttribI1uiEXT,
        glVertexAttribI1ivEXT, glVertexAttribI1iEXT,
        glGetVertexAttribIuivEXT, glGetVertexAttribIivEXT,
        gl_VERTEX_ATTRIB_ARRAY_INTEGER_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribIPointerEXT #-}
 
ptr_glVertexAttribIPointerEXT :: FunPtr a
ptr_glVertexAttribIPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribIPointerEXT"
 
glVertexAttribIPointerEXT ::
                          GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glVertexAttribIPointerEXT
  = dyn_glVertexAttribIPointerEXT ptr_glVertexAttribIPointerEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexAttribIPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4usvEXT #-}
 
ptr_glVertexAttribI4usvEXT :: FunPtr a
ptr_glVertexAttribI4usvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4usvEXT"
 
glVertexAttribI4usvEXT :: GLuint -> Ptr GLushort -> IO ()
glVertexAttribI4usvEXT
  = dyn_glVertexAttribI4usvEXT ptr_glVertexAttribI4usvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4usvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4uivEXT #-}
 
ptr_glVertexAttribI4uivEXT :: FunPtr a
ptr_glVertexAttribI4uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4uivEXT"
 
glVertexAttribI4uivEXT :: GLuint -> Ptr GLuint -> IO ()
glVertexAttribI4uivEXT
  = dyn_glVertexAttribI4uivEXT ptr_glVertexAttribI4uivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4uivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4uiEXT #-}
 
ptr_glVertexAttribI4uiEXT :: FunPtr a
ptr_glVertexAttribI4uiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4uiEXT"
 
glVertexAttribI4uiEXT ::
                      GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glVertexAttribI4uiEXT
  = dyn_glVertexAttribI4uiEXT ptr_glVertexAttribI4uiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4uiEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4ubvEXT #-}
 
ptr_glVertexAttribI4ubvEXT :: FunPtr a
ptr_glVertexAttribI4ubvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4ubvEXT"
 
glVertexAttribI4ubvEXT :: GLuint -> Ptr GLubyte -> IO ()
glVertexAttribI4ubvEXT
  = dyn_glVertexAttribI4ubvEXT ptr_glVertexAttribI4ubvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4ubvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4svEXT #-}
 
ptr_glVertexAttribI4svEXT :: FunPtr a
ptr_glVertexAttribI4svEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4svEXT"
 
glVertexAttribI4svEXT :: GLuint -> Ptr GLshort -> IO ()
glVertexAttribI4svEXT
  = dyn_glVertexAttribI4svEXT ptr_glVertexAttribI4svEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4svEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4ivEXT #-}
 
ptr_glVertexAttribI4ivEXT :: FunPtr a
ptr_glVertexAttribI4ivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4ivEXT"
 
glVertexAttribI4ivEXT :: GLuint -> Ptr GLint -> IO ()
glVertexAttribI4ivEXT
  = dyn_glVertexAttribI4ivEXT ptr_glVertexAttribI4ivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4ivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4iEXT #-}
 
ptr_glVertexAttribI4iEXT :: FunPtr a
ptr_glVertexAttribI4iEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4iEXT"
 
glVertexAttribI4iEXT ::
                     GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
glVertexAttribI4iEXT
  = dyn_glVertexAttribI4iEXT ptr_glVertexAttribI4iEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4iEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4bvEXT #-}
 
ptr_glVertexAttribI4bvEXT :: FunPtr a
ptr_glVertexAttribI4bvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4bvEXT"
 
glVertexAttribI4bvEXT :: GLuint -> Ptr GLbyte -> IO ()
glVertexAttribI4bvEXT
  = dyn_glVertexAttribI4bvEXT ptr_glVertexAttribI4bvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4bvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI3uivEXT #-}
 
ptr_glVertexAttribI3uivEXT :: FunPtr a
ptr_glVertexAttribI3uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI3uivEXT"
 
glVertexAttribI3uivEXT :: GLuint -> Ptr GLuint -> IO ()
glVertexAttribI3uivEXT
  = dyn_glVertexAttribI3uivEXT ptr_glVertexAttribI3uivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI3uivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI3uiEXT #-}
 
ptr_glVertexAttribI3uiEXT :: FunPtr a
ptr_glVertexAttribI3uiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI3uiEXT"
 
glVertexAttribI3uiEXT ::
                      GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glVertexAttribI3uiEXT
  = dyn_glVertexAttribI3uiEXT ptr_glVertexAttribI3uiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI3uiEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI3ivEXT #-}
 
ptr_glVertexAttribI3ivEXT :: FunPtr a
ptr_glVertexAttribI3ivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI3ivEXT"
 
glVertexAttribI3ivEXT :: GLuint -> Ptr GLint -> IO ()
glVertexAttribI3ivEXT
  = dyn_glVertexAttribI3ivEXT ptr_glVertexAttribI3ivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI3ivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI3iEXT #-}
 
ptr_glVertexAttribI3iEXT :: FunPtr a
ptr_glVertexAttribI3iEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI3iEXT"
 
glVertexAttribI3iEXT :: GLuint -> GLint -> GLint -> GLint -> IO ()
glVertexAttribI3iEXT
  = dyn_glVertexAttribI3iEXT ptr_glVertexAttribI3iEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI3iEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI2uivEXT #-}
 
ptr_glVertexAttribI2uivEXT :: FunPtr a
ptr_glVertexAttribI2uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI2uivEXT"
 
glVertexAttribI2uivEXT :: GLuint -> Ptr GLuint -> IO ()
glVertexAttribI2uivEXT
  = dyn_glVertexAttribI2uivEXT ptr_glVertexAttribI2uivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI2uivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI2uiEXT #-}
 
ptr_glVertexAttribI2uiEXT :: FunPtr a
ptr_glVertexAttribI2uiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI2uiEXT"
 
glVertexAttribI2uiEXT :: GLuint -> GLuint -> GLuint -> IO ()
glVertexAttribI2uiEXT
  = dyn_glVertexAttribI2uiEXT ptr_glVertexAttribI2uiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI2uiEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI2ivEXT #-}
 
ptr_glVertexAttribI2ivEXT :: FunPtr a
ptr_glVertexAttribI2ivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI2ivEXT"
 
glVertexAttribI2ivEXT :: GLuint -> Ptr GLint -> IO ()
glVertexAttribI2ivEXT
  = dyn_glVertexAttribI2ivEXT ptr_glVertexAttribI2ivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI2ivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI2iEXT #-}
 
ptr_glVertexAttribI2iEXT :: FunPtr a
ptr_glVertexAttribI2iEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI2iEXT"
 
glVertexAttribI2iEXT :: GLuint -> GLint -> GLint -> IO ()
glVertexAttribI2iEXT
  = dyn_glVertexAttribI2iEXT ptr_glVertexAttribI2iEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI2iEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI1uivEXT #-}
 
ptr_glVertexAttribI1uivEXT :: FunPtr a
ptr_glVertexAttribI1uivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI1uivEXT"
 
glVertexAttribI1uivEXT :: GLuint -> Ptr GLuint -> IO ()
glVertexAttribI1uivEXT
  = dyn_glVertexAttribI1uivEXT ptr_glVertexAttribI1uivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI1uivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI1uiEXT #-}
 
ptr_glVertexAttribI1uiEXT :: FunPtr a
ptr_glVertexAttribI1uiEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI1uiEXT"
 
glVertexAttribI1uiEXT :: GLuint -> GLuint -> IO ()
glVertexAttribI1uiEXT
  = dyn_glVertexAttribI1uiEXT ptr_glVertexAttribI1uiEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI1uiEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI1ivEXT #-}
 
ptr_glVertexAttribI1ivEXT :: FunPtr a
ptr_glVertexAttribI1ivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI1ivEXT"
 
glVertexAttribI1ivEXT :: GLuint -> Ptr GLint -> IO ()
glVertexAttribI1ivEXT
  = dyn_glVertexAttribI1ivEXT ptr_glVertexAttribI1ivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI1ivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI1iEXT #-}
 
ptr_glVertexAttribI1iEXT :: FunPtr a
ptr_glVertexAttribI1iEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI1iEXT"
 
glVertexAttribI1iEXT :: GLuint -> GLint -> IO ()
glVertexAttribI1iEXT
  = dyn_glVertexAttribI1iEXT ptr_glVertexAttribI1iEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI1iEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribIuivEXT #-}
 
ptr_glGetVertexAttribIuivEXT :: FunPtr a
ptr_glGetVertexAttribIuivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glGetVertexAttribIuivEXT"
 
glGetVertexAttribIuivEXT :: GLuint -> GLenum -> Ptr GLuint -> IO ()
glGetVertexAttribIuivEXT
  = dyn_glGetVertexAttribIuivEXT ptr_glGetVertexAttribIuivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVertexAttribIuivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribIivEXT #-}
 
ptr_glGetVertexAttribIivEXT :: FunPtr a
ptr_glGetVertexAttribIivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glGetVertexAttribIivEXT"
 
glGetVertexAttribIivEXT :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVertexAttribIivEXT
  = dyn_glGetVertexAttribIivEXT ptr_glGetVertexAttribIivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribIivEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
gl_VERTEX_ATTRIB_ARRAY_INTEGER_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY_INTEGER_NV = 35069