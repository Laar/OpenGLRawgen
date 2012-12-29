{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.VertexShader
       (glGetLocalConstantFloatvEXT, glGetLocalConstantIntegervEXT,
        glGetLocalConstantBooleanvEXT, glGetInvariantFloatvEXT,
        glGetInvariantIntegervEXT, glGetInvariantBooleanvEXT,
        glGetVariantPointervEXT, glGetVariantFloatvEXT,
        glGetVariantIntegervEXT, glGetVariantBooleanvEXT,
        glIsVariantEnabledEXT, glBindParameterEXT,
        glBindTextureUnitParameterEXT, glBindTexGenParameterEXT,
        glBindMaterialParameterEXT, glBindLightParameterEXT,
        glDisableVariantClientStateEXT, glEnableVariantClientStateEXT,
        glVariantPointerEXT, glVariantuivEXT, glVariantusvEXT,
        glVariantubvEXT, glVariantdvEXT, glVariantfvEXT, glVariantivEXT,
        glVariantsvEXT, glVariantbvEXT, glSetLocalConstantEXT,
        glSetInvariantEXT, glGenSymbolsEXT, glExtractComponentEXT,
        glInsertComponentEXT, glWriteMaskEXT, glSwizzleEXT, glShaderOp3EXT,
        glShaderOp2EXT, glShaderOp1EXT, glDeleteVertexShaderEXT,
        glGenVertexShadersEXT, glBindVertexShaderEXT, glEndVertexShaderEXT,
        glBeginVertexShaderEXT, gl_LOCAL_CONSTANT_DATATYPE_EXT,
        gl_LOCAL_CONSTANT_VALUE_EXT, gl_INVARIANT_DATATYPE_EXT,
        gl_INVARIANT_VALUE_EXT, gl_VARIANT_ARRAY_POINTER_EXT,
        gl_VARIANT_ARRAY_EXT, gl_VARIANT_ARRAY_TYPE_EXT,
        gl_VARIANT_ARRAY_STRIDE_EXT, gl_VARIANT_DATATYPE_EXT,
        gl_VARIANT_VALUE_EXT, gl_MVP_MATRIX_EXT, gl_CURRENT_VERTEX_EXT,
        gl_FULL_RANGE_EXT, gl_NORMALIZED_RANGE_EXT, gl_NEGATIVE_ONE_EXT,
        gl_ONE_EXT, gl_ZERO_EXT, gl_NEGATIVE_W_EXT, gl_NEGATIVE_Z_EXT,
        gl_NEGATIVE_Y_EXT, gl_NEGATIVE_X_EXT, gl_W_EXT, gl_Z_EXT, gl_Y_EXT,
        gl_X_EXT, gl_VERTEX_SHADER_OPTIMIZED_EXT,
        gl_VERTEX_SHADER_LOCALS_EXT, gl_VERTEX_SHADER_LOCAL_CONSTANTS_EXT,
        gl_VERTEX_SHADER_INVARIANTS_EXT, gl_VERTEX_SHADER_VARIANTS_EXT,
        gl_VERTEX_SHADER_INSTRUCTIONS_EXT,
        gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT,
        gl_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT,
        gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT,
        gl_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT,
        gl_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT,
        gl_MAX_VERTEX_SHADER_LOCALS_EXT,
        gl_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT,
        gl_MAX_VERTEX_SHADER_INVARIANTS_EXT,
        gl_MAX_VERTEX_SHADER_VARIANTS_EXT,
        gl_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT, gl_LOCAL_EXT,
        gl_LOCAL_CONSTANT_EXT, gl_INVARIANT_EXT, gl_VARIANT_EXT,
        gl_MATRIX_EXT, gl_VECTOR_EXT, gl_SCALAR_EXT, gl_OUTPUT_FOG_EXT,
        gl_OUTPUT_TEXTURE_COORD31_EXT, gl_OUTPUT_TEXTURE_COORD30_EXT,
        gl_OUTPUT_TEXTURE_COORD29_EXT, gl_OUTPUT_TEXTURE_COORD28_EXT,
        gl_OUTPUT_TEXTURE_COORD27_EXT, gl_OUTPUT_TEXTURE_COORD26_EXT,
        gl_OUTPUT_TEXTURE_COORD25_EXT, gl_OUTPUT_TEXTURE_COORD24_EXT,
        gl_OUTPUT_TEXTURE_COORD23_EXT, gl_OUTPUT_TEXTURE_COORD22_EXT,
        gl_OUTPUT_TEXTURE_COORD21_EXT, gl_OUTPUT_TEXTURE_COORD20_EXT,
        gl_OUTPUT_TEXTURE_COORD19_EXT, gl_OUTPUT_TEXTURE_COORD18_EXT,
        gl_OUTPUT_TEXTURE_COORD17_EXT, gl_OUTPUT_TEXTURE_COORD16_EXT,
        gl_OUTPUT_TEXTURE_COORD15_EXT, gl_OUTPUT_TEXTURE_COORD14_EXT,
        gl_OUTPUT_TEXTURE_COORD13_EXT, gl_OUTPUT_TEXTURE_COORD12_EXT,
        gl_OUTPUT_TEXTURE_COORD11_EXT, gl_OUTPUT_TEXTURE_COORD10_EXT,
        gl_OUTPUT_TEXTURE_COORD9_EXT, gl_OUTPUT_TEXTURE_COORD8_EXT,
        gl_OUTPUT_TEXTURE_COORD7_EXT, gl_OUTPUT_TEXTURE_COORD6_EXT,
        gl_OUTPUT_TEXTURE_COORD5_EXT, gl_OUTPUT_TEXTURE_COORD4_EXT,
        gl_OUTPUT_TEXTURE_COORD3_EXT, gl_OUTPUT_TEXTURE_COORD2_EXT,
        gl_OUTPUT_TEXTURE_COORD1_EXT, gl_OUTPUT_TEXTURE_COORD0_EXT,
        gl_OUTPUT_COLOR1_EXT, gl_OUTPUT_COLOR0_EXT, gl_OUTPUT_VERTEX_EXT,
        gl_OP_MOV_EXT, gl_OP_MULTIPLY_MATRIX_EXT, gl_OP_CROSS_PRODUCT_EXT,
        gl_OP_SUB_EXT, gl_OP_RECIP_SQRT_EXT, gl_OP_RECIP_EXT,
        gl_OP_POWER_EXT, gl_OP_LOG_BASE_2_EXT, gl_OP_EXP_BASE_2_EXT,
        gl_OP_ROUND_EXT, gl_OP_FLOOR_EXT, gl_OP_CLAMP_EXT,
        gl_OP_SET_LT_EXT, gl_OP_SET_GE_EXT, gl_OP_MIN_EXT, gl_OP_MAX_EXT,
        gl_OP_FRAC_EXT, gl_OP_MADD_EXT, gl_OP_ADD_EXT, gl_OP_MUL_EXT,
        gl_OP_DOT4_EXT, gl_OP_DOT3_EXT, gl_OP_NEGATE_EXT, gl_OP_INDEX_EXT,
        gl_VERTEX_SHADER_BINDING_EXT, gl_VERTEX_SHADER_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetLocalConstantFloatvEXT #-}
 
ptr_glGetLocalConstantFloatvEXT :: FunPtr a
ptr_glGetLocalConstantFloatvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetLocalConstantFloatvEXT"
 
glGetLocalConstantFloatvEXT ::
                            GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetLocalConstantFloatvEXT
  = dyn_glGetLocalConstantFloatvEXT ptr_glGetLocalConstantFloatvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetLocalConstantFloatvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetLocalConstantIntegervEXT #-}
 
ptr_glGetLocalConstantIntegervEXT :: FunPtr a
ptr_glGetLocalConstantIntegervEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetLocalConstantIntegervEXT"
 
glGetLocalConstantIntegervEXT ::
                              GLuint -> GLenum -> Ptr GLint -> IO ()
glGetLocalConstantIntegervEXT
  = dyn_glGetLocalConstantIntegervEXT
      ptr_glGetLocalConstantIntegervEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetLocalConstantIntegervEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetLocalConstantBooleanvEXT #-}
 
ptr_glGetLocalConstantBooleanvEXT :: FunPtr a
ptr_glGetLocalConstantBooleanvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetLocalConstantBooleanvEXT"
 
glGetLocalConstantBooleanvEXT ::
                              GLuint -> GLenum -> Ptr GLboolean -> IO ()
glGetLocalConstantBooleanvEXT
  = dyn_glGetLocalConstantBooleanvEXT
      ptr_glGetLocalConstantBooleanvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetLocalConstantBooleanvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLboolean -> IO ())
 
{-# NOINLINE ptr_glGetInvariantFloatvEXT #-}
 
ptr_glGetInvariantFloatvEXT :: FunPtr a
ptr_glGetInvariantFloatvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetInvariantFloatvEXT"
 
glGetInvariantFloatvEXT :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetInvariantFloatvEXT
  = dyn_glGetInvariantFloatvEXT ptr_glGetInvariantFloatvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetInvariantFloatvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetInvariantIntegervEXT #-}
 
ptr_glGetInvariantIntegervEXT :: FunPtr a
ptr_glGetInvariantIntegervEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetInvariantIntegervEXT"
 
glGetInvariantIntegervEXT :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetInvariantIntegervEXT
  = dyn_glGetInvariantIntegervEXT ptr_glGetInvariantIntegervEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetInvariantIntegervEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetInvariantBooleanvEXT #-}
 
ptr_glGetInvariantBooleanvEXT :: FunPtr a
ptr_glGetInvariantBooleanvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetInvariantBooleanvEXT"
 
glGetInvariantBooleanvEXT ::
                          GLuint -> GLenum -> Ptr GLboolean -> IO ()
glGetInvariantBooleanvEXT
  = dyn_glGetInvariantBooleanvEXT ptr_glGetInvariantBooleanvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetInvariantBooleanvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLboolean -> IO ())
 
{-# NOINLINE ptr_glGetVariantPointervEXT #-}
 
ptr_glGetVariantPointervEXT :: FunPtr a
ptr_glGetVariantPointervEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetVariantPointervEXT"
 
glGetVariantPointervEXT :: GLuint -> GLenum -> Ptr (Ptr a) -> IO ()
glGetVariantPointervEXT
  = dyn_glGetVariantPointervEXT ptr_glGetVariantPointervEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVariantPointervEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glGetVariantFloatvEXT #-}
 
ptr_glGetVariantFloatvEXT :: FunPtr a
ptr_glGetVariantFloatvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetVariantFloatvEXT"
 
glGetVariantFloatvEXT :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetVariantFloatvEXT
  = dyn_glGetVariantFloatvEXT ptr_glGetVariantFloatvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVariantFloatvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetVariantIntegervEXT #-}
 
ptr_glGetVariantIntegervEXT :: FunPtr a
ptr_glGetVariantIntegervEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetVariantIntegervEXT"
 
glGetVariantIntegervEXT :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVariantIntegervEXT
  = dyn_glGetVariantIntegervEXT ptr_glGetVariantIntegervEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVariantIntegervEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetVariantBooleanvEXT #-}
 
ptr_glGetVariantBooleanvEXT :: FunPtr a
ptr_glGetVariantBooleanvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetVariantBooleanvEXT"
 
glGetVariantBooleanvEXT ::
                        GLuint -> GLenum -> Ptr GLboolean -> IO ()
glGetVariantBooleanvEXT
  = dyn_glGetVariantBooleanvEXT ptr_glGetVariantBooleanvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVariantBooleanvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLboolean -> IO ())
 
{-# NOINLINE ptr_glIsVariantEnabledEXT #-}
 
ptr_glIsVariantEnabledEXT :: FunPtr a
ptr_glIsVariantEnabledEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glIsVariantEnabledEXT"
 
glIsVariantEnabledEXT :: GLuint -> GLenum -> IO GLboolean
glIsVariantEnabledEXT
  = dyn_glIsVariantEnabledEXT ptr_glIsVariantEnabledEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsVariantEnabledEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO GLboolean)
 
{-# NOINLINE ptr_glBindParameterEXT #-}
 
ptr_glBindParameterEXT :: FunPtr a
ptr_glBindParameterEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glBindParameterEXT"
 
glBindParameterEXT :: GLenum -> IO GLuint
glBindParameterEXT = dyn_glBindParameterEXT ptr_glBindParameterEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindParameterEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glBindTextureUnitParameterEXT #-}
 
ptr_glBindTextureUnitParameterEXT :: FunPtr a
ptr_glBindTextureUnitParameterEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glBindTextureUnitParameterEXT"
 
glBindTextureUnitParameterEXT :: GLenum -> GLenum -> IO GLuint
glBindTextureUnitParameterEXT
  = dyn_glBindTextureUnitParameterEXT
      ptr_glBindTextureUnitParameterEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBindTextureUnitParameterEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glBindTexGenParameterEXT #-}
 
ptr_glBindTexGenParameterEXT :: FunPtr a
ptr_glBindTexGenParameterEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glBindTexGenParameterEXT"
 
glBindTexGenParameterEXT :: GLenum -> GLenum -> GLenum -> IO GLuint
glBindTexGenParameterEXT
  = dyn_glBindTexGenParameterEXT ptr_glBindTexGenParameterEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBindTexGenParameterEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glBindMaterialParameterEXT #-}
 
ptr_glBindMaterialParameterEXT :: FunPtr a
ptr_glBindMaterialParameterEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glBindMaterialParameterEXT"
 
glBindMaterialParameterEXT :: GLenum -> GLenum -> IO GLuint
glBindMaterialParameterEXT
  = dyn_glBindMaterialParameterEXT ptr_glBindMaterialParameterEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBindMaterialParameterEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glBindLightParameterEXT #-}
 
ptr_glBindLightParameterEXT :: FunPtr a
ptr_glBindLightParameterEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glBindLightParameterEXT"
 
glBindLightParameterEXT :: GLenum -> GLenum -> IO GLuint
glBindLightParameterEXT
  = dyn_glBindLightParameterEXT ptr_glBindLightParameterEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindLightParameterEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glDisableVariantClientStateEXT #-}
 
ptr_glDisableVariantClientStateEXT :: FunPtr a
ptr_glDisableVariantClientStateEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glDisableVariantClientStateEXT"
 
glDisableVariantClientStateEXT :: GLuint -> IO ()
glDisableVariantClientStateEXT
  = dyn_glDisableVariantClientStateEXT
      ptr_glDisableVariantClientStateEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDisableVariantClientStateEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glEnableVariantClientStateEXT #-}
 
ptr_glEnableVariantClientStateEXT :: FunPtr a
ptr_glEnableVariantClientStateEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glEnableVariantClientStateEXT"
 
glEnableVariantClientStateEXT :: GLuint -> IO ()
glEnableVariantClientStateEXT
  = dyn_glEnableVariantClientStateEXT
      ptr_glEnableVariantClientStateEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glEnableVariantClientStateEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glVariantPointerEXT #-}
 
ptr_glVariantPointerEXT :: FunPtr a
ptr_glVariantPointerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantPointerEXT"
 
glVariantPointerEXT :: GLuint -> GLenum -> GLuint -> Ptr a -> IO ()
glVariantPointerEXT
  = dyn_glVariantPointerEXT ptr_glVariantPointerEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantPointerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glVariantuivEXT #-}
 
ptr_glVariantuivEXT :: FunPtr a
ptr_glVariantuivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantuivEXT"
 
glVariantuivEXT :: GLuint -> Ptr GLuint -> IO ()
glVariantuivEXT = dyn_glVariantuivEXT ptr_glVariantuivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantuivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVariantusvEXT #-}
 
ptr_glVariantusvEXT :: FunPtr a
ptr_glVariantusvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantusvEXT"
 
glVariantusvEXT :: GLuint -> Ptr GLushort -> IO ()
glVariantusvEXT = dyn_glVariantusvEXT ptr_glVariantusvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantusvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVariantubvEXT #-}
 
ptr_glVariantubvEXT :: FunPtr a
ptr_glVariantubvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantubvEXT"
 
glVariantubvEXT :: GLuint -> Ptr GLubyte -> IO ()
glVariantubvEXT = dyn_glVariantubvEXT ptr_glVariantubvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantubvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glVariantdvEXT #-}
 
ptr_glVariantdvEXT :: FunPtr a
ptr_glVariantdvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantdvEXT"
 
glVariantdvEXT :: GLuint -> Ptr GLdouble -> IO ()
glVariantdvEXT = dyn_glVariantdvEXT ptr_glVariantdvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantdvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVariantfvEXT #-}
 
ptr_glVariantfvEXT :: FunPtr a
ptr_glVariantfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantfvEXT"
 
glVariantfvEXT :: GLuint -> Ptr GLfloat -> IO ()
glVariantfvEXT = dyn_glVariantfvEXT ptr_glVariantfvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVariantivEXT #-}
 
ptr_glVariantivEXT :: FunPtr a
ptr_glVariantivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantivEXT"
 
glVariantivEXT :: GLuint -> Ptr GLint -> IO ()
glVariantivEXT = dyn_glVariantivEXT ptr_glVariantivEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVariantsvEXT #-}
 
ptr_glVariantsvEXT :: FunPtr a
ptr_glVariantsvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantsvEXT"
 
glVariantsvEXT :: GLuint -> Ptr GLshort -> IO ()
glVariantsvEXT = dyn_glVariantsvEXT ptr_glVariantsvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantsvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVariantbvEXT #-}
 
ptr_glVariantbvEXT :: FunPtr a
ptr_glVariantbvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantbvEXT"
 
glVariantbvEXT :: GLuint -> Ptr GLbyte -> IO ()
glVariantbvEXT = dyn_glVariantbvEXT ptr_glVariantbvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantbvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glSetLocalConstantEXT #-}
 
ptr_glSetLocalConstantEXT :: FunPtr a
ptr_glSetLocalConstantEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glSetLocalConstantEXT"
 
glSetLocalConstantEXT :: GLuint -> GLenum -> Ptr a -> IO ()
glSetLocalConstantEXT
  = dyn_glSetLocalConstantEXT ptr_glSetLocalConstantEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSetLocalConstantEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glSetInvariantEXT #-}
 
ptr_glSetInvariantEXT :: FunPtr a
ptr_glSetInvariantEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glSetInvariantEXT"
 
glSetInvariantEXT :: GLuint -> GLenum -> Ptr a -> IO ()
glSetInvariantEXT = dyn_glSetInvariantEXT ptr_glSetInvariantEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSetInvariantEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glGenSymbolsEXT #-}
 
ptr_glGenSymbolsEXT :: FunPtr a
ptr_glGenSymbolsEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGenSymbolsEXT"
 
glGenSymbolsEXT ::
                GLenum -> GLenum -> GLenum -> GLuint -> IO GLuint
glGenSymbolsEXT = dyn_glGenSymbolsEXT ptr_glGenSymbolsEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenSymbolsEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> IO GLuint)
 
{-# NOINLINE ptr_glExtractComponentEXT #-}
 
ptr_glExtractComponentEXT :: FunPtr a
ptr_glExtractComponentEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glExtractComponentEXT"
 
glExtractComponentEXT :: GLuint -> GLuint -> GLuint -> IO ()
glExtractComponentEXT
  = dyn_glExtractComponentEXT ptr_glExtractComponentEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glExtractComponentEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glInsertComponentEXT #-}
 
ptr_glInsertComponentEXT :: FunPtr a
ptr_glInsertComponentEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glInsertComponentEXT"
 
glInsertComponentEXT :: GLuint -> GLuint -> GLuint -> IO ()
glInsertComponentEXT
  = dyn_glInsertComponentEXT ptr_glInsertComponentEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glInsertComponentEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glWriteMaskEXT #-}
 
ptr_glWriteMaskEXT :: FunPtr a
ptr_glWriteMaskEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glWriteMaskEXT"
 
glWriteMaskEXT ::
               GLuint -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glWriteMaskEXT = dyn_glWriteMaskEXT ptr_glWriteMaskEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glWriteMaskEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glSwizzleEXT #-}
 
ptr_glSwizzleEXT :: FunPtr a
ptr_glSwizzleEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glSwizzleEXT"
 
glSwizzleEXT ::
             GLuint -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glSwizzleEXT = dyn_glSwizzleEXT ptr_glSwizzleEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glSwizzleEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glShaderOp3EXT #-}
 
ptr_glShaderOp3EXT :: FunPtr a
ptr_glShaderOp3EXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glShaderOp3EXT"
 
glShaderOp3EXT ::
               GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glShaderOp3EXT = dyn_glShaderOp3EXT ptr_glShaderOp3EXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glShaderOp3EXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glShaderOp2EXT #-}
 
ptr_glShaderOp2EXT :: FunPtr a
ptr_glShaderOp2EXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glShaderOp2EXT"
 
glShaderOp2EXT :: GLenum -> GLuint -> GLuint -> GLuint -> IO ()
glShaderOp2EXT = dyn_glShaderOp2EXT ptr_glShaderOp2EXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glShaderOp2EXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glShaderOp1EXT #-}
 
ptr_glShaderOp1EXT :: FunPtr a
ptr_glShaderOp1EXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glShaderOp1EXT"
 
glShaderOp1EXT :: GLenum -> GLuint -> GLuint -> IO ()
glShaderOp1EXT = dyn_glShaderOp1EXT ptr_glShaderOp1EXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glShaderOp1EXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteVertexShaderEXT #-}
 
ptr_glDeleteVertexShaderEXT :: FunPtr a
ptr_glDeleteVertexShaderEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glDeleteVertexShaderEXT"
 
glDeleteVertexShaderEXT :: GLuint -> IO ()
glDeleteVertexShaderEXT
  = dyn_glDeleteVertexShaderEXT ptr_glDeleteVertexShaderEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteVertexShaderEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glGenVertexShadersEXT #-}
 
ptr_glGenVertexShadersEXT :: FunPtr a
ptr_glGenVertexShadersEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGenVertexShadersEXT"
 
glGenVertexShadersEXT :: GLuint -> IO GLuint
glGenVertexShadersEXT
  = dyn_glGenVertexShadersEXT ptr_glGenVertexShadersEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenVertexShadersEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLuint)
 
{-# NOINLINE ptr_glBindVertexShaderEXT #-}
 
ptr_glBindVertexShaderEXT :: FunPtr a
ptr_glBindVertexShaderEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glBindVertexShaderEXT"
 
glBindVertexShaderEXT :: GLuint -> IO ()
glBindVertexShaderEXT
  = dyn_glBindVertexShaderEXT ptr_glBindVertexShaderEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindVertexShaderEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glEndVertexShaderEXT #-}
 
ptr_glEndVertexShaderEXT :: FunPtr a
ptr_glEndVertexShaderEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glEndVertexShaderEXT"
 
glEndVertexShaderEXT :: IO ()
glEndVertexShaderEXT
  = dyn_glEndVertexShaderEXT ptr_glEndVertexShaderEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndVertexShaderEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glBeginVertexShaderEXT #-}
 
ptr_glBeginVertexShaderEXT :: FunPtr a
ptr_glBeginVertexShaderEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glBeginVertexShaderEXT"
 
glBeginVertexShaderEXT :: IO ()
glBeginVertexShaderEXT
  = dyn_glBeginVertexShaderEXT ptr_glBeginVertexShaderEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glBeginVertexShaderEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
gl_LOCAL_CONSTANT_DATATYPE_EXT :: GLenum
gl_LOCAL_CONSTANT_DATATYPE_EXT = 34797
 
gl_LOCAL_CONSTANT_VALUE_EXT :: GLenum
gl_LOCAL_CONSTANT_VALUE_EXT = 34796
 
gl_INVARIANT_DATATYPE_EXT :: GLenum
gl_INVARIANT_DATATYPE_EXT = 34795
 
gl_INVARIANT_VALUE_EXT :: GLenum
gl_INVARIANT_VALUE_EXT = 34794
 
gl_VARIANT_ARRAY_POINTER_EXT :: GLenum
gl_VARIANT_ARRAY_POINTER_EXT = 34793
 
gl_VARIANT_ARRAY_EXT :: GLenum
gl_VARIANT_ARRAY_EXT = 34792
 
gl_VARIANT_ARRAY_TYPE_EXT :: GLenum
gl_VARIANT_ARRAY_TYPE_EXT = 34791
 
gl_VARIANT_ARRAY_STRIDE_EXT :: GLenum
gl_VARIANT_ARRAY_STRIDE_EXT = 34790
 
gl_VARIANT_DATATYPE_EXT :: GLenum
gl_VARIANT_DATATYPE_EXT = 34789
 
gl_VARIANT_VALUE_EXT :: GLenum
gl_VARIANT_VALUE_EXT = 34788
 
gl_MVP_MATRIX_EXT :: GLenum
gl_MVP_MATRIX_EXT = 34787
 
gl_CURRENT_VERTEX_EXT :: GLenum
gl_CURRENT_VERTEX_EXT = 34786
 
gl_FULL_RANGE_EXT :: GLenum
gl_FULL_RANGE_EXT = 34785
 
gl_NORMALIZED_RANGE_EXT :: GLenum
gl_NORMALIZED_RANGE_EXT = 34784
 
gl_NEGATIVE_ONE_EXT :: GLenum
gl_NEGATIVE_ONE_EXT = 34783
 
gl_ONE_EXT :: GLenum
gl_ONE_EXT = 34782
 
gl_ZERO_EXT :: GLenum
gl_ZERO_EXT = 34781
 
gl_NEGATIVE_W_EXT :: GLenum
gl_NEGATIVE_W_EXT = 34780
 
gl_NEGATIVE_Z_EXT :: GLenum
gl_NEGATIVE_Z_EXT = 34779
 
gl_NEGATIVE_Y_EXT :: GLenum
gl_NEGATIVE_Y_EXT = 34778
 
gl_NEGATIVE_X_EXT :: GLenum
gl_NEGATIVE_X_EXT = 34777
 
gl_W_EXT :: GLenum
gl_W_EXT = 34776
 
gl_Z_EXT :: GLenum
gl_Z_EXT = 34775
 
gl_Y_EXT :: GLenum
gl_Y_EXT = 34774
 
gl_X_EXT :: GLenum
gl_X_EXT = 34773
 
gl_VERTEX_SHADER_OPTIMIZED_EXT :: GLenum
gl_VERTEX_SHADER_OPTIMIZED_EXT = 34772
 
gl_VERTEX_SHADER_LOCALS_EXT :: GLenum
gl_VERTEX_SHADER_LOCALS_EXT = 34771
 
gl_VERTEX_SHADER_LOCAL_CONSTANTS_EXT :: GLenum
gl_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 34770
 
gl_VERTEX_SHADER_INVARIANTS_EXT :: GLenum
gl_VERTEX_SHADER_INVARIANTS_EXT = 34769
 
gl_VERTEX_SHADER_VARIANTS_EXT :: GLenum
gl_VERTEX_SHADER_VARIANTS_EXT = 34768
 
gl_VERTEX_SHADER_INSTRUCTIONS_EXT :: GLenum
gl_VERTEX_SHADER_INSTRUCTIONS_EXT = 34767
 
gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT = 34766
 
gl_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT = 34765
 
gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 34764
 
gl_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT = 34763
 
gl_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT = 34762
 
gl_MAX_VERTEX_SHADER_LOCALS_EXT :: GLenum
gl_MAX_VERTEX_SHADER_LOCALS_EXT = 34761
 
gl_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT :: GLenum
gl_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 34760
 
gl_MAX_VERTEX_SHADER_INVARIANTS_EXT :: GLenum
gl_MAX_VERTEX_SHADER_INVARIANTS_EXT = 34759
 
gl_MAX_VERTEX_SHADER_VARIANTS_EXT :: GLenum
gl_MAX_VERTEX_SHADER_VARIANTS_EXT = 34758
 
gl_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT :: GLenum
gl_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT = 34757
 
gl_LOCAL_EXT :: GLenum
gl_LOCAL_EXT = 34756
 
gl_LOCAL_CONSTANT_EXT :: GLenum
gl_LOCAL_CONSTANT_EXT = 34755
 
gl_INVARIANT_EXT :: GLenum
gl_INVARIANT_EXT = 34754
 
gl_VARIANT_EXT :: GLenum
gl_VARIANT_EXT = 34753
 
gl_MATRIX_EXT :: GLenum
gl_MATRIX_EXT = 34752
 
gl_VECTOR_EXT :: GLenum
gl_VECTOR_EXT = 34751
 
gl_SCALAR_EXT :: GLenum
gl_SCALAR_EXT = 34750
 
gl_OUTPUT_FOG_EXT :: GLenum
gl_OUTPUT_FOG_EXT = 34749
 
gl_OUTPUT_TEXTURE_COORD31_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD31_EXT = 34748
 
gl_OUTPUT_TEXTURE_COORD30_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD30_EXT = 34747
 
gl_OUTPUT_TEXTURE_COORD29_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD29_EXT = 34746
 
gl_OUTPUT_TEXTURE_COORD28_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD28_EXT = 34745
 
gl_OUTPUT_TEXTURE_COORD27_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD27_EXT = 34744
 
gl_OUTPUT_TEXTURE_COORD26_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD26_EXT = 34743
 
gl_OUTPUT_TEXTURE_COORD25_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD25_EXT = 34742
 
gl_OUTPUT_TEXTURE_COORD24_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD24_EXT = 34741
 
gl_OUTPUT_TEXTURE_COORD23_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD23_EXT = 34740
 
gl_OUTPUT_TEXTURE_COORD22_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD22_EXT = 34739
 
gl_OUTPUT_TEXTURE_COORD21_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD21_EXT = 34738
 
gl_OUTPUT_TEXTURE_COORD20_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD20_EXT = 34737
 
gl_OUTPUT_TEXTURE_COORD19_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD19_EXT = 34736
 
gl_OUTPUT_TEXTURE_COORD18_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD18_EXT = 34735
 
gl_OUTPUT_TEXTURE_COORD17_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD17_EXT = 34734
 
gl_OUTPUT_TEXTURE_COORD16_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD16_EXT = 34733
 
gl_OUTPUT_TEXTURE_COORD15_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD15_EXT = 34732
 
gl_OUTPUT_TEXTURE_COORD14_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD14_EXT = 34731
 
gl_OUTPUT_TEXTURE_COORD13_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD13_EXT = 34730
 
gl_OUTPUT_TEXTURE_COORD12_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD12_EXT = 34729
 
gl_OUTPUT_TEXTURE_COORD11_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD11_EXT = 34728
 
gl_OUTPUT_TEXTURE_COORD10_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD10_EXT = 34727
 
gl_OUTPUT_TEXTURE_COORD9_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD9_EXT = 34726
 
gl_OUTPUT_TEXTURE_COORD8_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD8_EXT = 34725
 
gl_OUTPUT_TEXTURE_COORD7_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD7_EXT = 34724
 
gl_OUTPUT_TEXTURE_COORD6_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD6_EXT = 34723
 
gl_OUTPUT_TEXTURE_COORD5_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD5_EXT = 34722
 
gl_OUTPUT_TEXTURE_COORD4_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD4_EXT = 34721
 
gl_OUTPUT_TEXTURE_COORD3_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD3_EXT = 34720
 
gl_OUTPUT_TEXTURE_COORD2_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD2_EXT = 34719
 
gl_OUTPUT_TEXTURE_COORD1_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD1_EXT = 34718
 
gl_OUTPUT_TEXTURE_COORD0_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD0_EXT = 34717
 
gl_OUTPUT_COLOR1_EXT :: GLenum
gl_OUTPUT_COLOR1_EXT = 34716
 
gl_OUTPUT_COLOR0_EXT :: GLenum
gl_OUTPUT_COLOR0_EXT = 34715
 
gl_OUTPUT_VERTEX_EXT :: GLenum
gl_OUTPUT_VERTEX_EXT = 34714
 
gl_OP_MOV_EXT :: GLenum
gl_OP_MOV_EXT = 34713
 
gl_OP_MULTIPLY_MATRIX_EXT :: GLenum
gl_OP_MULTIPLY_MATRIX_EXT = 34712
 
gl_OP_CROSS_PRODUCT_EXT :: GLenum
gl_OP_CROSS_PRODUCT_EXT = 34711
 
gl_OP_SUB_EXT :: GLenum
gl_OP_SUB_EXT = 34710
 
gl_OP_RECIP_SQRT_EXT :: GLenum
gl_OP_RECIP_SQRT_EXT = 34709
 
gl_OP_RECIP_EXT :: GLenum
gl_OP_RECIP_EXT = 34708
 
gl_OP_POWER_EXT :: GLenum
gl_OP_POWER_EXT = 34707
 
gl_OP_LOG_BASE_2_EXT :: GLenum
gl_OP_LOG_BASE_2_EXT = 34706
 
gl_OP_EXP_BASE_2_EXT :: GLenum
gl_OP_EXP_BASE_2_EXT = 34705
 
gl_OP_ROUND_EXT :: GLenum
gl_OP_ROUND_EXT = 34704
 
gl_OP_FLOOR_EXT :: GLenum
gl_OP_FLOOR_EXT = 34703
 
gl_OP_CLAMP_EXT :: GLenum
gl_OP_CLAMP_EXT = 34702
 
gl_OP_SET_LT_EXT :: GLenum
gl_OP_SET_LT_EXT = 34701
 
gl_OP_SET_GE_EXT :: GLenum
gl_OP_SET_GE_EXT = 34700
 
gl_OP_MIN_EXT :: GLenum
gl_OP_MIN_EXT = 34699
 
gl_OP_MAX_EXT :: GLenum
gl_OP_MAX_EXT = 34698
 
gl_OP_FRAC_EXT :: GLenum
gl_OP_FRAC_EXT = 34697
 
gl_OP_MADD_EXT :: GLenum
gl_OP_MADD_EXT = 34696
 
gl_OP_ADD_EXT :: GLenum
gl_OP_ADD_EXT = 34695
 
gl_OP_MUL_EXT :: GLenum
gl_OP_MUL_EXT = 34694
 
gl_OP_DOT4_EXT :: GLenum
gl_OP_DOT4_EXT = 34693
 
gl_OP_DOT3_EXT :: GLenum
gl_OP_DOT3_EXT = 34692
 
gl_OP_NEGATE_EXT :: GLenum
gl_OP_NEGATE_EXT = 34691
 
gl_OP_INDEX_EXT :: GLenum
gl_OP_INDEX_EXT = 34690
 
gl_VERTEX_SHADER_BINDING_EXT :: GLenum
gl_VERTEX_SHADER_BINDING_EXT = 34689
 
gl_VERTEX_SHADER_EXT :: GLenum
gl_VERTEX_SHADER_EXT = 34688