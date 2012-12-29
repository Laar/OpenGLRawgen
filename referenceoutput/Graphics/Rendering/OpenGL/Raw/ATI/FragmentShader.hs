{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.FragmentShader
       (glSetFragmentShaderConstantATI, glAlphaFragmentOp3ATI,
        glAlphaFragmentOp2ATI, glAlphaFragmentOp1ATI,
        glColorFragmentOp3ATI, glColorFragmentOp2ATI,
        glColorFragmentOp1ATI, glSampleMapATI, glPassTexCoordATI,
        glEndFragmentShaderATI, glBeginFragmentShaderATI,
        glDeleteFragmentShaderATI, glBindFragmentShaderATI,
        glGenFragmentShadersATI, gl_BIAS_BIT_ATI, gl_NEGATE_BIT_ATI,
        gl_COMP_BIT_ATI, gl_SATURATE_BIT_ATI, gl_EIGHTH_BIT_ATI,
        gl_QUARTER_BIT_ATI, gl_HALF_BIT_ATI, gl_8X_BIT_ATI, gl_4X_BIT_ATI,
        gl_2X_BIT_ATI, gl_BLUE_BIT_ATI, gl_GREEN_BIT_ATI, gl_RED_BIT_ATI,
        gl_SWIZZLE_STRQ_DQ_ATI, gl_SWIZZLE_STRQ_ATI, gl_SWIZZLE_STQ_DQ_ATI,
        gl_SWIZZLE_STR_DR_ATI, gl_SWIZZLE_STQ_ATI, gl_SWIZZLE_STR_ATI,
        gl_COLOR_ALPHA_PAIRING_ATI, gl_NUM_LOOPBACK_COMPONENTS_ATI,
        gl_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI,
        gl_NUM_INSTRUCTIONS_TOTAL_ATI, gl_NUM_INSTRUCTIONS_PER_PASS_ATI,
        gl_NUM_PASSES_ATI, gl_NUM_FRAGMENT_CONSTANTS_ATI,
        gl_NUM_FRAGMENT_REGISTERS_ATI, gl_SECONDARY_INTERPOLATOR_ATI,
        gl_DOT2_ADD_ATI, gl_CND0_ATI, gl_CND_ATI, gl_LERP_ATI, gl_MAD_ATI,
        gl_DOT4_ATI, gl_DOT3_ATI, gl_SUB_ATI, gl_MUL_ATI, gl_ADD_ATI,
        gl_MOV_ATI, gl_CON_31_ATI, gl_CON_30_ATI, gl_CON_29_ATI,
        gl_CON_28_ATI, gl_CON_27_ATI, gl_CON_26_ATI, gl_CON_25_ATI,
        gl_CON_24_ATI, gl_CON_23_ATI, gl_CON_22_ATI, gl_CON_21_ATI,
        gl_CON_20_ATI, gl_CON_19_ATI, gl_CON_18_ATI, gl_CON_17_ATI,
        gl_CON_16_ATI, gl_CON_15_ATI, gl_CON_14_ATI, gl_CON_13_ATI,
        gl_CON_12_ATI, gl_CON_11_ATI, gl_CON_10_ATI, gl_CON_9_ATI,
        gl_CON_8_ATI, gl_CON_7_ATI, gl_CON_6_ATI, gl_CON_5_ATI,
        gl_CON_4_ATI, gl_CON_3_ATI, gl_CON_2_ATI, gl_CON_1_ATI,
        gl_CON_0_ATI, gl_REG_31_ATI, gl_REG_30_ATI, gl_REG_29_ATI,
        gl_REG_28_ATI, gl_REG_27_ATI, gl_REG_26_ATI, gl_REG_25_ATI,
        gl_REG_24_ATI, gl_REG_23_ATI, gl_REG_22_ATI, gl_REG_21_ATI,
        gl_REG_20_ATI, gl_REG_19_ATI, gl_REG_18_ATI, gl_REG_17_ATI,
        gl_REG_16_ATI, gl_REG_15_ATI, gl_REG_14_ATI, gl_REG_13_ATI,
        gl_REG_12_ATI, gl_REG_11_ATI, gl_REG_10_ATI, gl_REG_9_ATI,
        gl_REG_8_ATI, gl_REG_7_ATI, gl_REG_6_ATI, gl_REG_5_ATI,
        gl_REG_4_ATI, gl_REG_3_ATI, gl_REG_2_ATI, gl_REG_1_ATI,
        gl_REG_0_ATI, gl_FRAGMENT_SHADER_ATI)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSetFragmentShaderConstantATI #-}
 
ptr_glSetFragmentShaderConstantATI :: FunPtr a
ptr_glSetFragmentShaderConstantATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glSetFragmentShaderConstantATI"
 
glSetFragmentShaderConstantATI :: GLuint -> Ptr GLfloat -> IO ()
glSetFragmentShaderConstantATI
  = dyn_glSetFragmentShaderConstantATI
      ptr_glSetFragmentShaderConstantATI
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glSetFragmentShaderConstantATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glAlphaFragmentOp3ATI #-}
 
ptr_glAlphaFragmentOp3ATI :: FunPtr a
ptr_glAlphaFragmentOp3ATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glAlphaFragmentOp3ATI"
 
glAlphaFragmentOp3ATI ::
                      GLenum ->
                        GLuint ->
                          GLuint ->
                            GLuint ->
                              GLuint ->
                                GLuint ->
                                  GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glAlphaFragmentOp3ATI
  = dyn_glAlphaFragmentOp3ATI ptr_glAlphaFragmentOp3ATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glAlphaFragmentOp3ATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint ->
                      GLuint ->
                        GLuint ->
                          GLuint ->
                            GLuint ->
                              GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glAlphaFragmentOp2ATI #-}
 
ptr_glAlphaFragmentOp2ATI :: FunPtr a
ptr_glAlphaFragmentOp2ATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glAlphaFragmentOp2ATI"
 
glAlphaFragmentOp2ATI ::
                      GLenum ->
                        GLuint ->
                          GLuint ->
                            GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glAlphaFragmentOp2ATI
  = dyn_glAlphaFragmentOp2ATI ptr_glAlphaFragmentOp2ATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glAlphaFragmentOp2ATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint ->
                      GLuint ->
                        GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glAlphaFragmentOp1ATI #-}
 
ptr_glAlphaFragmentOp1ATI :: FunPtr a
ptr_glAlphaFragmentOp1ATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glAlphaFragmentOp1ATI"
 
glAlphaFragmentOp1ATI ::
                      GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glAlphaFragmentOp1ATI
  = dyn_glAlphaFragmentOp1ATI ptr_glAlphaFragmentOp1ATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glAlphaFragmentOp1ATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glColorFragmentOp3ATI #-}
 
ptr_glColorFragmentOp3ATI :: FunPtr a
ptr_glColorFragmentOp3ATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glColorFragmentOp3ATI"
 
glColorFragmentOp3ATI ::
                      GLenum ->
                        GLuint ->
                          GLuint ->
                            GLuint ->
                              GLuint ->
                                GLuint ->
                                  GLuint ->
                                    GLuint ->
                                      GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glColorFragmentOp3ATI
  = dyn_glColorFragmentOp3ATI ptr_glColorFragmentOp3ATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorFragmentOp3ATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint ->
                      GLuint ->
                        GLuint ->
                          GLuint ->
                            GLuint ->
                              GLuint ->
                                GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glColorFragmentOp2ATI #-}
 
ptr_glColorFragmentOp2ATI :: FunPtr a
ptr_glColorFragmentOp2ATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glColorFragmentOp2ATI"
 
glColorFragmentOp2ATI ::
                      GLenum ->
                        GLuint ->
                          GLuint ->
                            GLuint ->
                              GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glColorFragmentOp2ATI
  = dyn_glColorFragmentOp2ATI ptr_glColorFragmentOp2ATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorFragmentOp2ATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint ->
                      GLuint ->
                        GLuint ->
                          GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glColorFragmentOp1ATI #-}
 
ptr_glColorFragmentOp1ATI :: FunPtr a
ptr_glColorFragmentOp1ATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glColorFragmentOp1ATI"
 
glColorFragmentOp1ATI ::
                      GLenum ->
                        GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glColorFragmentOp1ATI
  = dyn_glColorFragmentOp1ATI ptr_glColorFragmentOp1ATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorFragmentOp1ATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glSampleMapATI #-}
 
ptr_glSampleMapATI :: FunPtr a
ptr_glSampleMapATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glSampleMapATI"
 
glSampleMapATI :: GLuint -> GLuint -> GLenum -> IO ()
glSampleMapATI = dyn_glSampleMapATI ptr_glSampleMapATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glSampleMapATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glPassTexCoordATI #-}
 
ptr_glPassTexCoordATI :: FunPtr a
ptr_glPassTexCoordATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glPassTexCoordATI"
 
glPassTexCoordATI :: GLuint -> GLuint -> GLenum -> IO ()
glPassTexCoordATI = dyn_glPassTexCoordATI ptr_glPassTexCoordATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glPassTexCoordATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glEndFragmentShaderATI #-}
 
ptr_glEndFragmentShaderATI :: FunPtr a
ptr_glEndFragmentShaderATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glEndFragmentShaderATI"
 
glEndFragmentShaderATI :: IO ()
glEndFragmentShaderATI
  = dyn_glEndFragmentShaderATI ptr_glEndFragmentShaderATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndFragmentShaderATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glBeginFragmentShaderATI #-}
 
ptr_glBeginFragmentShaderATI :: FunPtr a
ptr_glBeginFragmentShaderATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glBeginFragmentShaderATI"
 
glBeginFragmentShaderATI :: IO ()
glBeginFragmentShaderATI
  = dyn_glBeginFragmentShaderATI ptr_glBeginFragmentShaderATI
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBeginFragmentShaderATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glDeleteFragmentShaderATI #-}
 
ptr_glDeleteFragmentShaderATI :: FunPtr a
ptr_glDeleteFragmentShaderATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glDeleteFragmentShaderATI"
 
glDeleteFragmentShaderATI :: GLuint -> IO ()
glDeleteFragmentShaderATI
  = dyn_glDeleteFragmentShaderATI ptr_glDeleteFragmentShaderATI
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDeleteFragmentShaderATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glBindFragmentShaderATI #-}
 
ptr_glBindFragmentShaderATI :: FunPtr a
ptr_glBindFragmentShaderATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glBindFragmentShaderATI"
 
glBindFragmentShaderATI :: GLuint -> IO ()
glBindFragmentShaderATI
  = dyn_glBindFragmentShaderATI ptr_glBindFragmentShaderATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindFragmentShaderATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glGenFragmentShadersATI #-}
 
ptr_glGenFragmentShadersATI :: FunPtr a
ptr_glGenFragmentShadersATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glGenFragmentShadersATI"
 
glGenFragmentShadersATI :: GLuint -> IO GLuint
glGenFragmentShadersATI
  = dyn_glGenFragmentShadersATI ptr_glGenFragmentShadersATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenFragmentShadersATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLuint)
 
gl_BIAS_BIT_ATI :: GLbitfield
gl_BIAS_BIT_ATI = 8
 
gl_NEGATE_BIT_ATI :: GLbitfield
gl_NEGATE_BIT_ATI = 4
 
gl_COMP_BIT_ATI :: GLbitfield
gl_COMP_BIT_ATI = 2
 
gl_SATURATE_BIT_ATI :: GLbitfield
gl_SATURATE_BIT_ATI = 64
 
gl_EIGHTH_BIT_ATI :: GLbitfield
gl_EIGHTH_BIT_ATI = 32
 
gl_QUARTER_BIT_ATI :: GLbitfield
gl_QUARTER_BIT_ATI = 16
 
gl_HALF_BIT_ATI :: GLbitfield
gl_HALF_BIT_ATI = 8
 
gl_8X_BIT_ATI :: GLbitfield
gl_8X_BIT_ATI = 4
 
gl_4X_BIT_ATI :: GLbitfield
gl_4X_BIT_ATI = 2
 
gl_2X_BIT_ATI :: GLbitfield
gl_2X_BIT_ATI = 1
 
gl_BLUE_BIT_ATI :: GLbitfield
gl_BLUE_BIT_ATI = 4
 
gl_GREEN_BIT_ATI :: GLbitfield
gl_GREEN_BIT_ATI = 2
 
gl_RED_BIT_ATI :: GLbitfield
gl_RED_BIT_ATI = 1
 
gl_SWIZZLE_STRQ_DQ_ATI :: GLenum
gl_SWIZZLE_STRQ_DQ_ATI = 35195
 
gl_SWIZZLE_STRQ_ATI :: GLenum
gl_SWIZZLE_STRQ_ATI = 35194
 
gl_SWIZZLE_STQ_DQ_ATI :: GLenum
gl_SWIZZLE_STQ_DQ_ATI = 35193
 
gl_SWIZZLE_STR_DR_ATI :: GLenum
gl_SWIZZLE_STR_DR_ATI = 35192
 
gl_SWIZZLE_STQ_ATI :: GLenum
gl_SWIZZLE_STQ_ATI = 35191
 
gl_SWIZZLE_STR_ATI :: GLenum
gl_SWIZZLE_STR_ATI = 35190
 
gl_COLOR_ALPHA_PAIRING_ATI :: GLenum
gl_COLOR_ALPHA_PAIRING_ATI = 35189
 
gl_NUM_LOOPBACK_COMPONENTS_ATI :: GLenum
gl_NUM_LOOPBACK_COMPONENTS_ATI = 35188
 
gl_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI :: GLenum
gl_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI = 35187
 
gl_NUM_INSTRUCTIONS_TOTAL_ATI :: GLenum
gl_NUM_INSTRUCTIONS_TOTAL_ATI = 35186
 
gl_NUM_INSTRUCTIONS_PER_PASS_ATI :: GLenum
gl_NUM_INSTRUCTIONS_PER_PASS_ATI = 35185
 
gl_NUM_PASSES_ATI :: GLenum
gl_NUM_PASSES_ATI = 35184
 
gl_NUM_FRAGMENT_CONSTANTS_ATI :: GLenum
gl_NUM_FRAGMENT_CONSTANTS_ATI = 35183
 
gl_NUM_FRAGMENT_REGISTERS_ATI :: GLenum
gl_NUM_FRAGMENT_REGISTERS_ATI = 35182
 
gl_SECONDARY_INTERPOLATOR_ATI :: GLenum
gl_SECONDARY_INTERPOLATOR_ATI = 35181
 
gl_DOT2_ADD_ATI :: GLenum
gl_DOT2_ADD_ATI = 35180
 
gl_CND0_ATI :: GLenum
gl_CND0_ATI = 35179
 
gl_CND_ATI :: GLenum
gl_CND_ATI = 35178
 
gl_LERP_ATI :: GLenum
gl_LERP_ATI = 35177
 
gl_MAD_ATI :: GLenum
gl_MAD_ATI = 35176
 
gl_DOT4_ATI :: GLenum
gl_DOT4_ATI = 35175
 
gl_DOT3_ATI :: GLenum
gl_DOT3_ATI = 35174
 
gl_SUB_ATI :: GLenum
gl_SUB_ATI = 35173
 
gl_MUL_ATI :: GLenum
gl_MUL_ATI = 35172
 
gl_ADD_ATI :: GLenum
gl_ADD_ATI = 35171
 
gl_MOV_ATI :: GLenum
gl_MOV_ATI = 35169
 
gl_CON_31_ATI :: GLenum
gl_CON_31_ATI = 35168
 
gl_CON_30_ATI :: GLenum
gl_CON_30_ATI = 35167
 
gl_CON_29_ATI :: GLenum
gl_CON_29_ATI = 35166
 
gl_CON_28_ATI :: GLenum
gl_CON_28_ATI = 35165
 
gl_CON_27_ATI :: GLenum
gl_CON_27_ATI = 35164
 
gl_CON_26_ATI :: GLenum
gl_CON_26_ATI = 35163
 
gl_CON_25_ATI :: GLenum
gl_CON_25_ATI = 35162
 
gl_CON_24_ATI :: GLenum
gl_CON_24_ATI = 35161
 
gl_CON_23_ATI :: GLenum
gl_CON_23_ATI = 35160
 
gl_CON_22_ATI :: GLenum
gl_CON_22_ATI = 35159
 
gl_CON_21_ATI :: GLenum
gl_CON_21_ATI = 35158
 
gl_CON_20_ATI :: GLenum
gl_CON_20_ATI = 35157
 
gl_CON_19_ATI :: GLenum
gl_CON_19_ATI = 35156
 
gl_CON_18_ATI :: GLenum
gl_CON_18_ATI = 35155
 
gl_CON_17_ATI :: GLenum
gl_CON_17_ATI = 35154
 
gl_CON_16_ATI :: GLenum
gl_CON_16_ATI = 35153
 
gl_CON_15_ATI :: GLenum
gl_CON_15_ATI = 35152
 
gl_CON_14_ATI :: GLenum
gl_CON_14_ATI = 35151
 
gl_CON_13_ATI :: GLenum
gl_CON_13_ATI = 35150
 
gl_CON_12_ATI :: GLenum
gl_CON_12_ATI = 35149
 
gl_CON_11_ATI :: GLenum
gl_CON_11_ATI = 35148
 
gl_CON_10_ATI :: GLenum
gl_CON_10_ATI = 35147
 
gl_CON_9_ATI :: GLenum
gl_CON_9_ATI = 35146
 
gl_CON_8_ATI :: GLenum
gl_CON_8_ATI = 35145
 
gl_CON_7_ATI :: GLenum
gl_CON_7_ATI = 35144
 
gl_CON_6_ATI :: GLenum
gl_CON_6_ATI = 35143
 
gl_CON_5_ATI :: GLenum
gl_CON_5_ATI = 35142
 
gl_CON_4_ATI :: GLenum
gl_CON_4_ATI = 35141
 
gl_CON_3_ATI :: GLenum
gl_CON_3_ATI = 35140
 
gl_CON_2_ATI :: GLenum
gl_CON_2_ATI = 35139
 
gl_CON_1_ATI :: GLenum
gl_CON_1_ATI = 35138
 
gl_CON_0_ATI :: GLenum
gl_CON_0_ATI = 35137
 
gl_REG_31_ATI :: GLenum
gl_REG_31_ATI = 35136
 
gl_REG_30_ATI :: GLenum
gl_REG_30_ATI = 35135
 
gl_REG_29_ATI :: GLenum
gl_REG_29_ATI = 35134
 
gl_REG_28_ATI :: GLenum
gl_REG_28_ATI = 35133
 
gl_REG_27_ATI :: GLenum
gl_REG_27_ATI = 35132
 
gl_REG_26_ATI :: GLenum
gl_REG_26_ATI = 35131
 
gl_REG_25_ATI :: GLenum
gl_REG_25_ATI = 35130
 
gl_REG_24_ATI :: GLenum
gl_REG_24_ATI = 35129
 
gl_REG_23_ATI :: GLenum
gl_REG_23_ATI = 35128
 
gl_REG_22_ATI :: GLenum
gl_REG_22_ATI = 35127
 
gl_REG_21_ATI :: GLenum
gl_REG_21_ATI = 35126
 
gl_REG_20_ATI :: GLenum
gl_REG_20_ATI = 35125
 
gl_REG_19_ATI :: GLenum
gl_REG_19_ATI = 35124
 
gl_REG_18_ATI :: GLenum
gl_REG_18_ATI = 35123
 
gl_REG_17_ATI :: GLenum
gl_REG_17_ATI = 35122
 
gl_REG_16_ATI :: GLenum
gl_REG_16_ATI = 35121
 
gl_REG_15_ATI :: GLenum
gl_REG_15_ATI = 35120
 
gl_REG_14_ATI :: GLenum
gl_REG_14_ATI = 35119
 
gl_REG_13_ATI :: GLenum
gl_REG_13_ATI = 35118
 
gl_REG_12_ATI :: GLenum
gl_REG_12_ATI = 35117
 
gl_REG_11_ATI :: GLenum
gl_REG_11_ATI = 35116
 
gl_REG_10_ATI :: GLenum
gl_REG_10_ATI = 35115
 
gl_REG_9_ATI :: GLenum
gl_REG_9_ATI = 35114
 
gl_REG_8_ATI :: GLenum
gl_REG_8_ATI = 35113
 
gl_REG_7_ATI :: GLenum
gl_REG_7_ATI = 35112
 
gl_REG_6_ATI :: GLenum
gl_REG_6_ATI = 35111
 
gl_REG_5_ATI :: GLenum
gl_REG_5_ATI = 35110
 
gl_REG_4_ATI :: GLenum
gl_REG_4_ATI = 35109
 
gl_REG_3_ATI :: GLenum
gl_REG_3_ATI = 35108
 
gl_REG_2_ATI :: GLenum
gl_REG_2_ATI = 35107
 
gl_REG_1_ATI :: GLenum
gl_REG_1_ATI = 35106
 
gl_REG_0_ATI :: GLenum
gl_REG_0_ATI = 35105
 
gl_FRAGMENT_SHADER_ATI :: GLenum
gl_FRAGMENT_SHADER_ATI = 35104