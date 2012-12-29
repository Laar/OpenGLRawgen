{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.VertexAttrib64bit
       (glVertexArrayVertexAttribLOffsetEXT, glGetVertexAttribLdvEXT,
        glVertexAttribLPointerEXT, glVertexAttribL4dvEXT,
        glVertexAttribL3dvEXT, glVertexAttribL2dvEXT,
        glVertexAttribL1dvEXT, glVertexAttribL4dEXT, glVertexAttribL3dEXT,
        glVertexAttribL2dEXT, glVertexAttribL1dEXT, gl_DOUBLE_MAT4x3_EXT,
        gl_DOUBLE_MAT4x2_EXT, gl_DOUBLE_MAT3x4_EXT, gl_DOUBLE_MAT3x2_EXT,
        gl_DOUBLE_MAT2x4_EXT, gl_DOUBLE_MAT2x3_EXT, gl_DOUBLE_MAT4_EXT,
        gl_DOUBLE_MAT3_EXT, gl_DOUBLE_MAT2_EXT, gl_DOUBLE_VEC4_EXT,
        gl_DOUBLE_VEC3_EXT, gl_DOUBLE_VEC2_EXT, gl_DOUBLE)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11
       (gl_DOUBLE)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexArrayVertexAttribLOffsetEXT #-}
 
ptr_glVertexArrayVertexAttribLOffsetEXT :: FunPtr a
ptr_glVertexArrayVertexAttribLOffsetEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexArrayVertexAttribLOffsetEXT"
 
glVertexArrayVertexAttribLOffsetEXT ::
                                    GLuint ->
                                      GLuint ->
                                        GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> IO ()
glVertexArrayVertexAttribLOffsetEXT
  = dyn_glVertexArrayVertexAttribLOffsetEXT
      ptr_glVertexArrayVertexAttribLOffsetEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexArrayVertexAttribLOffsetEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLuint ->
                      GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> IO ())
 
{-# NOINLINE ptr_glGetVertexAttribLdvEXT #-}
 
ptr_glGetVertexAttribLdvEXT :: FunPtr a
ptr_glGetVertexAttribLdvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glGetVertexAttribLdvEXT"
 
glGetVertexAttribLdvEXT ::
                        GLuint -> GLenum -> Ptr GLdouble -> IO ()
glGetVertexAttribLdvEXT
  = dyn_glGetVertexAttribLdvEXT ptr_glGetVertexAttribLdvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVertexAttribLdvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribLPointerEXT #-}
 
ptr_glVertexAttribLPointerEXT :: FunPtr a
ptr_glVertexAttribLPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribLPointerEXT"
 
glVertexAttribLPointerEXT ::
                          GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glVertexAttribLPointerEXT
  = dyn_glVertexAttribLPointerEXT ptr_glVertexAttribLPointerEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexAttribLPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL4dvEXT #-}
 
ptr_glVertexAttribL4dvEXT :: FunPtr a
ptr_glVertexAttribL4dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL4dvEXT"
 
glVertexAttribL4dvEXT :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttribL4dvEXT
  = dyn_glVertexAttribL4dvEXT ptr_glVertexAttribL4dvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL4dvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL3dvEXT #-}
 
ptr_glVertexAttribL3dvEXT :: FunPtr a
ptr_glVertexAttribL3dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL3dvEXT"
 
glVertexAttribL3dvEXT :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttribL3dvEXT
  = dyn_glVertexAttribL3dvEXT ptr_glVertexAttribL3dvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL3dvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL2dvEXT #-}
 
ptr_glVertexAttribL2dvEXT :: FunPtr a
ptr_glVertexAttribL2dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL2dvEXT"
 
glVertexAttribL2dvEXT :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttribL2dvEXT
  = dyn_glVertexAttribL2dvEXT ptr_glVertexAttribL2dvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL2dvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL1dvEXT #-}
 
ptr_glVertexAttribL1dvEXT :: FunPtr a
ptr_glVertexAttribL1dvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL1dvEXT"
 
glVertexAttribL1dvEXT :: GLuint -> Ptr GLdouble -> IO ()
glVertexAttribL1dvEXT
  = dyn_glVertexAttribL1dvEXT ptr_glVertexAttribL1dvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL1dvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL4dEXT #-}
 
ptr_glVertexAttribL4dEXT :: FunPtr a
ptr_glVertexAttribL4dEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL4dEXT"
 
glVertexAttribL4dEXT ::
                     GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexAttribL4dEXT
  = dyn_glVertexAttribL4dEXT ptr_glVertexAttribL4dEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL4dEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL3dEXT #-}
 
ptr_glVertexAttribL3dEXT :: FunPtr a
ptr_glVertexAttribL3dEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL3dEXT"
 
glVertexAttribL3dEXT ::
                     GLuint -> GLdouble -> GLdouble -> GLdouble -> IO ()
glVertexAttribL3dEXT
  = dyn_glVertexAttribL3dEXT ptr_glVertexAttribL3dEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL3dEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL2dEXT #-}
 
ptr_glVertexAttribL2dEXT :: FunPtr a
ptr_glVertexAttribL2dEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL2dEXT"
 
glVertexAttribL2dEXT :: GLuint -> GLdouble -> GLdouble -> IO ()
glVertexAttribL2dEXT
  = dyn_glVertexAttribL2dEXT ptr_glVertexAttribL2dEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL2dEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> GLdouble -> IO ())
 
{-# NOINLINE ptr_glVertexAttribL1dEXT #-}
 
ptr_glVertexAttribL1dEXT :: FunPtr a
ptr_glVertexAttribL1dEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_attrib_64bit"
        "glVertexAttribL1dEXT"
 
glVertexAttribL1dEXT :: GLuint -> GLdouble -> IO ()
glVertexAttribL1dEXT
  = dyn_glVertexAttribL1dEXT ptr_glVertexAttribL1dEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribL1dEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLdouble -> IO ())
 
gl_DOUBLE_MAT4x3_EXT :: GLenum
gl_DOUBLE_MAT4x3_EXT = 36686
 
gl_DOUBLE_MAT4x2_EXT :: GLenum
gl_DOUBLE_MAT4x2_EXT = 36685
 
gl_DOUBLE_MAT3x4_EXT :: GLenum
gl_DOUBLE_MAT3x4_EXT = 36684
 
gl_DOUBLE_MAT3x2_EXT :: GLenum
gl_DOUBLE_MAT3x2_EXT = 36683
 
gl_DOUBLE_MAT2x4_EXT :: GLenum
gl_DOUBLE_MAT2x4_EXT = 36682
 
gl_DOUBLE_MAT2x3_EXT :: GLenum
gl_DOUBLE_MAT2x3_EXT = 36681
 
gl_DOUBLE_MAT4_EXT :: GLenum
gl_DOUBLE_MAT4_EXT = 36680
 
gl_DOUBLE_MAT3_EXT :: GLenum
gl_DOUBLE_MAT3_EXT = 36679
 
gl_DOUBLE_MAT2_EXT :: GLenum
gl_DOUBLE_MAT2_EXT = 36678
 
gl_DOUBLE_VEC4_EXT :: GLenum
gl_DOUBLE_VEC4_EXT = 36862
 
gl_DOUBLE_VEC3_EXT :: GLenum
gl_DOUBLE_VEC3_EXT = 36861
 
gl_DOUBLE_VEC2_EXT :: GLenum
gl_DOUBLE_VEC2_EXT = 36860