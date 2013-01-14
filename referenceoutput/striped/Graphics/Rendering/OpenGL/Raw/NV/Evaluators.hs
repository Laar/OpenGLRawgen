{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.Evaluators
       (glMapParameteriv, glMapParameterfv, glMapControlPoints,
        glGetMapParameteriv, glGetMapParameterfv, glGetMapControlPoints,
        glGetMapAttribParameteriv, glGetMapAttribParameterfv, glEvalMaps,
        gl_MAX_RATIONAL_EVAL_ORDER, gl_MAX_MAP_TESSELLATION,
        gl_MAP_TESSELLATION, gl_MAP_ATTRIB_V_ORDER, gl_MAP_ATTRIB_U_ORDER,
        gl_EVAL_VERTEX_ATTRIB9, gl_EVAL_VERTEX_ATTRIB8,
        gl_EVAL_VERTEX_ATTRIB7, gl_EVAL_VERTEX_ATTRIB6,
        gl_EVAL_VERTEX_ATTRIB5, gl_EVAL_VERTEX_ATTRIB4,
        gl_EVAL_VERTEX_ATTRIB3, gl_EVAL_VERTEX_ATTRIB2,
        gl_EVAL_VERTEX_ATTRIB1, gl_EVAL_VERTEX_ATTRIB15,
        gl_EVAL_VERTEX_ATTRIB14, gl_EVAL_VERTEX_ATTRIB13,
        gl_EVAL_VERTEX_ATTRIB12, gl_EVAL_VERTEX_ATTRIB11,
        gl_EVAL_VERTEX_ATTRIB10, gl_EVAL_VERTEX_ATTRIB0,
        gl_EVAL_TRIANGULAR_2D, gl_EVAL_FRACTIONAL_TESSELLATION, gl_EVAL_2D)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMapParameteriv #-}
 
ptr_glMapParameteriv :: FunPtr a
ptr_glMapParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glMapParameterivNV"
 
glMapParameteriv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glMapParameteriv = dyn_glMapParameteriv ptr_glMapParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glMapParameterfv #-}
 
ptr_glMapParameterfv :: FunPtr a
ptr_glMapParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glMapParameterfvNV"
 
glMapParameterfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glMapParameterfv = dyn_glMapParameterfv ptr_glMapParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glMapControlPoints #-}
 
ptr_glMapControlPoints :: FunPtr a
ptr_glMapControlPoints
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glMapControlPointsNV"
 
glMapControlPoints ::
                   GLenum ->
                     GLuint ->
                       GLenum ->
                         GLsizei -> GLsizei -> GLint -> GLint -> GLboolean -> Ptr a -> IO ()
glMapControlPoints = dyn_glMapControlPoints ptr_glMapControlPoints
 
foreign import CALLCONV unsafe "dynamic" dyn_glMapControlPoints ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint ->
                      GLenum ->
                        GLsizei ->
                          GLsizei -> GLint -> GLint -> GLboolean -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetMapParameteriv #-}
 
ptr_glGetMapParameteriv :: FunPtr a
ptr_glGetMapParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glGetMapParameterivNV"
 
glGetMapParameteriv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetMapParameteriv
  = dyn_glGetMapParameteriv ptr_glGetMapParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMapParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMapParameterfv #-}
 
ptr_glGetMapParameterfv :: FunPtr a
ptr_glGetMapParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glGetMapParameterfvNV"
 
glGetMapParameterfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetMapParameterfv
  = dyn_glGetMapParameterfv ptr_glGetMapParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMapParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetMapControlPoints #-}
 
ptr_glGetMapControlPoints :: FunPtr a
ptr_glGetMapControlPoints
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glGetMapControlPointsNV"
 
glGetMapControlPoints ::
                      GLenum ->
                        GLuint ->
                          GLenum -> GLsizei -> GLsizei -> GLboolean -> Ptr a -> IO ()
glGetMapControlPoints
  = dyn_glGetMapControlPoints ptr_glGetMapControlPoints
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetMapControlPoints
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint ->
                      GLenum -> GLsizei -> GLsizei -> GLboolean -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGetMapAttribParameteriv #-}
 
ptr_glGetMapAttribParameteriv :: FunPtr a
ptr_glGetMapAttribParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glGetMapAttribParameterivNV"
 
glGetMapAttribParameteriv ::
                          GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ()
glGetMapAttribParameteriv
  = dyn_glGetMapAttribParameteriv ptr_glGetMapAttribParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMapAttribParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetMapAttribParameterfv #-}
 
ptr_glGetMapAttribParameterfv :: FunPtr a
ptr_glGetMapAttribParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glGetMapAttribParameterfvNV"
 
glGetMapAttribParameterfv ::
                          GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetMapAttribParameterfv
  = dyn_glGetMapAttribParameterfv ptr_glGetMapAttribParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetMapAttribParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glEvalMaps #-}
 
ptr_glEvalMaps :: FunPtr a
ptr_glEvalMaps
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_evaluators"
        "glEvalMapsNV"
 
glEvalMaps :: GLenum -> GLenum -> IO ()
glEvalMaps = dyn_glEvalMaps ptr_glEvalMaps
 
foreign import CALLCONV unsafe "dynamic" dyn_glEvalMaps ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO ())
 
gl_MAX_RATIONAL_EVAL_ORDER :: GLenum
gl_MAX_RATIONAL_EVAL_ORDER = 34519
 
gl_MAX_MAP_TESSELLATION :: GLenum
gl_MAX_MAP_TESSELLATION = 34518
 
gl_MAP_TESSELLATION :: GLenum
gl_MAP_TESSELLATION = 34498
 
gl_MAP_ATTRIB_V_ORDER :: GLenum
gl_MAP_ATTRIB_V_ORDER = 34500
 
gl_MAP_ATTRIB_U_ORDER :: GLenum
gl_MAP_ATTRIB_U_ORDER = 34499
 
gl_EVAL_VERTEX_ATTRIB9 :: GLenum
gl_EVAL_VERTEX_ATTRIB9 = 34511
 
gl_EVAL_VERTEX_ATTRIB8 :: GLenum
gl_EVAL_VERTEX_ATTRIB8 = 34510
 
gl_EVAL_VERTEX_ATTRIB7 :: GLenum
gl_EVAL_VERTEX_ATTRIB7 = 34509
 
gl_EVAL_VERTEX_ATTRIB6 :: GLenum
gl_EVAL_VERTEX_ATTRIB6 = 34508
 
gl_EVAL_VERTEX_ATTRIB5 :: GLenum
gl_EVAL_VERTEX_ATTRIB5 = 34507
 
gl_EVAL_VERTEX_ATTRIB4 :: GLenum
gl_EVAL_VERTEX_ATTRIB4 = 34506
 
gl_EVAL_VERTEX_ATTRIB3 :: GLenum
gl_EVAL_VERTEX_ATTRIB3 = 34505
 
gl_EVAL_VERTEX_ATTRIB2 :: GLenum
gl_EVAL_VERTEX_ATTRIB2 = 34504
 
gl_EVAL_VERTEX_ATTRIB1 :: GLenum
gl_EVAL_VERTEX_ATTRIB1 = 34503
 
gl_EVAL_VERTEX_ATTRIB15 :: GLenum
gl_EVAL_VERTEX_ATTRIB15 = 34517
 
gl_EVAL_VERTEX_ATTRIB14 :: GLenum
gl_EVAL_VERTEX_ATTRIB14 = 34516
 
gl_EVAL_VERTEX_ATTRIB13 :: GLenum
gl_EVAL_VERTEX_ATTRIB13 = 34515
 
gl_EVAL_VERTEX_ATTRIB12 :: GLenum
gl_EVAL_VERTEX_ATTRIB12 = 34514
 
gl_EVAL_VERTEX_ATTRIB11 :: GLenum
gl_EVAL_VERTEX_ATTRIB11 = 34513
 
gl_EVAL_VERTEX_ATTRIB10 :: GLenum
gl_EVAL_VERTEX_ATTRIB10 = 34512
 
gl_EVAL_VERTEX_ATTRIB0 :: GLenum
gl_EVAL_VERTEX_ATTRIB0 = 34502
 
gl_EVAL_TRIANGULAR_2D :: GLenum
gl_EVAL_TRIANGULAR_2D = 34497
 
gl_EVAL_FRACTIONAL_TESSELLATION :: GLenum
gl_EVAL_FRACTIONAL_TESSELLATION = 34501
 
gl_EVAL_2D :: GLenum
gl_EVAL_2D = 34496