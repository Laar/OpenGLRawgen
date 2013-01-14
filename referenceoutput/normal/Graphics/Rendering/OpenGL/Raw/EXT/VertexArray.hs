{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.VertexArray
       (glVertexPointerEXT, glTexCoordPointerEXT, glNormalPointerEXT,
        glIndexPointerEXT, glGetPointervEXT, glEdgeFlagPointerEXT,
        glDrawArraysEXT, glColorPointerEXT, glArrayElementEXT,
        gl_VERTEX_ARRAY_TYPE_EXT, gl_VERTEX_ARRAY_STRIDE_EXT,
        gl_VERTEX_ARRAY_SIZE_EXT, gl_VERTEX_ARRAY_POINTER_EXT,
        gl_VERTEX_ARRAY_EXT, gl_VERTEX_ARRAY_COUNT_EXT,
        gl_TEXTURE_COORD_ARRAY_TYPE_EXT, gl_TEXTURE_COORD_ARRAY_STRIDE_EXT,
        gl_TEXTURE_COORD_ARRAY_SIZE_EXT,
        gl_TEXTURE_COORD_ARRAY_POINTER_EXT, gl_TEXTURE_COORD_ARRAY_EXT,
        gl_TEXTURE_COORD_ARRAY_COUNT_EXT, gl_NORMAL_ARRAY_TYPE_EXT,
        gl_NORMAL_ARRAY_STRIDE_EXT, gl_NORMAL_ARRAY_POINTER_EXT,
        gl_NORMAL_ARRAY_EXT, gl_NORMAL_ARRAY_COUNT_EXT,
        gl_INDEX_ARRAY_TYPE_EXT, gl_INDEX_ARRAY_STRIDE_EXT,
        gl_INDEX_ARRAY_POINTER_EXT, gl_INDEX_ARRAY_EXT,
        gl_INDEX_ARRAY_COUNT_EXT, gl_EDGE_FLAG_ARRAY_STRIDE_EXT,
        gl_EDGE_FLAG_ARRAY_POINTER_EXT, gl_EDGE_FLAG_ARRAY_EXT,
        gl_EDGE_FLAG_ARRAY_COUNT_EXT, gl_COLOR_ARRAY_TYPE_EXT,
        gl_COLOR_ARRAY_STRIDE_EXT, gl_COLOR_ARRAY_SIZE_EXT,
        gl_COLOR_ARRAY_POINTER_EXT, gl_COLOR_ARRAY_EXT,
        gl_COLOR_ARRAY_COUNT_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexPointerEXT #-}
 
ptr_glVertexPointerEXT :: FunPtr a
ptr_glVertexPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glVertexPointerEXT"
 
glVertexPointerEXT ::
                   GLint -> GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ()
glVertexPointerEXT = dyn_glVertexPointerEXT ptr_glVertexPointerEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTexCoordPointerEXT #-}
 
ptr_glTexCoordPointerEXT :: FunPtr a
ptr_glTexCoordPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glTexCoordPointerEXT"
 
glTexCoordPointerEXT ::
                     GLint -> GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ()
glTexCoordPointerEXT
  = dyn_glTexCoordPointerEXT ptr_glTexCoordPointerEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glNormalPointerEXT #-}
 
ptr_glNormalPointerEXT :: FunPtr a
ptr_glNormalPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glNormalPointerEXT"
 
glNormalPointerEXT ::
                   GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ()
glNormalPointerEXT = dyn_glNormalPointerEXT ptr_glNormalPointerEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glIndexPointerEXT #-}
 
ptr_glIndexPointerEXT :: FunPtr a
ptr_glIndexPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glIndexPointerEXT"
 
glIndexPointerEXT :: GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ()
glIndexPointerEXT = dyn_glIndexPointerEXT ptr_glIndexPointerEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetPointervEXT #-}
 
ptr_glGetPointervEXT :: FunPtr a
ptr_glGetPointervEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glGetPointervEXT"
 
glGetPointervEXT :: GLenum -> Ptr (Ptr a) -> IO ()
glGetPointervEXT = dyn_glGetPointervEXT ptr_glGetPointervEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPointervEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glEdgeFlagPointerEXT #-}
 
ptr_glEdgeFlagPointerEXT :: FunPtr a
ptr_glEdgeFlagPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glEdgeFlagPointerEXT"
 
glEdgeFlagPointerEXT ::
                     GLsizei -> GLsizei -> Ptr GLboolean -> IO ()
glEdgeFlagPointerEXT
  = dyn_glEdgeFlagPointerEXT ptr_glEdgeFlagPointerEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glEdgeFlagPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> GLsizei -> Ptr GLboolean -> IO ())
 
{-# NOINLINE ptr_glDrawArraysEXT #-}
 
ptr_glDrawArraysEXT :: FunPtr a
ptr_glDrawArraysEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glDrawArraysEXT"
 
glDrawArraysEXT :: GLenum -> GLint -> GLsizei -> IO ()
glDrawArraysEXT = dyn_glDrawArraysEXT ptr_glDrawArraysEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawArraysEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glColorPointerEXT #-}
 
ptr_glColorPointerEXT :: FunPtr a
ptr_glColorPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glColorPointerEXT"
 
glColorPointerEXT ::
                  GLint -> GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ()
glColorPointerEXT = dyn_glColorPointerEXT ptr_glColorPointerEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glArrayElementEXT #-}
 
ptr_glArrayElementEXT :: FunPtr a
ptr_glArrayElementEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glArrayElementEXT"
 
glArrayElementEXT :: GLint -> IO ()
glArrayElementEXT = dyn_glArrayElementEXT ptr_glArrayElementEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glArrayElementEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> IO ())
 
gl_VERTEX_ARRAY_TYPE_EXT :: GLenum
gl_VERTEX_ARRAY_TYPE_EXT = 32891
 
gl_VERTEX_ARRAY_STRIDE_EXT :: GLenum
gl_VERTEX_ARRAY_STRIDE_EXT = 32892
 
gl_VERTEX_ARRAY_SIZE_EXT :: GLenum
gl_VERTEX_ARRAY_SIZE_EXT = 32890
 
gl_VERTEX_ARRAY_POINTER_EXT :: GLenum
gl_VERTEX_ARRAY_POINTER_EXT = 32910
 
gl_VERTEX_ARRAY_EXT :: GLenum
gl_VERTEX_ARRAY_EXT = 32884
 
gl_VERTEX_ARRAY_COUNT_EXT :: GLenum
gl_VERTEX_ARRAY_COUNT_EXT = 32893
 
gl_TEXTURE_COORD_ARRAY_TYPE_EXT :: GLenum
gl_TEXTURE_COORD_ARRAY_TYPE_EXT = 32905
 
gl_TEXTURE_COORD_ARRAY_STRIDE_EXT :: GLenum
gl_TEXTURE_COORD_ARRAY_STRIDE_EXT = 32906
 
gl_TEXTURE_COORD_ARRAY_SIZE_EXT :: GLenum
gl_TEXTURE_COORD_ARRAY_SIZE_EXT = 32904
 
gl_TEXTURE_COORD_ARRAY_POINTER_EXT :: GLenum
gl_TEXTURE_COORD_ARRAY_POINTER_EXT = 32914
 
gl_TEXTURE_COORD_ARRAY_EXT :: GLenum
gl_TEXTURE_COORD_ARRAY_EXT = 32888
 
gl_TEXTURE_COORD_ARRAY_COUNT_EXT :: GLenum
gl_TEXTURE_COORD_ARRAY_COUNT_EXT = 32907
 
gl_NORMAL_ARRAY_TYPE_EXT :: GLenum
gl_NORMAL_ARRAY_TYPE_EXT = 32894
 
gl_NORMAL_ARRAY_STRIDE_EXT :: GLenum
gl_NORMAL_ARRAY_STRIDE_EXT = 32895
 
gl_NORMAL_ARRAY_POINTER_EXT :: GLenum
gl_NORMAL_ARRAY_POINTER_EXT = 32911
 
gl_NORMAL_ARRAY_EXT :: GLenum
gl_NORMAL_ARRAY_EXT = 32885
 
gl_NORMAL_ARRAY_COUNT_EXT :: GLenum
gl_NORMAL_ARRAY_COUNT_EXT = 32896
 
gl_INDEX_ARRAY_TYPE_EXT :: GLenum
gl_INDEX_ARRAY_TYPE_EXT = 32901
 
gl_INDEX_ARRAY_STRIDE_EXT :: GLenum
gl_INDEX_ARRAY_STRIDE_EXT = 32902
 
gl_INDEX_ARRAY_POINTER_EXT :: GLenum
gl_INDEX_ARRAY_POINTER_EXT = 32913
 
gl_INDEX_ARRAY_EXT :: GLenum
gl_INDEX_ARRAY_EXT = 32887
 
gl_INDEX_ARRAY_COUNT_EXT :: GLenum
gl_INDEX_ARRAY_COUNT_EXT = 32903
 
gl_EDGE_FLAG_ARRAY_STRIDE_EXT :: GLenum
gl_EDGE_FLAG_ARRAY_STRIDE_EXT = 32908
 
gl_EDGE_FLAG_ARRAY_POINTER_EXT :: GLenum
gl_EDGE_FLAG_ARRAY_POINTER_EXT = 32915
 
gl_EDGE_FLAG_ARRAY_EXT :: GLenum
gl_EDGE_FLAG_ARRAY_EXT = 32889
 
gl_EDGE_FLAG_ARRAY_COUNT_EXT :: GLenum
gl_EDGE_FLAG_ARRAY_COUNT_EXT = 32909
 
gl_COLOR_ARRAY_TYPE_EXT :: GLenum
gl_COLOR_ARRAY_TYPE_EXT = 32898
 
gl_COLOR_ARRAY_STRIDE_EXT :: GLenum
gl_COLOR_ARRAY_STRIDE_EXT = 32899
 
gl_COLOR_ARRAY_SIZE_EXT :: GLenum
gl_COLOR_ARRAY_SIZE_EXT = 32897
 
gl_COLOR_ARRAY_POINTER_EXT :: GLenum
gl_COLOR_ARRAY_POINTER_EXT = 32912
 
gl_COLOR_ARRAY_EXT :: GLenum
gl_COLOR_ARRAY_EXT = 32886
 
gl_COLOR_ARRAY_COUNT_EXT :: GLenum
gl_COLOR_ARRAY_COUNT_EXT = 32900