{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.VertexWeighting
       (glVertexWeightfv, glVertexWeightf, glVertexWeightPointer,
        gl_VERTEX_WEIGHT_ARRAY_TYPE, gl_VERTEX_WEIGHT_ARRAY_STRIDE,
        gl_VERTEX_WEIGHT_ARRAY_SIZE, gl_VERTEX_WEIGHT_ARRAY_POINTER,
        gl_VERTEX_WEIGHT_ARRAY, gl_VERTEX_WEIGHTING,
        gl_MODELVIEW1_STACK_DEPTH, gl_MODELVIEW1_MATRIX, gl_MODELVIEW1,
        gl_MODELVIEW0_STACK_DEPTH, gl_MODELVIEW0_MATRIX, gl_MODELVIEW0,
        gl_CURRENT_VERTEX_WEIGHT)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11Compatibility
       (gl_MODELVIEW_STACK_DEPTH, gl_MODELVIEW_MATRIX, gl_MODELVIEW)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexWeightfv #-}
 
ptr_glVertexWeightfv :: FunPtr a
ptr_glVertexWeightfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_weighting"
        "glVertexWeightfvEXT"
 
glVertexWeightfv :: Ptr GLfloat -> IO ()
glVertexWeightfv = dyn_glVertexWeightfv ptr_glVertexWeightfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexWeightfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexWeightf #-}
 
ptr_glVertexWeightf :: FunPtr a
ptr_glVertexWeightf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_weighting"
        "glVertexWeightfEXT"
 
glVertexWeightf :: GLfloat -> IO ()
glVertexWeightf = dyn_glVertexWeightf ptr_glVertexWeightf
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexWeightf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> IO ())
 
{-# NOINLINE ptr_glVertexWeightPointer #-}
 
ptr_glVertexWeightPointer :: FunPtr a
ptr_glVertexWeightPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_weighting"
        "glVertexWeightPointerEXT"
 
glVertexWeightPointer ::
                      GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glVertexWeightPointer
  = dyn_glVertexWeightPointer ptr_glVertexWeightPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexWeightPointer
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
gl_VERTEX_WEIGHT_ARRAY_TYPE :: GLenum
gl_VERTEX_WEIGHT_ARRAY_TYPE = 34062
 
gl_VERTEX_WEIGHT_ARRAY_STRIDE :: GLenum
gl_VERTEX_WEIGHT_ARRAY_STRIDE = 34063
 
gl_VERTEX_WEIGHT_ARRAY_SIZE :: GLenum
gl_VERTEX_WEIGHT_ARRAY_SIZE = 34061
 
gl_VERTEX_WEIGHT_ARRAY_POINTER :: GLenum
gl_VERTEX_WEIGHT_ARRAY_POINTER = 34064
 
gl_VERTEX_WEIGHT_ARRAY :: GLenum
gl_VERTEX_WEIGHT_ARRAY = 34060
 
gl_VERTEX_WEIGHTING :: GLenum
gl_VERTEX_WEIGHTING = 34057
 
gl_MODELVIEW1_STACK_DEPTH :: GLenum
gl_MODELVIEW1_STACK_DEPTH = 34050
 
gl_MODELVIEW1_MATRIX :: GLenum
gl_MODELVIEW1_MATRIX = 34054
 
gl_MODELVIEW1 :: GLenum
gl_MODELVIEW1 = 34058
 
gl_MODELVIEW0_STACK_DEPTH :: GLenum
gl_MODELVIEW0_STACK_DEPTH = gl_MODELVIEW_STACK_DEPTH
 
gl_MODELVIEW0_MATRIX :: GLenum
gl_MODELVIEW0_MATRIX = gl_MODELVIEW_MATRIX
 
gl_MODELVIEW0 :: GLenum
gl_MODELVIEW0 = gl_MODELVIEW
 
gl_CURRENT_VERTEX_WEIGHT :: GLenum
gl_CURRENT_VERTEX_WEIGHT = 34059