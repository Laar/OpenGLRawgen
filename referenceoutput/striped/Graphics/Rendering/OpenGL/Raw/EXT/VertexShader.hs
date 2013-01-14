{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.VertexShader
       (glWriteMask, glVariantusv, glVariantuiv, glVariantubv,
        glVariantsv, glVariantiv, glVariantfv, glVariantdv, glVariantbv,
        glVariantPointer, glSwizzle, glShaderOp3, glShaderOp2, glShaderOp1,
        glSetLocalConstant, glSetInvariant, glIsVariantEnabled,
        glInsertComponent, glGetVariantPointerv, glGetVariantIntegerv,
        glGetVariantFloatv, glGetVariantBooleanv,
        glGetLocalConstantIntegerv, glGetLocalConstantFloatv,
        glGetLocalConstantBooleanv, glGetInvariantIntegerv,
        glGetInvariantFloatv, glGetInvariantBooleanv, glGenVertexShaders,
        glGenSymbols, glExtractComponent, glEndVertexShader,
        glEnableVariantClientState, glDisableVariantClientState,
        glDeleteVertexShader, glBindVertexShader,
        glBindTextureUnitParameter, glBindTexGenParameter, glBindParameter,
        glBindMaterialParameter, glBindLightParameter, glBeginVertexShader,
        gl_Z, gl_ZERO, gl_Y, gl_X, gl_W, gl_VERTEX_SHADER_VARIANTS,
        gl_VERTEX_SHADER_OPTIMIZED, gl_VERTEX_SHADER_LOCAL_CONSTANTS,
        gl_VERTEX_SHADER_LOCALS, gl_VERTEX_SHADER_INVARIANTS,
        gl_VERTEX_SHADER_INSTRUCTIONS, gl_VERTEX_SHADER,
        gl_VERTEX_SHADER_BINDING, gl_VECTOR, gl_VARIANT_VALUE, gl_VARIANT,
        gl_VARIANT_DATATYPE, gl_VARIANT_ARRAY_TYPE,
        gl_VARIANT_ARRAY_STRIDE, gl_VARIANT_ARRAY_POINTER,
        gl_VARIANT_ARRAY, gl_SCALAR, gl_OUTPUT_VERTEX,
        gl_OUTPUT_TEXTURE_COORD9, gl_OUTPUT_TEXTURE_COORD8,
        gl_OUTPUT_TEXTURE_COORD7, gl_OUTPUT_TEXTURE_COORD6,
        gl_OUTPUT_TEXTURE_COORD5, gl_OUTPUT_TEXTURE_COORD4,
        gl_OUTPUT_TEXTURE_COORD3, gl_OUTPUT_TEXTURE_COORD31,
        gl_OUTPUT_TEXTURE_COORD30, gl_OUTPUT_TEXTURE_COORD2,
        gl_OUTPUT_TEXTURE_COORD29, gl_OUTPUT_TEXTURE_COORD28,
        gl_OUTPUT_TEXTURE_COORD27, gl_OUTPUT_TEXTURE_COORD26,
        gl_OUTPUT_TEXTURE_COORD25, gl_OUTPUT_TEXTURE_COORD24,
        gl_OUTPUT_TEXTURE_COORD23, gl_OUTPUT_TEXTURE_COORD22,
        gl_OUTPUT_TEXTURE_COORD21, gl_OUTPUT_TEXTURE_COORD20,
        gl_OUTPUT_TEXTURE_COORD1, gl_OUTPUT_TEXTURE_COORD19,
        gl_OUTPUT_TEXTURE_COORD18, gl_OUTPUT_TEXTURE_COORD17,
        gl_OUTPUT_TEXTURE_COORD16, gl_OUTPUT_TEXTURE_COORD15,
        gl_OUTPUT_TEXTURE_COORD14, gl_OUTPUT_TEXTURE_COORD13,
        gl_OUTPUT_TEXTURE_COORD12, gl_OUTPUT_TEXTURE_COORD11,
        gl_OUTPUT_TEXTURE_COORD10, gl_OUTPUT_TEXTURE_COORD0, gl_OUTPUT_FOG,
        gl_OUTPUT_COLOR1, gl_OUTPUT_COLOR0, gl_OP_SUB, gl_OP_SET_LT,
        gl_OP_SET_GE, gl_OP_ROUND, gl_OP_RECIP_SQRT, gl_OP_RECIP,
        gl_OP_POWER, gl_OP_NEGATE, gl_OP_MUL, gl_OP_MULTIPLY_MATRIX,
        gl_OP_MOV, gl_OP_MIN, gl_OP_MAX, gl_OP_MADD, gl_OP_LOG_BASE_2,
        gl_OP_INDEX, gl_OP_FRAC, gl_OP_FLOOR, gl_OP_EXP_BASE_2, gl_OP_DOT4,
        gl_OP_DOT3, gl_OP_CROSS_PRODUCT, gl_OP_CLAMP, gl_OP_ADD, gl_ONE,
        gl_NORMALIZED_RANGE, gl_NEGATIVE_Z, gl_NEGATIVE_Y, gl_NEGATIVE_X,
        gl_NEGATIVE_W, gl_NEGATIVE_ONE, gl_MVP_MATRIX,
        gl_MAX_VERTEX_SHADER_VARIANTS,
        gl_MAX_VERTEX_SHADER_LOCAL_CONSTANTS, gl_MAX_VERTEX_SHADER_LOCALS,
        gl_MAX_VERTEX_SHADER_INVARIANTS, gl_MAX_VERTEX_SHADER_INSTRUCTIONS,
        gl_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS,
        gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS,
        gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS,
        gl_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS,
        gl_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS, gl_MATRIX, gl_LOCAL,
        gl_LOCAL_CONSTANT_VALUE, gl_LOCAL_CONSTANT,
        gl_LOCAL_CONSTANT_DATATYPE, gl_INVARIANT_VALUE, gl_INVARIANT,
        gl_INVARIANT_DATATYPE, gl_FULL_RANGE, gl_CURRENT_VERTEX)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glWriteMask #-}
 
ptr_glWriteMask :: FunPtr a
ptr_glWriteMask
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glWriteMaskEXT"
 
glWriteMask ::
            GLuint -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glWriteMask = dyn_glWriteMask ptr_glWriteMask
 
foreign import CALLCONV unsafe "dynamic" dyn_glWriteMask ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glVariantusv #-}
 
ptr_glVariantusv :: FunPtr a
ptr_glVariantusv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantusvEXT"
 
glVariantusv :: GLuint -> Ptr GLushort -> IO ()
glVariantusv = dyn_glVariantusv ptr_glVariantusv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantusv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLushort -> IO ())
 
{-# NOINLINE ptr_glVariantuiv #-}
 
ptr_glVariantuiv :: FunPtr a
ptr_glVariantuiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantuivEXT"
 
glVariantuiv :: GLuint -> Ptr GLuint -> IO ()
glVariantuiv = dyn_glVariantuiv ptr_glVariantuiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantuiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glVariantubv #-}
 
ptr_glVariantubv :: FunPtr a
ptr_glVariantubv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantubvEXT"
 
glVariantubv :: GLuint -> Ptr GLubyte -> IO ()
glVariantubv = dyn_glVariantubv ptr_glVariantubv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantubv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glVariantsv #-}
 
ptr_glVariantsv :: FunPtr a
ptr_glVariantsv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantsvEXT"
 
glVariantsv :: GLuint -> Ptr GLshort -> IO ()
glVariantsv = dyn_glVariantsv ptr_glVariantsv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantsv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLshort -> IO ())
 
{-# NOINLINE ptr_glVariantiv #-}
 
ptr_glVariantiv :: FunPtr a
ptr_glVariantiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantivEXT"
 
glVariantiv :: GLuint -> Ptr GLint -> IO ()
glVariantiv = dyn_glVariantiv ptr_glVariantiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glVariantfv #-}
 
ptr_glVariantfv :: FunPtr a
ptr_glVariantfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantfvEXT"
 
glVariantfv :: GLuint -> Ptr GLfloat -> IO ()
glVariantfv = dyn_glVariantfv ptr_glVariantfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glVariantdv #-}
 
ptr_glVariantdv :: FunPtr a
ptr_glVariantdv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantdvEXT"
 
glVariantdv :: GLuint -> Ptr GLdouble -> IO ()
glVariantdv = dyn_glVariantdv ptr_glVariantdv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantdv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLdouble -> IO ())
 
{-# NOINLINE ptr_glVariantbv #-}
 
ptr_glVariantbv :: FunPtr a
ptr_glVariantbv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantbvEXT"
 
glVariantbv :: GLuint -> Ptr GLbyte -> IO ()
glVariantbv = dyn_glVariantbv ptr_glVariantbv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantbv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLbyte -> IO ())
 
{-# NOINLINE ptr_glVariantPointer #-}
 
ptr_glVariantPointer :: FunPtr a
ptr_glVariantPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glVariantPointerEXT"
 
glVariantPointer :: GLuint -> GLenum -> GLuint -> Ptr a -> IO ()
glVariantPointer = dyn_glVariantPointer ptr_glVariantPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glSwizzle #-}
 
ptr_glSwizzle :: FunPtr a
ptr_glSwizzle
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glSwizzleEXT"
 
glSwizzle ::
          GLuint -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glSwizzle = dyn_glSwizzle ptr_glSwizzle
 
foreign import CALLCONV unsafe "dynamic" dyn_glSwizzle ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glShaderOp3 #-}
 
ptr_glShaderOp3 :: FunPtr a
ptr_glShaderOp3
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glShaderOp3EXT"
 
glShaderOp3 ::
            GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()
glShaderOp3 = dyn_glShaderOp3 ptr_glShaderOp3
 
foreign import CALLCONV unsafe "dynamic" dyn_glShaderOp3 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glShaderOp2 #-}
 
ptr_glShaderOp2 :: FunPtr a
ptr_glShaderOp2
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glShaderOp2EXT"
 
glShaderOp2 :: GLenum -> GLuint -> GLuint -> GLuint -> IO ()
glShaderOp2 = dyn_glShaderOp2 ptr_glShaderOp2
 
foreign import CALLCONV unsafe "dynamic" dyn_glShaderOp2 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glShaderOp1 #-}
 
ptr_glShaderOp1 :: FunPtr a
ptr_glShaderOp1
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glShaderOp1EXT"
 
glShaderOp1 :: GLenum -> GLuint -> GLuint -> IO ()
glShaderOp1 = dyn_glShaderOp1 ptr_glShaderOp1
 
foreign import CALLCONV unsafe "dynamic" dyn_glShaderOp1 ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glSetLocalConstant #-}
 
ptr_glSetLocalConstant :: FunPtr a
ptr_glSetLocalConstant
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glSetLocalConstantEXT"
 
glSetLocalConstant :: GLuint -> GLenum -> Ptr a -> IO ()
glSetLocalConstant = dyn_glSetLocalConstant ptr_glSetLocalConstant
 
foreign import CALLCONV unsafe "dynamic" dyn_glSetLocalConstant ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glSetInvariant #-}
 
ptr_glSetInvariant :: FunPtr a
ptr_glSetInvariant
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glSetInvariantEXT"
 
glSetInvariant :: GLuint -> GLenum -> Ptr a -> IO ()
glSetInvariant = dyn_glSetInvariant ptr_glSetInvariant
 
foreign import CALLCONV unsafe "dynamic" dyn_glSetInvariant ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glIsVariantEnabled #-}
 
ptr_glIsVariantEnabled :: FunPtr a
ptr_glIsVariantEnabled
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glIsVariantEnabledEXT"
 
glIsVariantEnabled :: GLuint -> GLenum -> IO GLboolean
glIsVariantEnabled = dyn_glIsVariantEnabled ptr_glIsVariantEnabled
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsVariantEnabled ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO GLboolean)
 
{-# NOINLINE ptr_glInsertComponent #-}
 
ptr_glInsertComponent :: FunPtr a
ptr_glInsertComponent
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glInsertComponentEXT"
 
glInsertComponent :: GLuint -> GLuint -> GLuint -> IO ()
glInsertComponent = dyn_glInsertComponent ptr_glInsertComponent
 
foreign import CALLCONV unsafe "dynamic" dyn_glInsertComponent ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glGetVariantPointerv #-}
 
ptr_glGetVariantPointerv :: FunPtr a
ptr_glGetVariantPointerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetVariantPointervEXT"
 
glGetVariantPointerv :: GLuint -> GLenum -> Ptr (Ptr a) -> IO ()
glGetVariantPointerv
  = dyn_glGetVariantPointerv ptr_glGetVariantPointerv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVariantPointerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glGetVariantIntegerv #-}
 
ptr_glGetVariantIntegerv :: FunPtr a
ptr_glGetVariantIntegerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetVariantIntegervEXT"
 
glGetVariantIntegerv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVariantIntegerv
  = dyn_glGetVariantIntegerv ptr_glGetVariantIntegerv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVariantIntegerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetVariantFloatv #-}
 
ptr_glGetVariantFloatv :: FunPtr a
ptr_glGetVariantFloatv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetVariantFloatvEXT"
 
glGetVariantFloatv :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetVariantFloatv = dyn_glGetVariantFloatv ptr_glGetVariantFloatv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVariantFloatv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetVariantBooleanv #-}
 
ptr_glGetVariantBooleanv :: FunPtr a
ptr_glGetVariantBooleanv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetVariantBooleanvEXT"
 
glGetVariantBooleanv :: GLuint -> GLenum -> Ptr GLboolean -> IO ()
glGetVariantBooleanv
  = dyn_glGetVariantBooleanv ptr_glGetVariantBooleanv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetVariantBooleanv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLboolean -> IO ())
 
{-# NOINLINE ptr_glGetLocalConstantIntegerv #-}
 
ptr_glGetLocalConstantIntegerv :: FunPtr a
ptr_glGetLocalConstantIntegerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetLocalConstantIntegervEXT"
 
glGetLocalConstantIntegerv ::
                           GLuint -> GLenum -> Ptr GLint -> IO ()
glGetLocalConstantIntegerv
  = dyn_glGetLocalConstantIntegerv ptr_glGetLocalConstantIntegerv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetLocalConstantIntegerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetLocalConstantFloatv #-}
 
ptr_glGetLocalConstantFloatv :: FunPtr a
ptr_glGetLocalConstantFloatv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetLocalConstantFloatvEXT"
 
glGetLocalConstantFloatv ::
                         GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetLocalConstantFloatv
  = dyn_glGetLocalConstantFloatv ptr_glGetLocalConstantFloatv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetLocalConstantFloatv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetLocalConstantBooleanv #-}
 
ptr_glGetLocalConstantBooleanv :: FunPtr a
ptr_glGetLocalConstantBooleanv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetLocalConstantBooleanvEXT"
 
glGetLocalConstantBooleanv ::
                           GLuint -> GLenum -> Ptr GLboolean -> IO ()
glGetLocalConstantBooleanv
  = dyn_glGetLocalConstantBooleanv ptr_glGetLocalConstantBooleanv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetLocalConstantBooleanv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLboolean -> IO ())
 
{-# NOINLINE ptr_glGetInvariantIntegerv #-}
 
ptr_glGetInvariantIntegerv :: FunPtr a
ptr_glGetInvariantIntegerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetInvariantIntegervEXT"
 
glGetInvariantIntegerv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetInvariantIntegerv
  = dyn_glGetInvariantIntegerv ptr_glGetInvariantIntegerv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetInvariantIntegerv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetInvariantFloatv #-}
 
ptr_glGetInvariantFloatv :: FunPtr a
ptr_glGetInvariantFloatv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetInvariantFloatvEXT"
 
glGetInvariantFloatv :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetInvariantFloatv
  = dyn_glGetInvariantFloatv ptr_glGetInvariantFloatv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetInvariantFloatv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetInvariantBooleanv #-}
 
ptr_glGetInvariantBooleanv :: FunPtr a
ptr_glGetInvariantBooleanv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGetInvariantBooleanvEXT"
 
glGetInvariantBooleanv ::
                       GLuint -> GLenum -> Ptr GLboolean -> IO ()
glGetInvariantBooleanv
  = dyn_glGetInvariantBooleanv ptr_glGetInvariantBooleanv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetInvariantBooleanv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLboolean -> IO ())
 
{-# NOINLINE ptr_glGenVertexShaders #-}
 
ptr_glGenVertexShaders :: FunPtr a
ptr_glGenVertexShaders
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGenVertexShadersEXT"
 
glGenVertexShaders :: GLuint -> IO GLuint
glGenVertexShaders = dyn_glGenVertexShaders ptr_glGenVertexShaders
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenVertexShaders ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLuint)
 
{-# NOINLINE ptr_glGenSymbols #-}
 
ptr_glGenSymbols :: FunPtr a
ptr_glGenSymbols
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glGenSymbolsEXT"
 
glGenSymbols :: GLenum -> GLenum -> GLenum -> GLuint -> IO GLuint
glGenSymbols = dyn_glGenSymbols ptr_glGenSymbols
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenSymbols ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLuint -> IO GLuint)
 
{-# NOINLINE ptr_glExtractComponent #-}
 
ptr_glExtractComponent :: FunPtr a
ptr_glExtractComponent
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glExtractComponentEXT"
 
glExtractComponent :: GLuint -> GLuint -> GLuint -> IO ()
glExtractComponent = dyn_glExtractComponent ptr_glExtractComponent
 
foreign import CALLCONV unsafe "dynamic" dyn_glExtractComponent ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glEndVertexShader #-}
 
ptr_glEndVertexShader :: FunPtr a
ptr_glEndVertexShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glEndVertexShaderEXT"
 
glEndVertexShader :: IO ()
glEndVertexShader = dyn_glEndVertexShader ptr_glEndVertexShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glEndVertexShader ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glEnableVariantClientState #-}
 
ptr_glEnableVariantClientState :: FunPtr a
ptr_glEnableVariantClientState
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glEnableVariantClientStateEXT"
 
glEnableVariantClientState :: GLuint -> IO ()
glEnableVariantClientState
  = dyn_glEnableVariantClientState ptr_glEnableVariantClientState
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glEnableVariantClientState ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glDisableVariantClientState #-}
 
ptr_glDisableVariantClientState :: FunPtr a
ptr_glDisableVariantClientState
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glDisableVariantClientStateEXT"
 
glDisableVariantClientState :: GLuint -> IO ()
glDisableVariantClientState
  = dyn_glDisableVariantClientState ptr_glDisableVariantClientState
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDisableVariantClientState ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glDeleteVertexShader #-}
 
ptr_glDeleteVertexShader :: FunPtr a
ptr_glDeleteVertexShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glDeleteVertexShaderEXT"
 
glDeleteVertexShader :: GLuint -> IO ()
glDeleteVertexShader
  = dyn_glDeleteVertexShader ptr_glDeleteVertexShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteVertexShader ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glBindVertexShader #-}
 
ptr_glBindVertexShader :: FunPtr a
ptr_glBindVertexShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glBindVertexShaderEXT"
 
glBindVertexShader :: GLuint -> IO ()
glBindVertexShader = dyn_glBindVertexShader ptr_glBindVertexShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindVertexShader ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glBindTextureUnitParameter #-}
 
ptr_glBindTextureUnitParameter :: FunPtr a
ptr_glBindTextureUnitParameter
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glBindTextureUnitParameterEXT"
 
glBindTextureUnitParameter :: GLenum -> GLenum -> IO GLuint
glBindTextureUnitParameter
  = dyn_glBindTextureUnitParameter ptr_glBindTextureUnitParameter
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBindTextureUnitParameter ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glBindTexGenParameter #-}
 
ptr_glBindTexGenParameter :: FunPtr a
ptr_glBindTexGenParameter
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glBindTexGenParameterEXT"
 
glBindTexGenParameter :: GLenum -> GLenum -> GLenum -> IO GLuint
glBindTexGenParameter
  = dyn_glBindTexGenParameter ptr_glBindTexGenParameter
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindTexGenParameter
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glBindParameter #-}
 
ptr_glBindParameter :: FunPtr a
ptr_glBindParameter
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glBindParameterEXT"
 
glBindParameter :: GLenum -> IO GLuint
glBindParameter = dyn_glBindParameter ptr_glBindParameter
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindParameter ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glBindMaterialParameter #-}
 
ptr_glBindMaterialParameter :: FunPtr a
ptr_glBindMaterialParameter
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glBindMaterialParameterEXT"
 
glBindMaterialParameter :: GLenum -> GLenum -> IO GLuint
glBindMaterialParameter
  = dyn_glBindMaterialParameter ptr_glBindMaterialParameter
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindMaterialParameter
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glBindLightParameter #-}
 
ptr_glBindLightParameter :: FunPtr a
ptr_glBindLightParameter
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glBindLightParameterEXT"
 
glBindLightParameter :: GLenum -> GLenum -> IO GLuint
glBindLightParameter
  = dyn_glBindLightParameter ptr_glBindLightParameter
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindLightParameter ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glBeginVertexShader #-}
 
ptr_glBeginVertexShader :: FunPtr a
ptr_glBeginVertexShader
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_vertex_shader"
        "glBeginVertexShaderEXT"
 
glBeginVertexShader :: IO ()
glBeginVertexShader
  = dyn_glBeginVertexShader ptr_glBeginVertexShader
 
foreign import CALLCONV unsafe "dynamic" dyn_glBeginVertexShader ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
gl_Z :: GLenum
gl_Z = 34775
 
gl_ZERO :: GLenum
gl_ZERO = 34781
 
gl_Y :: GLenum
gl_Y = 34774
 
gl_X :: GLenum
gl_X = 34773
 
gl_W :: GLenum
gl_W = 34776
 
gl_VERTEX_SHADER_VARIANTS :: GLenum
gl_VERTEX_SHADER_VARIANTS = 34768
 
gl_VERTEX_SHADER_OPTIMIZED :: GLenum
gl_VERTEX_SHADER_OPTIMIZED = 34772
 
gl_VERTEX_SHADER_LOCAL_CONSTANTS :: GLenum
gl_VERTEX_SHADER_LOCAL_CONSTANTS = 34770
 
gl_VERTEX_SHADER_LOCALS :: GLenum
gl_VERTEX_SHADER_LOCALS = 34771
 
gl_VERTEX_SHADER_INVARIANTS :: GLenum
gl_VERTEX_SHADER_INVARIANTS = 34769
 
gl_VERTEX_SHADER_INSTRUCTIONS :: GLenum
gl_VERTEX_SHADER_INSTRUCTIONS = 34767
 
gl_VERTEX_SHADER :: GLenum
gl_VERTEX_SHADER = 34688
 
gl_VERTEX_SHADER_BINDING :: GLenum
gl_VERTEX_SHADER_BINDING = 34689
 
gl_VECTOR :: GLenum
gl_VECTOR = 34751
 
gl_VARIANT_VALUE :: GLenum
gl_VARIANT_VALUE = 34788
 
gl_VARIANT :: GLenum
gl_VARIANT = 34753
 
gl_VARIANT_DATATYPE :: GLenum
gl_VARIANT_DATATYPE = 34789
 
gl_VARIANT_ARRAY_TYPE :: GLenum
gl_VARIANT_ARRAY_TYPE = 34791
 
gl_VARIANT_ARRAY_STRIDE :: GLenum
gl_VARIANT_ARRAY_STRIDE = 34790
 
gl_VARIANT_ARRAY_POINTER :: GLenum
gl_VARIANT_ARRAY_POINTER = 34793
 
gl_VARIANT_ARRAY :: GLenum
gl_VARIANT_ARRAY = 34792
 
gl_SCALAR :: GLenum
gl_SCALAR = 34750
 
gl_OUTPUT_VERTEX :: GLenum
gl_OUTPUT_VERTEX = 34714
 
gl_OUTPUT_TEXTURE_COORD9 :: GLenum
gl_OUTPUT_TEXTURE_COORD9 = 34726
 
gl_OUTPUT_TEXTURE_COORD8 :: GLenum
gl_OUTPUT_TEXTURE_COORD8 = 34725
 
gl_OUTPUT_TEXTURE_COORD7 :: GLenum
gl_OUTPUT_TEXTURE_COORD7 = 34724
 
gl_OUTPUT_TEXTURE_COORD6 :: GLenum
gl_OUTPUT_TEXTURE_COORD6 = 34723
 
gl_OUTPUT_TEXTURE_COORD5 :: GLenum
gl_OUTPUT_TEXTURE_COORD5 = 34722
 
gl_OUTPUT_TEXTURE_COORD4 :: GLenum
gl_OUTPUT_TEXTURE_COORD4 = 34721
 
gl_OUTPUT_TEXTURE_COORD3 :: GLenum
gl_OUTPUT_TEXTURE_COORD3 = 34720
 
gl_OUTPUT_TEXTURE_COORD31 :: GLenum
gl_OUTPUT_TEXTURE_COORD31 = 34748
 
gl_OUTPUT_TEXTURE_COORD30 :: GLenum
gl_OUTPUT_TEXTURE_COORD30 = 34747
 
gl_OUTPUT_TEXTURE_COORD2 :: GLenum
gl_OUTPUT_TEXTURE_COORD2 = 34719
 
gl_OUTPUT_TEXTURE_COORD29 :: GLenum
gl_OUTPUT_TEXTURE_COORD29 = 34746
 
gl_OUTPUT_TEXTURE_COORD28 :: GLenum
gl_OUTPUT_TEXTURE_COORD28 = 34745
 
gl_OUTPUT_TEXTURE_COORD27 :: GLenum
gl_OUTPUT_TEXTURE_COORD27 = 34744
 
gl_OUTPUT_TEXTURE_COORD26 :: GLenum
gl_OUTPUT_TEXTURE_COORD26 = 34743
 
gl_OUTPUT_TEXTURE_COORD25 :: GLenum
gl_OUTPUT_TEXTURE_COORD25 = 34742
 
gl_OUTPUT_TEXTURE_COORD24 :: GLenum
gl_OUTPUT_TEXTURE_COORD24 = 34741
 
gl_OUTPUT_TEXTURE_COORD23 :: GLenum
gl_OUTPUT_TEXTURE_COORD23 = 34740
 
gl_OUTPUT_TEXTURE_COORD22 :: GLenum
gl_OUTPUT_TEXTURE_COORD22 = 34739
 
gl_OUTPUT_TEXTURE_COORD21 :: GLenum
gl_OUTPUT_TEXTURE_COORD21 = 34738
 
gl_OUTPUT_TEXTURE_COORD20 :: GLenum
gl_OUTPUT_TEXTURE_COORD20 = 34737
 
gl_OUTPUT_TEXTURE_COORD1 :: GLenum
gl_OUTPUT_TEXTURE_COORD1 = 34718
 
gl_OUTPUT_TEXTURE_COORD19 :: GLenum
gl_OUTPUT_TEXTURE_COORD19 = 34736
 
gl_OUTPUT_TEXTURE_COORD18 :: GLenum
gl_OUTPUT_TEXTURE_COORD18 = 34735
 
gl_OUTPUT_TEXTURE_COORD17 :: GLenum
gl_OUTPUT_TEXTURE_COORD17 = 34734
 
gl_OUTPUT_TEXTURE_COORD16 :: GLenum
gl_OUTPUT_TEXTURE_COORD16 = 34733
 
gl_OUTPUT_TEXTURE_COORD15 :: GLenum
gl_OUTPUT_TEXTURE_COORD15 = 34732
 
gl_OUTPUT_TEXTURE_COORD14 :: GLenum
gl_OUTPUT_TEXTURE_COORD14 = 34731
 
gl_OUTPUT_TEXTURE_COORD13 :: GLenum
gl_OUTPUT_TEXTURE_COORD13 = 34730
 
gl_OUTPUT_TEXTURE_COORD12 :: GLenum
gl_OUTPUT_TEXTURE_COORD12 = 34729
 
gl_OUTPUT_TEXTURE_COORD11 :: GLenum
gl_OUTPUT_TEXTURE_COORD11 = 34728
 
gl_OUTPUT_TEXTURE_COORD10 :: GLenum
gl_OUTPUT_TEXTURE_COORD10 = 34727
 
gl_OUTPUT_TEXTURE_COORD0 :: GLenum
gl_OUTPUT_TEXTURE_COORD0 = 34717
 
gl_OUTPUT_FOG :: GLenum
gl_OUTPUT_FOG = 34749
 
gl_OUTPUT_COLOR1 :: GLenum
gl_OUTPUT_COLOR1 = 34716
 
gl_OUTPUT_COLOR0 :: GLenum
gl_OUTPUT_COLOR0 = 34715
 
gl_OP_SUB :: GLenum
gl_OP_SUB = 34710
 
gl_OP_SET_LT :: GLenum
gl_OP_SET_LT = 34701
 
gl_OP_SET_GE :: GLenum
gl_OP_SET_GE = 34700
 
gl_OP_ROUND :: GLenum
gl_OP_ROUND = 34704
 
gl_OP_RECIP_SQRT :: GLenum
gl_OP_RECIP_SQRT = 34709
 
gl_OP_RECIP :: GLenum
gl_OP_RECIP = 34708
 
gl_OP_POWER :: GLenum
gl_OP_POWER = 34707
 
gl_OP_NEGATE :: GLenum
gl_OP_NEGATE = 34691
 
gl_OP_MUL :: GLenum
gl_OP_MUL = 34694
 
gl_OP_MULTIPLY_MATRIX :: GLenum
gl_OP_MULTIPLY_MATRIX = 34712
 
gl_OP_MOV :: GLenum
gl_OP_MOV = 34713
 
gl_OP_MIN :: GLenum
gl_OP_MIN = 34699
 
gl_OP_MAX :: GLenum
gl_OP_MAX = 34698
 
gl_OP_MADD :: GLenum
gl_OP_MADD = 34696
 
gl_OP_LOG_BASE_2 :: GLenum
gl_OP_LOG_BASE_2 = 34706
 
gl_OP_INDEX :: GLenum
gl_OP_INDEX = 34690
 
gl_OP_FRAC :: GLenum
gl_OP_FRAC = 34697
 
gl_OP_FLOOR :: GLenum
gl_OP_FLOOR = 34703
 
gl_OP_EXP_BASE_2 :: GLenum
gl_OP_EXP_BASE_2 = 34705
 
gl_OP_DOT4 :: GLenum
gl_OP_DOT4 = 34693
 
gl_OP_DOT3 :: GLenum
gl_OP_DOT3 = 34692
 
gl_OP_CROSS_PRODUCT :: GLenum
gl_OP_CROSS_PRODUCT = 34711
 
gl_OP_CLAMP :: GLenum
gl_OP_CLAMP = 34702
 
gl_OP_ADD :: GLenum
gl_OP_ADD = 34695
 
gl_ONE :: GLenum
gl_ONE = 34782
 
gl_NORMALIZED_RANGE :: GLenum
gl_NORMALIZED_RANGE = 34784
 
gl_NEGATIVE_Z :: GLenum
gl_NEGATIVE_Z = 34779
 
gl_NEGATIVE_Y :: GLenum
gl_NEGATIVE_Y = 34778
 
gl_NEGATIVE_X :: GLenum
gl_NEGATIVE_X = 34777
 
gl_NEGATIVE_W :: GLenum
gl_NEGATIVE_W = 34780
 
gl_NEGATIVE_ONE :: GLenum
gl_NEGATIVE_ONE = 34783
 
gl_MVP_MATRIX :: GLenum
gl_MVP_MATRIX = 34787
 
gl_MAX_VERTEX_SHADER_VARIANTS :: GLenum
gl_MAX_VERTEX_SHADER_VARIANTS = 34758
 
gl_MAX_VERTEX_SHADER_LOCAL_CONSTANTS :: GLenum
gl_MAX_VERTEX_SHADER_LOCAL_CONSTANTS = 34760
 
gl_MAX_VERTEX_SHADER_LOCALS :: GLenum
gl_MAX_VERTEX_SHADER_LOCALS = 34761
 
gl_MAX_VERTEX_SHADER_INVARIANTS :: GLenum
gl_MAX_VERTEX_SHADER_INVARIANTS = 34759
 
gl_MAX_VERTEX_SHADER_INSTRUCTIONS :: GLenum
gl_MAX_VERTEX_SHADER_INSTRUCTIONS = 34757
 
gl_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS = 34763
 
gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS = 34764
 
gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS = 34766
 
gl_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS = 34765
 
gl_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS = 34762
 
gl_MATRIX :: GLenum
gl_MATRIX = 34752
 
gl_LOCAL :: GLenum
gl_LOCAL = 34756
 
gl_LOCAL_CONSTANT_VALUE :: GLenum
gl_LOCAL_CONSTANT_VALUE = 34796
 
gl_LOCAL_CONSTANT :: GLenum
gl_LOCAL_CONSTANT = 34755
 
gl_LOCAL_CONSTANT_DATATYPE :: GLenum
gl_LOCAL_CONSTANT_DATATYPE = 34797
 
gl_INVARIANT_VALUE :: GLenum
gl_INVARIANT_VALUE = 34794
 
gl_INVARIANT :: GLenum
gl_INVARIANT = 34754
 
gl_INVARIANT_DATATYPE :: GLenum
gl_INVARIANT_DATATYPE = 34795
 
gl_FULL_RANGE :: GLenum
gl_FULL_RANGE = 34785
 
gl_CURRENT_VERTEX :: GLenum
gl_CURRENT_VERTEX = 34786