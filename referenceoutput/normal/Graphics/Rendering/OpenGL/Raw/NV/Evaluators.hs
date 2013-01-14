{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.Evaluators
       (glMapParameterivNV, glMapParameterfvNV, glMapControlPointsNV,
        glGetMapParameterivNV, glGetMapParameterfvNV,
        glGetMapControlPointsNV, glGetMapAttribParameterivNV,
        glGetMapAttribParameterfvNV, glEvalMapsNV,
        gl_MAX_RATIONAL_EVAL_ORDER_NV, gl_MAX_MAP_TESSELLATION_NV,
        gl_MAP_TESSELLATION_NV, gl_MAP_ATTRIB_V_ORDER_NV,
        gl_MAP_ATTRIB_U_ORDER_NV, gl_EVAL_VERTEX_ATTRIB9_NV,
        gl_EVAL_VERTEX_ATTRIB8_NV, gl_EVAL_VERTEX_ATTRIB7_NV,
        gl_EVAL_VERTEX_ATTRIB6_NV, gl_EVAL_VERTEX_ATTRIB5_NV,
        gl_EVAL_VERTEX_ATTRIB4_NV, gl_EVAL_VERTEX_ATTRIB3_NV,
        gl_EVAL_VERTEX_ATTRIB2_NV, gl_EVAL_VERTEX_ATTRIB1_NV,
        gl_EVAL_VERTEX_ATTRIB15_NV, gl_EVAL_VERTEX_ATTRIB14_NV,
        gl_EVAL_VERTEX_ATTRIB13_NV, gl_EVAL_VERTEX_ATTRIB12_NV,
        gl_EVAL_VERTEX_ATTRIB11_NV, gl_EVAL_VERTEX_ATTRIB10_NV,
        gl_EVAL_VERTEX_ATTRIB0_NV, gl_EVAL_TRIANGULAR_2D_NV,
        gl_EVAL_FRACTIONAL_TESSELLATION_NV, gl_EVAL_2D_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMapParameterivNV #-}
 
ptr_glMapParameterivNV :: FunPtr a
ptr_glMapParameterivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glMapParameterivNV"
 
glMapParameterivNV :: GLenum -> GLenum -> Ptr GLint -> IO ()
glMapParameterivNV = dyn_glMapParameterivNV ptr_glMapParameterivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapParameterivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMapParameterfvNV #-}
 
ptr_glMapParameterfvNV :: FunPtr a
ptr_glMapParameterfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glMapParameterfvNV"
 
glMapParameterfvNV :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glMapParameterfvNV = dyn_glMapParameterfvNV ptr_glMapParameterfvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapParameterfvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMapControlPointsNV #-}
 
ptr_glMapControlPointsNV :: FunPtr a
ptr_glMapControlPointsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glMapControlPointsNV"
 
glMapControlPointsNV ::
                     GLenum ->
                       GLuint ->
                         GLenum ->
                           GLsizei -> GLsizei -> GLint -> GLint -> GLboolean -> Ptr a -> IO ()
glMapControlPointsNV
  = dyn_glMapControlPointsNV ptr_glMapControlPointsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapControlPointsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint ->
                      GLenum ->
                        GLsizei ->
                          GLsizei -> GLint -> GLint -> GLboolean -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetMapParameterivNV #-}
 
ptr_glGetMapParameterivNV :: FunPtr a
ptr_glGetMapParameterivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glGetMapParameterivNV"
 
glGetMapParameterivNV :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetMapParameterivNV
  = dyn_glGetMapParameterivNV ptr_glGetMapParameterivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMapParameterivNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMapParameterfvNV #-}
 
ptr_glGetMapParameterfvNV :: FunPtr a
ptr_glGetMapParameterfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glGetMapParameterfvNV"
 
glGetMapParameterfvNV :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetMapParameterfvNV
  = dyn_glGetMapParameterfvNV ptr_glGetMapParameterfvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMapParameterfvNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMapControlPointsNV #-}
 
ptr_glGetMapControlPointsNV :: FunPtr a
ptr_glGetMapControlPointsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glGetMapControlPointsNV"
 
glGetMapControlPointsNV ::
                        GLenum ->
                          GLuint ->
                            GLenum -> GLsizei -> GLsizei -> GLboolean -> Ptr a -> IO ()
glGetMapControlPointsNV
  = dyn_glGetMapControlPointsNV ptr_glGetMapControlPointsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMapControlPointsNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint ->
                      GLenum -> GLsizei -> GLsizei -> GLboolean -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetMapAttribParameterivNV #-}
 
ptr_glGetMapAttribParameterivNV :: FunPtr a
ptr_glGetMapAttribParameterivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glGetMapAttribParameterivNV"
 
glGetMapAttribParameterivNV ::
                            GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ()
glGetMapAttribParameterivNV
  = dyn_glGetMapAttribParameterivNV ptr_glGetMapAttribParameterivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMapAttribParameterivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMapAttribParameterfvNV #-}
 
ptr_glGetMapAttribParameterfvNV :: FunPtr a
ptr_glGetMapAttribParameterfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glGetMapAttribParameterfvNV"
 
glGetMapAttribParameterfvNV ::
                            GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetMapAttribParameterfvNV
  = dyn_glGetMapAttribParameterfvNV ptr_glGetMapAttribParameterfvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMapAttribParameterfvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glEvalMapsNV #-}
 
ptr_glEvalMapsNV :: FunPtr a
ptr_glEvalMapsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glEvalMapsNV"
 
glEvalMapsNV :: GLenum -> GLenum -> IO ()
glEvalMapsNV = dyn_glEvalMapsNV ptr_glEvalMapsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glEvalMapsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
gl_MAX_RATIONAL_EVAL_ORDER_NV :: GLenum
gl_MAX_RATIONAL_EVAL_ORDER_NV = 34519
 
gl_MAX_MAP_TESSELLATION_NV :: GLenum
gl_MAX_MAP_TESSELLATION_NV = 34518
 
gl_MAP_TESSELLATION_NV :: GLenum
gl_MAP_TESSELLATION_NV = 34498
 
gl_MAP_ATTRIB_V_ORDER_NV :: GLenum
gl_MAP_ATTRIB_V_ORDER_NV = 34500
 
gl_MAP_ATTRIB_U_ORDER_NV :: GLenum
gl_MAP_ATTRIB_U_ORDER_NV = 34499
 
gl_EVAL_VERTEX_ATTRIB9_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB9_NV = 34511
 
gl_EVAL_VERTEX_ATTRIB8_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB8_NV = 34510
 
gl_EVAL_VERTEX_ATTRIB7_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB7_NV = 34509
 
gl_EVAL_VERTEX_ATTRIB6_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB6_NV = 34508
 
gl_EVAL_VERTEX_ATTRIB5_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB5_NV = 34507
 
gl_EVAL_VERTEX_ATTRIB4_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB4_NV = 34506
 
gl_EVAL_VERTEX_ATTRIB3_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB3_NV = 34505
 
gl_EVAL_VERTEX_ATTRIB2_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB2_NV = 34504
 
gl_EVAL_VERTEX_ATTRIB1_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB1_NV = 34503
 
gl_EVAL_VERTEX_ATTRIB15_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB15_NV = 34517
 
gl_EVAL_VERTEX_ATTRIB14_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB14_NV = 34516
 
gl_EVAL_VERTEX_ATTRIB13_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB13_NV = 34515
 
gl_EVAL_VERTEX_ATTRIB12_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB12_NV = 34514
 
gl_EVAL_VERTEX_ATTRIB11_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB11_NV = 34513
 
gl_EVAL_VERTEX_ATTRIB10_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB10_NV = 34512
 
gl_EVAL_VERTEX_ATTRIB0_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB0_NV = 34502
 
gl_EVAL_TRIANGULAR_2D_NV :: GLenum
gl_EVAL_TRIANGULAR_2D_NV = 34497
 
gl_EVAL_FRACTIONAL_TESSELLATION_NV :: GLenum
gl_EVAL_FRACTIONAL_TESSELLATION_NV = 34501
 
gl_EVAL_2D_NV :: GLenum
gl_EVAL_2D_NV = 34496