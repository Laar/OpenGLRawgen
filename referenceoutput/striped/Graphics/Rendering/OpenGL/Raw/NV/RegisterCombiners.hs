{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.RegisterCombiners
       (glGetFinalCombinerInputParameteriv,
        glGetFinalCombinerInputParameterfv, glGetCombinerOutputParameteriv,
        glGetCombinerOutputParameterfv, glGetCombinerInputParameteriv,
        glGetCombinerInputParameterfv, glFinalCombinerInput,
        glCombinerParameteriv, glCombinerParameteri, glCombinerParameterfv,
        glCombinerParameterf, glCombinerOutput, glCombinerInput, gl_ZERO,
        gl_VARIABLE_G, gl_VARIABLE_F, gl_VARIABLE_E, gl_VARIABLE_D,
        gl_VARIABLE_C, gl_VARIABLE_B, gl_VARIABLE_A, gl_UNSIGNED_INVERT,
        gl_UNSIGNED_IDENTITY, gl_TEXTURE1, gl_TEXTURE0, gl_SPARE1,
        gl_SPARE0_PLUS_SECONDARY_COLOR, gl_SPARE0, gl_SIGNED_NEGATE,
        gl_SIGNED_IDENTITY, gl_SECONDARY_COLOR, gl_SCALE_BY_TWO,
        gl_SCALE_BY_ONE_HALF, gl_SCALE_BY_FOUR, gl_REGISTER_COMBINERS,
        gl_PRIMARY_COLOR, gl_NUM_GENERAL_COMBINERS, gl_NONE,
        gl_MAX_GENERAL_COMBINERS, gl_HALF_BIAS_NORMAL, gl_HALF_BIAS_NEGATE,
        gl_FOG, gl_E_TIMES_F, gl_EXPAND_NORMAL, gl_EXPAND_NEGATE,
        gl_DISCARD, gl_CONSTANT_COLOR1, gl_CONSTANT_COLOR0,
        gl_COMBINER_SUM_OUTPUT, gl_COMBINER_SCALE, gl_COMBINER_MUX_SUM,
        gl_COMBINER_MAPPING, gl_COMBINER_INPUT,
        gl_COMBINER_COMPONENT_USAGE, gl_COMBINER_CD_OUTPUT,
        gl_COMBINER_CD_DOT_PRODUCT, gl_COMBINER_BIAS,
        gl_COMBINER_AB_OUTPUT, gl_COMBINER_AB_DOT_PRODUCT, gl_COMBINER7,
        gl_COMBINER6, gl_COMBINER5, gl_COMBINER4, gl_COMBINER3,
        gl_COMBINER2, gl_COMBINER1, gl_COMBINER0, gl_COLOR_SUM_CLAMP,
        gl_BIAS_BY_NEGATIVE_ONE_HALF)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11Compatibility
       (gl_FOG)
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11
       (gl_ZERO, gl_NONE)
import Graphics.Rendering.OpenGL.Raw.ARB.Multitexture
       (gl_TEXTURE1, gl_TEXTURE0)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetFinalCombinerInputParameteriv #-}
 
ptr_glGetFinalCombinerInputParameteriv :: FunPtr a
ptr_glGetFinalCombinerInputParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glGetFinalCombinerInputParameterivNV"
 
glGetFinalCombinerInputParameteriv ::
                                   GLenum -> GLenum -> Ptr GLint -> IO ()
glGetFinalCombinerInputParameteriv
  = dyn_glGetFinalCombinerInputParameteriv
      ptr_glGetFinalCombinerInputParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetFinalCombinerInputParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetFinalCombinerInputParameterfv #-}
 
ptr_glGetFinalCombinerInputParameterfv :: FunPtr a
ptr_glGetFinalCombinerInputParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glGetFinalCombinerInputParameterfvNV"
 
glGetFinalCombinerInputParameterfv ::
                                   GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetFinalCombinerInputParameterfv
  = dyn_glGetFinalCombinerInputParameterfv
      ptr_glGetFinalCombinerInputParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetFinalCombinerInputParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetCombinerOutputParameteriv #-}
 
ptr_glGetCombinerOutputParameteriv :: FunPtr a
ptr_glGetCombinerOutputParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glGetCombinerOutputParameterivNV"
 
glGetCombinerOutputParameteriv ::
                               GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetCombinerOutputParameteriv
  = dyn_glGetCombinerOutputParameteriv
      ptr_glGetCombinerOutputParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCombinerOutputParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetCombinerOutputParameterfv #-}
 
ptr_glGetCombinerOutputParameterfv :: FunPtr a
ptr_glGetCombinerOutputParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glGetCombinerOutputParameterfvNV"
 
glGetCombinerOutputParameterfv ::
                               GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetCombinerOutputParameterfv
  = dyn_glGetCombinerOutputParameterfv
      ptr_glGetCombinerOutputParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCombinerOutputParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetCombinerInputParameteriv #-}
 
ptr_glGetCombinerInputParameteriv :: FunPtr a
ptr_glGetCombinerInputParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glGetCombinerInputParameterivNV"
 
glGetCombinerInputParameteriv ::
                              GLenum -> GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetCombinerInputParameteriv
  = dyn_glGetCombinerInputParameteriv
      ptr_glGetCombinerInputParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCombinerInputParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetCombinerInputParameterfv #-}
 
ptr_glGetCombinerInputParameterfv :: FunPtr a
ptr_glGetCombinerInputParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glGetCombinerInputParameterfvNV"
 
glGetCombinerInputParameterfv ::
                              GLenum -> GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetCombinerInputParameterfv
  = dyn_glGetCombinerInputParameterfv
      ptr_glGetCombinerInputParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCombinerInputParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glFinalCombinerInput #-}
 
ptr_glFinalCombinerInput :: FunPtr a
ptr_glFinalCombinerInput
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glFinalCombinerInputNV"
 
glFinalCombinerInput ::
                     GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glFinalCombinerInput
  = dyn_glFinalCombinerInput ptr_glFinalCombinerInput
 
foreign import CALLCONV unsafe "dynamic" dyn_glFinalCombinerInput ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glCombinerParameteriv #-}
 
ptr_glCombinerParameteriv :: FunPtr a
ptr_glCombinerParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glCombinerParameterivNV"
 
glCombinerParameteriv :: GLenum -> Ptr GLint -> IO ()
glCombinerParameteriv
  = dyn_glCombinerParameteriv ptr_glCombinerParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glCombinerParameteriv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glCombinerParameteri #-}
 
ptr_glCombinerParameteri :: FunPtr a
ptr_glCombinerParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glCombinerParameteriNV"
 
glCombinerParameteri :: GLenum -> GLint -> IO ()
glCombinerParameteri
  = dyn_glCombinerParameteri ptr_glCombinerParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glCombinerParameteri ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glCombinerParameterfv #-}
 
ptr_glCombinerParameterfv :: FunPtr a
ptr_glCombinerParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glCombinerParameterfvNV"
 
glCombinerParameterfv :: GLenum -> Ptr GLfloat -> IO ()
glCombinerParameterfv
  = dyn_glCombinerParameterfv ptr_glCombinerParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glCombinerParameterfv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glCombinerParameterf #-}
 
ptr_glCombinerParameterf :: FunPtr a
ptr_glCombinerParameterf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glCombinerParameterfNV"
 
glCombinerParameterf :: GLenum -> GLfloat -> IO ()
glCombinerParameterf
  = dyn_glCombinerParameterf ptr_glCombinerParameterf
 
foreign import CALLCONV unsafe "dynamic" dyn_glCombinerParameterf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glCombinerOutput #-}
 
ptr_glCombinerOutput :: FunPtr a
ptr_glCombinerOutput
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glCombinerOutputNV"
 
glCombinerOutput ::
                 GLenum ->
                   GLenum ->
                     GLenum ->
                       GLenum ->
                         GLenum ->
                           GLenum -> GLenum -> GLboolean -> GLboolean -> GLboolean -> IO ()
glCombinerOutput = dyn_glCombinerOutput ptr_glCombinerOutput
 
foreign import CALLCONV unsafe "dynamic" dyn_glCombinerOutput ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLenum ->
                        GLenum ->
                          GLenum ->
                            GLenum -> GLenum -> GLboolean -> GLboolean -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glCombinerInput #-}
 
ptr_glCombinerInput :: FunPtr a
ptr_glCombinerInput
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glCombinerInputNV"
 
glCombinerInput ::
                GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glCombinerInput = dyn_glCombinerInput ptr_glCombinerInput
 
foreign import CALLCONV unsafe "dynamic" dyn_glCombinerInput ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
gl_VARIABLE_G :: GLenum
gl_VARIABLE_G = 34089
 
gl_VARIABLE_F :: GLenum
gl_VARIABLE_F = 34088
 
gl_VARIABLE_E :: GLenum
gl_VARIABLE_E = 34087
 
gl_VARIABLE_D :: GLenum
gl_VARIABLE_D = 34086
 
gl_VARIABLE_C :: GLenum
gl_VARIABLE_C = 34085
 
gl_VARIABLE_B :: GLenum
gl_VARIABLE_B = 34084
 
gl_VARIABLE_A :: GLenum
gl_VARIABLE_A = 34083
 
gl_UNSIGNED_INVERT :: GLenum
gl_UNSIGNED_INVERT = 34103
 
gl_UNSIGNED_IDENTITY :: GLenum
gl_UNSIGNED_IDENTITY = 34102
 
gl_SPARE1 :: GLenum
gl_SPARE1 = 34095
 
gl_SPARE0_PLUS_SECONDARY_COLOR :: GLenum
gl_SPARE0_PLUS_SECONDARY_COLOR = 34098
 
gl_SPARE0 :: GLenum
gl_SPARE0 = 34094
 
gl_SIGNED_NEGATE :: GLenum
gl_SIGNED_NEGATE = 34109
 
gl_SIGNED_IDENTITY :: GLenum
gl_SIGNED_IDENTITY = 34108
 
gl_SECONDARY_COLOR :: GLenum
gl_SECONDARY_COLOR = 34093
 
gl_SCALE_BY_TWO :: GLenum
gl_SCALE_BY_TWO = 34110
 
gl_SCALE_BY_ONE_HALF :: GLenum
gl_SCALE_BY_ONE_HALF = 34112
 
gl_SCALE_BY_FOUR :: GLenum
gl_SCALE_BY_FOUR = 34111
 
gl_REGISTER_COMBINERS :: GLenum
gl_REGISTER_COMBINERS = 34082
 
gl_PRIMARY_COLOR :: GLenum
gl_PRIMARY_COLOR = 34092
 
gl_NUM_GENERAL_COMBINERS :: GLenum
gl_NUM_GENERAL_COMBINERS = 34126
 
gl_MAX_GENERAL_COMBINERS :: GLenum
gl_MAX_GENERAL_COMBINERS = 34125
 
gl_HALF_BIAS_NORMAL :: GLenum
gl_HALF_BIAS_NORMAL = 34106
 
gl_HALF_BIAS_NEGATE :: GLenum
gl_HALF_BIAS_NEGATE = 34107
 
gl_E_TIMES_F :: GLenum
gl_E_TIMES_F = 34097
 
gl_EXPAND_NORMAL :: GLenum
gl_EXPAND_NORMAL = 34104
 
gl_EXPAND_NEGATE :: GLenum
gl_EXPAND_NEGATE = 34105
 
gl_DISCARD :: GLenum
gl_DISCARD = 34096
 
gl_CONSTANT_COLOR1 :: GLenum
gl_CONSTANT_COLOR1 = 34091
 
gl_CONSTANT_COLOR0 :: GLenum
gl_CONSTANT_COLOR0 = 34090
 
gl_COMBINER_SUM_OUTPUT :: GLenum
gl_COMBINER_SUM_OUTPUT = 34124
 
gl_COMBINER_SCALE :: GLenum
gl_COMBINER_SCALE = 34120
 
gl_COMBINER_MUX_SUM :: GLenum
gl_COMBINER_MUX_SUM = 34119
 
gl_COMBINER_MAPPING :: GLenum
gl_COMBINER_MAPPING = 34115
 
gl_COMBINER_INPUT :: GLenum
gl_COMBINER_INPUT = 34114
 
gl_COMBINER_COMPONENT_USAGE :: GLenum
gl_COMBINER_COMPONENT_USAGE = 34116
 
gl_COMBINER_CD_OUTPUT :: GLenum
gl_COMBINER_CD_OUTPUT = 34123
 
gl_COMBINER_CD_DOT_PRODUCT :: GLenum
gl_COMBINER_CD_DOT_PRODUCT = 34118
 
gl_COMBINER_BIAS :: GLenum
gl_COMBINER_BIAS = 34121
 
gl_COMBINER_AB_OUTPUT :: GLenum
gl_COMBINER_AB_OUTPUT = 34122
 
gl_COMBINER_AB_DOT_PRODUCT :: GLenum
gl_COMBINER_AB_DOT_PRODUCT = 34117
 
gl_COMBINER7 :: GLenum
gl_COMBINER7 = 34135
 
gl_COMBINER6 :: GLenum
gl_COMBINER6 = 34134
 
gl_COMBINER5 :: GLenum
gl_COMBINER5 = 34133
 
gl_COMBINER4 :: GLenum
gl_COMBINER4 = 34132
 
gl_COMBINER3 :: GLenum
gl_COMBINER3 = 34131
 
gl_COMBINER2 :: GLenum
gl_COMBINER2 = 34130
 
gl_COMBINER1 :: GLenum
gl_COMBINER1 = 34129
 
gl_COMBINER0 :: GLenum
gl_COMBINER0 = 34128
 
gl_COLOR_SUM_CLAMP :: GLenum
gl_COLOR_SUM_CLAMP = 34127
 
gl_BIAS_BY_NEGATIVE_ONE_HALF :: GLenum
gl_BIAS_BY_NEGATIVE_ONE_HALF = 34113