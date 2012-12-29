{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.VertexWeighting
       (glVertexWeightPointerEXT, glVertexWeightfvEXT, glVertexWeightfEXT,
        gl_VERTEX_WEIGHT_ARRAY_POINTER_EXT,
        gl_VERTEX_WEIGHT_ARRAY_STRIDE_EXT, gl_VERTEX_WEIGHT_ARRAY_TYPE_EXT,
        gl_VERTEX_WEIGHT_ARRAY_SIZE_EXT, gl_VERTEX_WEIGHT_ARRAY_EXT,
        gl_CURRENT_VERTEX_WEIGHT_EXT, gl_MODELVIEW1_EXT, gl_MODELVIEW0_EXT,
        gl_VERTEX_WEIGHTING_EXT, gl_MODELVIEW1_MATRIX_EXT,
        gl_MODELVIEW0_MATRIX_EXT, gl_MODELVIEW1_STACK_DEPTH_EXT,
        gl_MODELVIEW0_STACK_DEPTH_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11Compatibility
       (gl_MODELVIEW, gl_MODELVIEW_MATRIX, gl_MODELVIEW_STACK_DEPTH)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexWeightPointerEXT #-}
 
ptr_glVertexWeightPointerEXT :: FunPtr a
ptr_glVertexWeightPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_weighting"
        "glVertexWeightPointerEXT"
 
glVertexWeightPointerEXT ::
                         GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glVertexWeightPointerEXT
  = dyn_glVertexWeightPointerEXT ptr_glVertexWeightPointerEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexWeightPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glVertexWeightfvEXT #-}
 
ptr_glVertexWeightfvEXT :: FunPtr a
ptr_glVertexWeightfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_weighting"
        "glVertexWeightfvEXT"
 
glVertexWeightfvEXT :: Ptr GLfloat -> IO ()
glVertexWeightfvEXT
  = dyn_glVertexWeightfvEXT ptr_glVertexWeightfvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexWeightfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexWeightfEXT #-}
 
ptr_glVertexWeightfEXT :: FunPtr a
ptr_glVertexWeightfEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_weighting"
        "glVertexWeightfEXT"
 
glVertexWeightfEXT :: GLfloat -> IO ()
glVertexWeightfEXT = dyn_glVertexWeightfEXT ptr_glVertexWeightfEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexWeightfEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
gl_VERTEX_WEIGHT_ARRAY_POINTER_EXT :: GLenum
gl_VERTEX_WEIGHT_ARRAY_POINTER_EXT = 34064
 
gl_VERTEX_WEIGHT_ARRAY_STRIDE_EXT :: GLenum
gl_VERTEX_WEIGHT_ARRAY_STRIDE_EXT = 34063
 
gl_VERTEX_WEIGHT_ARRAY_TYPE_EXT :: GLenum
gl_VERTEX_WEIGHT_ARRAY_TYPE_EXT = 34062
 
gl_VERTEX_WEIGHT_ARRAY_SIZE_EXT :: GLenum
gl_VERTEX_WEIGHT_ARRAY_SIZE_EXT = 34061
 
gl_VERTEX_WEIGHT_ARRAY_EXT :: GLenum
gl_VERTEX_WEIGHT_ARRAY_EXT = 34060
 
gl_CURRENT_VERTEX_WEIGHT_EXT :: GLenum
gl_CURRENT_VERTEX_WEIGHT_EXT = 34059
 
gl_MODELVIEW1_EXT :: GLenum
gl_MODELVIEW1_EXT = 34058
 
gl_MODELVIEW0_EXT :: GLenum
gl_MODELVIEW0_EXT = gl_MODELVIEW
 
gl_VERTEX_WEIGHTING_EXT :: GLenum
gl_VERTEX_WEIGHTING_EXT = 34057
 
gl_MODELVIEW1_MATRIX_EXT :: GLenum
gl_MODELVIEW1_MATRIX_EXT = 34054
 
gl_MODELVIEW0_MATRIX_EXT :: GLenum
gl_MODELVIEW0_MATRIX_EXT = gl_MODELVIEW_MATRIX
 
gl_MODELVIEW1_STACK_DEPTH_EXT :: GLenum
gl_MODELVIEW1_STACK_DEPTH_EXT = 34050
 
gl_MODELVIEW0_STACK_DEPTH_EXT :: GLenum
gl_MODELVIEW0_STACK_DEPTH_EXT = gl_MODELVIEW_STACK_DEPTH