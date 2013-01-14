{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexProgram4
       (glVertexAttribIPointer, glVertexAttribI4usv, glVertexAttribI4uiv,
        glVertexAttribI4ui, glVertexAttribI4ubv, glVertexAttribI4sv,
        glVertexAttribI4iv, glVertexAttribI4i, glVertexAttribI4bv,
        glVertexAttribI3uiv, glVertexAttribI3ui, glVertexAttribI3iv,
        glVertexAttribI3i, glVertexAttribI2uiv, glVertexAttribI2ui,
        glVertexAttribI2iv, glVertexAttribI2i, glVertexAttribI1uiv,
        glVertexAttribI1ui, glVertexAttribI1iv, glVertexAttribI1i,
        glGetVertexAttribIuiv, glGetVertexAttribIiv,
        gl_VERTEX_ATTRIB_ARRAY_INTEGER)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribIPointer #-}
 
ptr_glVertexAttribIPointer :: FunPtr a
ptr_glVertexAttribIPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribIPointerEXT"
 
glVertexAttribIPointer ::
                       GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glVertexAttribIPointer
  = dyn_glVertexAttribIPointer ptr_glVertexAttribIPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribIPointer
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4usv #-}
 
ptr_glVertexAttribI4usv :: FunPtr a
ptr_glVertexAttribI4usv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4usvEXT"
 
glVertexAttribI4usv :: GLuint -> Ptr GLushort -> IO ()
glVertexAttribI4usv
  = dyn_glVertexAttribI4usv ptr_glVertexAttribI4usv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4usv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4uiv #-}
 
ptr_glVertexAttribI4uiv :: FunPtr a
ptr_glVertexAttribI4uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4uivEXT"
 
glVertexAttribI4uiv :: GLuint -> Ptr GLuint -> IO ()
glVertexAttribI4uiv
  = dyn_glVertexAttribI4uiv ptr_glVertexAttribI4uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4ui #-}
 
ptr_glVertexAttribI4ui :: FunPtr a
ptr_glVertexAttribI4ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4uiEXT"
 
glVertexAttribI4ui ::
                   GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glVertexAttribI4ui = dyn_glVertexAttribI4ui ptr_glVertexAttribI4ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4ubv #-}
 
ptr_glVertexAttribI4ubv :: FunPtr a
ptr_glVertexAttribI4ubv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4ubvEXT"
 
glVertexAttribI4ubv :: GLuint -> Ptr GLubyte -> IO ()
glVertexAttribI4ubv
  = dyn_glVertexAttribI4ubv ptr_glVertexAttribI4ubv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4ubv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4sv #-}
 
ptr_glVertexAttribI4sv :: FunPtr a
ptr_glVertexAttribI4sv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4svEXT"
 
glVertexAttribI4sv :: GLuint -> Ptr GLshort -> IO ()
glVertexAttribI4sv = dyn_glVertexAttribI4sv ptr_glVertexAttribI4sv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4sv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4iv #-}
 
ptr_glVertexAttribI4iv :: FunPtr a
ptr_glVertexAttribI4iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4ivEXT"
 
glVertexAttribI4iv :: GLuint -> Ptr GLint -> IO ()
glVertexAttribI4iv = dyn_glVertexAttribI4iv ptr_glVertexAttribI4iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4i #-}
 
ptr_glVertexAttribI4i :: FunPtr a
ptr_glVertexAttribI4i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4iEXT"
 
glVertexAttribI4i ::
                  GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
glVertexAttribI4i = dyn_glVertexAttribI4i ptr_glVertexAttribI4i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI4bv #-}
 
ptr_glVertexAttribI4bv :: FunPtr a
ptr_glVertexAttribI4bv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI4bvEXT"
 
glVertexAttribI4bv :: GLuint -> Ptr GLbyte -> IO ()
glVertexAttribI4bv = dyn_glVertexAttribI4bv ptr_glVertexAttribI4bv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI4bv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI3uiv #-}
 
ptr_glVertexAttribI3uiv :: FunPtr a
ptr_glVertexAttribI3uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI3uivEXT"
 
glVertexAttribI3uiv :: GLuint -> Ptr GLuint -> IO ()
glVertexAttribI3uiv
  = dyn_glVertexAttribI3uiv ptr_glVertexAttribI3uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI3uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI3ui #-}
 
ptr_glVertexAttribI3ui :: FunPtr a
ptr_glVertexAttribI3ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI3uiEXT"
 
glVertexAttribI3ui :: GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glVertexAttribI3ui = dyn_glVertexAttribI3ui ptr_glVertexAttribI3ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI3ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI3iv #-}
 
ptr_glVertexAttribI3iv :: FunPtr a
ptr_glVertexAttribI3iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI3ivEXT"
 
glVertexAttribI3iv :: GLuint -> Ptr GLint -> IO ()
glVertexAttribI3iv = dyn_glVertexAttribI3iv ptr_glVertexAttribI3iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI3iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI3i #-}
 
ptr_glVertexAttribI3i :: FunPtr a
ptr_glVertexAttribI3i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI3iEXT"
 
glVertexAttribI3i :: GLuint -> GLint -> GLint -> GLint -> IO ()
glVertexAttribI3i = dyn_glVertexAttribI3i ptr_glVertexAttribI3i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI3i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI2uiv #-}
 
ptr_glVertexAttribI2uiv :: FunPtr a
ptr_glVertexAttribI2uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI2uivEXT"
 
glVertexAttribI2uiv :: GLuint -> Ptr GLuint -> IO ()
glVertexAttribI2uiv
  = dyn_glVertexAttribI2uiv ptr_glVertexAttribI2uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI2uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI2ui #-}
 
ptr_glVertexAttribI2ui :: FunPtr a
ptr_glVertexAttribI2ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI2uiEXT"
 
glVertexAttribI2ui :: GLuint -> GLuint -> GLuint -> IO ()
glVertexAttribI2ui = dyn_glVertexAttribI2ui ptr_glVertexAttribI2ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI2ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI2iv #-}
 
ptr_glVertexAttribI2iv :: FunPtr a
ptr_glVertexAttribI2iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI2ivEXT"
 
glVertexAttribI2iv :: GLuint -> Ptr GLint -> IO ()
glVertexAttribI2iv = dyn_glVertexAttribI2iv ptr_glVertexAttribI2iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI2iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI2i #-}
 
ptr_glVertexAttribI2i :: FunPtr a
ptr_glVertexAttribI2i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI2iEXT"
 
glVertexAttribI2i :: GLuint -> GLint -> GLint -> IO ()
glVertexAttribI2i = dyn_glVertexAttribI2i ptr_glVertexAttribI2i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI2i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI1uiv #-}
 
ptr_glVertexAttribI1uiv :: FunPtr a
ptr_glVertexAttribI1uiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI1uivEXT"
 
glVertexAttribI1uiv :: GLuint -> Ptr GLuint -> IO ()
glVertexAttribI1uiv
  = dyn_glVertexAttribI1uiv ptr_glVertexAttribI1uiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI1uiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI1ui #-}
 
ptr_glVertexAttribI1ui :: FunPtr a
ptr_glVertexAttribI1ui
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI1uiEXT"
 
glVertexAttribI1ui :: GLuint -> GLuint -> IO ()
glVertexAttribI1ui = dyn_glVertexAttribI1ui ptr_glVertexAttribI1ui
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI1ui ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI1iv #-}
 
ptr_glVertexAttribI1iv :: FunPtr a
ptr_glVertexAttribI1iv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI1ivEXT"
 
glVertexAttribI1iv :: GLuint -> Ptr GLint -> IO ()
glVertexAttribI1iv = dyn_glVertexAttribI1iv ptr_glVertexAttribI1iv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI1iv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVertexAttribI1i #-}
 
ptr_glVertexAttribI1i :: FunPtr a
ptr_glVertexAttribI1i
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glVertexAttribI1iEXT"
 
glVertexAttribI1i :: GLuint -> GLint -> IO ()
glVertexAttribI1i = dyn_glVertexAttribI1i ptr_glVertexAttribI1i
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribI1i ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribIuiv #-}
 
ptr_glGetVertexAttribIuiv :: FunPtr a
ptr_glGetVertexAttribIuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glGetVertexAttribIuivEXT"
 
glGetVertexAttribIuiv :: GLuint -> GLenum -> Ptr GLuint -> IO ()
glGetVertexAttribIuiv
  = dyn_glGetVertexAttribIuiv ptr_glGetVertexAttribIuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribIuiv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribIiv #-}
 
ptr_glGetVertexAttribIiv :: FunPtr a
ptr_glGetVertexAttribIiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_program4"
        "glGetVertexAttribIivEXT"
 
glGetVertexAttribIiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVertexAttribIiv
  = dyn_glGetVertexAttribIiv ptr_glGetVertexAttribIiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribIiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
gl_VERTEX_ATTRIB_ARRAY_INTEGER :: GLenum
gl_VERTEX_ATTRIB_ARRAY_INTEGER = 35069