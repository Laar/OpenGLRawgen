{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.VertexBlend
       (glWeightusv, glWeightuiv, glWeightubv, glWeightsv, glWeightiv,
        glWeightfv, glWeightdv, glWeightbv, glWeightPointer, glVertexBlend,
        gl_WEIGHT_SUM_UNITY, gl_WEIGHT_ARRAY_TYPE, gl_WEIGHT_ARRAY_STRIDE,
        gl_WEIGHT_ARRAY_SIZE, gl_WEIGHT_ARRAY_POINTER, gl_WEIGHT_ARRAY,
        gl_VERTEX_BLEND, gl_MODELVIEW9, gl_MODELVIEW8, gl_MODELVIEW7,
        gl_MODELVIEW6, gl_MODELVIEW5, gl_MODELVIEW4, gl_MODELVIEW3,
        gl_MODELVIEW31, gl_MODELVIEW30, gl_MODELVIEW2, gl_MODELVIEW29,
        gl_MODELVIEW28, gl_MODELVIEW27, gl_MODELVIEW26, gl_MODELVIEW25,
        gl_MODELVIEW24, gl_MODELVIEW23, gl_MODELVIEW22, gl_MODELVIEW21,
        gl_MODELVIEW20, gl_MODELVIEW1, gl_MODELVIEW19, gl_MODELVIEW18,
        gl_MODELVIEW17, gl_MODELVIEW16, gl_MODELVIEW15, gl_MODELVIEW14,
        gl_MODELVIEW13, gl_MODELVIEW12, gl_MODELVIEW11, gl_MODELVIEW10,
        gl_MODELVIEW0, gl_MAX_VERTEX_UNITS, gl_CURRENT_WEIGHT,
        gl_ACTIVE_VERTEX_UNITS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glWeightusv #-}
 
ptr_glWeightusv :: FunPtr a
ptr_glWeightusv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightusvARB"
 
glWeightusv :: GLint -> Ptr GLushort -> IO ()
glWeightusv = dyn_glWeightusv ptr_glWeightusv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightusv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glWeightuiv #-}
 
ptr_glWeightuiv :: FunPtr a
ptr_glWeightuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightuivARB"
 
glWeightuiv :: GLint -> Ptr GLuint -> IO ()
glWeightuiv = dyn_glWeightuiv ptr_glWeightuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glWeightubv #-}
 
ptr_glWeightubv :: FunPtr a
ptr_glWeightubv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightubvARB"
 
glWeightubv :: GLint -> Ptr GLubyte -> IO ()
glWeightubv = dyn_glWeightubv ptr_glWeightubv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightubv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glWeightsv #-}
 
ptr_glWeightsv :: FunPtr a
ptr_glWeightsv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightsvARB"
 
glWeightsv :: GLint -> Ptr GLshort -> IO ()
glWeightsv = dyn_glWeightsv ptr_glWeightsv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightsv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glWeightiv #-}
 
ptr_glWeightiv :: FunPtr a
ptr_glWeightiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightivARB"
 
glWeightiv :: GLint -> Ptr GLint -> IO ()
glWeightiv = dyn_glWeightiv ptr_glWeightiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glWeightfv #-}
 
ptr_glWeightfv :: FunPtr a
ptr_glWeightfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightfvARB"
 
glWeightfv :: GLint -> Ptr GLfloat -> IO ()
glWeightfv = dyn_glWeightfv ptr_glWeightfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glWeightdv #-}
 
ptr_glWeightdv :: FunPtr a
ptr_glWeightdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightdvARB"
 
glWeightdv :: GLint -> Ptr GLdouble -> IO ()
glWeightdv = dyn_glWeightdv ptr_glWeightdv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glWeightbv #-}
 
ptr_glWeightbv :: FunPtr a
ptr_glWeightbv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightbvARB"
 
glWeightbv :: GLint -> Ptr GLbyte -> IO ()
glWeightbv = dyn_glWeightbv ptr_glWeightbv
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightbv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glWeightPointer #-}
 
ptr_glWeightPointer :: FunPtr a
ptr_glWeightPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightPointerARB"
 
glWeightPointer :: GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glWeightPointer = dyn_glWeightPointer ptr_glWeightPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glVertexBlend #-}
 
ptr_glVertexBlend :: FunPtr a
ptr_glVertexBlend
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glVertexBlendARB"
 
glVertexBlend :: GLint -> IO ()
glVertexBlend = dyn_glVertexBlend ptr_glVertexBlend
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexBlend ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> IO ())
 
gl_WEIGHT_SUM_UNITY :: GLenum
gl_WEIGHT_SUM_UNITY = 34470
 
gl_WEIGHT_ARRAY_TYPE :: GLenum
gl_WEIGHT_ARRAY_TYPE = 34473
 
gl_WEIGHT_ARRAY_STRIDE :: GLenum
gl_WEIGHT_ARRAY_STRIDE = 34474
 
gl_WEIGHT_ARRAY_SIZE :: GLenum
gl_WEIGHT_ARRAY_SIZE = 34475
 
gl_WEIGHT_ARRAY_POINTER :: GLenum
gl_WEIGHT_ARRAY_POINTER = 34476
 
gl_WEIGHT_ARRAY :: GLenum
gl_WEIGHT_ARRAY = 34477
 
gl_VERTEX_BLEND :: GLenum
gl_VERTEX_BLEND = 34471
 
gl_MODELVIEW9 :: GLenum
gl_MODELVIEW9 = 34601
 
gl_MODELVIEW8 :: GLenum
gl_MODELVIEW8 = 34600
 
gl_MODELVIEW7 :: GLenum
gl_MODELVIEW7 = 34599
 
gl_MODELVIEW6 :: GLenum
gl_MODELVIEW6 = 34598
 
gl_MODELVIEW5 :: GLenum
gl_MODELVIEW5 = 34597
 
gl_MODELVIEW4 :: GLenum
gl_MODELVIEW4 = 34596
 
gl_MODELVIEW3 :: GLenum
gl_MODELVIEW3 = 34595
 
gl_MODELVIEW31 :: GLenum
gl_MODELVIEW31 = 34623
 
gl_MODELVIEW30 :: GLenum
gl_MODELVIEW30 = 34622
 
gl_MODELVIEW2 :: GLenum
gl_MODELVIEW2 = 34594
 
gl_MODELVIEW29 :: GLenum
gl_MODELVIEW29 = 34621
 
gl_MODELVIEW28 :: GLenum
gl_MODELVIEW28 = 34620
 
gl_MODELVIEW27 :: GLenum
gl_MODELVIEW27 = 34619
 
gl_MODELVIEW26 :: GLenum
gl_MODELVIEW26 = 34618
 
gl_MODELVIEW25 :: GLenum
gl_MODELVIEW25 = 34617
 
gl_MODELVIEW24 :: GLenum
gl_MODELVIEW24 = 34616
 
gl_MODELVIEW23 :: GLenum
gl_MODELVIEW23 = 34615
 
gl_MODELVIEW22 :: GLenum
gl_MODELVIEW22 = 34614
 
gl_MODELVIEW21 :: GLenum
gl_MODELVIEW21 = 34613
 
gl_MODELVIEW20 :: GLenum
gl_MODELVIEW20 = 34612
 
gl_MODELVIEW1 :: GLenum
gl_MODELVIEW1 = 34058
 
gl_MODELVIEW19 :: GLenum
gl_MODELVIEW19 = 34611
 
gl_MODELVIEW18 :: GLenum
gl_MODELVIEW18 = 34610
 
gl_MODELVIEW17 :: GLenum
gl_MODELVIEW17 = 34609
 
gl_MODELVIEW16 :: GLenum
gl_MODELVIEW16 = 34608
 
gl_MODELVIEW15 :: GLenum
gl_MODELVIEW15 = 34607
 
gl_MODELVIEW14 :: GLenum
gl_MODELVIEW14 = 34606
 
gl_MODELVIEW13 :: GLenum
gl_MODELVIEW13 = 34605
 
gl_MODELVIEW12 :: GLenum
gl_MODELVIEW12 = 34604
 
gl_MODELVIEW11 :: GLenum
gl_MODELVIEW11 = 34603
 
gl_MODELVIEW10 :: GLenum
gl_MODELVIEW10 = 34602
 
gl_MODELVIEW0 :: GLenum
gl_MODELVIEW0 = 5888
 
gl_MAX_VERTEX_UNITS :: GLenum
gl_MAX_VERTEX_UNITS = 34468
 
gl_CURRENT_WEIGHT :: GLenum
gl_CURRENT_WEIGHT = 34472
 
gl_ACTIVE_VERTEX_UNITS :: GLenum
gl_ACTIVE_VERTEX_UNITS = 34469