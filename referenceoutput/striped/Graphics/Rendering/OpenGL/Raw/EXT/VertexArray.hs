{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.VertexArray
       (glVertexPointer, glTexCoordPointer, glNormalPointer,
        glIndexPointer, glGetPointerv, glEdgeFlagPointer, glDrawArrays,
        glColorPointer, glArrayElement, gl_VERTEX_ARRAY_TYPE,
        gl_VERTEX_ARRAY_STRIDE, gl_VERTEX_ARRAY_SIZE,
        gl_VERTEX_ARRAY_POINTER, gl_VERTEX_ARRAY, gl_VERTEX_ARRAY_COUNT,
        gl_TEXTURE_COORD_ARRAY_TYPE, gl_TEXTURE_COORD_ARRAY_STRIDE,
        gl_TEXTURE_COORD_ARRAY_SIZE, gl_TEXTURE_COORD_ARRAY_POINTER,
        gl_TEXTURE_COORD_ARRAY, gl_TEXTURE_COORD_ARRAY_COUNT,
        gl_NORMAL_ARRAY_TYPE, gl_NORMAL_ARRAY_STRIDE,
        gl_NORMAL_ARRAY_POINTER, gl_NORMAL_ARRAY, gl_NORMAL_ARRAY_COUNT,
        gl_INDEX_ARRAY_TYPE, gl_INDEX_ARRAY_STRIDE, gl_INDEX_ARRAY_POINTER,
        gl_INDEX_ARRAY, gl_INDEX_ARRAY_COUNT, gl_EDGE_FLAG_ARRAY_STRIDE,
        gl_EDGE_FLAG_ARRAY_POINTER, gl_EDGE_FLAG_ARRAY,
        gl_EDGE_FLAG_ARRAY_COUNT, gl_COLOR_ARRAY_TYPE,
        gl_COLOR_ARRAY_STRIDE, gl_COLOR_ARRAY_SIZE, gl_COLOR_ARRAY_POINTER,
        gl_COLOR_ARRAY, gl_COLOR_ARRAY_COUNT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexPointer #-}
 
ptr_glVertexPointer :: FunPtr a
ptr_glVertexPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glVertexPointerEXT"
 
glVertexPointer ::
                GLint -> GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ()
glVertexPointer = dyn_glVertexPointer ptr_glVertexPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTexCoordPointer #-}
 
ptr_glTexCoordPointer :: FunPtr a
ptr_glTexCoordPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glTexCoordPointerEXT"
 
glTexCoordPointer ::
                  GLint -> GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ()
glTexCoordPointer = dyn_glTexCoordPointer ptr_glTexCoordPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glNormalPointer #-}
 
ptr_glNormalPointer :: FunPtr a
ptr_glNormalPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glNormalPointerEXT"
 
glNormalPointer :: GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ()
glNormalPointer = dyn_glNormalPointer ptr_glNormalPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glIndexPointer #-}
 
ptr_glIndexPointer :: FunPtr a
ptr_glIndexPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glIndexPointerEXT"
 
glIndexPointer :: GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ()
glIndexPointer = dyn_glIndexPointer ptr_glIndexPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetPointerv #-}
 
ptr_glGetPointerv :: FunPtr a
ptr_glGetPointerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glGetPointervEXT"
 
glGetPointerv :: GLenum -> Ptr (Ptr a) -> IO ()
glGetPointerv = dyn_glGetPointerv ptr_glGetPointerv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPointerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glEdgeFlagPointer #-}
 
ptr_glEdgeFlagPointer :: FunPtr a
ptr_glEdgeFlagPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glEdgeFlagPointerEXT"
 
glEdgeFlagPointer :: GLsizei -> GLsizei -> Ptr GLboolean -> IO ()
glEdgeFlagPointer = dyn_glEdgeFlagPointer ptr_glEdgeFlagPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glEdgeFlagPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> GLsizei -> Ptr GLboolean -> IO ())
 
{-# NOINLINE ptr_glDrawArrays #-}
 
ptr_glDrawArrays :: FunPtr a
ptr_glDrawArrays
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glDrawArraysEXT"
 
glDrawArrays :: GLenum -> GLint -> GLsizei -> IO ()
glDrawArrays = dyn_glDrawArrays ptr_glDrawArrays
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawArrays ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glColorPointer #-}
 
ptr_glColorPointer :: FunPtr a
ptr_glColorPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glColorPointerEXT"
 
glColorPointer ::
               GLint -> GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ()
glColorPointer = dyn_glColorPointer ptr_glColorPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glArrayElement #-}
 
ptr_glArrayElement :: FunPtr a
ptr_glArrayElement
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_array"
        "glArrayElementEXT"
 
glArrayElement :: GLint -> IO ()
glArrayElement = dyn_glArrayElement ptr_glArrayElement
 
foreign import CALLCONV unsafe "dynamic" dyn_glArrayElement ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> IO ())
 
gl_VERTEX_ARRAY_TYPE :: GLenum
gl_VERTEX_ARRAY_TYPE = 32891
 
gl_VERTEX_ARRAY_STRIDE :: GLenum
gl_VERTEX_ARRAY_STRIDE = 32892
 
gl_VERTEX_ARRAY_SIZE :: GLenum
gl_VERTEX_ARRAY_SIZE = 32890
 
gl_VERTEX_ARRAY_POINTER :: GLenum
gl_VERTEX_ARRAY_POINTER = 32910
 
gl_VERTEX_ARRAY :: GLenum
gl_VERTEX_ARRAY = 32884
 
gl_VERTEX_ARRAY_COUNT :: GLenum
gl_VERTEX_ARRAY_COUNT = 32893
 
gl_TEXTURE_COORD_ARRAY_TYPE :: GLenum
gl_TEXTURE_COORD_ARRAY_TYPE = 32905
 
gl_TEXTURE_COORD_ARRAY_STRIDE :: GLenum
gl_TEXTURE_COORD_ARRAY_STRIDE = 32906
 
gl_TEXTURE_COORD_ARRAY_SIZE :: GLenum
gl_TEXTURE_COORD_ARRAY_SIZE = 32904
 
gl_TEXTURE_COORD_ARRAY_POINTER :: GLenum
gl_TEXTURE_COORD_ARRAY_POINTER = 32914
 
gl_TEXTURE_COORD_ARRAY :: GLenum
gl_TEXTURE_COORD_ARRAY = 32888
 
gl_TEXTURE_COORD_ARRAY_COUNT :: GLenum
gl_TEXTURE_COORD_ARRAY_COUNT = 32907
 
gl_NORMAL_ARRAY_TYPE :: GLenum
gl_NORMAL_ARRAY_TYPE = 32894
 
gl_NORMAL_ARRAY_STRIDE :: GLenum
gl_NORMAL_ARRAY_STRIDE = 32895
 
gl_NORMAL_ARRAY_POINTER :: GLenum
gl_NORMAL_ARRAY_POINTER = 32911
 
gl_NORMAL_ARRAY :: GLenum
gl_NORMAL_ARRAY = 32885
 
gl_NORMAL_ARRAY_COUNT :: GLenum
gl_NORMAL_ARRAY_COUNT = 32896
 
gl_INDEX_ARRAY_TYPE :: GLenum
gl_INDEX_ARRAY_TYPE = 32901
 
gl_INDEX_ARRAY_STRIDE :: GLenum
gl_INDEX_ARRAY_STRIDE = 32902
 
gl_INDEX_ARRAY_POINTER :: GLenum
gl_INDEX_ARRAY_POINTER = 32913
 
gl_INDEX_ARRAY :: GLenum
gl_INDEX_ARRAY = 32887
 
gl_INDEX_ARRAY_COUNT :: GLenum
gl_INDEX_ARRAY_COUNT = 32903
 
gl_EDGE_FLAG_ARRAY_STRIDE :: GLenum
gl_EDGE_FLAG_ARRAY_STRIDE = 32908
 
gl_EDGE_FLAG_ARRAY_POINTER :: GLenum
gl_EDGE_FLAG_ARRAY_POINTER = 32915
 
gl_EDGE_FLAG_ARRAY :: GLenum
gl_EDGE_FLAG_ARRAY = 32889
 
gl_EDGE_FLAG_ARRAY_COUNT :: GLenum
gl_EDGE_FLAG_ARRAY_COUNT = 32909
 
gl_COLOR_ARRAY_TYPE :: GLenum
gl_COLOR_ARRAY_TYPE = 32898
 
gl_COLOR_ARRAY_STRIDE :: GLenum
gl_COLOR_ARRAY_STRIDE = 32899
 
gl_COLOR_ARRAY_SIZE :: GLenum
gl_COLOR_ARRAY_SIZE = 32897
 
gl_COLOR_ARRAY_POINTER :: GLenum
gl_COLOR_ARRAY_POINTER = 32912
 
gl_COLOR_ARRAY :: GLenum
gl_COLOR_ARRAY = 32886
 
gl_COLOR_ARRAY_COUNT :: GLenum
gl_COLOR_ARRAY_COUNT = 32900