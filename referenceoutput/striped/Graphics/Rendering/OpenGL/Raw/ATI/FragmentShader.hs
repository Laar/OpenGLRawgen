{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.FragmentShader
       (glSetFragmentShaderConstant, glSampleMap, glPassTexCoord,
        glGenFragmentShaders, glEndFragmentShader, glDeleteFragmentShader,
        glColorFragmentOp3, glColorFragmentOp2, glColorFragmentOp1,
        glBindFragmentShader, glBeginFragmentShader, glAlphaFragmentOp3,
        glAlphaFragmentOp2, glAlphaFragmentOp1, gl_SWIZZLE_STR_DR,
        gl_SWIZZLE_STR, gl_SWIZZLE_STRQ_DQ, gl_SWIZZLE_STRQ,
        gl_SWIZZLE_STQ_DQ, gl_SWIZZLE_STQ, gl_SUB,
        gl_SECONDARY_INTERPOLATOR, gl_SATURATE_BIT, gl_REG_9, gl_REG_8,
        gl_REG_7, gl_REG_6, gl_REG_5, gl_REG_4, gl_REG_3, gl_REG_31,
        gl_REG_30, gl_REG_2, gl_REG_29, gl_REG_28, gl_REG_27, gl_REG_26,
        gl_REG_25, gl_REG_24, gl_REG_23, gl_REG_22, gl_REG_21, gl_REG_20,
        gl_REG_1, gl_REG_19, gl_REG_18, gl_REG_17, gl_REG_16, gl_REG_15,
        gl_REG_14, gl_REG_13, gl_REG_12, gl_REG_11, gl_REG_10, gl_REG_0,
        gl_RED_BIT, gl_QUARTER_BIT, gl_NUM_PASSES,
        gl_NUM_LOOPBACK_COMPONENTS, gl_NUM_INSTRUCTIONS_TOTAL,
        gl_NUM_INSTRUCTIONS_PER_PASS, gl_NUM_INPUT_INTERPOLATOR_COMPONENTS,
        gl_NUM_FRAGMENT_REGISTERS, gl_NUM_FRAGMENT_CONSTANTS,
        gl_NEGATE_BIT, gl_MUL, gl_MOV, gl_MAD, gl_LERP, gl_HALF_BIT,
        gl_GREEN_BIT, gl_FRAGMENT_SHADER, gl_EIGHTH_BIT, gl_DOT4, gl_DOT3,
        gl_DOT2_ADD, gl_CON_9, gl_CON_8, gl_CON_7, gl_CON_6, gl_CON_5,
        gl_CON_4, gl_CON_3, gl_CON_31, gl_CON_30, gl_CON_2, gl_CON_29,
        gl_CON_28, gl_CON_27, gl_CON_26, gl_CON_25, gl_CON_24, gl_CON_23,
        gl_CON_22, gl_CON_21, gl_CON_20, gl_CON_1, gl_CON_19, gl_CON_18,
        gl_CON_17, gl_CON_16, gl_CON_15, gl_CON_14, gl_CON_13, gl_CON_12,
        gl_CON_11, gl_CON_10, gl_CON_0, gl_COMP_BIT,
        gl_COLOR_ALPHA_PAIRING, gl_CND, gl_CND0, gl_BLUE_BIT, gl_BIAS_BIT,
        gl_ADD, gl_8X_BIT, gl_4X_BIT, gl_2X_BIT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glSetFragmentShaderConstant #-}
 
ptr_glSetFragmentShaderConstant :: FunPtr a
ptr_glSetFragmentShaderConstant
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glSetFragmentShaderConstantATI"
 
glSetFragmentShaderConstant :: GLuint -> Ptr GLfloat -> IO ()
glSetFragmentShaderConstant
  = dyn_glSetFragmentShaderConstant ptr_glSetFragmentShaderConstant
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glSetFragmentShaderConstant ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glSampleMap #-}
 
ptr_glSampleMap :: FunPtr a
ptr_glSampleMap
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glSampleMapATI"
 
glSampleMap :: GLuint -> GLuint -> GLenum -> IO ()
glSampleMap = dyn_glSampleMap ptr_glSampleMap
 
foreign import CALLCONV unsafe "dynamic" dyn_glSampleMap ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glPassTexCoord #-}
 
ptr_glPassTexCoord :: FunPtr a
ptr_glPassTexCoord
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glPassTexCoordATI"
 
glPassTexCoord :: GLuint -> GLuint -> GLenum -> IO ()
glPassTexCoord = dyn_glPassTexCoord ptr_glPassTexCoord
 
foreign import CALLCONV unsafe "dynamic" dyn_glPassTexCoord ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glGenFragmentShaders #-}
 
ptr_glGenFragmentShaders :: FunPtr a
ptr_glGenFragmentShaders
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glGenFragmentShadersATI"
 
glGenFragmentShaders :: GLuint -> IO GLuint
glGenFragmentShaders
  = dyn_glGenFragmentShaders ptr_glGenFragmentShaders
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenFragmentShaders ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLuint)
 
{-# NOINLINE ptr_glEndFragmentShader #-}
 
ptr_glEndFragmentShader :: FunPtr a
ptr_glEndFragmentShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glEndFragmentShaderATI"
 
glEndFragmentShader :: IO ()
glEndFragmentShader
  = dyn_glEndFragmentShader ptr_glEndFragmentShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndFragmentShader ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glDeleteFragmentShader #-}
 
ptr_glDeleteFragmentShader :: FunPtr a
ptr_glDeleteFragmentShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glDeleteFragmentShaderATI"
 
glDeleteFragmentShader :: GLuint -> IO ()
glDeleteFragmentShader
  = dyn_glDeleteFragmentShader ptr_glDeleteFragmentShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteFragmentShader
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glColorFragmentOp3 #-}
 
ptr_glColorFragmentOp3 :: FunPtr a
ptr_glColorFragmentOp3
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glColorFragmentOp3ATI"
 
glColorFragmentOp3 ::
                   GLenum ->
                     GLuint ->
                       GLuint ->
                         GLuint ->
                           GLuint ->
                             GLuint ->
                               GLuint ->
                                 GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glColorFragmentOp3 = dyn_glColorFragmentOp3 ptr_glColorFragmentOp3
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorFragmentOp3 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint ->
                      GLuint ->
                        GLuint ->
                          GLuint ->
                            GLuint ->
                              GLuint ->
                                GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glColorFragmentOp2 #-}
 
ptr_glColorFragmentOp2 :: FunPtr a
ptr_glColorFragmentOp2
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glColorFragmentOp2ATI"
 
glColorFragmentOp2 ::
                   GLenum ->
                     GLuint ->
                       GLuint ->
                         GLuint ->
                           GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glColorFragmentOp2 = dyn_glColorFragmentOp2 ptr_glColorFragmentOp2
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorFragmentOp2 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint ->
                      GLuint ->
                        GLuint ->
                          GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glColorFragmentOp1 #-}
 
ptr_glColorFragmentOp1 :: FunPtr a
ptr_glColorFragmentOp1
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glColorFragmentOp1ATI"
 
glColorFragmentOp1 ::
                   GLenum ->
                     GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glColorFragmentOp1 = dyn_glColorFragmentOp1 ptr_glColorFragmentOp1
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorFragmentOp1 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glBindFragmentShader #-}
 
ptr_glBindFragmentShader :: FunPtr a
ptr_glBindFragmentShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glBindFragmentShaderATI"
 
glBindFragmentShader :: GLuint -> IO ()
glBindFragmentShader
  = dyn_glBindFragmentShader ptr_glBindFragmentShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindFragmentShader ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glBeginFragmentShader #-}
 
ptr_glBeginFragmentShader :: FunPtr a
ptr_glBeginFragmentShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glBeginFragmentShaderATI"
 
glBeginFragmentShader :: IO ()
glBeginFragmentShader
  = dyn_glBeginFragmentShader ptr_glBeginFragmentShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glBeginFragmentShader
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glAlphaFragmentOp3 #-}
 
ptr_glAlphaFragmentOp3 :: FunPtr a
ptr_glAlphaFragmentOp3
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glAlphaFragmentOp3ATI"
 
glAlphaFragmentOp3 ::
                   GLenum ->
                     GLuint ->
                       GLuint ->
                         GLuint ->
                           GLuint ->
                             GLuint ->
                               GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glAlphaFragmentOp3 = dyn_glAlphaFragmentOp3 ptr_glAlphaFragmentOp3
 
foreign import CALLCONV unsafe "dynamic" dyn_glAlphaFragmentOp3 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint ->
                      GLuint ->
                        GLuint ->
                          GLuint ->
                            GLuint ->
                              GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glAlphaFragmentOp2 #-}
 
ptr_glAlphaFragmentOp2 :: FunPtr a
ptr_glAlphaFragmentOp2
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glAlphaFragmentOp2ATI"
 
glAlphaFragmentOp2 ::
                   GLenum ->
                     GLuint ->
                       GLuint ->
                         GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glAlphaFragmentOp2 = dyn_glAlphaFragmentOp2 ptr_glAlphaFragmentOp2
 
foreign import CALLCONV unsafe "dynamic" dyn_glAlphaFragmentOp2 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint ->
                      GLuint ->
                        GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glAlphaFragmentOp1 #-}
 
ptr_glAlphaFragmentOp1 :: FunPtr a
ptr_glAlphaFragmentOp1
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_fragment_shader"
        "glAlphaFragmentOp1ATI"
 
glAlphaFragmentOp1 ::
                   GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glAlphaFragmentOp1 = dyn_glAlphaFragmentOp1 ptr_glAlphaFragmentOp1
 
foreign import CALLCONV unsafe "dynamic" dyn_glAlphaFragmentOp1 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
gl_SWIZZLE_STR_DR :: GLenum
gl_SWIZZLE_STR_DR = 35192
 
gl_SWIZZLE_STR :: GLenum
gl_SWIZZLE_STR = 35190
 
gl_SWIZZLE_STRQ_DQ :: GLenum
gl_SWIZZLE_STRQ_DQ = 35195
 
gl_SWIZZLE_STRQ :: GLenum
gl_SWIZZLE_STRQ = 35194
 
gl_SWIZZLE_STQ_DQ :: GLenum
gl_SWIZZLE_STQ_DQ = 35193
 
gl_SWIZZLE_STQ :: GLenum
gl_SWIZZLE_STQ = 35191
 
gl_SUB :: GLenum
gl_SUB = 35173
 
gl_SECONDARY_INTERPOLATOR :: GLenum
gl_SECONDARY_INTERPOLATOR = 35181
 
gl_SATURATE_BIT :: GLbitfield
gl_SATURATE_BIT = 64
 
gl_REG_9 :: GLenum
gl_REG_9 = 35114
 
gl_REG_8 :: GLenum
gl_REG_8 = 35113
 
gl_REG_7 :: GLenum
gl_REG_7 = 35112
 
gl_REG_6 :: GLenum
gl_REG_6 = 35111
 
gl_REG_5 :: GLenum
gl_REG_5 = 35110
 
gl_REG_4 :: GLenum
gl_REG_4 = 35109
 
gl_REG_3 :: GLenum
gl_REG_3 = 35108
 
gl_REG_31 :: GLenum
gl_REG_31 = 35136
 
gl_REG_30 :: GLenum
gl_REG_30 = 35135
 
gl_REG_2 :: GLenum
gl_REG_2 = 35107
 
gl_REG_29 :: GLenum
gl_REG_29 = 35134
 
gl_REG_28 :: GLenum
gl_REG_28 = 35133
 
gl_REG_27 :: GLenum
gl_REG_27 = 35132
 
gl_REG_26 :: GLenum
gl_REG_26 = 35131
 
gl_REG_25 :: GLenum
gl_REG_25 = 35130
 
gl_REG_24 :: GLenum
gl_REG_24 = 35129
 
gl_REG_23 :: GLenum
gl_REG_23 = 35128
 
gl_REG_22 :: GLenum
gl_REG_22 = 35127
 
gl_REG_21 :: GLenum
gl_REG_21 = 35126
 
gl_REG_20 :: GLenum
gl_REG_20 = 35125
 
gl_REG_1 :: GLenum
gl_REG_1 = 35106
 
gl_REG_19 :: GLenum
gl_REG_19 = 35124
 
gl_REG_18 :: GLenum
gl_REG_18 = 35123
 
gl_REG_17 :: GLenum
gl_REG_17 = 35122
 
gl_REG_16 :: GLenum
gl_REG_16 = 35121
 
gl_REG_15 :: GLenum
gl_REG_15 = 35120
 
gl_REG_14 :: GLenum
gl_REG_14 = 35119
 
gl_REG_13 :: GLenum
gl_REG_13 = 35118
 
gl_REG_12 :: GLenum
gl_REG_12 = 35117
 
gl_REG_11 :: GLenum
gl_REG_11 = 35116
 
gl_REG_10 :: GLenum
gl_REG_10 = 35115
 
gl_REG_0 :: GLenum
gl_REG_0 = 35105
 
gl_RED_BIT :: GLbitfield
gl_RED_BIT = 1
 
gl_QUARTER_BIT :: GLbitfield
gl_QUARTER_BIT = 16
 
gl_NUM_PASSES :: GLenum
gl_NUM_PASSES = 35184
 
gl_NUM_LOOPBACK_COMPONENTS :: GLenum
gl_NUM_LOOPBACK_COMPONENTS = 35188
 
gl_NUM_INSTRUCTIONS_TOTAL :: GLenum
gl_NUM_INSTRUCTIONS_TOTAL = 35186
 
gl_NUM_INSTRUCTIONS_PER_PASS :: GLenum
gl_NUM_INSTRUCTIONS_PER_PASS = 35185
 
gl_NUM_INPUT_INTERPOLATOR_COMPONENTS :: GLenum
gl_NUM_INPUT_INTERPOLATOR_COMPONENTS = 35187
 
gl_NUM_FRAGMENT_REGISTERS :: GLenum
gl_NUM_FRAGMENT_REGISTERS = 35182
 
gl_NUM_FRAGMENT_CONSTANTS :: GLenum
gl_NUM_FRAGMENT_CONSTANTS = 35183
 
gl_NEGATE_BIT :: GLbitfield
gl_NEGATE_BIT = 4
 
gl_MUL :: GLenum
gl_MUL = 35172
 
gl_MOV :: GLenum
gl_MOV = 35169
 
gl_MAD :: GLenum
gl_MAD = 35176
 
gl_LERP :: GLenum
gl_LERP = 35177
 
gl_HALF_BIT :: GLbitfield
gl_HALF_BIT = 8
 
gl_GREEN_BIT :: GLbitfield
gl_GREEN_BIT = 2
 
gl_FRAGMENT_SHADER :: GLenum
gl_FRAGMENT_SHADER = 35104
 
gl_EIGHTH_BIT :: GLbitfield
gl_EIGHTH_BIT = 32
 
gl_DOT4 :: GLenum
gl_DOT4 = 35175
 
gl_DOT3 :: GLenum
gl_DOT3 = 35174
 
gl_DOT2_ADD :: GLenum
gl_DOT2_ADD = 35180
 
gl_CON_9 :: GLenum
gl_CON_9 = 35146
 
gl_CON_8 :: GLenum
gl_CON_8 = 35145
 
gl_CON_7 :: GLenum
gl_CON_7 = 35144
 
gl_CON_6 :: GLenum
gl_CON_6 = 35143
 
gl_CON_5 :: GLenum
gl_CON_5 = 35142
 
gl_CON_4 :: GLenum
gl_CON_4 = 35141
 
gl_CON_3 :: GLenum
gl_CON_3 = 35140
 
gl_CON_31 :: GLenum
gl_CON_31 = 35168
 
gl_CON_30 :: GLenum
gl_CON_30 = 35167
 
gl_CON_2 :: GLenum
gl_CON_2 = 35139
 
gl_CON_29 :: GLenum
gl_CON_29 = 35166
 
gl_CON_28 :: GLenum
gl_CON_28 = 35165
 
gl_CON_27 :: GLenum
gl_CON_27 = 35164
 
gl_CON_26 :: GLenum
gl_CON_26 = 35163
 
gl_CON_25 :: GLenum
gl_CON_25 = 35162
 
gl_CON_24 :: GLenum
gl_CON_24 = 35161
 
gl_CON_23 :: GLenum
gl_CON_23 = 35160
 
gl_CON_22 :: GLenum
gl_CON_22 = 35159
 
gl_CON_21 :: GLenum
gl_CON_21 = 35158
 
gl_CON_20 :: GLenum
gl_CON_20 = 35157
 
gl_CON_1 :: GLenum
gl_CON_1 = 35138
 
gl_CON_19 :: GLenum
gl_CON_19 = 35156
 
gl_CON_18 :: GLenum
gl_CON_18 = 35155
 
gl_CON_17 :: GLenum
gl_CON_17 = 35154
 
gl_CON_16 :: GLenum
gl_CON_16 = 35153
 
gl_CON_15 :: GLenum
gl_CON_15 = 35152
 
gl_CON_14 :: GLenum
gl_CON_14 = 35151
 
gl_CON_13 :: GLenum
gl_CON_13 = 35150
 
gl_CON_12 :: GLenum
gl_CON_12 = 35149
 
gl_CON_11 :: GLenum
gl_CON_11 = 35148
 
gl_CON_10 :: GLenum
gl_CON_10 = 35147
 
gl_CON_0 :: GLenum
gl_CON_0 = 35137
 
gl_COMP_BIT :: GLbitfield
gl_COMP_BIT = 2
 
gl_COLOR_ALPHA_PAIRING :: GLenum
gl_COLOR_ALPHA_PAIRING = 35189
 
gl_CND :: GLenum
gl_CND = 35178
 
gl_CND0 :: GLenum
gl_CND0 = 35179
 
gl_BLUE_BIT :: GLbitfield
gl_BLUE_BIT = 4
 
gl_BIAS_BIT :: GLbitfield
gl_BIAS_BIT = 8
 
gl_ADD :: GLenum
gl_ADD = 35171
 
gl_8X_BIT :: GLbitfield
gl_8X_BIT = 4
 
gl_4X_BIT :: GLbitfield
gl_4X_BIT = 2
 
gl_2X_BIT :: GLbitfield
gl_2X_BIT = 1