{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.PathRendering
       (glWeightPathsNV, glTransformPathNV, glStencilStrokePathNV,
        glStencilStrokePathInstancedNV, glStencilFillPathNV,
        glStencilFillPathInstancedNV, glPointAlongPathNV, glPathTexGenNV,
        glPathSubCoordsNV, glPathSubCommandsNV, glPathStringNV,
        glPathStencilFuncNV, glPathStencilDepthOffsetNV,
        glPathParameterivNV, glPathParameteriNV, glPathParameterfvNV,
        glPathParameterfNV, glPathGlyphsNV, glPathGlyphRangeNV,
        glPathFogGenNV, glPathDashArrayNV, glPathCoverDepthFuncNV,
        glPathCoordsNV, glPathCommandsNV, glPathColorGenNV,
        glIsPointInStrokePathNV, glIsPointInFillPathNV, glIsPathNV,
        glInterpolatePathsNV, glGetPathTexGenivNV, glGetPathTexGenfvNV,
        glGetPathSpacingNV, glGetPathParameterivNV, glGetPathParameterfvNV,
        glGetPathMetricsNV, glGetPathMetricRangeNV, glGetPathLengthNV,
        glGetPathDashArrayNV, glGetPathCoordsNV, glGetPathCommandsNV,
        glGetPathColorGenivNV, glGetPathColorGenfvNV, glGenPathsNV,
        glDeletePathsNV, glCoverStrokePathNV, glCoverStrokePathInstancedNV,
        glCoverFillPathNV, glCoverFillPathInstancedNV, glCopyPathNV,
        gl_VERTICAL_LINE_TO_NV, gl_UTF8_NV, gl_UTF16_NV,
        gl_USE_MISSING_GLYPH_NV, gl_TRIANGULAR_NV,
        gl_TRANSPOSE_PROJECTIVE_3D_NV, gl_TRANSPOSE_PROJECTIVE_2D_NV,
        gl_TRANSPOSE_AFFINE_3D_NV, gl_TRANSPOSE_AFFINE_2D_NV,
        gl_TRANSLATE_Y_NV, gl_TRANSLATE_X_NV, gl_TRANSLATE_3D_NV,
        gl_TRANSLATE_2D_NV, gl_SYSTEM_FONT_NAME_NV,
        gl_STANDARD_FONT_NAME_NV, gl_SQUARE_NV,
        gl_SMOOTH_QUADRATIC_CURVE_TO_NV, gl_SMOOTH_CUBIC_CURVE_TO_NV,
        gl_SMALL_CW_ARC_TO_NV, gl_SMALL_CCW_ARC_TO_NV,
        gl_SKIP_MISSING_GLYPH_NV, gl_ROUND_NV, gl_RESTART_PATH_NV,
        gl_RELATIVE_VERTICAL_LINE_TO_NV,
        gl_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV,
        gl_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV,
        gl_RELATIVE_SMALL_CW_ARC_TO_NV, gl_RELATIVE_SMALL_CCW_ARC_TO_NV,
        gl_RELATIVE_QUADRATIC_CURVE_TO_NV, gl_RELATIVE_MOVE_TO_NV,
        gl_RELATIVE_LINE_TO_NV, gl_RELATIVE_LARGE_CW_ARC_TO_NV,
        gl_RELATIVE_LARGE_CCW_ARC_TO_NV, gl_RELATIVE_HORIZONTAL_LINE_TO_NV,
        gl_RELATIVE_CUBIC_CURVE_TO_NV, gl_RELATIVE_ARC_TO_NV, gl_RECT_NV,
        gl_QUADRATIC_CURVE_TO_NV, gl_PROJECTIVE_3D_NV, gl_PROJECTIVE_2D_NV,
        gl_PATH_TERMINAL_END_CAP_NV, gl_PATH_TERMINAL_DASH_CAP_NV,
        gl_PATH_STROKE_WIDTH_NV, gl_PATH_STROKE_OVERSAMPLE_COUNT_NV,
        gl_PATH_STROKE_MASK_NV, gl_PATH_STROKE_COVER_MODE_NV,
        gl_PATH_STROKE_BOUND_NV, gl_PATH_STROKE_BOUNDING_BOX_NV,
        gl_PATH_STENCIL_VALUE_MASK_NV, gl_PATH_STENCIL_REF_NV,
        gl_PATH_STENCIL_FUNC_NV, gl_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV,
        gl_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV, gl_PATH_SAMPLE_QUALITY_NV,
        gl_PATH_OBJECT_BOUNDING_BOX_NV, gl_PATH_MITER_LIMIT_NV,
        gl_PATH_JOIN_STYLE_NV, gl_PATH_INITIAL_END_CAP_NV,
        gl_PATH_INITIAL_DASH_CAP_NV, gl_PATH_GEN_MODE_NV,
        gl_PATH_GEN_COMPONENTS_NV, gl_PATH_GEN_COLOR_FORMAT_NV,
        gl_PATH_GEN_COEFF_NV, gl_PATH_FORMAT_SVG_NV, gl_PATH_FORMAT_PS_NV,
        gl_PATH_FOG_GEN_MODE_NV, gl_PATH_FILL_MODE_NV,
        gl_PATH_FILL_MASK_NV, gl_PATH_FILL_COVER_MODE_NV,
        gl_PATH_FILL_BOUNDING_BOX_NV, gl_PATH_ERROR_POSITION_NV,
        gl_PATH_END_CAPS_NV, gl_PATH_DASH_OFFSET_RESET_NV,
        gl_PATH_DASH_OFFSET_NV, gl_PATH_DASH_CAPS_NV,
        gl_PATH_DASH_ARRAY_COUNT_NV, gl_PATH_COVER_DEPTH_FUNC_NV,
        gl_PATH_COORD_COUNT_NV, gl_PATH_COMPUTED_LENGTH_NV,
        gl_PATH_COMMAND_COUNT_NV, gl_PATH_CLIENT_LENGTH_NV,
        gl_MULTI_HULLS_NV, gl_MOVE_TO_RESETS_NV, gl_MOVE_TO_NV,
        gl_MOVE_TO_CONTINUES_NV, gl_MITER_TRUNCATE_NV, gl_MITER_REVERT_NV,
        gl_LINE_TO_NV, gl_LARGE_CW_ARC_TO_NV, gl_LARGE_CCW_ARC_TO_NV,
        gl_ITALIC_BIT_NV, gl_HORIZONTAL_LINE_TO_NV, gl_GLYPH_WIDTH_BIT_NV,
        gl_GLYPH_VERTICAL_BEARING_Y_BIT_NV,
        gl_GLYPH_VERTICAL_BEARING_X_BIT_NV,
        gl_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV,
        gl_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV,
        gl_GLYPH_HORIZONTAL_BEARING_X_BIT_NV,
        gl_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV, gl_GLYPH_HEIGHT_BIT_NV,
        gl_GLYPH_HAS_KERNING_NV, gl_FONT_Y_MIN_BOUNDS_NV,
        gl_FONT_Y_MAX_BOUNDS_NV, gl_FONT_X_MIN_BOUNDS_NV,
        gl_FONT_X_MAX_BOUNDS_NV, gl_FONT_UNITS_PER_EM_NV,
        gl_FONT_UNDERLINE_THICKNESS_NV, gl_FONT_UNDERLINE_POSITION_NV,
        gl_FONT_MAX_ADVANCE_WIDTH_NV, gl_FONT_MAX_ADVANCE_HEIGHT_NV,
        gl_FONT_HEIGHT_NV, gl_FONT_HAS_KERNING_NV, gl_FONT_DESCENDER_NV,
        gl_FONT_ASCENDER_NV, gl_FIRST_TO_REST_NV, gl_FILE_NAME_NV,
        gl_DUP_LAST_CUBIC_CURVE_TO_NV, gl_DUP_FIRST_CUBIC_CURVE_TO_NV,
        gl_CUBIC_CURVE_TO_NV, gl_COUNT_UP_NV, gl_COUNT_DOWN_NV,
        gl_CONVEX_HULL_NV, gl_CLOSE_PATH_NV, gl_CIRCULAR_TANGENT_ARC_TO_NV,
        gl_CIRCULAR_CW_ARC_TO_NV, gl_CIRCULAR_CCW_ARC_TO_NV,
        gl_BOUNDING_BOX_OF_BOUNDING_BOXES_NV, gl_BOUNDING_BOX_NV,
        gl_BOLD_BIT_NV, gl_BEVEL_NV, gl_ARC_TO_NV, gl_AFFINE_3D_NV,
        gl_AFFINE_2D_NV, gl_ADJACENT_PAIRS_NV, gl_ACCUM_ADJACENT_PAIRS_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glWeightPathsNV #-}
 
ptr_glWeightPathsNV :: FunPtr a
ptr_glWeightPathsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glWeightPathsNV"
 
glWeightPathsNV ::
                GLuint -> GLsizei -> Ptr GLuint -> Ptr GLfloat -> IO ()
glWeightPathsNV = dyn_glWeightPathsNV ptr_glWeightPathsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightPathsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glTransformPathNV #-}
 
ptr_glTransformPathNV :: FunPtr a
ptr_glTransformPathNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glTransformPathNV"
 
glTransformPathNV ::
                  GLuint -> GLuint -> GLenum -> Ptr GLfloat -> IO ()
glTransformPathNV = dyn_glTransformPathNV ptr_glTransformPathNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glTransformPathNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glStencilStrokePathNV #-}
 
ptr_glStencilStrokePathNV :: FunPtr a
ptr_glStencilStrokePathNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glStencilStrokePathNV"
 
glStencilStrokePathNV :: GLuint -> GLint -> GLuint -> IO ()
glStencilStrokePathNV
  = dyn_glStencilStrokePathNV ptr_glStencilStrokePathNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilStrokePathNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glStencilStrokePathInstancedNV #-}
 
ptr_glStencilStrokePathInstancedNV :: FunPtr a
ptr_glStencilStrokePathInstancedNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glStencilStrokePathInstancedNV"
 
glStencilStrokePathInstancedNV ::
                               GLsizei ->
                                 GLenum ->
                                   Ptr a ->
                                     GLuint -> GLint -> GLuint -> GLenum -> Ptr GLfloat -> IO ()
glStencilStrokePathInstancedNV
  = dyn_glStencilStrokePathInstancedNV
      ptr_glStencilStrokePathInstancedNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glStencilStrokePathInstancedNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei ->
                    GLenum ->
                      Ptr a ->
                        GLuint -> GLint -> GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glStencilFillPathNV #-}
 
ptr_glStencilFillPathNV :: FunPtr a
ptr_glStencilFillPathNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glStencilFillPathNV"
 
glStencilFillPathNV :: GLuint -> GLenum -> GLuint -> IO ()
glStencilFillPathNV
  = dyn_glStencilFillPathNV ptr_glStencilFillPathNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilFillPathNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glStencilFillPathInstancedNV #-}
 
ptr_glStencilFillPathInstancedNV :: FunPtr a
ptr_glStencilFillPathInstancedNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glStencilFillPathInstancedNV"
 
glStencilFillPathInstancedNV ::
                             GLsizei ->
                               GLenum ->
                                 Ptr a ->
                                   GLuint -> GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ()
glStencilFillPathInstancedNV
  = dyn_glStencilFillPathInstancedNV ptr_glStencilFillPathInstancedNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glStencilFillPathInstancedNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei ->
                    GLenum ->
                      Ptr a ->
                        GLuint -> GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPointAlongPathNV #-}
 
ptr_glPointAlongPathNV :: FunPtr a
ptr_glPointAlongPathNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPointAlongPathNV"
 
glPointAlongPathNV ::
                   GLuint ->
                     GLsizei ->
                       GLsizei ->
                         GLfloat ->
                           Ptr GLfloat ->
                             Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> IO GLboolean
glPointAlongPathNV = dyn_glPointAlongPathNV ptr_glPointAlongPathNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointAlongPathNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei ->
                      GLsizei ->
                        GLfloat ->
                          Ptr GLfloat ->
                            Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> IO GLboolean)
 
{-# NOINLINE ptr_glPathTexGenNV #-}
 
ptr_glPathTexGenNV :: FunPtr a
ptr_glPathTexGenNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathTexGenNV"
 
glPathTexGenNV :: GLenum -> GLenum -> GLint -> Ptr GLfloat -> IO ()
glPathTexGenNV = dyn_glPathTexGenNV ptr_glPathTexGenNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathTexGenNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPathSubCoordsNV #-}
 
ptr_glPathSubCoordsNV :: FunPtr a
ptr_glPathSubCoordsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathSubCoordsNV"
 
glPathSubCoordsNV ::
                  GLuint -> GLsizei -> GLsizei -> GLenum -> Ptr a -> IO ()
glPathSubCoordsNV = dyn_glPathSubCoordsNV ptr_glPathSubCoordsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathSubCoordsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> GLsizei -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glPathSubCommandsNV #-}
 
ptr_glPathSubCommandsNV :: FunPtr a
ptr_glPathSubCommandsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathSubCommandsNV"
 
glPathSubCommandsNV ::
                    GLuint ->
                      GLsizei ->
                        GLsizei ->
                          GLsizei -> Ptr GLubyte -> GLsizei -> GLenum -> Ptr a -> IO ()
glPathSubCommandsNV
  = dyn_glPathSubCommandsNV ptr_glPathSubCommandsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathSubCommandsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei ->
                      GLsizei ->
                        GLsizei -> Ptr GLubyte -> GLsizei -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glPathStringNV #-}
 
ptr_glPathStringNV :: FunPtr a
ptr_glPathStringNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathStringNV"
 
glPathStringNV :: GLuint -> GLenum -> GLsizei -> Ptr a -> IO ()
glPathStringNV = dyn_glPathStringNV ptr_glPathStringNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathStringNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glPathStencilFuncNV #-}
 
ptr_glPathStencilFuncNV :: FunPtr a
ptr_glPathStencilFuncNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathStencilFuncNV"
 
glPathStencilFuncNV :: GLenum -> GLint -> GLuint -> IO ()
glPathStencilFuncNV
  = dyn_glPathStencilFuncNV ptr_glPathStencilFuncNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathStencilFuncNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glPathStencilDepthOffsetNV #-}
 
ptr_glPathStencilDepthOffsetNV :: FunPtr a
ptr_glPathStencilDepthOffsetNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathStencilDepthOffsetNV"
 
glPathStencilDepthOffsetNV :: GLfloat -> GLfloat -> IO ()
glPathStencilDepthOffsetNV
  = dyn_glPathStencilDepthOffsetNV ptr_glPathStencilDepthOffsetNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPathStencilDepthOffsetNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glPathParameterivNV #-}
 
ptr_glPathParameterivNV :: FunPtr a
ptr_glPathParameterivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathParameterivNV"
 
glPathParameterivNV :: GLuint -> GLenum -> Ptr GLint -> IO ()
glPathParameterivNV
  = dyn_glPathParameterivNV ptr_glPathParameterivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathParameterivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glPathParameteriNV #-}
 
ptr_glPathParameteriNV :: FunPtr a
ptr_glPathParameteriNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathParameteriNV"
 
glPathParameteriNV :: GLuint -> GLenum -> GLint -> IO ()
glPathParameteriNV = dyn_glPathParameteriNV ptr_glPathParameteriNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathParameteriNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glPathParameterfvNV #-}
 
ptr_glPathParameterfvNV :: FunPtr a
ptr_glPathParameterfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathParameterfvNV"
 
glPathParameterfvNV :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glPathParameterfvNV
  = dyn_glPathParameterfvNV ptr_glPathParameterfvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathParameterfvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPathParameterfNV #-}
 
ptr_glPathParameterfNV :: FunPtr a
ptr_glPathParameterfNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathParameterfNV"
 
glPathParameterfNV :: GLuint -> GLenum -> GLfloat -> IO ()
glPathParameterfNV = dyn_glPathParameterfNV ptr_glPathParameterfNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathParameterfNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glPathGlyphsNV #-}
 
ptr_glPathGlyphsNV :: FunPtr a
ptr_glPathGlyphsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathGlyphsNV"
 
glPathGlyphsNV ::
               GLuint ->
                 GLenum ->
                   Ptr a ->
                     GLbitfield ->
                       GLsizei -> GLenum -> Ptr a -> GLenum -> GLuint -> GLfloat -> IO ()
glPathGlyphsNV = dyn_glPathGlyphsNV ptr_glPathGlyphsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathGlyphsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      Ptr a ->
                        GLbitfield ->
                          GLsizei -> GLenum -> Ptr a -> GLenum -> GLuint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glPathGlyphRangeNV #-}
 
ptr_glPathGlyphRangeNV :: FunPtr a
ptr_glPathGlyphRangeNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathGlyphRangeNV"
 
glPathGlyphRangeNV ::
                   GLuint ->
                     GLenum ->
                       Ptr a ->
                         GLbitfield ->
                           GLuint -> GLsizei -> GLenum -> GLuint -> GLfloat -> IO ()
glPathGlyphRangeNV = dyn_glPathGlyphRangeNV ptr_glPathGlyphRangeNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathGlyphRangeNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      Ptr a ->
                        GLbitfield ->
                          GLuint -> GLsizei -> GLenum -> GLuint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glPathFogGenNV #-}
 
ptr_glPathFogGenNV :: FunPtr a
ptr_glPathFogGenNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathFogGenNV"
 
glPathFogGenNV :: GLenum -> IO ()
glPathFogGenNV = dyn_glPathFogGenNV ptr_glPathFogGenNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathFogGenNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glPathDashArrayNV #-}
 
ptr_glPathDashArrayNV :: FunPtr a
ptr_glPathDashArrayNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathDashArrayNV"
 
glPathDashArrayNV :: GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glPathDashArrayNV = dyn_glPathDashArrayNV ptr_glPathDashArrayNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathDashArrayNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPathCoverDepthFuncNV #-}
 
ptr_glPathCoverDepthFuncNV :: FunPtr a
ptr_glPathCoverDepthFuncNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathCoverDepthFuncNV"
 
glPathCoverDepthFuncNV :: GLenum -> IO ()
glPathCoverDepthFuncNV
  = dyn_glPathCoverDepthFuncNV ptr_glPathCoverDepthFuncNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathCoverDepthFuncNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glPathCoordsNV #-}
 
ptr_glPathCoordsNV :: FunPtr a
ptr_glPathCoordsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathCoordsNV"
 
glPathCoordsNV :: GLuint -> GLsizei -> GLenum -> Ptr a -> IO ()
glPathCoordsNV = dyn_glPathCoordsNV ptr_glPathCoordsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathCoordsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glPathCommandsNV #-}
 
ptr_glPathCommandsNV :: FunPtr a
ptr_glPathCommandsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathCommandsNV"
 
glPathCommandsNV ::
                 GLuint ->
                   GLsizei -> Ptr GLubyte -> GLsizei -> GLenum -> Ptr a -> IO ()
glPathCommandsNV = dyn_glPathCommandsNV ptr_glPathCommandsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathCommandsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei -> Ptr GLubyte -> GLsizei -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glPathColorGenNV #-}
 
ptr_glPathColorGenNV :: FunPtr a
ptr_glPathColorGenNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathColorGenNV"
 
glPathColorGenNV ::
                 GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glPathColorGenNV = dyn_glPathColorGenNV ptr_glPathColorGenNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathColorGenNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glIsPointInStrokePathNV #-}
 
ptr_glIsPointInStrokePathNV :: FunPtr a
ptr_glIsPointInStrokePathNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glIsPointInStrokePathNV"
 
glIsPointInStrokePathNV ::
                        GLuint -> GLfloat -> GLfloat -> IO GLboolean
glIsPointInStrokePathNV
  = dyn_glIsPointInStrokePathNV ptr_glIsPointInStrokePathNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsPointInStrokePathNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> GLfloat -> IO GLboolean)
 
{-# NOINLINE ptr_glIsPointInFillPathNV #-}
 
ptr_glIsPointInFillPathNV :: FunPtr a
ptr_glIsPointInFillPathNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glIsPointInFillPathNV"
 
glIsPointInFillPathNV ::
                      GLuint -> GLuint -> GLfloat -> GLfloat -> IO GLboolean
glIsPointInFillPathNV
  = dyn_glIsPointInFillPathNV ptr_glIsPointInFillPathNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsPointInFillPathNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLfloat -> GLfloat -> IO GLboolean)
 
{-# NOINLINE ptr_glIsPathNV #-}
 
ptr_glIsPathNV :: FunPtr a
ptr_glIsPathNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glIsPathNV"
 
glIsPathNV :: GLuint -> IO GLboolean
glIsPathNV = dyn_glIsPathNV ptr_glIsPathNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsPathNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glInterpolatePathsNV #-}
 
ptr_glInterpolatePathsNV :: FunPtr a
ptr_glInterpolatePathsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glInterpolatePathsNV"
 
glInterpolatePathsNV ::
                     GLuint -> GLuint -> GLuint -> GLfloat -> IO ()
glInterpolatePathsNV
  = dyn_glInterpolatePathsNV ptr_glInterpolatePathsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glInterpolatePathsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathTexGenivNV #-}
 
ptr_glGetPathTexGenivNV :: FunPtr a
ptr_glGetPathTexGenivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathTexGenivNV"
 
glGetPathTexGenivNV :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetPathTexGenivNV
  = dyn_glGetPathTexGenivNV ptr_glGetPathTexGenivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathTexGenivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetPathTexGenfvNV #-}
 
ptr_glGetPathTexGenfvNV :: FunPtr a
ptr_glGetPathTexGenfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathTexGenfvNV"
 
glGetPathTexGenfvNV :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetPathTexGenfvNV
  = dyn_glGetPathTexGenfvNV ptr_glGetPathTexGenfvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathTexGenfvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathSpacingNV #-}
 
ptr_glGetPathSpacingNV :: FunPtr a
ptr_glGetPathSpacingNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathSpacingNV"
 
glGetPathSpacingNV ::
                   GLenum ->
                     GLsizei ->
                       GLenum ->
                         Ptr a ->
                           GLuint -> GLfloat -> GLfloat -> GLenum -> Ptr GLfloat -> IO ()
glGetPathSpacingNV = dyn_glGetPathSpacingNV ptr_glGetPathSpacingNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathSpacingNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei ->
                      GLenum ->
                        Ptr a ->
                          GLuint -> GLfloat -> GLfloat -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathParameterivNV #-}
 
ptr_glGetPathParameterivNV :: FunPtr a
ptr_glGetPathParameterivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathParameterivNV"
 
glGetPathParameterivNV :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetPathParameterivNV
  = dyn_glGetPathParameterivNV ptr_glGetPathParameterivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathParameterivNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetPathParameterfvNV #-}
 
ptr_glGetPathParameterfvNV :: FunPtr a
ptr_glGetPathParameterfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathParameterfvNV"
 
glGetPathParameterfvNV :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetPathParameterfvNV
  = dyn_glGetPathParameterfvNV ptr_glGetPathParameterfvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathParameterfvNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathMetricsNV #-}
 
ptr_glGetPathMetricsNV :: FunPtr a
ptr_glGetPathMetricsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathMetricsNV"
 
glGetPathMetricsNV ::
                   GLbitfield ->
                     GLsizei ->
                       GLenum -> Ptr a -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glGetPathMetricsNV = dyn_glGetPathMetricsNV ptr_glGetPathMetricsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathMetricsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbitfield ->
                    GLsizei ->
                      GLenum -> Ptr a -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathMetricRangeNV #-}
 
ptr_glGetPathMetricRangeNV :: FunPtr a
ptr_glGetPathMetricRangeNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathMetricRangeNV"
 
glGetPathMetricRangeNV ::
                       GLbitfield -> GLuint -> GLsizei -> GLsizei -> Ptr GLfloat -> IO ()
glGetPathMetricRangeNV
  = dyn_glGetPathMetricRangeNV ptr_glGetPathMetricRangeNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathMetricRangeNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbitfield ->
                    GLuint -> GLsizei -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathLengthNV #-}
 
ptr_glGetPathLengthNV :: FunPtr a
ptr_glGetPathLengthNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathLengthNV"
 
glGetPathLengthNV :: GLuint -> GLsizei -> GLsizei -> IO GLfloat
glGetPathLengthNV = dyn_glGetPathLengthNV ptr_glGetPathLengthNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathLengthNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> GLsizei -> IO GLfloat)
 
{-# NOINLINE ptr_glGetPathDashArrayNV #-}
 
ptr_glGetPathDashArrayNV :: FunPtr a
ptr_glGetPathDashArrayNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathDashArrayNV"
 
glGetPathDashArrayNV :: GLuint -> Ptr GLfloat -> IO ()
glGetPathDashArrayNV
  = dyn_glGetPathDashArrayNV ptr_glGetPathDashArrayNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathDashArrayNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathCoordsNV #-}
 
ptr_glGetPathCoordsNV :: FunPtr a
ptr_glGetPathCoordsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathCoordsNV"
 
glGetPathCoordsNV :: GLuint -> Ptr GLfloat -> IO ()
glGetPathCoordsNV = dyn_glGetPathCoordsNV ptr_glGetPathCoordsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathCoordsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathCommandsNV #-}
 
ptr_glGetPathCommandsNV :: FunPtr a
ptr_glGetPathCommandsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathCommandsNV"
 
glGetPathCommandsNV :: GLuint -> Ptr GLubyte -> IO ()
glGetPathCommandsNV
  = dyn_glGetPathCommandsNV ptr_glGetPathCommandsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathCommandsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glGetPathColorGenivNV #-}
 
ptr_glGetPathColorGenivNV :: FunPtr a
ptr_glGetPathColorGenivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathColorGenivNV"
 
glGetPathColorGenivNV :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetPathColorGenivNV
  = dyn_glGetPathColorGenivNV ptr_glGetPathColorGenivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathColorGenivNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetPathColorGenfvNV #-}
 
ptr_glGetPathColorGenfvNV :: FunPtr a
ptr_glGetPathColorGenfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathColorGenfvNV"
 
glGetPathColorGenfvNV :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetPathColorGenfvNV
  = dyn_glGetPathColorGenfvNV ptr_glGetPathColorGenfvNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathColorGenfvNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGenPathsNV #-}
 
ptr_glGenPathsNV :: FunPtr a
ptr_glGenPathsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGenPathsNV"
 
glGenPathsNV :: GLsizei -> IO GLuint
glGenPathsNV = dyn_glGenPathsNV ptr_glGenPathsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenPathsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> IO GLuint)
 
{-# NOINLINE ptr_glDeletePathsNV #-}
 
ptr_glDeletePathsNV :: FunPtr a
ptr_glDeletePathsNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glDeletePathsNV"
 
glDeletePathsNV :: GLuint -> GLsizei -> IO ()
glDeletePathsNV = dyn_glDeletePathsNV ptr_glDeletePathsNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeletePathsNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCoverStrokePathNV #-}
 
ptr_glCoverStrokePathNV :: FunPtr a
ptr_glCoverStrokePathNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glCoverStrokePathNV"
 
glCoverStrokePathNV :: GLuint -> GLenum -> IO ()
glCoverStrokePathNV
  = dyn_glCoverStrokePathNV ptr_glCoverStrokePathNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glCoverStrokePathNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glCoverStrokePathInstancedNV #-}
 
ptr_glCoverStrokePathInstancedNV :: FunPtr a
ptr_glCoverStrokePathInstancedNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glCoverStrokePathInstancedNV"
 
glCoverStrokePathInstancedNV ::
                             GLsizei ->
                               GLenum ->
                                 Ptr a -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glCoverStrokePathInstancedNV
  = dyn_glCoverStrokePathInstancedNV ptr_glCoverStrokePathInstancedNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCoverStrokePathInstancedNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei ->
                    GLenum ->
                      Ptr a -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glCoverFillPathNV #-}
 
ptr_glCoverFillPathNV :: FunPtr a
ptr_glCoverFillPathNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glCoverFillPathNV"
 
glCoverFillPathNV :: GLuint -> GLenum -> IO ()
glCoverFillPathNV = dyn_glCoverFillPathNV ptr_glCoverFillPathNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glCoverFillPathNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glCoverFillPathInstancedNV #-}
 
ptr_glCoverFillPathInstancedNV :: FunPtr a
ptr_glCoverFillPathInstancedNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glCoverFillPathInstancedNV"
 
glCoverFillPathInstancedNV ::
                           GLsizei ->
                             GLenum ->
                               Ptr a -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glCoverFillPathInstancedNV
  = dyn_glCoverFillPathInstancedNV ptr_glCoverFillPathInstancedNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCoverFillPathInstancedNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei ->
                    GLenum ->
                      Ptr a -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glCopyPathNV #-}
 
ptr_glCopyPathNV :: FunPtr a
ptr_glCopyPathNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glCopyPathNV"
 
glCopyPathNV :: GLuint -> GLuint -> IO ()
glCopyPathNV = dyn_glCopyPathNV ptr_glCopyPathNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyPathNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO ())
 
gl_VERTICAL_LINE_TO_NV :: GLenum
gl_VERTICAL_LINE_TO_NV = 8
 
gl_UTF8_NV :: GLenum
gl_UTF8_NV = 37018
 
gl_UTF16_NV :: GLenum
gl_UTF16_NV = 37019
 
gl_USE_MISSING_GLYPH_NV :: GLenum
gl_USE_MISSING_GLYPH_NV = 37034
 
gl_TRIANGULAR_NV :: GLenum
gl_TRIANGULAR_NV = 37029
 
gl_TRANSPOSE_PROJECTIVE_3D_NV :: GLenum
gl_TRANSPOSE_PROJECTIVE_3D_NV = 37017
 
gl_TRANSPOSE_PROJECTIVE_2D_NV :: GLenum
gl_TRANSPOSE_PROJECTIVE_2D_NV = 37015
 
gl_TRANSPOSE_AFFINE_3D_NV :: GLenum
gl_TRANSPOSE_AFFINE_3D_NV = 37016
 
gl_TRANSPOSE_AFFINE_2D_NV :: GLenum
gl_TRANSPOSE_AFFINE_2D_NV = 37014
 
gl_TRANSLATE_Y_NV :: GLenum
gl_TRANSLATE_Y_NV = 37007
 
gl_TRANSLATE_X_NV :: GLenum
gl_TRANSLATE_X_NV = 37006
 
gl_TRANSLATE_3D_NV :: GLenum
gl_TRANSLATE_3D_NV = 37009
 
gl_TRANSLATE_2D_NV :: GLenum
gl_TRANSLATE_2D_NV = 37008
 
gl_SYSTEM_FONT_NAME_NV :: GLenum
gl_SYSTEM_FONT_NAME_NV = 36979
 
gl_STANDARD_FONT_NAME_NV :: GLenum
gl_STANDARD_FONT_NAME_NV = 36978
 
gl_SQUARE_NV :: GLenum
gl_SQUARE_NV = 37027
 
gl_SMOOTH_QUADRATIC_CURVE_TO_NV :: GLenum
gl_SMOOTH_QUADRATIC_CURVE_TO_NV = 14
 
gl_SMOOTH_CUBIC_CURVE_TO_NV :: GLenum
gl_SMOOTH_CUBIC_CURVE_TO_NV = 16
 
gl_SMALL_CW_ARC_TO_NV :: GLenum
gl_SMALL_CW_ARC_TO_NV = 20
 
gl_SMALL_CCW_ARC_TO_NV :: GLenum
gl_SMALL_CCW_ARC_TO_NV = 18
 
gl_SKIP_MISSING_GLYPH_NV :: GLenum
gl_SKIP_MISSING_GLYPH_NV = 37033
 
gl_ROUND_NV :: GLenum
gl_ROUND_NV = 37028
 
gl_RESTART_PATH_NV :: GLenum
gl_RESTART_PATH_NV = 240
 
gl_RELATIVE_VERTICAL_LINE_TO_NV :: GLenum
gl_RELATIVE_VERTICAL_LINE_TO_NV = 9
 
gl_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV :: GLenum
gl_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV = 15
 
gl_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV :: GLenum
gl_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV = 17
 
gl_RELATIVE_SMALL_CW_ARC_TO_NV :: GLenum
gl_RELATIVE_SMALL_CW_ARC_TO_NV = 21
 
gl_RELATIVE_SMALL_CCW_ARC_TO_NV :: GLenum
gl_RELATIVE_SMALL_CCW_ARC_TO_NV = 19
 
gl_RELATIVE_QUADRATIC_CURVE_TO_NV :: GLenum
gl_RELATIVE_QUADRATIC_CURVE_TO_NV = 11
 
gl_RELATIVE_MOVE_TO_NV :: GLenum
gl_RELATIVE_MOVE_TO_NV = 3
 
gl_RELATIVE_LINE_TO_NV :: GLenum
gl_RELATIVE_LINE_TO_NV = 5
 
gl_RELATIVE_LARGE_CW_ARC_TO_NV :: GLenum
gl_RELATIVE_LARGE_CW_ARC_TO_NV = 25
 
gl_RELATIVE_LARGE_CCW_ARC_TO_NV :: GLenum
gl_RELATIVE_LARGE_CCW_ARC_TO_NV = 23
 
gl_RELATIVE_HORIZONTAL_LINE_TO_NV :: GLenum
gl_RELATIVE_HORIZONTAL_LINE_TO_NV = 7
 
gl_RELATIVE_CUBIC_CURVE_TO_NV :: GLenum
gl_RELATIVE_CUBIC_CURVE_TO_NV = 13
 
gl_RELATIVE_ARC_TO_NV :: GLenum
gl_RELATIVE_ARC_TO_NV = 255
 
gl_RECT_NV :: GLenum
gl_RECT_NV = 246
 
gl_QUADRATIC_CURVE_TO_NV :: GLenum
gl_QUADRATIC_CURVE_TO_NV = 10
 
gl_PROJECTIVE_3D_NV :: GLenum
gl_PROJECTIVE_3D_NV = 37013
 
gl_PROJECTIVE_2D_NV :: GLenum
gl_PROJECTIVE_2D_NV = 37011
 
gl_PATH_TERMINAL_END_CAP_NV :: GLenum
gl_PATH_TERMINAL_END_CAP_NV = 36984
 
gl_PATH_TERMINAL_DASH_CAP_NV :: GLenum
gl_PATH_TERMINAL_DASH_CAP_NV = 36989
 
gl_PATH_STROKE_WIDTH_NV :: GLenum
gl_PATH_STROKE_WIDTH_NV = 36981
 
gl_PATH_STROKE_OVERSAMPLE_COUNT_NV :: GLenum
gl_PATH_STROKE_OVERSAMPLE_COUNT_NV = 36999
 
gl_PATH_STROKE_MASK_NV :: GLenum
gl_PATH_STROKE_MASK_NV = 36996
 
gl_PATH_STROKE_COVER_MODE_NV :: GLenum
gl_PATH_STROKE_COVER_MODE_NV = 36995
 
gl_PATH_STROKE_BOUND_NV :: GLenum
gl_PATH_STROKE_BOUND_NV = 36998
 
gl_PATH_STROKE_BOUNDING_BOX_NV :: GLenum
gl_PATH_STROKE_BOUNDING_BOX_NV = 37026
 
gl_PATH_STENCIL_VALUE_MASK_NV :: GLenum
gl_PATH_STENCIL_VALUE_MASK_NV = 37049
 
gl_PATH_STENCIL_REF_NV :: GLenum
gl_PATH_STENCIL_REF_NV = 37048
 
gl_PATH_STENCIL_FUNC_NV :: GLenum
gl_PATH_STENCIL_FUNC_NV = 37047
 
gl_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV :: GLenum
gl_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV = 37054
 
gl_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV :: GLenum
gl_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV = 37053
 
gl_PATH_SAMPLE_QUALITY_NV :: GLenum
gl_PATH_SAMPLE_QUALITY_NV = 36997
 
gl_PATH_OBJECT_BOUNDING_BOX_NV :: GLenum
gl_PATH_OBJECT_BOUNDING_BOX_NV = 37002
 
gl_PATH_MITER_LIMIT_NV :: GLenum
gl_PATH_MITER_LIMIT_NV = 36986
 
gl_PATH_JOIN_STYLE_NV :: GLenum
gl_PATH_JOIN_STYLE_NV = 36985
 
gl_PATH_INITIAL_END_CAP_NV :: GLenum
gl_PATH_INITIAL_END_CAP_NV = 36983
 
gl_PATH_INITIAL_DASH_CAP_NV :: GLenum
gl_PATH_INITIAL_DASH_CAP_NV = 36988
 
gl_PATH_GEN_MODE_NV :: GLenum
gl_PATH_GEN_MODE_NV = 37040
 
gl_PATH_GEN_COMPONENTS_NV :: GLenum
gl_PATH_GEN_COMPONENTS_NV = 37043
 
gl_PATH_GEN_COLOR_FORMAT_NV :: GLenum
gl_PATH_GEN_COLOR_FORMAT_NV = 37042
 
gl_PATH_GEN_COEFF_NV :: GLenum
gl_PATH_GEN_COEFF_NV = 37041
 
gl_PATH_FORMAT_SVG_NV :: GLenum
gl_PATH_FORMAT_SVG_NV = 36976
 
gl_PATH_FORMAT_PS_NV :: GLenum
gl_PATH_FORMAT_PS_NV = 36977
 
gl_PATH_FOG_GEN_MODE_NV :: GLenum
gl_PATH_FOG_GEN_MODE_NV = 37036
 
gl_PATH_FILL_MODE_NV :: GLenum
gl_PATH_FILL_MODE_NV = 36992
 
gl_PATH_FILL_MASK_NV :: GLenum
gl_PATH_FILL_MASK_NV = 36993
 
gl_PATH_FILL_COVER_MODE_NV :: GLenum
gl_PATH_FILL_COVER_MODE_NV = 36994
 
gl_PATH_FILL_BOUNDING_BOX_NV :: GLenum
gl_PATH_FILL_BOUNDING_BOX_NV = 37025
 
gl_PATH_ERROR_POSITION_NV :: GLenum
gl_PATH_ERROR_POSITION_NV = 37035
 
gl_PATH_END_CAPS_NV :: GLenum
gl_PATH_END_CAPS_NV = 36982
 
gl_PATH_DASH_OFFSET_RESET_NV :: GLenum
gl_PATH_DASH_OFFSET_RESET_NV = 37044
 
gl_PATH_DASH_OFFSET_NV :: GLenum
gl_PATH_DASH_OFFSET_NV = 36990
 
gl_PATH_DASH_CAPS_NV :: GLenum
gl_PATH_DASH_CAPS_NV = 36987
 
gl_PATH_DASH_ARRAY_COUNT_NV :: GLenum
gl_PATH_DASH_ARRAY_COUNT_NV = 37023
 
gl_PATH_COVER_DEPTH_FUNC_NV :: GLenum
gl_PATH_COVER_DEPTH_FUNC_NV = 37055
 
gl_PATH_COORD_COUNT_NV :: GLenum
gl_PATH_COORD_COUNT_NV = 37022
 
gl_PATH_COMPUTED_LENGTH_NV :: GLenum
gl_PATH_COMPUTED_LENGTH_NV = 37024
 
gl_PATH_COMMAND_COUNT_NV :: GLenum
gl_PATH_COMMAND_COUNT_NV = 37021
 
gl_PATH_CLIENT_LENGTH_NV :: GLenum
gl_PATH_CLIENT_LENGTH_NV = 36991
 
gl_MULTI_HULLS_NV :: GLenum
gl_MULTI_HULLS_NV = 37004
 
gl_MOVE_TO_RESETS_NV :: GLenum
gl_MOVE_TO_RESETS_NV = 37045
 
gl_MOVE_TO_NV :: GLenum
gl_MOVE_TO_NV = 2
 
gl_MOVE_TO_CONTINUES_NV :: GLenum
gl_MOVE_TO_CONTINUES_NV = 37046
 
gl_MITER_TRUNCATE_NV :: GLenum
gl_MITER_TRUNCATE_NV = 37032
 
gl_MITER_REVERT_NV :: GLenum
gl_MITER_REVERT_NV = 37031
 
gl_LINE_TO_NV :: GLenum
gl_LINE_TO_NV = 4
 
gl_LARGE_CW_ARC_TO_NV :: GLenum
gl_LARGE_CW_ARC_TO_NV = 24
 
gl_LARGE_CCW_ARC_TO_NV :: GLenum
gl_LARGE_CCW_ARC_TO_NV = 22
 
gl_ITALIC_BIT_NV :: GLbitfield
gl_ITALIC_BIT_NV = 2
 
gl_HORIZONTAL_LINE_TO_NV :: GLenum
gl_HORIZONTAL_LINE_TO_NV = 6
 
gl_GLYPH_WIDTH_BIT_NV :: GLbitfield
gl_GLYPH_WIDTH_BIT_NV = 1
 
gl_GLYPH_VERTICAL_BEARING_Y_BIT_NV :: GLbitfield
gl_GLYPH_VERTICAL_BEARING_Y_BIT_NV = 64
 
gl_GLYPH_VERTICAL_BEARING_X_BIT_NV :: GLbitfield
gl_GLYPH_VERTICAL_BEARING_X_BIT_NV = 32
 
gl_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV :: GLbitfield
gl_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV = 128
 
gl_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV :: GLbitfield
gl_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV = 8
 
gl_GLYPH_HORIZONTAL_BEARING_X_BIT_NV :: GLbitfield
gl_GLYPH_HORIZONTAL_BEARING_X_BIT_NV = 4
 
gl_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV :: GLbitfield
gl_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV = 16
 
gl_GLYPH_HEIGHT_BIT_NV :: GLbitfield
gl_GLYPH_HEIGHT_BIT_NV = 2
 
gl_GLYPH_HAS_KERNING_NV :: GLenum
gl_GLYPH_HAS_KERNING_NV = 256
 
gl_FONT_Y_MIN_BOUNDS_NV :: GLenum
gl_FONT_Y_MIN_BOUNDS_NV = 131072
 
gl_FONT_Y_MAX_BOUNDS_NV :: GLenum
gl_FONT_Y_MAX_BOUNDS_NV = 524288
 
gl_FONT_X_MIN_BOUNDS_NV :: GLenum
gl_FONT_X_MIN_BOUNDS_NV = 65536
 
gl_FONT_X_MAX_BOUNDS_NV :: GLenum
gl_FONT_X_MAX_BOUNDS_NV = 262144
 
gl_FONT_UNITS_PER_EM_NV :: GLenum
gl_FONT_UNITS_PER_EM_NV = 1048576
 
gl_FONT_UNDERLINE_THICKNESS_NV :: GLenum
gl_FONT_UNDERLINE_THICKNESS_NV = 134217728
 
gl_FONT_UNDERLINE_POSITION_NV :: GLenum
gl_FONT_UNDERLINE_POSITION_NV = 67108864
 
gl_FONT_MAX_ADVANCE_WIDTH_NV :: GLenum
gl_FONT_MAX_ADVANCE_WIDTH_NV = 16777216
 
gl_FONT_MAX_ADVANCE_HEIGHT_NV :: GLenum
gl_FONT_MAX_ADVANCE_HEIGHT_NV = 33554432
 
gl_FONT_HEIGHT_NV :: GLenum
gl_FONT_HEIGHT_NV = 8388608
 
gl_FONT_HAS_KERNING_NV :: GLenum
gl_FONT_HAS_KERNING_NV = 268435456
 
gl_FONT_DESCENDER_NV :: GLenum
gl_FONT_DESCENDER_NV = 4194304
 
gl_FONT_ASCENDER_NV :: GLenum
gl_FONT_ASCENDER_NV = 2097152
 
gl_FIRST_TO_REST_NV :: GLenum
gl_FIRST_TO_REST_NV = 37039
 
gl_FILE_NAME_NV :: GLenum
gl_FILE_NAME_NV = 36980
 
gl_DUP_LAST_CUBIC_CURVE_TO_NV :: GLenum
gl_DUP_LAST_CUBIC_CURVE_TO_NV = 244
 
gl_DUP_FIRST_CUBIC_CURVE_TO_NV :: GLenum
gl_DUP_FIRST_CUBIC_CURVE_TO_NV = 242
 
gl_CUBIC_CURVE_TO_NV :: GLenum
gl_CUBIC_CURVE_TO_NV = 12
 
gl_COUNT_UP_NV :: GLenum
gl_COUNT_UP_NV = 37000
 
gl_COUNT_DOWN_NV :: GLenum
gl_COUNT_DOWN_NV = 37001
 
gl_CONVEX_HULL_NV :: GLenum
gl_CONVEX_HULL_NV = 37003
 
gl_CLOSE_PATH_NV :: GLenum
gl_CLOSE_PATH_NV = 0
 
gl_CIRCULAR_TANGENT_ARC_TO_NV :: GLenum
gl_CIRCULAR_TANGENT_ARC_TO_NV = 252
 
gl_CIRCULAR_CW_ARC_TO_NV :: GLenum
gl_CIRCULAR_CW_ARC_TO_NV = 250
 
gl_CIRCULAR_CCW_ARC_TO_NV :: GLenum
gl_CIRCULAR_CCW_ARC_TO_NV = 248
 
gl_BOUNDING_BOX_OF_BOUNDING_BOXES_NV :: GLenum
gl_BOUNDING_BOX_OF_BOUNDING_BOXES_NV = 37020
 
gl_BOUNDING_BOX_NV :: GLenum
gl_BOUNDING_BOX_NV = 37005
 
gl_BOLD_BIT_NV :: GLbitfield
gl_BOLD_BIT_NV = 1
 
gl_BEVEL_NV :: GLenum
gl_BEVEL_NV = 37030
 
gl_ARC_TO_NV :: GLenum
gl_ARC_TO_NV = 254
 
gl_AFFINE_3D_NV :: GLenum
gl_AFFINE_3D_NV = 37012
 
gl_AFFINE_2D_NV :: GLenum
gl_AFFINE_2D_NV = 37010
 
gl_ADJACENT_PAIRS_NV :: GLenum
gl_ADJACENT_PAIRS_NV = 37038
 
gl_ACCUM_ADJACENT_PAIRS_NV :: GLenum
gl_ACCUM_ADJACENT_PAIRS_NV = 37037