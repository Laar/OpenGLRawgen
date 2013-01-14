{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.VertexAttrib64bit
       (glVertexAttribLPointer, glVertexAttribL4dv, glVertexAttribL4d,
        glVertexAttribL3dv, glVertexAttribL3d, glVertexAttribL2dv,
        glVertexAttribL2d, glVertexAttribL1dv, glVertexAttribL1d,
        glVertexArrayVertexAttribLOffset, glGetVertexAttribLdv,
        gl_DOUBLE_VEC4, gl_DOUBLE_VEC3, gl_DOUBLE_VEC2, gl_DOUBLE_MAT4x3,
        gl_DOUBLE_MAT4x2, gl_DOUBLE_MAT4, gl_DOUBLE_MAT3x4,
        gl_DOUBLE_MAT3x2, gl_DOUBLE_MAT3, gl_DOUBLE_MAT2x4,
        gl_DOUBLE_MAT2x3, gl_DOUBLE_MAT2, gl_DOUBLE)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11
       (gl_DOUBLE)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribLPointer #-}
 
ptr_glVertexAttribLPointer :: FunPtr a
ptr_glVertexAttribLPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribLPointerEXT"
 
glVertexAttribLPointer ::
                       GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glVertexAttribLPointer
  = dyn_glVertexAttribLPointer ptr_glVertexAttribLPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribLPointer
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL4dv #-}
 
ptr_glVertexAttribL4dv :: FunPtr a
ptr_glVertexAttribL4dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL4dvEXT"
 
glVertexAttribL4dv :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttribL4dv = dyn_glVertexAttribL4dv ptr_glVertexAttribL4dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL4dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL4d #-}
 
ptr_glVertexAttribL4d :: FunPtr a
ptr_glVertexAttribL4d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL4dEXT"
 
glVertexAttribL4d ::
                  GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexAttribL4d = dyn_glVertexAttribL4d ptr_glVertexAttribL4d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL4d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL3dv #-}
 
ptr_glVertexAttribL3dv :: FunPtr a
ptr_glVertexAttribL3dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL3dvEXT"
 
glVertexAttribL3dv :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttribL3dv = dyn_glVertexAttribL3dv ptr_glVertexAttribL3dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL3dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL3d #-}
 
ptr_glVertexAttribL3d :: FunPtr a
ptr_glVertexAttribL3d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL3dEXT"
 
glVertexAttribL3d ::
                  GLuint -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexAttribL3d = dyn_glVertexAttribL3d ptr_glVertexAttribL3d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL3d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL2dv #-}
 
ptr_glVertexAttribL2dv :: FunPtr a
ptr_glVertexAttribL2dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL2dvEXT"
 
glVertexAttribL2dv :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttribL2dv = dyn_glVertexAttribL2dv ptr_glVertexAttribL2dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL2dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL2d #-}
 
ptr_glVertexAttribL2d :: FunPtr a
ptr_glVertexAttribL2d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL2dEXT"
 
glVertexAttribL2d :: GLuint -> GLdouble -> GLdouble -> IO ()
glVertexAttribL2d = dyn_glVertexAttribL2d ptr_glVertexAttribL2d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL2d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL1dv #-}
 
ptr_glVertexAttribL1dv :: FunPtr a
ptr_glVertexAttribL1dv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL1dvEXT"
 
glVertexAttribL1dv :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttribL1dv = dyn_glVertexAttribL1dv ptr_glVertexAttribL1dv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL1dv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL1d #-}
 
ptr_glVertexAttribL1d :: FunPtr a
ptr_glVertexAttribL1d
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL1dEXT"
 
glVertexAttribL1d :: GLuint -> GLdouble -> IO ()
glVertexAttribL1d = dyn_glVertexAttribL1d ptr_glVertexAttribL1d
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL1d ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexArrayVertexAttribLOffset #-}
 
ptr_glVertexArrayVertexAttribLOffset :: FunPtr a
ptr_glVertexArrayVertexAttribLOffset
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexArrayVertexAttribLOffsetEXT"
 
glVertexArrayVertexAttribLOffset ::
                                 GLuint ->
                                   GLuint ->
                                     GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> IO ()
glVertexArrayVertexAttribLOffset
  = dyn_glVertexArrayVertexAttribLOffset
      ptr_glVertexArrayVertexAttribLOffset
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexArrayVertexAttribLOffset ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribLdv #-}
 
ptr_glGetVertexAttribLdv :: FunPtr a
ptr_glGetVertexAttribLdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glGetVertexAttribLdvEXT"
 
glGetVertexAttribLdv :: GLuint -> GLenum -> Ptr GLdouble -> IO ()
glGetVertexAttribLdv
  = dyn_glGetVertexAttribLdv ptr_glGetVertexAttribLdv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribLdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLdouble -> IO ())
 
gl_DOUBLE_VEC4 :: GLenum
gl_DOUBLE_VEC4 = 36862
 
gl_DOUBLE_VEC3 :: GLenum
gl_DOUBLE_VEC3 = 36861
 
gl_DOUBLE_VEC2 :: GLenum
gl_DOUBLE_VEC2 = 36860
 
gl_DOUBLE_MAT4x3 :: GLenum
gl_DOUBLE_MAT4x3 = 36686
 
gl_DOUBLE_MAT4x2 :: GLenum
gl_DOUBLE_MAT4x2 = 36685
 
gl_DOUBLE_MAT4 :: GLenum
gl_DOUBLE_MAT4 = 36680
 
gl_DOUBLE_MAT3x4 :: GLenum
gl_DOUBLE_MAT3x4 = 36684
 
gl_DOUBLE_MAT3x2 :: GLenum
gl_DOUBLE_MAT3x2 = 36683
 
gl_DOUBLE_MAT3 :: GLenum
gl_DOUBLE_MAT3 = 36679
 
gl_DOUBLE_MAT2x4 :: GLenum
gl_DOUBLE_MAT2x4 = 36682
 
gl_DOUBLE_MAT2x3 :: GLenum
gl_DOUBLE_MAT2x3 = 36681
 
gl_DOUBLE_MAT2 :: GLenum
gl_DOUBLE_MAT2 = 36678