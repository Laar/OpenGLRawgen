{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11Compatibility
       (glVertexPointer, glTexCoordPointer, glPushClientAttrib,
        glPrioritizeTextures, glPopClientAttrib, glNormalPointer,
        glInterleavedArrays, glIndexubv, glIndexub, glIndexPointer,
        glEnableClientState, glEdgeFlagPointer, glDisableClientState,
        glColorPointer, glArrayElement, glAreTexturesResident, gl_ZOOM_Y,
        gl_ZOOM_X, gl_VIEWPORT_BIT, gl_VERTEX_ARRAY_TYPE,
        gl_VERTEX_ARRAY_STRIDE, gl_VERTEX_ARRAY_SIZE,
        gl_VERTEX_ARRAY_POINTER, gl_VERTEX_ARRAY, gl_V3F, gl_V2F,
        gl_TRANSFORM_BIT, gl_TEXTURE_STACK_DEPTH, gl_TEXTURE_RESIDENT,
        gl_TEXTURE_PRIORITY, gl_TEXTURE_MATRIX, gl_TEXTURE_LUMINANCE_SIZE,
        gl_TEXTURE_INTENSITY_SIZE, gl_TEXTURE_GEN_T, gl_TEXTURE_GEN_S,
        gl_TEXTURE_GEN_R, gl_TEXTURE_GEN_Q, gl_TEXTURE_GEN_MODE,
        gl_TEXTURE_ENV_MODE, gl_TEXTURE_ENV_COLOR, gl_TEXTURE_ENV,
        gl_TEXTURE_COORD_ARRAY_TYPE, gl_TEXTURE_COORD_ARRAY_STRIDE,
        gl_TEXTURE_COORD_ARRAY_SIZE, gl_TEXTURE_COORD_ARRAY_POINTER,
        gl_TEXTURE_COORD_ARRAY, gl_TEXTURE_COMPONENTS, gl_TEXTURE_BORDER,
        gl_TEXTURE_BIT, gl_T4F_V4F, gl_T4F_C4F_N3F_V4F, gl_T2F_V3F,
        gl_T2F_N3F_V3F, gl_T2F_C4UB_V3F, gl_T2F_C4F_N3F_V3F,
        gl_T2F_C3F_V3F, gl_T, gl_STENCIL_BITS, gl_SPOT_EXPONENT,
        gl_SPOT_DIRECTION, gl_SPOT_CUTOFF, gl_SPHERE_MAP, gl_SPECULAR,
        gl_SMOOTH, gl_SHININESS, gl_SHADE_MODEL, gl_SELECTION_BUFFER_SIZE,
        gl_SELECTION_BUFFER_POINTER, gl_SELECT, gl_SCISSOR_BIT, gl_S,
        gl_RGBA_MODE, gl_RETURN, gl_RENDER_MODE, gl_RENDER, gl_RED_SCALE,
        gl_RED_BITS, gl_RED_BIAS, gl_R, gl_QUAD_STRIP,
        gl_QUADRATIC_ATTENUATION, gl_Q, gl_PROJECTION_STACK_DEPTH,
        gl_PROJECTION_MATRIX, gl_PROJECTION, gl_POSITION, gl_POLYGON_TOKEN,
        gl_POLYGON_STIPPLE_BIT, gl_POLYGON_STIPPLE, gl_POLYGON_BIT,
        gl_POLYGON, gl_POINT_TOKEN, gl_POINT_SMOOTH_HINT, gl_POINT_SMOOTH,
        gl_POINT_BIT, gl_PIXEL_MODE_BIT, gl_PIXEL_MAP_S_TO_S_SIZE,
        gl_PIXEL_MAP_S_TO_S, gl_PIXEL_MAP_R_TO_R_SIZE, gl_PIXEL_MAP_R_TO_R,
        gl_PIXEL_MAP_I_TO_R_SIZE, gl_PIXEL_MAP_I_TO_R,
        gl_PIXEL_MAP_I_TO_I_SIZE, gl_PIXEL_MAP_I_TO_I,
        gl_PIXEL_MAP_I_TO_G_SIZE, gl_PIXEL_MAP_I_TO_G,
        gl_PIXEL_MAP_I_TO_B_SIZE, gl_PIXEL_MAP_I_TO_B,
        gl_PIXEL_MAP_I_TO_A_SIZE, gl_PIXEL_MAP_I_TO_A,
        gl_PIXEL_MAP_G_TO_G_SIZE, gl_PIXEL_MAP_G_TO_G,
        gl_PIXEL_MAP_B_TO_B_SIZE, gl_PIXEL_MAP_B_TO_B,
        gl_PIXEL_MAP_A_TO_A_SIZE, gl_PIXEL_MAP_A_TO_A,
        gl_PERSPECTIVE_CORRECTION_HINT, gl_PASS_THROUGH_TOKEN, gl_ORDER,
        gl_OBJECT_PLANE, gl_OBJECT_LINEAR, gl_NORMAL_ARRAY_TYPE,
        gl_NORMAL_ARRAY_STRIDE, gl_NORMAL_ARRAY_POINTER, gl_NORMAL_ARRAY,
        gl_NORMALIZE, gl_NAME_STACK_DEPTH, gl_N3F_V3F, gl_MULT,
        gl_MODULATE, gl_MODELVIEW_STACK_DEPTH, gl_MODELVIEW_MATRIX,
        gl_MODELVIEW, gl_MAX_TEXTURE_STACK_DEPTH,
        gl_MAX_PROJECTION_STACK_DEPTH, gl_MAX_PIXEL_MAP_TABLE,
        gl_MAX_NAME_STACK_DEPTH, gl_MAX_MODELVIEW_STACK_DEPTH,
        gl_MAX_LIST_NESTING, gl_MAX_LIGHTS, gl_MAX_EVAL_ORDER,
        gl_MAX_CLIP_PLANES, gl_MAX_CLIENT_ATTRIB_STACK_DEPTH,
        gl_MAX_ATTRIB_STACK_DEPTH, gl_MATRIX_MODE, gl_MAP_STENCIL,
        gl_MAP_COLOR, gl_MAP2_VERTEX_4, gl_MAP2_VERTEX_3,
        gl_MAP2_TEXTURE_COORD_4, gl_MAP2_TEXTURE_COORD_3,
        gl_MAP2_TEXTURE_COORD_2, gl_MAP2_TEXTURE_COORD_1, gl_MAP2_NORMAL,
        gl_MAP2_INDEX, gl_MAP2_GRID_SEGMENTS, gl_MAP2_GRID_DOMAIN,
        gl_MAP2_COLOR_4, gl_MAP1_VERTEX_4, gl_MAP1_VERTEX_3,
        gl_MAP1_TEXTURE_COORD_4, gl_MAP1_TEXTURE_COORD_3,
        gl_MAP1_TEXTURE_COORD_2, gl_MAP1_TEXTURE_COORD_1, gl_MAP1_NORMAL,
        gl_MAP1_INDEX, gl_MAP1_GRID_SEGMENTS, gl_MAP1_GRID_DOMAIN,
        gl_MAP1_COLOR_4, gl_LUMINANCE_ALPHA, gl_LUMINANCE8_ALPHA8,
        gl_LUMINANCE8, gl_LUMINANCE6_ALPHA2, gl_LUMINANCE4_ALPHA4,
        gl_LUMINANCE4, gl_LUMINANCE16_ALPHA16, gl_LUMINANCE16,
        gl_LUMINANCE12_ALPHA4, gl_LUMINANCE12_ALPHA12, gl_LUMINANCE12,
        gl_LUMINANCE, gl_LOGIC_OP, gl_LOAD, gl_LIST_MODE, gl_LIST_INDEX,
        gl_LIST_BIT, gl_LIST_BASE, gl_LINE_TOKEN, gl_LINE_STIPPLE_REPEAT,
        gl_LINE_STIPPLE_PATTERN, gl_LINE_STIPPLE, gl_LINE_RESET_TOKEN,
        gl_LINE_BIT, gl_LINEAR_ATTENUATION, gl_LIGHT_MODEL_TWO_SIDE,
        gl_LIGHT_MODEL_LOCAL_VIEWER, gl_LIGHT_MODEL_AMBIENT,
        gl_LIGHTING_BIT, gl_LIGHTING, gl_LIGHT7, gl_LIGHT6, gl_LIGHT5,
        gl_LIGHT4, gl_LIGHT3, gl_LIGHT2, gl_LIGHT1, gl_LIGHT0,
        gl_INTENSITY8, gl_INTENSITY4, gl_INTENSITY16, gl_INTENSITY12,
        gl_INTENSITY, gl_INDEX_WRITEMASK, gl_INDEX_SHIFT, gl_INDEX_OFFSET,
        gl_INDEX_MODE, gl_INDEX_LOGIC_OP, gl_INDEX_CLEAR_VALUE,
        gl_INDEX_BITS, gl_INDEX_ARRAY_TYPE, gl_INDEX_ARRAY_STRIDE,
        gl_INDEX_ARRAY_POINTER, gl_INDEX_ARRAY, gl_HINT_BIT,
        gl_GREEN_SCALE, gl_GREEN_BITS, gl_GREEN_BIAS, gl_FOG_START,
        gl_FOG_MODE, gl_FOG_INDEX, gl_FOG_HINT, gl_FOG_END, gl_FOG_DENSITY,
        gl_FOG_COLOR, gl_FOG_BIT, gl_FOG, gl_FLAT, gl_FEEDBACK_BUFFER_TYPE,
        gl_FEEDBACK_BUFFER_SIZE, gl_FEEDBACK_BUFFER_POINTER, gl_FEEDBACK,
        gl_EYE_PLANE, gl_EYE_LINEAR, gl_EXP2, gl_EXP, gl_EVAL_BIT,
        gl_ENABLE_BIT, gl_EMISSION, gl_EDGE_FLAG_ARRAY_STRIDE,
        gl_EDGE_FLAG_ARRAY_POINTER, gl_EDGE_FLAG_ARRAY, gl_EDGE_FLAG,
        gl_DRAW_PIXEL_TOKEN, gl_DOMAIN, gl_DIFFUSE, gl_DEPTH_SCALE,
        gl_DEPTH_BITS, gl_DEPTH_BIAS, gl_DECAL, gl_CURRENT_TEXTURE_COORDS,
        gl_CURRENT_RASTER_TEXTURE_COORDS, gl_CURRENT_RASTER_POSITION_VALID,
        gl_CURRENT_RASTER_POSITION, gl_CURRENT_RASTER_INDEX,
        gl_CURRENT_RASTER_DISTANCE, gl_CURRENT_RASTER_COLOR,
        gl_CURRENT_NORMAL, gl_CURRENT_INDEX, gl_CURRENT_COLOR,
        gl_CURRENT_BIT, gl_COPY_PIXEL_TOKEN, gl_CONSTANT_ATTENUATION,
        gl_COMPILE_AND_EXECUTE, gl_COMPILE, gl_COLOR_MATERIAL_PARAMETER,
        gl_COLOR_MATERIAL_FACE, gl_COLOR_MATERIAL, gl_COLOR_INDEXES,
        gl_COLOR_INDEX, gl_COLOR_ARRAY_TYPE, gl_COLOR_ARRAY_STRIDE,
        gl_COLOR_ARRAY_SIZE, gl_COLOR_ARRAY_POINTER, gl_COLOR_ARRAY,
        gl_COEFF, gl_CLIP_PLANE5, gl_CLIP_PLANE4, gl_CLIP_PLANE3,
        gl_CLIP_PLANE2, gl_CLIP_PLANE1, gl_CLIP_PLANE0,
        gl_CLIENT_VERTEX_ARRAY_BIT, gl_CLIENT_PIXEL_STORE_BIT,
        gl_CLIENT_ATTRIB_STACK_DEPTH, gl_CLIENT_ALL_ATTRIB_BITS, gl_CLAMP,
        gl_C4UB_V3F, gl_C4UB_V2F, gl_C4F_N3F_V3F, gl_C3F_V3F,
        gl_BLUE_SCALE, gl_BLUE_BITS, gl_BLUE_BIAS, gl_BITMAP_TOKEN,
        gl_BITMAP, gl_AUX_BUFFERS, gl_AUX3, gl_AUX2, gl_AUX1, gl_AUX0,
        gl_AUTO_NORMAL, gl_ATTRIB_STACK_DEPTH, gl_AMBIENT_AND_DIFFUSE,
        gl_AMBIENT, gl_ALPHA_TEST_REF, gl_ALPHA_TEST_FUNC, gl_ALPHA_TEST,
        gl_ALPHA_SCALE, gl_ALPHA_BITS, gl_ALPHA_BIAS, gl_ALPHA8, gl_ALPHA4,
        gl_ALPHA16, gl_ALPHA12, gl_ALL_ATTRIB_BITS, gl_ADD,
        gl_ACCUM_RED_BITS, gl_ACCUM_GREEN_BITS, gl_ACCUM_CLEAR_VALUE,
        gl_ACCUM_BUFFER_BIT, gl_ACCUM_BLUE_BITS, gl_ACCUM_ALPHA_BITS,
        gl_ACCUM, gl_4_BYTES, gl_4D_COLOR_TEXTURE, gl_3_BYTES,
        gl_3D_COLOR_TEXTURE, gl_3D_COLOR, gl_3D, gl_2_BYTES, gl_2D)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexPointer #-}
 
ptr_glVertexPointer :: FunPtr a
ptr_glVertexPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glVertexPointer"
 
glVertexPointer :: GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glVertexPointer = dyn_glVertexPointer ptr_glVertexPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTexCoordPointer #-}
 
ptr_glTexCoordPointer :: FunPtr a
ptr_glTexCoordPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glTexCoordPointer"
 
glTexCoordPointer :: GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glTexCoordPointer = dyn_glTexCoordPointer ptr_glTexCoordPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glPushClientAttrib #-}
 
ptr_glPushClientAttrib :: FunPtr a
ptr_glPushClientAttrib
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glPushClientAttrib"
 
glPushClientAttrib :: GLbitfield -> IO ()
glPushClientAttrib = dyn_glPushClientAttrib ptr_glPushClientAttrib
 
foreign import CALLCONV unsafe "dynamic" dyn_glPushClientAttrib ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbitfield -> IO ())
 
{-# NOINLINE ptr_glPrioritizeTextures #-}
 
ptr_glPrioritizeTextures :: FunPtr a
ptr_glPrioritizeTextures
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glPrioritizeTextures"
 
glPrioritizeTextures ::
                     GLsizei -> Ptr GLuint -> Ptr GLfloat -> IO ()
glPrioritizeTextures
  = dyn_glPrioritizeTextures ptr_glPrioritizeTextures
 
foreign import CALLCONV unsafe "dynamic" dyn_glPrioritizeTextures ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPopClientAttrib #-}
 
ptr_glPopClientAttrib :: FunPtr a
ptr_glPopClientAttrib
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glPopClientAttrib"
 
glPopClientAttrib :: IO ()
glPopClientAttrib = dyn_glPopClientAttrib ptr_glPopClientAttrib
 
foreign import CALLCONV unsafe "dynamic" dyn_glPopClientAttrib ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glNormalPointer #-}
 
ptr_glNormalPointer :: FunPtr a
ptr_glNormalPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glNormalPointer"
 
glNormalPointer :: GLenum -> GLsizei -> Ptr a -> IO ()
glNormalPointer = dyn_glNormalPointer ptr_glNormalPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glInterleavedArrays #-}
 
ptr_glInterleavedArrays :: FunPtr a
ptr_glInterleavedArrays
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glInterleavedArrays"
 
glInterleavedArrays :: GLenum -> GLsizei -> Ptr a -> IO ()
glInterleavedArrays
  = dyn_glInterleavedArrays ptr_glInterleavedArrays
 
foreign import CALLCONV unsafe "dynamic" dyn_glInterleavedArrays ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glIndexubv #-}
 
ptr_glIndexubv :: FunPtr a
ptr_glIndexubv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glIndexubv"
 
glIndexubv :: Ptr GLubyte -> IO ()
glIndexubv = dyn_glIndexubv ptr_glIndexubv
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexubv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glIndexub #-}
 
ptr_glIndexub :: FunPtr a
ptr_glIndexub
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glIndexub"
 
glIndexub :: GLubyte -> IO ()
glIndexub = dyn_glIndexub ptr_glIndexub
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexub ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLubyte -> IO ())
 
{-# NOINLINE ptr_glIndexPointer #-}
 
ptr_glIndexPointer :: FunPtr a
ptr_glIndexPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glIndexPointer"
 
glIndexPointer :: GLenum -> GLsizei -> Ptr a -> IO ()
glIndexPointer = dyn_glIndexPointer ptr_glIndexPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glEnableClientState #-}
 
ptr_glEnableClientState :: FunPtr a
ptr_glEnableClientState
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glEnableClientState"
 
glEnableClientState :: GLenum -> IO ()
glEnableClientState
  = dyn_glEnableClientState ptr_glEnableClientState
 
foreign import CALLCONV unsafe "dynamic" dyn_glEnableClientState ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glEdgeFlagPointer #-}
 
ptr_glEdgeFlagPointer :: FunPtr a
ptr_glEdgeFlagPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glEdgeFlagPointer"
 
glEdgeFlagPointer :: GLsizei -> Ptr a -> IO ()
glEdgeFlagPointer = dyn_glEdgeFlagPointer ptr_glEdgeFlagPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glEdgeFlagPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glDisableClientState #-}
 
ptr_glDisableClientState :: FunPtr a
ptr_glDisableClientState
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glDisableClientState"
 
glDisableClientState :: GLenum -> IO ()
glDisableClientState
  = dyn_glDisableClientState ptr_glDisableClientState
 
foreign import CALLCONV unsafe "dynamic" dyn_glDisableClientState ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glColorPointer #-}
 
ptr_glColorPointer :: FunPtr a
ptr_glColorPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glColorPointer"
 
glColorPointer :: GLint -> GLenum -> GLsizei -> Ptr a -> IO ()
glColorPointer = dyn_glColorPointer ptr_glColorPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glArrayElement #-}
 
ptr_glArrayElement :: FunPtr a
ptr_glArrayElement
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glArrayElement"
 
glArrayElement :: GLint -> IO ()
glArrayElement = dyn_glArrayElement ptr_glArrayElement
 
foreign import CALLCONV unsafe "dynamic" dyn_glArrayElement ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> IO ())
 
{-# NOINLINE ptr_glAreTexturesResident #-}
 
ptr_glAreTexturesResident :: FunPtr a
ptr_glAreTexturesResident
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1_DEPRECATED"
        "glAreTexturesResident"
 
glAreTexturesResident ::
                      GLsizei -> Ptr GLuint -> Ptr GLboolean -> IO GLboolean
glAreTexturesResident
  = dyn_glAreTexturesResident ptr_glAreTexturesResident
 
foreign import CALLCONV unsafe "dynamic" dyn_glAreTexturesResident
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> Ptr GLboolean -> IO GLboolean)
 
gl_ZOOM_Y :: GLenum
gl_ZOOM_Y = 3351
 
gl_ZOOM_X :: GLenum
gl_ZOOM_X = 3350
 
gl_VIEWPORT_BIT :: GLbitfield
gl_VIEWPORT_BIT = 2048
 
gl_VERTEX_ARRAY_TYPE :: GLenum
gl_VERTEX_ARRAY_TYPE = 32891
 
gl_VERTEX_ARRAY_STRIDE :: GLenum
gl_VERTEX_ARRAY_STRIDE = 32892
 
gl_VERTEX_ARRAY_SIZE :: GLenum
gl_VERTEX_ARRAY_SIZE = 32890
 
gl_VERTEX_ARRAY_POINTER :: GLenum
gl_VERTEX_ARRAY_POINTER = 32910
 
gl_VERTEX_ARRAY :: GLenum
gl_VERTEX_ARRAY = 32884
 
gl_V3F :: GLenum
gl_V3F = 10785
 
gl_V2F :: GLenum
gl_V2F = 10784
 
gl_TRANSFORM_BIT :: GLbitfield
gl_TRANSFORM_BIT = 4096
 
gl_TEXTURE_STACK_DEPTH :: GLenum
gl_TEXTURE_STACK_DEPTH = 2981
 
gl_TEXTURE_RESIDENT :: GLenum
gl_TEXTURE_RESIDENT = 32871
 
gl_TEXTURE_PRIORITY :: GLenum
gl_TEXTURE_PRIORITY = 32870
 
gl_TEXTURE_MATRIX :: GLenum
gl_TEXTURE_MATRIX = 2984
 
gl_TEXTURE_LUMINANCE_SIZE :: GLenum
gl_TEXTURE_LUMINANCE_SIZE = 32864
 
gl_TEXTURE_INTENSITY_SIZE :: GLenum
gl_TEXTURE_INTENSITY_SIZE = 32865
 
gl_TEXTURE_GEN_T :: GLenum
gl_TEXTURE_GEN_T = 3169
 
gl_TEXTURE_GEN_S :: GLenum
gl_TEXTURE_GEN_S = 3168
 
gl_TEXTURE_GEN_R :: GLenum
gl_TEXTURE_GEN_R = 3170
 
gl_TEXTURE_GEN_Q :: GLenum
gl_TEXTURE_GEN_Q = 3171
 
gl_TEXTURE_GEN_MODE :: GLenum
gl_TEXTURE_GEN_MODE = 9472
 
gl_TEXTURE_ENV_MODE :: GLenum
gl_TEXTURE_ENV_MODE = 8704
 
gl_TEXTURE_ENV_COLOR :: GLenum
gl_TEXTURE_ENV_COLOR = 8705
 
gl_TEXTURE_ENV :: GLenum
gl_TEXTURE_ENV = 8960
 
gl_TEXTURE_COORD_ARRAY_TYPE :: GLenum
gl_TEXTURE_COORD_ARRAY_TYPE = 32905
 
gl_TEXTURE_COORD_ARRAY_STRIDE :: GLenum
gl_TEXTURE_COORD_ARRAY_STRIDE = 32906
 
gl_TEXTURE_COORD_ARRAY_SIZE :: GLenum
gl_TEXTURE_COORD_ARRAY_SIZE = 32904
 
gl_TEXTURE_COORD_ARRAY_POINTER :: GLenum
gl_TEXTURE_COORD_ARRAY_POINTER = 32914
 
gl_TEXTURE_COORD_ARRAY :: GLenum
gl_TEXTURE_COORD_ARRAY = 32888
 
gl_TEXTURE_COMPONENTS :: GLenum
gl_TEXTURE_COMPONENTS = 4099
 
gl_TEXTURE_BORDER :: GLenum
gl_TEXTURE_BORDER = 4101
 
gl_TEXTURE_BIT :: GLbitfield
gl_TEXTURE_BIT = 262144
 
gl_T4F_V4F :: GLenum
gl_T4F_V4F = 10792
 
gl_T4F_C4F_N3F_V4F :: GLenum
gl_T4F_C4F_N3F_V4F = 10797
 
gl_T2F_V3F :: GLenum
gl_T2F_V3F = 10791
 
gl_T2F_N3F_V3F :: GLenum
gl_T2F_N3F_V3F = 10795
 
gl_T2F_C4UB_V3F :: GLenum
gl_T2F_C4UB_V3F = 10793
 
gl_T2F_C4F_N3F_V3F :: GLenum
gl_T2F_C4F_N3F_V3F = 10796
 
gl_T2F_C3F_V3F :: GLenum
gl_T2F_C3F_V3F = 10794
 
gl_T :: GLenum
gl_T = 8193
 
gl_STENCIL_BITS :: GLenum
gl_STENCIL_BITS = 3415
 
gl_SPOT_EXPONENT :: GLenum
gl_SPOT_EXPONENT = 4613
 
gl_SPOT_DIRECTION :: GLenum
gl_SPOT_DIRECTION = 4612
 
gl_SPOT_CUTOFF :: GLenum
gl_SPOT_CUTOFF = 4614
 
gl_SPHERE_MAP :: GLenum
gl_SPHERE_MAP = 9218
 
gl_SPECULAR :: GLenum
gl_SPECULAR = 4610
 
gl_SMOOTH :: GLenum
gl_SMOOTH = 7425
 
gl_SHININESS :: GLenum
gl_SHININESS = 5633
 
gl_SHADE_MODEL :: GLenum
gl_SHADE_MODEL = 2900
 
gl_SELECTION_BUFFER_SIZE :: GLenum
gl_SELECTION_BUFFER_SIZE = 3572
 
gl_SELECTION_BUFFER_POINTER :: GLenum
gl_SELECTION_BUFFER_POINTER = 3571
 
gl_SELECT :: GLenum
gl_SELECT = 7170
 
gl_SCISSOR_BIT :: GLbitfield
gl_SCISSOR_BIT = 524288
 
gl_S :: GLenum
gl_S = 8192
 
gl_RGBA_MODE :: GLenum
gl_RGBA_MODE = 3121
 
gl_RETURN :: GLenum
gl_RETURN = 258
 
gl_RENDER_MODE :: GLenum
gl_RENDER_MODE = 3136
 
gl_RENDER :: GLenum
gl_RENDER = 7168
 
gl_RED_SCALE :: GLenum
gl_RED_SCALE = 3348
 
gl_RED_BITS :: GLenum
gl_RED_BITS = 3410
 
gl_RED_BIAS :: GLenum
gl_RED_BIAS = 3349
 
gl_R :: GLenum
gl_R = 8194
 
gl_QUAD_STRIP :: GLenum
gl_QUAD_STRIP = 8
 
gl_QUADRATIC_ATTENUATION :: GLenum
gl_QUADRATIC_ATTENUATION = 4617
 
gl_Q :: GLenum
gl_Q = 8195
 
gl_PROJECTION_STACK_DEPTH :: GLenum
gl_PROJECTION_STACK_DEPTH = 2980
 
gl_PROJECTION_MATRIX :: GLenum
gl_PROJECTION_MATRIX = 2983
 
gl_PROJECTION :: GLenum
gl_PROJECTION = 5889
 
gl_POSITION :: GLenum
gl_POSITION = 4611
 
gl_POLYGON_TOKEN :: GLenum
gl_POLYGON_TOKEN = 1795
 
gl_POLYGON_STIPPLE_BIT :: GLbitfield
gl_POLYGON_STIPPLE_BIT = 16
 
gl_POLYGON_STIPPLE :: GLenum
gl_POLYGON_STIPPLE = 2882
 
gl_POLYGON_BIT :: GLbitfield
gl_POLYGON_BIT = 8
 
gl_POLYGON :: GLenum
gl_POLYGON = 9
 
gl_POINT_TOKEN :: GLenum
gl_POINT_TOKEN = 1793
 
gl_POINT_SMOOTH_HINT :: GLenum
gl_POINT_SMOOTH_HINT = 3153
 
gl_POINT_SMOOTH :: GLenum
gl_POINT_SMOOTH = 2832
 
gl_POINT_BIT :: GLbitfield
gl_POINT_BIT = 2
 
gl_PIXEL_MODE_BIT :: GLbitfield
gl_PIXEL_MODE_BIT = 32
 
gl_PIXEL_MAP_S_TO_S_SIZE :: GLenum
gl_PIXEL_MAP_S_TO_S_SIZE = 3249
 
gl_PIXEL_MAP_S_TO_S :: GLenum
gl_PIXEL_MAP_S_TO_S = 3185
 
gl_PIXEL_MAP_R_TO_R_SIZE :: GLenum
gl_PIXEL_MAP_R_TO_R_SIZE = 3254
 
gl_PIXEL_MAP_R_TO_R :: GLenum
gl_PIXEL_MAP_R_TO_R = 3190
 
gl_PIXEL_MAP_I_TO_R_SIZE :: GLenum
gl_PIXEL_MAP_I_TO_R_SIZE = 3250
 
gl_PIXEL_MAP_I_TO_R :: GLenum
gl_PIXEL_MAP_I_TO_R = 3186
 
gl_PIXEL_MAP_I_TO_I_SIZE :: GLenum
gl_PIXEL_MAP_I_TO_I_SIZE = 3248
 
gl_PIXEL_MAP_I_TO_I :: GLenum
gl_PIXEL_MAP_I_TO_I = 3184
 
gl_PIXEL_MAP_I_TO_G_SIZE :: GLenum
gl_PIXEL_MAP_I_TO_G_SIZE = 3251
 
gl_PIXEL_MAP_I_TO_G :: GLenum
gl_PIXEL_MAP_I_TO_G = 3187
 
gl_PIXEL_MAP_I_TO_B_SIZE :: GLenum
gl_PIXEL_MAP_I_TO_B_SIZE = 3252
 
gl_PIXEL_MAP_I_TO_B :: GLenum
gl_PIXEL_MAP_I_TO_B = 3188
 
gl_PIXEL_MAP_I_TO_A_SIZE :: GLenum
gl_PIXEL_MAP_I_TO_A_SIZE = 3253
 
gl_PIXEL_MAP_I_TO_A :: GLenum
gl_PIXEL_MAP_I_TO_A = 3189
 
gl_PIXEL_MAP_G_TO_G_SIZE :: GLenum
gl_PIXEL_MAP_G_TO_G_SIZE = 3255
 
gl_PIXEL_MAP_G_TO_G :: GLenum
gl_PIXEL_MAP_G_TO_G = 3191
 
gl_PIXEL_MAP_B_TO_B_SIZE :: GLenum
gl_PIXEL_MAP_B_TO_B_SIZE = 3256
 
gl_PIXEL_MAP_B_TO_B :: GLenum
gl_PIXEL_MAP_B_TO_B = 3192
 
gl_PIXEL_MAP_A_TO_A_SIZE :: GLenum
gl_PIXEL_MAP_A_TO_A_SIZE = 3257
 
gl_PIXEL_MAP_A_TO_A :: GLenum
gl_PIXEL_MAP_A_TO_A = 3193
 
gl_PERSPECTIVE_CORRECTION_HINT :: GLenum
gl_PERSPECTIVE_CORRECTION_HINT = 3152
 
gl_PASS_THROUGH_TOKEN :: GLenum
gl_PASS_THROUGH_TOKEN = 1792
 
gl_ORDER :: GLenum
gl_ORDER = 2561
 
gl_OBJECT_PLANE :: GLenum
gl_OBJECT_PLANE = 9473
 
gl_OBJECT_LINEAR :: GLenum
gl_OBJECT_LINEAR = 9217
 
gl_NORMAL_ARRAY_TYPE :: GLenum
gl_NORMAL_ARRAY_TYPE = 32894
 
gl_NORMAL_ARRAY_STRIDE :: GLenum
gl_NORMAL_ARRAY_STRIDE = 32895
 
gl_NORMAL_ARRAY_POINTER :: GLenum
gl_NORMAL_ARRAY_POINTER = 32911
 
gl_NORMAL_ARRAY :: GLenum
gl_NORMAL_ARRAY = 32885
 
gl_NORMALIZE :: GLenum
gl_NORMALIZE = 2977
 
gl_NAME_STACK_DEPTH :: GLenum
gl_NAME_STACK_DEPTH = 3440
 
gl_N3F_V3F :: GLenum
gl_N3F_V3F = 10789
 
gl_MULT :: GLenum
gl_MULT = 259
 
gl_MODULATE :: GLenum
gl_MODULATE = 8448
 
gl_MODELVIEW_STACK_DEPTH :: GLenum
gl_MODELVIEW_STACK_DEPTH = 2979
 
gl_MODELVIEW_MATRIX :: GLenum
gl_MODELVIEW_MATRIX = 2982
 
gl_MODELVIEW :: GLenum
gl_MODELVIEW = 5888
 
gl_MAX_TEXTURE_STACK_DEPTH :: GLenum
gl_MAX_TEXTURE_STACK_DEPTH = 3385
 
gl_MAX_PROJECTION_STACK_DEPTH :: GLenum
gl_MAX_PROJECTION_STACK_DEPTH = 3384
 
gl_MAX_PIXEL_MAP_TABLE :: GLenum
gl_MAX_PIXEL_MAP_TABLE = 3380
 
gl_MAX_NAME_STACK_DEPTH :: GLenum
gl_MAX_NAME_STACK_DEPTH = 3383
 
gl_MAX_MODELVIEW_STACK_DEPTH :: GLenum
gl_MAX_MODELVIEW_STACK_DEPTH = 3382
 
gl_MAX_LIST_NESTING :: GLenum
gl_MAX_LIST_NESTING = 2865
 
gl_MAX_LIGHTS :: GLenum
gl_MAX_LIGHTS = 3377
 
gl_MAX_EVAL_ORDER :: GLenum
gl_MAX_EVAL_ORDER = 3376
 
gl_MAX_CLIP_PLANES :: GLenum
gl_MAX_CLIP_PLANES = 3378
 
gl_MAX_CLIENT_ATTRIB_STACK_DEPTH :: GLenum
gl_MAX_CLIENT_ATTRIB_STACK_DEPTH = 3387
 
gl_MAX_ATTRIB_STACK_DEPTH :: GLenum
gl_MAX_ATTRIB_STACK_DEPTH = 3381
 
gl_MATRIX_MODE :: GLenum
gl_MATRIX_MODE = 2976
 
gl_MAP_STENCIL :: GLenum
gl_MAP_STENCIL = 3345
 
gl_MAP_COLOR :: GLenum
gl_MAP_COLOR = 3344
 
gl_MAP2_VERTEX_4 :: GLenum
gl_MAP2_VERTEX_4 = 3512
 
gl_MAP2_VERTEX_3 :: GLenum
gl_MAP2_VERTEX_3 = 3511
 
gl_MAP2_TEXTURE_COORD_4 :: GLenum
gl_MAP2_TEXTURE_COORD_4 = 3510
 
gl_MAP2_TEXTURE_COORD_3 :: GLenum
gl_MAP2_TEXTURE_COORD_3 = 3509
 
gl_MAP2_TEXTURE_COORD_2 :: GLenum
gl_MAP2_TEXTURE_COORD_2 = 3508
 
gl_MAP2_TEXTURE_COORD_1 :: GLenum
gl_MAP2_TEXTURE_COORD_1 = 3507
 
gl_MAP2_NORMAL :: GLenum
gl_MAP2_NORMAL = 3506
 
gl_MAP2_INDEX :: GLenum
gl_MAP2_INDEX = 3505
 
gl_MAP2_GRID_SEGMENTS :: GLenum
gl_MAP2_GRID_SEGMENTS = 3539
 
gl_MAP2_GRID_DOMAIN :: GLenum
gl_MAP2_GRID_DOMAIN = 3538
 
gl_MAP2_COLOR_4 :: GLenum
gl_MAP2_COLOR_4 = 3504
 
gl_MAP1_VERTEX_4 :: GLenum
gl_MAP1_VERTEX_4 = 3480
 
gl_MAP1_VERTEX_3 :: GLenum
gl_MAP1_VERTEX_3 = 3479
 
gl_MAP1_TEXTURE_COORD_4 :: GLenum
gl_MAP1_TEXTURE_COORD_4 = 3478
 
gl_MAP1_TEXTURE_COORD_3 :: GLenum
gl_MAP1_TEXTURE_COORD_3 = 3477
 
gl_MAP1_TEXTURE_COORD_2 :: GLenum
gl_MAP1_TEXTURE_COORD_2 = 3476
 
gl_MAP1_TEXTURE_COORD_1 :: GLenum
gl_MAP1_TEXTURE_COORD_1 = 3475
 
gl_MAP1_NORMAL :: GLenum
gl_MAP1_NORMAL = 3474
 
gl_MAP1_INDEX :: GLenum
gl_MAP1_INDEX = 3473
 
gl_MAP1_GRID_SEGMENTS :: GLenum
gl_MAP1_GRID_SEGMENTS = 3537
 
gl_MAP1_GRID_DOMAIN :: GLenum
gl_MAP1_GRID_DOMAIN = 3536
 
gl_MAP1_COLOR_4 :: GLenum
gl_MAP1_COLOR_4 = 3472
 
gl_LUMINANCE_ALPHA :: GLenum
gl_LUMINANCE_ALPHA = 6410
 
gl_LUMINANCE8_ALPHA8 :: GLenum
gl_LUMINANCE8_ALPHA8 = 32837
 
gl_LUMINANCE8 :: GLenum
gl_LUMINANCE8 = 32832
 
gl_LUMINANCE6_ALPHA2 :: GLenum
gl_LUMINANCE6_ALPHA2 = 32836
 
gl_LUMINANCE4_ALPHA4 :: GLenum
gl_LUMINANCE4_ALPHA4 = 32835
 
gl_LUMINANCE4 :: GLenum
gl_LUMINANCE4 = 32831
 
gl_LUMINANCE16_ALPHA16 :: GLenum
gl_LUMINANCE16_ALPHA16 = 32840
 
gl_LUMINANCE16 :: GLenum
gl_LUMINANCE16 = 32834
 
gl_LUMINANCE12_ALPHA4 :: GLenum
gl_LUMINANCE12_ALPHA4 = 32838
 
gl_LUMINANCE12_ALPHA12 :: GLenum
gl_LUMINANCE12_ALPHA12 = 32839
 
gl_LUMINANCE12 :: GLenum
gl_LUMINANCE12 = 32833
 
gl_LUMINANCE :: GLenum
gl_LUMINANCE = 6409
 
gl_LOGIC_OP :: GLenum
gl_LOGIC_OP = 3057
 
gl_LOAD :: GLenum
gl_LOAD = 257
 
gl_LIST_MODE :: GLenum
gl_LIST_MODE = 2864
 
gl_LIST_INDEX :: GLenum
gl_LIST_INDEX = 2867
 
gl_LIST_BIT :: GLbitfield
gl_LIST_BIT = 131072
 
gl_LIST_BASE :: GLenum
gl_LIST_BASE = 2866
 
gl_LINE_TOKEN :: GLenum
gl_LINE_TOKEN = 1794
 
gl_LINE_STIPPLE_REPEAT :: GLenum
gl_LINE_STIPPLE_REPEAT = 2854
 
gl_LINE_STIPPLE_PATTERN :: GLenum
gl_LINE_STIPPLE_PATTERN = 2853
 
gl_LINE_STIPPLE :: GLenum
gl_LINE_STIPPLE = 2852
 
gl_LINE_RESET_TOKEN :: GLenum
gl_LINE_RESET_TOKEN = 1799
 
gl_LINE_BIT :: GLbitfield
gl_LINE_BIT = 4
 
gl_LINEAR_ATTENUATION :: GLenum
gl_LINEAR_ATTENUATION = 4616
 
gl_LIGHT_MODEL_TWO_SIDE :: GLenum
gl_LIGHT_MODEL_TWO_SIDE = 2898
 
gl_LIGHT_MODEL_LOCAL_VIEWER :: GLenum
gl_LIGHT_MODEL_LOCAL_VIEWER = 2897
 
gl_LIGHT_MODEL_AMBIENT :: GLenum
gl_LIGHT_MODEL_AMBIENT = 2899
 
gl_LIGHTING_BIT :: GLbitfield
gl_LIGHTING_BIT = 64
 
gl_LIGHTING :: GLenum
gl_LIGHTING = 2896
 
gl_LIGHT7 :: GLenum
gl_LIGHT7 = 16391
 
gl_LIGHT6 :: GLenum
gl_LIGHT6 = 16390
 
gl_LIGHT5 :: GLenum
gl_LIGHT5 = 16389
 
gl_LIGHT4 :: GLenum
gl_LIGHT4 = 16388
 
gl_LIGHT3 :: GLenum
gl_LIGHT3 = 16387
 
gl_LIGHT2 :: GLenum
gl_LIGHT2 = 16386
 
gl_LIGHT1 :: GLenum
gl_LIGHT1 = 16385
 
gl_LIGHT0 :: GLenum
gl_LIGHT0 = 16384
 
gl_INTENSITY8 :: GLenum
gl_INTENSITY8 = 32843
 
gl_INTENSITY4 :: GLenum
gl_INTENSITY4 = 32842
 
gl_INTENSITY16 :: GLenum
gl_INTENSITY16 = 32845
 
gl_INTENSITY12 :: GLenum
gl_INTENSITY12 = 32844
 
gl_INTENSITY :: GLenum
gl_INTENSITY = 32841
 
gl_INDEX_WRITEMASK :: GLenum
gl_INDEX_WRITEMASK = 3105
 
gl_INDEX_SHIFT :: GLenum
gl_INDEX_SHIFT = 3346
 
gl_INDEX_OFFSET :: GLenum
gl_INDEX_OFFSET = 3347
 
gl_INDEX_MODE :: GLenum
gl_INDEX_MODE = 3120
 
gl_INDEX_LOGIC_OP :: GLenum
gl_INDEX_LOGIC_OP = 3057
 
gl_INDEX_CLEAR_VALUE :: GLenum
gl_INDEX_CLEAR_VALUE = 3104
 
gl_INDEX_BITS :: GLenum
gl_INDEX_BITS = 3409
 
gl_INDEX_ARRAY_TYPE :: GLenum
gl_INDEX_ARRAY_TYPE = 32901
 
gl_INDEX_ARRAY_STRIDE :: GLenum
gl_INDEX_ARRAY_STRIDE = 32902
 
gl_INDEX_ARRAY_POINTER :: GLenum
gl_INDEX_ARRAY_POINTER = 32913
 
gl_INDEX_ARRAY :: GLenum
gl_INDEX_ARRAY = 32887
 
gl_HINT_BIT :: GLbitfield
gl_HINT_BIT = 32768
 
gl_GREEN_SCALE :: GLenum
gl_GREEN_SCALE = 3352
 
gl_GREEN_BITS :: GLenum
gl_GREEN_BITS = 3411
 
gl_GREEN_BIAS :: GLenum
gl_GREEN_BIAS = 3353
 
gl_FOG_START :: GLenum
gl_FOG_START = 2915
 
gl_FOG_MODE :: GLenum
gl_FOG_MODE = 2917
 
gl_FOG_INDEX :: GLenum
gl_FOG_INDEX = 2913
 
gl_FOG_HINT :: GLenum
gl_FOG_HINT = 3156
 
gl_FOG_END :: GLenum
gl_FOG_END = 2916
 
gl_FOG_DENSITY :: GLenum
gl_FOG_DENSITY = 2914
 
gl_FOG_COLOR :: GLenum
gl_FOG_COLOR = 2918
 
gl_FOG_BIT :: GLbitfield
gl_FOG_BIT = 128
 
gl_FOG :: GLenum
gl_FOG = 2912
 
gl_FLAT :: GLenum
gl_FLAT = 7424
 
gl_FEEDBACK_BUFFER_TYPE :: GLenum
gl_FEEDBACK_BUFFER_TYPE = 3570
 
gl_FEEDBACK_BUFFER_SIZE :: GLenum
gl_FEEDBACK_BUFFER_SIZE = 3569
 
gl_FEEDBACK_BUFFER_POINTER :: GLenum
gl_FEEDBACK_BUFFER_POINTER = 3568
 
gl_FEEDBACK :: GLenum
gl_FEEDBACK = 7169
 
gl_EYE_PLANE :: GLenum
gl_EYE_PLANE = 9474
 
gl_EYE_LINEAR :: GLenum
gl_EYE_LINEAR = 9216
 
gl_EXP2 :: GLenum
gl_EXP2 = 2049
 
gl_EXP :: GLenum
gl_EXP = 2048
 
gl_EVAL_BIT :: GLbitfield
gl_EVAL_BIT = 65536
 
gl_ENABLE_BIT :: GLbitfield
gl_ENABLE_BIT = 8192
 
gl_EMISSION :: GLenum
gl_EMISSION = 5632
 
gl_EDGE_FLAG_ARRAY_STRIDE :: GLenum
gl_EDGE_FLAG_ARRAY_STRIDE = 32908
 
gl_EDGE_FLAG_ARRAY_POINTER :: GLenum
gl_EDGE_FLAG_ARRAY_POINTER = 32915
 
gl_EDGE_FLAG_ARRAY :: GLenum
gl_EDGE_FLAG_ARRAY = 32889
 
gl_EDGE_FLAG :: GLenum
gl_EDGE_FLAG = 2883
 
gl_DRAW_PIXEL_TOKEN :: GLenum
gl_DRAW_PIXEL_TOKEN = 1797
 
gl_DOMAIN :: GLenum
gl_DOMAIN = 2562
 
gl_DIFFUSE :: GLenum
gl_DIFFUSE = 4609
 
gl_DEPTH_SCALE :: GLenum
gl_DEPTH_SCALE = 3358
 
gl_DEPTH_BITS :: GLenum
gl_DEPTH_BITS = 3414
 
gl_DEPTH_BIAS :: GLenum
gl_DEPTH_BIAS = 3359
 
gl_DECAL :: GLenum
gl_DECAL = 8449
 
gl_CURRENT_TEXTURE_COORDS :: GLenum
gl_CURRENT_TEXTURE_COORDS = 2819
 
gl_CURRENT_RASTER_TEXTURE_COORDS :: GLenum
gl_CURRENT_RASTER_TEXTURE_COORDS = 2822
 
gl_CURRENT_RASTER_POSITION_VALID :: GLenum
gl_CURRENT_RASTER_POSITION_VALID = 2824
 
gl_CURRENT_RASTER_POSITION :: GLenum
gl_CURRENT_RASTER_POSITION = 2823
 
gl_CURRENT_RASTER_INDEX :: GLenum
gl_CURRENT_RASTER_INDEX = 2821
 
gl_CURRENT_RASTER_DISTANCE :: GLenum
gl_CURRENT_RASTER_DISTANCE = 2825
 
gl_CURRENT_RASTER_COLOR :: GLenum
gl_CURRENT_RASTER_COLOR = 2820
 
gl_CURRENT_NORMAL :: GLenum
gl_CURRENT_NORMAL = 2818
 
gl_CURRENT_INDEX :: GLenum
gl_CURRENT_INDEX = 2817
 
gl_CURRENT_COLOR :: GLenum
gl_CURRENT_COLOR = 2816
 
gl_CURRENT_BIT :: GLbitfield
gl_CURRENT_BIT = 1
 
gl_COPY_PIXEL_TOKEN :: GLenum
gl_COPY_PIXEL_TOKEN = 1798
 
gl_CONSTANT_ATTENUATION :: GLenum
gl_CONSTANT_ATTENUATION = 4615
 
gl_COMPILE_AND_EXECUTE :: GLenum
gl_COMPILE_AND_EXECUTE = 4865
 
gl_COMPILE :: GLenum
gl_COMPILE = 4864
 
gl_COLOR_MATERIAL_PARAMETER :: GLenum
gl_COLOR_MATERIAL_PARAMETER = 2902
 
gl_COLOR_MATERIAL_FACE :: GLenum
gl_COLOR_MATERIAL_FACE = 2901
 
gl_COLOR_MATERIAL :: GLenum
gl_COLOR_MATERIAL = 2903
 
gl_COLOR_INDEXES :: GLenum
gl_COLOR_INDEXES = 5635
 
gl_COLOR_INDEX :: GLenum
gl_COLOR_INDEX = 6400
 
gl_COLOR_ARRAY_TYPE :: GLenum
gl_COLOR_ARRAY_TYPE = 32898
 
gl_COLOR_ARRAY_STRIDE :: GLenum
gl_COLOR_ARRAY_STRIDE = 32899
 
gl_COLOR_ARRAY_SIZE :: GLenum
gl_COLOR_ARRAY_SIZE = 32897
 
gl_COLOR_ARRAY_POINTER :: GLenum
gl_COLOR_ARRAY_POINTER = 32912
 
gl_COLOR_ARRAY :: GLenum
gl_COLOR_ARRAY = 32886
 
gl_COEFF :: GLenum
gl_COEFF = 2560
 
gl_CLIP_PLANE5 :: GLenum
gl_CLIP_PLANE5 = 12293
 
gl_CLIP_PLANE4 :: GLenum
gl_CLIP_PLANE4 = 12292
 
gl_CLIP_PLANE3 :: GLenum
gl_CLIP_PLANE3 = 12291
 
gl_CLIP_PLANE2 :: GLenum
gl_CLIP_PLANE2 = 12290
 
gl_CLIP_PLANE1 :: GLenum
gl_CLIP_PLANE1 = 12289
 
gl_CLIP_PLANE0 :: GLenum
gl_CLIP_PLANE0 = 12288
 
gl_CLIENT_VERTEX_ARRAY_BIT :: GLbitfield
gl_CLIENT_VERTEX_ARRAY_BIT = 2
 
gl_CLIENT_PIXEL_STORE_BIT :: GLbitfield
gl_CLIENT_PIXEL_STORE_BIT = 1
 
gl_CLIENT_ATTRIB_STACK_DEPTH :: GLenum
gl_CLIENT_ATTRIB_STACK_DEPTH = 2993
 
gl_CLIENT_ALL_ATTRIB_BITS :: GLbitfield
gl_CLIENT_ALL_ATTRIB_BITS = 4294967295
 
gl_CLAMP :: GLenum
gl_CLAMP = 10496
 
gl_C4UB_V3F :: GLenum
gl_C4UB_V3F = 10787
 
gl_C4UB_V2F :: GLenum
gl_C4UB_V2F = 10786
 
gl_C4F_N3F_V3F :: GLenum
gl_C4F_N3F_V3F = 10790
 
gl_C3F_V3F :: GLenum
gl_C3F_V3F = 10788
 
gl_BLUE_SCALE :: GLenum
gl_BLUE_SCALE = 3354
 
gl_BLUE_BITS :: GLenum
gl_BLUE_BITS = 3412
 
gl_BLUE_BIAS :: GLenum
gl_BLUE_BIAS = 3355
 
gl_BITMAP_TOKEN :: GLenum
gl_BITMAP_TOKEN = 1796
 
gl_BITMAP :: GLenum
gl_BITMAP = 6656
 
gl_AUX_BUFFERS :: GLenum
gl_AUX_BUFFERS = 3072
 
gl_AUX3 :: GLenum
gl_AUX3 = 1036
 
gl_AUX2 :: GLenum
gl_AUX2 = 1035
 
gl_AUX1 :: GLenum
gl_AUX1 = 1034
 
gl_AUX0 :: GLenum
gl_AUX0 = 1033
 
gl_AUTO_NORMAL :: GLenum
gl_AUTO_NORMAL = 3456
 
gl_ATTRIB_STACK_DEPTH :: GLenum
gl_ATTRIB_STACK_DEPTH = 2992
 
gl_AMBIENT_AND_DIFFUSE :: GLenum
gl_AMBIENT_AND_DIFFUSE = 5634
 
gl_AMBIENT :: GLenum
gl_AMBIENT = 4608
 
gl_ALPHA_TEST_REF :: GLenum
gl_ALPHA_TEST_REF = 3010
 
gl_ALPHA_TEST_FUNC :: GLenum
gl_ALPHA_TEST_FUNC = 3009
 
gl_ALPHA_TEST :: GLenum
gl_ALPHA_TEST = 3008
 
gl_ALPHA_SCALE :: GLenum
gl_ALPHA_SCALE = 3356
 
gl_ALPHA_BITS :: GLenum
gl_ALPHA_BITS = 3413
 
gl_ALPHA_BIAS :: GLenum
gl_ALPHA_BIAS = 3357
 
gl_ALPHA8 :: GLenum
gl_ALPHA8 = 32828
 
gl_ALPHA4 :: GLenum
gl_ALPHA4 = 32827
 
gl_ALPHA16 :: GLenum
gl_ALPHA16 = 32830
 
gl_ALPHA12 :: GLenum
gl_ALPHA12 = 32829
 
gl_ALL_ATTRIB_BITS :: GLbitfield
gl_ALL_ATTRIB_BITS = 4294967295
 
gl_ADD :: GLenum
gl_ADD = 260
 
gl_ACCUM_RED_BITS :: GLenum
gl_ACCUM_RED_BITS = 3416
 
gl_ACCUM_GREEN_BITS :: GLenum
gl_ACCUM_GREEN_BITS = 3417
 
gl_ACCUM_CLEAR_VALUE :: GLenum
gl_ACCUM_CLEAR_VALUE = 2944
 
gl_ACCUM_BUFFER_BIT :: GLbitfield
gl_ACCUM_BUFFER_BIT = 512
 
gl_ACCUM_BLUE_BITS :: GLenum
gl_ACCUM_BLUE_BITS = 3418
 
gl_ACCUM_ALPHA_BITS :: GLenum
gl_ACCUM_ALPHA_BITS = 3419
 
gl_ACCUM :: GLenum
gl_ACCUM = 256
 
gl_4_BYTES :: GLenum
gl_4_BYTES = 5129
 
gl_4D_COLOR_TEXTURE :: GLenum
gl_4D_COLOR_TEXTURE = 1540
 
gl_3_BYTES :: GLenum
gl_3_BYTES = 5128
 
gl_3D_COLOR_TEXTURE :: GLenum
gl_3D_COLOR_TEXTURE = 1539
 
gl_3D_COLOR :: GLenum
gl_3D_COLOR = 1538
 
gl_3D :: GLenum
gl_3D = 1537
 
gl_2_BYTES :: GLenum
gl_2_BYTES = 5127
 
gl_2D :: GLenum
gl_2D = 1536