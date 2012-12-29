{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.RegisterCombiners
       (glGetFinalCombinerInputParameterivNV,
        glGetFinalCombinerInputParameterfvNV,
        glGetCombinerOutputParameterivNV, glGetCombinerOutputParameterfvNV,
        glGetCombinerInputParameterivNV, glGetCombinerInputParameterfvNV,
        glFinalCombinerInputNV, glCombinerOutputNV, glCombinerInputNV,
        glCombinerParameteriNV, glCombinerParameterivNV,
        glCombinerParameterfNV, glCombinerParameterfvNV, gl_FOG, gl_NONE,
        gl_ZERO, gl_TEXTURE1_ARB, gl_TEXTURE0_ARB, gl_COMBINER7_NV,
        gl_COMBINER6_NV, gl_COMBINER5_NV, gl_COMBINER4_NV, gl_COMBINER3_NV,
        gl_COMBINER2_NV, gl_COMBINER1_NV, gl_COMBINER0_NV,
        gl_COLOR_SUM_CLAMP_NV, gl_NUM_GENERAL_COMBINERS_NV,
        gl_MAX_GENERAL_COMBINERS_NV, gl_COMBINER_SUM_OUTPUT_NV,
        gl_COMBINER_CD_OUTPUT_NV, gl_COMBINER_AB_OUTPUT_NV,
        gl_COMBINER_BIAS_NV, gl_COMBINER_SCALE_NV, gl_COMBINER_MUX_SUM_NV,
        gl_COMBINER_CD_DOT_PRODUCT_NV, gl_COMBINER_AB_DOT_PRODUCT_NV,
        gl_COMBINER_COMPONENT_USAGE_NV, gl_COMBINER_MAPPING_NV,
        gl_COMBINER_INPUT_NV, gl_BIAS_BY_NEGATIVE_ONE_HALF_NV,
        gl_SCALE_BY_ONE_HALF_NV, gl_SCALE_BY_FOUR_NV, gl_SCALE_BY_TWO_NV,
        gl_SIGNED_NEGATE_NV, gl_SIGNED_IDENTITY_NV, gl_HALF_BIAS_NEGATE_NV,
        gl_HALF_BIAS_NORMAL_NV, gl_EXPAND_NEGATE_NV, gl_EXPAND_NORMAL_NV,
        gl_UNSIGNED_INVERT_NV, gl_UNSIGNED_IDENTITY_NV,
        gl_SPARE0_PLUS_SECONDARY_COLOR_NV, gl_E_TIMES_F_NV, gl_DISCARD_NV,
        gl_SPARE1_NV, gl_SPARE0_NV, gl_SECONDARY_COLOR_NV,
        gl_PRIMARY_COLOR_NV, gl_CONSTANT_COLOR1_NV, gl_CONSTANT_COLOR0_NV,
        gl_VARIABLE_G_NV, gl_VARIABLE_F_NV, gl_VARIABLE_E_NV,
        gl_VARIABLE_D_NV, gl_VARIABLE_C_NV, gl_VARIABLE_B_NV,
        gl_VARIABLE_A_NV, gl_REGISTER_COMBINERS_NV)
       where
import Graphics.Rendering.OpenGL.Raw.ARB.Multitexture
       (gl_TEXTURE1_ARB, gl_TEXTURE0_ARB)
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11
       (gl_NONE, gl_ZERO)
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11Compatibility
       (gl_FOG)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetFinalCombinerInputParameterivNV #-}
 
ptr_glGetFinalCombinerInputParameterivNV :: FunPtr a
ptr_glGetFinalCombinerInputParameterivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glGetFinalCombinerInputParameterivNV"
 
glGetFinalCombinerInputParameterivNV ::
                                     GLenum -> GLenum -> Ptr GLint -> IO ()
glGetFinalCombinerInputParameterivNV
  = dyn_glGetFinalCombinerInputParameterivNV
      ptr_glGetFinalCombinerInputParameterivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetFinalCombinerInputParameterivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetFinalCombinerInputParameterfvNV #-}
 
ptr_glGetFinalCombinerInputParameterfvNV :: FunPtr a
ptr_glGetFinalCombinerInputParameterfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glGetFinalCombinerInputParameterfvNV"
 
glGetFinalCombinerInputParameterfvNV ::
                                     GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetFinalCombinerInputParameterfvNV
  = dyn_glGetFinalCombinerInputParameterfvNV
      ptr_glGetFinalCombinerInputParameterfvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetFinalCombinerInputParameterfvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetCombinerOutputParameterivNV #-}
 
ptr_glGetCombinerOutputParameterivNV :: FunPtr a
ptr_glGetCombinerOutputParameterivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glGetCombinerOutputParameterivNV"
 
glGetCombinerOutputParameterivNV ::
                                 GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetCombinerOutputParameterivNV
  = dyn_glGetCombinerOutputParameterivNV
      ptr_glGetCombinerOutputParameterivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCombinerOutputParameterivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetCombinerOutputParameterfvNV #-}
 
ptr_glGetCombinerOutputParameterfvNV :: FunPtr a
ptr_glGetCombinerOutputParameterfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glGetCombinerOutputParameterfvNV"
 
glGetCombinerOutputParameterfvNV ::
                                 GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetCombinerOutputParameterfvNV
  = dyn_glGetCombinerOutputParameterfvNV
      ptr_glGetCombinerOutputParameterfvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCombinerOutputParameterfvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetCombinerInputParameterivNV #-}
 
ptr_glGetCombinerInputParameterivNV :: FunPtr a
ptr_glGetCombinerInputParameterivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glGetCombinerInputParameterivNV"
 
glGetCombinerInputParameterivNV ::
                                GLenum -> GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ()
glGetCombinerInputParameterivNV
  = dyn_glGetCombinerInputParameterivNV
      ptr_glGetCombinerInputParameterivNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCombinerInputParameterivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetCombinerInputParameterfvNV #-}
 
ptr_glGetCombinerInputParameterfvNV :: FunPtr a
ptr_glGetCombinerInputParameterfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glGetCombinerInputParameterfvNV"
 
glGetCombinerInputParameterfvNV ::
                                GLenum -> GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetCombinerInputParameterfvNV
  = dyn_glGetCombinerInputParameterfvNV
      ptr_glGetCombinerInputParameterfvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCombinerInputParameterfvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glFinalCombinerInputNV #-}
 
ptr_glFinalCombinerInputNV :: FunPtr a
ptr_glFinalCombinerInputNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glFinalCombinerInputNV"
 
glFinalCombinerInputNV ::
                       GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glFinalCombinerInputNV
  = dyn_glFinalCombinerInputNV ptr_glFinalCombinerInputNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glFinalCombinerInputNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glCombinerOutputNV #-}
 
ptr_glCombinerOutputNV :: FunPtr a
ptr_glCombinerOutputNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glCombinerOutputNV"
 
glCombinerOutputNV ::
                   GLenum ->
                     GLenum ->
                       GLenum ->
                         GLenum ->
                           GLenum ->
                             GLenum -> GLenum -> GLboolean -> GLboolean -> GLboolean -> IO ()
glCombinerOutputNV = dyn_glCombinerOutputNV ptr_glCombinerOutputNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glCombinerOutputNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLenum ->
                      GLenum ->
                        GLenum ->
                          GLenum ->
                            GLenum -> GLenum -> GLboolean -> GLboolean -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glCombinerInputNV #-}
 
ptr_glCombinerInputNV :: FunPtr a
ptr_glCombinerInputNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glCombinerInputNV"
 
glCombinerInputNV ::
                  GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glCombinerInputNV = dyn_glCombinerInputNV ptr_glCombinerInputNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glCombinerInputNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glCombinerParameteriNV #-}
 
ptr_glCombinerParameteriNV :: FunPtr a
ptr_glCombinerParameteriNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glCombinerParameteriNV"
 
glCombinerParameteriNV :: GLenum -> GLint -> IO ()
glCombinerParameteriNV
  = dyn_glCombinerParameteriNV ptr_glCombinerParameteriNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glCombinerParameteriNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glCombinerParameterivNV #-}
 
ptr_glCombinerParameterivNV :: FunPtr a
ptr_glCombinerParameterivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glCombinerParameterivNV"
 
glCombinerParameterivNV :: GLenum -> Ptr GLint -> IO ()
glCombinerParameterivNV
  = dyn_glCombinerParameterivNV ptr_glCombinerParameterivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glCombinerParameterivNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glCombinerParameterfNV #-}
 
ptr_glCombinerParameterfNV :: FunPtr a
ptr_glCombinerParameterfNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glCombinerParameterfNV"
 
glCombinerParameterfNV :: GLenum -> GLfloat -> IO ()
glCombinerParameterfNV
  = dyn_glCombinerParameterfNV ptr_glCombinerParameterfNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glCombinerParameterfNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glCombinerParameterfvNV #-}
 
ptr_glCombinerParameterfvNV :: FunPtr a
ptr_glCombinerParameterfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners"
        "glCombinerParameterfvNV"
 
glCombinerParameterfvNV :: GLenum -> Ptr GLfloat -> IO ()
glCombinerParameterfvNV
  = dyn_glCombinerParameterfvNV ptr_glCombinerParameterfvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glCombinerParameterfvNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
gl_COMBINER7_NV :: GLenum
gl_COMBINER7_NV = 34135
 
gl_COMBINER6_NV :: GLenum
gl_COMBINER6_NV = 34134
 
gl_COMBINER5_NV :: GLenum
gl_COMBINER5_NV = 34133
 
gl_COMBINER4_NV :: GLenum
gl_COMBINER4_NV = 34132
 
gl_COMBINER3_NV :: GLenum
gl_COMBINER3_NV = 34131
 
gl_COMBINER2_NV :: GLenum
gl_COMBINER2_NV = 34130
 
gl_COMBINER1_NV :: GLenum
gl_COMBINER1_NV = 34129
 
gl_COMBINER0_NV :: GLenum
gl_COMBINER0_NV = 34128
 
gl_COLOR_SUM_CLAMP_NV :: GLenum
gl_COLOR_SUM_CLAMP_NV = 34127
 
gl_NUM_GENERAL_COMBINERS_NV :: GLenum
gl_NUM_GENERAL_COMBINERS_NV = 34126
 
gl_MAX_GENERAL_COMBINERS_NV :: GLenum
gl_MAX_GENERAL_COMBINERS_NV = 34125
 
gl_COMBINER_SUM_OUTPUT_NV :: GLenum
gl_COMBINER_SUM_OUTPUT_NV = 34124
 
gl_COMBINER_CD_OUTPUT_NV :: GLenum
gl_COMBINER_CD_OUTPUT_NV = 34123
 
gl_COMBINER_AB_OUTPUT_NV :: GLenum
gl_COMBINER_AB_OUTPUT_NV = 34122
 
gl_COMBINER_BIAS_NV :: GLenum
gl_COMBINER_BIAS_NV = 34121
 
gl_COMBINER_SCALE_NV :: GLenum
gl_COMBINER_SCALE_NV = 34120
 
gl_COMBINER_MUX_SUM_NV :: GLenum
gl_COMBINER_MUX_SUM_NV = 34119
 
gl_COMBINER_CD_DOT_PRODUCT_NV :: GLenum
gl_COMBINER_CD_DOT_PRODUCT_NV = 34118
 
gl_COMBINER_AB_DOT_PRODUCT_NV :: GLenum
gl_COMBINER_AB_DOT_PRODUCT_NV = 34117
 
gl_COMBINER_COMPONENT_USAGE_NV :: GLenum
gl_COMBINER_COMPONENT_USAGE_NV = 34116
 
gl_COMBINER_MAPPING_NV :: GLenum
gl_COMBINER_MAPPING_NV = 34115
 
gl_COMBINER_INPUT_NV :: GLenum
gl_COMBINER_INPUT_NV = 34114
 
gl_BIAS_BY_NEGATIVE_ONE_HALF_NV :: GLenum
gl_BIAS_BY_NEGATIVE_ONE_HALF_NV = 34113
 
gl_SCALE_BY_ONE_HALF_NV :: GLenum
gl_SCALE_BY_ONE_HALF_NV = 34112
 
gl_SCALE_BY_FOUR_NV :: GLenum
gl_SCALE_BY_FOUR_NV = 34111
 
gl_SCALE_BY_TWO_NV :: GLenum
gl_SCALE_BY_TWO_NV = 34110
 
gl_SIGNED_NEGATE_NV :: GLenum
gl_SIGNED_NEGATE_NV = 34109
 
gl_SIGNED_IDENTITY_NV :: GLenum
gl_SIGNED_IDENTITY_NV = 34108
 
gl_HALF_BIAS_NEGATE_NV :: GLenum
gl_HALF_BIAS_NEGATE_NV = 34107
 
gl_HALF_BIAS_NORMAL_NV :: GLenum
gl_HALF_BIAS_NORMAL_NV = 34106
 
gl_EXPAND_NEGATE_NV :: GLenum
gl_EXPAND_NEGATE_NV = 34105
 
gl_EXPAND_NORMAL_NV :: GLenum
gl_EXPAND_NORMAL_NV = 34104
 
gl_UNSIGNED_INVERT_NV :: GLenum
gl_UNSIGNED_INVERT_NV = 34103
 
gl_UNSIGNED_IDENTITY_NV :: GLenum
gl_UNSIGNED_IDENTITY_NV = 34102
 
gl_SPARE0_PLUS_SECONDARY_COLOR_NV :: GLenum
gl_SPARE0_PLUS_SECONDARY_COLOR_NV = 34098
 
gl_E_TIMES_F_NV :: GLenum
gl_E_TIMES_F_NV = 34097
 
gl_DISCARD_NV :: GLenum
gl_DISCARD_NV = 34096
 
gl_SPARE1_NV :: GLenum
gl_SPARE1_NV = 34095
 
gl_SPARE0_NV :: GLenum
gl_SPARE0_NV = 34094
 
gl_SECONDARY_COLOR_NV :: GLenum
gl_SECONDARY_COLOR_NV = 34093
 
gl_PRIMARY_COLOR_NV :: GLenum
gl_PRIMARY_COLOR_NV = 34092
 
gl_CONSTANT_COLOR1_NV :: GLenum
gl_CONSTANT_COLOR1_NV = 34091
 
gl_CONSTANT_COLOR0_NV :: GLenum
gl_CONSTANT_COLOR0_NV = 34090
 
gl_VARIABLE_G_NV :: GLenum
gl_VARIABLE_G_NV = 34089
 
gl_VARIABLE_F_NV :: GLenum
gl_VARIABLE_F_NV = 34088
 
gl_VARIABLE_E_NV :: GLenum
gl_VARIABLE_E_NV = 34087
 
gl_VARIABLE_D_NV :: GLenum
gl_VARIABLE_D_NV = 34086
 
gl_VARIABLE_C_NV :: GLenum
gl_VARIABLE_C_NV = 34085
 
gl_VARIABLE_B_NV :: GLenum
gl_VARIABLE_B_NV = 34084
 
gl_VARIABLE_A_NV :: GLenum
gl_VARIABLE_A_NV = 34083
 
gl_REGISTER_COMBINERS_NV :: GLenum
gl_REGISTER_COMBINERS_NV = 34082