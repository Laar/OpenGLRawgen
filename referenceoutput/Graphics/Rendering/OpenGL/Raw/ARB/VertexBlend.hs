{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.VertexBlend
       (glVertexBlendARB, glWeightPointerARB, glWeightuivARB,
        glWeightusvARB, glWeightubvARB, glWeightdvARB, glWeightfvARB,
        glWeightivARB, glWeightsvARB, glWeightbvARB, gl_MODELVIEW31_ARB,
        gl_MODELVIEW30_ARB, gl_MODELVIEW29_ARB, gl_MODELVIEW28_ARB,
        gl_MODELVIEW27_ARB, gl_MODELVIEW26_ARB, gl_MODELVIEW25_ARB,
        gl_MODELVIEW24_ARB, gl_MODELVIEW23_ARB, gl_MODELVIEW22_ARB,
        gl_MODELVIEW21_ARB, gl_MODELVIEW20_ARB, gl_MODELVIEW19_ARB,
        gl_MODELVIEW18_ARB, gl_MODELVIEW17_ARB, gl_MODELVIEW16_ARB,
        gl_MODELVIEW15_ARB, gl_MODELVIEW14_ARB, gl_MODELVIEW13_ARB,
        gl_MODELVIEW12_ARB, gl_MODELVIEW11_ARB, gl_MODELVIEW10_ARB,
        gl_MODELVIEW9_ARB, gl_MODELVIEW8_ARB, gl_MODELVIEW7_ARB,
        gl_MODELVIEW6_ARB, gl_MODELVIEW5_ARB, gl_MODELVIEW4_ARB,
        gl_MODELVIEW3_ARB, gl_MODELVIEW2_ARB, gl_MODELVIEW1_ARB,
        gl_MODELVIEW0_ARB, gl_WEIGHT_ARRAY_ARB,
        gl_WEIGHT_ARRAY_POINTER_ARB, gl_WEIGHT_ARRAY_SIZE_ARB,
        gl_WEIGHT_ARRAY_STRIDE_ARB, gl_WEIGHT_ARRAY_TYPE_ARB,
        gl_CURRENT_WEIGHT_ARB, gl_VERTEX_BLEND_ARB,
        gl_WEIGHT_SUM_UNITY_ARB, gl_ACTIVE_VERTEX_UNITS_ARB,
        gl_MAX_VERTEX_UNITS_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexBlendARB #-}
 
ptr_glVertexBlendARB :: FunPtr a
ptr_glVertexBlendARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glVertexBlendARB"
 
glVertexBlendARB :: GLint -> IO ()
glVertexBlendARB = dyn_glVertexBlendARB ptr_glVertexBlendARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexBlendARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> IO ())
 
{-# NOINLINE ptr_glWeightPointerARB #-}
 
ptr_glWeightPointerARB :: FunPtr a
ptr_glWeightPointerARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightPointerARB"
 
glWeightPointerARB :: GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glWeightPointerARB = dyn_glWeightPointerARB ptr_glWeightPointerARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightPointerARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glWeightuivARB #-}
 
ptr_glWeightuivARB :: FunPtr a
ptr_glWeightuivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightuivARB"
 
glWeightuivARB :: GLint -> Ptr GLuint -> IO ()
glWeightuivARB = dyn_glWeightuivARB ptr_glWeightuivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightuivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glWeightusvARB #-}
 
ptr_glWeightusvARB :: FunPtr a
ptr_glWeightusvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightusvARB"
 
glWeightusvARB :: GLint -> Ptr GLushort -> IO ()
glWeightusvARB = dyn_glWeightusvARB ptr_glWeightusvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightusvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glWeightubvARB #-}
 
ptr_glWeightubvARB :: FunPtr a
ptr_glWeightubvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightubvARB"
 
glWeightubvARB :: GLint -> Ptr GLubyte -> IO ()
glWeightubvARB = dyn_glWeightubvARB ptr_glWeightubvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightubvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glWeightdvARB #-}
 
ptr_glWeightdvARB :: FunPtr a
ptr_glWeightdvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightdvARB"
 
glWeightdvARB :: GLint -> Ptr GLdouble -> IO ()
glWeightdvARB = dyn_glWeightdvARB ptr_glWeightdvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightdvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glWeightfvARB #-}
 
ptr_glWeightfvARB :: FunPtr a
ptr_glWeightfvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightfvARB"
 
glWeightfvARB :: GLint -> Ptr GLfloat -> IO ()
glWeightfvARB = dyn_glWeightfvARB ptr_glWeightfvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightfvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glWeightivARB #-}
 
ptr_glWeightivARB :: FunPtr a
ptr_glWeightivARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightivARB"
 
glWeightivARB :: GLint -> Ptr GLint -> IO ()
glWeightivARB = dyn_glWeightivARB ptr_glWeightivARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightivARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glWeightsvARB #-}
 
ptr_glWeightsvARB :: FunPtr a
ptr_glWeightsvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightsvARB"
 
glWeightsvARB :: GLint -> Ptr GLshort -> IO ()
glWeightsvARB = dyn_glWeightsvARB ptr_glWeightsvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightsvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glWeightbvARB #-}
 
ptr_glWeightbvARB :: FunPtr a
ptr_glWeightbvARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_vertex_blend"
        "glWeightbvARB"
 
glWeightbvARB :: GLint -> Ptr GLbyte -> IO ()
glWeightbvARB = dyn_glWeightbvARB ptr_glWeightbvARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightbvARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> Ptr GLbyte -> IO ())
 
gl_MODELVIEW31_ARB :: GLenum
gl_MODELVIEW31_ARB = 34623
 
gl_MODELVIEW30_ARB :: GLenum
gl_MODELVIEW30_ARB = 34622
 
gl_MODELVIEW29_ARB :: GLenum
gl_MODELVIEW29_ARB = 34621
 
gl_MODELVIEW28_ARB :: GLenum
gl_MODELVIEW28_ARB = 34620
 
gl_MODELVIEW27_ARB :: GLenum
gl_MODELVIEW27_ARB = 34619
 
gl_MODELVIEW26_ARB :: GLenum
gl_MODELVIEW26_ARB = 34618
 
gl_MODELVIEW25_ARB :: GLenum
gl_MODELVIEW25_ARB = 34617
 
gl_MODELVIEW24_ARB :: GLenum
gl_MODELVIEW24_ARB = 34616
 
gl_MODELVIEW23_ARB :: GLenum
gl_MODELVIEW23_ARB = 34615
 
gl_MODELVIEW22_ARB :: GLenum
gl_MODELVIEW22_ARB = 34614
 
gl_MODELVIEW21_ARB :: GLenum
gl_MODELVIEW21_ARB = 34613
 
gl_MODELVIEW20_ARB :: GLenum
gl_MODELVIEW20_ARB = 34612
 
gl_MODELVIEW19_ARB :: GLenum
gl_MODELVIEW19_ARB = 34611
 
gl_MODELVIEW18_ARB :: GLenum
gl_MODELVIEW18_ARB = 34610
 
gl_MODELVIEW17_ARB :: GLenum
gl_MODELVIEW17_ARB = 34609
 
gl_MODELVIEW16_ARB :: GLenum
gl_MODELVIEW16_ARB = 34608
 
gl_MODELVIEW15_ARB :: GLenum
gl_MODELVIEW15_ARB = 34607
 
gl_MODELVIEW14_ARB :: GLenum
gl_MODELVIEW14_ARB = 34606
 
gl_MODELVIEW13_ARB :: GLenum
gl_MODELVIEW13_ARB = 34605
 
gl_MODELVIEW12_ARB :: GLenum
gl_MODELVIEW12_ARB = 34604
 
gl_MODELVIEW11_ARB :: GLenum
gl_MODELVIEW11_ARB = 34603
 
gl_MODELVIEW10_ARB :: GLenum
gl_MODELVIEW10_ARB = 34602
 
gl_MODELVIEW9_ARB :: GLenum
gl_MODELVIEW9_ARB = 34601
 
gl_MODELVIEW8_ARB :: GLenum
gl_MODELVIEW8_ARB = 34600
 
gl_MODELVIEW7_ARB :: GLenum
gl_MODELVIEW7_ARB = 34599
 
gl_MODELVIEW6_ARB :: GLenum
gl_MODELVIEW6_ARB = 34598
 
gl_MODELVIEW5_ARB :: GLenum
gl_MODELVIEW5_ARB = 34597
 
gl_MODELVIEW4_ARB :: GLenum
gl_MODELVIEW4_ARB = 34596
 
gl_MODELVIEW3_ARB :: GLenum
gl_MODELVIEW3_ARB = 34595
 
gl_MODELVIEW2_ARB :: GLenum
gl_MODELVIEW2_ARB = 34594
 
gl_MODELVIEW1_ARB :: GLenum
gl_MODELVIEW1_ARB = 34058
 
gl_MODELVIEW0_ARB :: GLenum
gl_MODELVIEW0_ARB = 5888
 
gl_WEIGHT_ARRAY_ARB :: GLenum
gl_WEIGHT_ARRAY_ARB = 34477
 
gl_WEIGHT_ARRAY_POINTER_ARB :: GLenum
gl_WEIGHT_ARRAY_POINTER_ARB = 34476
 
gl_WEIGHT_ARRAY_SIZE_ARB :: GLenum
gl_WEIGHT_ARRAY_SIZE_ARB = 34475
 
gl_WEIGHT_ARRAY_STRIDE_ARB :: GLenum
gl_WEIGHT_ARRAY_STRIDE_ARB = 34474
 
gl_WEIGHT_ARRAY_TYPE_ARB :: GLenum
gl_WEIGHT_ARRAY_TYPE_ARB = 34473
 
gl_CURRENT_WEIGHT_ARB :: GLenum
gl_CURRENT_WEIGHT_ARB = 34472
 
gl_VERTEX_BLEND_ARB :: GLenum
gl_VERTEX_BLEND_ARB = 34471
 
gl_WEIGHT_SUM_UNITY_ARB :: GLenum
gl_WEIGHT_SUM_UNITY_ARB = 34470
 
gl_ACTIVE_VERTEX_UNITS_ARB :: GLenum
gl_ACTIVE_VERTEX_UNITS_ARB = 34469
 
gl_MAX_VERTEX_UNITS_ARB :: GLenum
gl_MAX_VERTEX_UNITS_ARB = 34468