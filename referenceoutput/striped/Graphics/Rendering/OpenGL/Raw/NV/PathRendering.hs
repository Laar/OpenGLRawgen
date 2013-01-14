{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.PathRendering
       (glWeightPaths, glTransformPath, glStencilStrokePath,
        glStencilStrokePathInstanced, glStencilFillPath,
        glStencilFillPathInstanced, glPointAlongPath, glPathTexGen,
        glPathSubCoords, glPathSubCommands, glPathString,
        glPathStencilFunc, glPathStencilDepthOffset, glPathParameteriv,
        glPathParameteri, glPathParameterfv, glPathParameterf,
        glPathGlyphs, glPathGlyphRange, glPathFogGen, glPathDashArray,
        glPathCoverDepthFunc, glPathCoords, glPathCommands, glPathColorGen,
        glIsPointInStrokePath, glIsPointInFillPath, glIsPath,
        glInterpolatePaths, glGetPathTexGeniv, glGetPathTexGenfv,
        glGetPathSpacing, glGetPathParameteriv, glGetPathParameterfv,
        glGetPathMetrics, glGetPathMetricRange, glGetPathLength,
        glGetPathDashArray, glGetPathCoords, glGetPathCommands,
        glGetPathColorGeniv, glGetPathColorGenfv, glGenPaths,
        glDeletePaths, glCoverStrokePath, glCoverStrokePathInstanced,
        glCoverFillPath, glCoverFillPathInstanced, glCopyPath,
        gl_VERTICAL_LINE_TO, gl_UTF8, gl_UTF16, gl_USE_MISSING_GLYPH,
        gl_TRIANGULAR, gl_TRANSPOSE_PROJECTIVE_3D,
        gl_TRANSPOSE_PROJECTIVE_2D, gl_TRANSPOSE_AFFINE_3D,
        gl_TRANSPOSE_AFFINE_2D, gl_TRANSLATE_Y, gl_TRANSLATE_X,
        gl_TRANSLATE_3D, gl_TRANSLATE_2D, gl_SYSTEM_FONT_NAME,
        gl_STANDARD_FONT_NAME, gl_SQUARE, gl_SMOOTH_QUADRATIC_CURVE_TO,
        gl_SMOOTH_CUBIC_CURVE_TO, gl_SMALL_CW_ARC_TO, gl_SMALL_CCW_ARC_TO,
        gl_SKIP_MISSING_GLYPH, gl_ROUND, gl_RESTART_PATH,
        gl_RELATIVE_VERTICAL_LINE_TO,
        gl_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO,
        gl_RELATIVE_SMOOTH_CUBIC_CURVE_TO, gl_RELATIVE_SMALL_CW_ARC_TO,
        gl_RELATIVE_SMALL_CCW_ARC_TO, gl_RELATIVE_QUADRATIC_CURVE_TO,
        gl_RELATIVE_MOVE_TO, gl_RELATIVE_LINE_TO,
        gl_RELATIVE_LARGE_CW_ARC_TO, gl_RELATIVE_LARGE_CCW_ARC_TO,
        gl_RELATIVE_HORIZONTAL_LINE_TO, gl_RELATIVE_CUBIC_CURVE_TO,
        gl_RELATIVE_ARC_TO, gl_RECT, gl_QUADRATIC_CURVE_TO,
        gl_PROJECTIVE_3D, gl_PROJECTIVE_2D, gl_PATH_TERMINAL_END_CAP,
        gl_PATH_TERMINAL_DASH_CAP, gl_PATH_STROKE_WIDTH,
        gl_PATH_STROKE_OVERSAMPLE_COUNT, gl_PATH_STROKE_MASK,
        gl_PATH_STROKE_COVER_MODE, gl_PATH_STROKE_BOUND,
        gl_PATH_STROKE_BOUNDING_BOX, gl_PATH_STENCIL_VALUE_MASK,
        gl_PATH_STENCIL_REF, gl_PATH_STENCIL_FUNC,
        gl_PATH_STENCIL_DEPTH_OFFSET_UNITS,
        gl_PATH_STENCIL_DEPTH_OFFSET_FACTOR, gl_PATH_SAMPLE_QUALITY,
        gl_PATH_OBJECT_BOUNDING_BOX, gl_PATH_MITER_LIMIT,
        gl_PATH_JOIN_STYLE, gl_PATH_INITIAL_END_CAP,
        gl_PATH_INITIAL_DASH_CAP, gl_PATH_GEN_MODE, gl_PATH_GEN_COMPONENTS,
        gl_PATH_GEN_COLOR_FORMAT, gl_PATH_GEN_COEFF, gl_PATH_FORMAT_SVG,
        gl_PATH_FORMAT_PS, gl_PATH_FOG_GEN_MODE, gl_PATH_FILL_MODE,
        gl_PATH_FILL_MASK, gl_PATH_FILL_COVER_MODE,
        gl_PATH_FILL_BOUNDING_BOX, gl_PATH_ERROR_POSITION,
        gl_PATH_END_CAPS, gl_PATH_DASH_OFFSET_RESET, gl_PATH_DASH_OFFSET,
        gl_PATH_DASH_CAPS, gl_PATH_DASH_ARRAY_COUNT,
        gl_PATH_COVER_DEPTH_FUNC, gl_PATH_COORD_COUNT,
        gl_PATH_COMPUTED_LENGTH, gl_PATH_COMMAND_COUNT,
        gl_PATH_CLIENT_LENGTH, gl_MULTI_HULLS, gl_MOVE_TO_RESETS,
        gl_MOVE_TO, gl_MOVE_TO_CONTINUES, gl_MITER_TRUNCATE,
        gl_MITER_REVERT, gl_LINE_TO, gl_LARGE_CW_ARC_TO,
        gl_LARGE_CCW_ARC_TO, gl_ITALIC_BIT, gl_HORIZONTAL_LINE_TO,
        gl_GLYPH_WIDTH_BIT, gl_GLYPH_VERTICAL_BEARING_Y_BIT,
        gl_GLYPH_VERTICAL_BEARING_X_BIT,
        gl_GLYPH_VERTICAL_BEARING_ADVANCE_BIT,
        gl_GLYPH_HORIZONTAL_BEARING_Y_BIT,
        gl_GLYPH_HORIZONTAL_BEARING_X_BIT,
        gl_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT, gl_GLYPH_HEIGHT_BIT,
        gl_GLYPH_HAS_KERNING, gl_FONT_Y_MIN_BOUNDS, gl_FONT_Y_MAX_BOUNDS,
        gl_FONT_X_MIN_BOUNDS, gl_FONT_X_MAX_BOUNDS, gl_FONT_UNITS_PER_EM,
        gl_FONT_UNDERLINE_THICKNESS, gl_FONT_UNDERLINE_POSITION,
        gl_FONT_MAX_ADVANCE_WIDTH, gl_FONT_MAX_ADVANCE_HEIGHT,
        gl_FONT_HEIGHT, gl_FONT_HAS_KERNING, gl_FONT_DESCENDER,
        gl_FONT_ASCENDER, gl_FIRST_TO_REST, gl_FILE_NAME,
        gl_DUP_LAST_CUBIC_CURVE_TO, gl_DUP_FIRST_CUBIC_CURVE_TO,
        gl_CUBIC_CURVE_TO, gl_COUNT_UP, gl_COUNT_DOWN, gl_CONVEX_HULL,
        gl_CLOSE_PATH, gl_CIRCULAR_TANGENT_ARC_TO, gl_CIRCULAR_CW_ARC_TO,
        gl_CIRCULAR_CCW_ARC_TO, gl_BOUNDING_BOX_OF_BOUNDING_BOXES,
        gl_BOUNDING_BOX, gl_BOLD_BIT, gl_BEVEL, gl_ARC_TO, gl_AFFINE_3D,
        gl_AFFINE_2D, gl_ADJACENT_PAIRS, gl_ACCUM_ADJACENT_PAIRS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glWeightPaths #-}
 
ptr_glWeightPaths :: FunPtr a
ptr_glWeightPaths
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glWeightPathsNV"
 
glWeightPaths ::
              GLuint -> GLsizei -> Ptr GLuint -> Ptr GLfloat -> IO ()
glWeightPaths = dyn_glWeightPaths ptr_glWeightPaths
 
foreign import CALLCONV unsafe "dynamic" dyn_glWeightPaths ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glTransformPath #-}
 
ptr_glTransformPath :: FunPtr a
ptr_glTransformPath
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glTransformPathNV"
 
glTransformPath ::
                GLuint -> GLuint -> GLenum -> Ptr GLfloat -> IO ()
glTransformPath = dyn_glTransformPath ptr_glTransformPath
 
foreign import CALLCONV unsafe "dynamic" dyn_glTransformPath ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glStencilStrokePath #-}
 
ptr_glStencilStrokePath :: FunPtr a
ptr_glStencilStrokePath
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glStencilStrokePathNV"
 
glStencilStrokePath :: GLuint -> GLint -> GLuint -> IO ()
glStencilStrokePath
  = dyn_glStencilStrokePath ptr_glStencilStrokePath
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilStrokePath ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glStencilStrokePathInstanced #-}
 
ptr_glStencilStrokePathInstanced :: FunPtr a
ptr_glStencilStrokePathInstanced
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glStencilStrokePathInstancedNV"
 
glStencilStrokePathInstanced ::
                             GLsizei ->
                               GLenum ->
                                 Ptr a ->
                                   GLuint -> GLint -> GLuint -> GLenum -> Ptr GLfloat -> IO ()
glStencilStrokePathInstanced
  = dyn_glStencilStrokePathInstanced ptr_glStencilStrokePathInstanced
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glStencilStrokePathInstanced ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei ->
                    GLenum ->
                      Ptr a ->
                        GLuint -> GLint -> GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glStencilFillPath #-}
 
ptr_glStencilFillPath :: FunPtr a
ptr_glStencilFillPath
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glStencilFillPathNV"
 
glStencilFillPath :: GLuint -> GLenum -> GLuint -> IO ()
glStencilFillPath = dyn_glStencilFillPath ptr_glStencilFillPath
 
foreign import CALLCONV unsafe "dynamic" dyn_glStencilFillPath ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glStencilFillPathInstanced #-}
 
ptr_glStencilFillPathInstanced :: FunPtr a
ptr_glStencilFillPathInstanced
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glStencilFillPathInstancedNV"
 
glStencilFillPathInstanced ::
                           GLsizei ->
                             GLenum ->
                               Ptr a ->
                                 GLuint -> GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ()
glStencilFillPathInstanced
  = dyn_glStencilFillPathInstanced ptr_glStencilFillPathInstanced
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glStencilFillPathInstanced ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei ->
                    GLenum ->
                      Ptr a ->
                        GLuint -> GLenum -> GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPointAlongPath #-}
 
ptr_glPointAlongPath :: FunPtr a
ptr_glPointAlongPath
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPointAlongPathNV"
 
glPointAlongPath ::
                 GLuint ->
                   GLsizei ->
                     GLsizei ->
                       GLfloat ->
                         Ptr GLfloat ->
                           Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> IO GLboolean
glPointAlongPath = dyn_glPointAlongPath ptr_glPointAlongPath
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointAlongPath ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei ->
                      GLsizei ->
                        GLfloat ->
                          Ptr GLfloat ->
                            Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> IO GLboolean)
 
{-# NOINLINE ptr_glPathTexGen #-}
 
ptr_glPathTexGen :: FunPtr a
ptr_glPathTexGen
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathTexGenNV"
 
glPathTexGen :: GLenum -> GLenum -> GLint -> Ptr GLfloat -> IO ()
glPathTexGen = dyn_glPathTexGen ptr_glPathTexGen
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathTexGen ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPathSubCoords #-}
 
ptr_glPathSubCoords :: FunPtr a
ptr_glPathSubCoords
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathSubCoordsNV"
 
glPathSubCoords ::
                GLuint -> GLsizei -> GLsizei -> GLenum -> Ptr a -> IO ()
glPathSubCoords = dyn_glPathSubCoords ptr_glPathSubCoords
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathSubCoords ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> GLsizei -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glPathSubCommands #-}
 
ptr_glPathSubCommands :: FunPtr a
ptr_glPathSubCommands
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathSubCommandsNV"
 
glPathSubCommands ::
                  GLuint ->
                    GLsizei ->
                      GLsizei ->
                        GLsizei -> Ptr GLubyte -> GLsizei -> GLenum -> Ptr a -> IO ()
glPathSubCommands = dyn_glPathSubCommands ptr_glPathSubCommands
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathSubCommands ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei ->
                      GLsizei ->
                        GLsizei -> Ptr GLubyte -> GLsizei -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glPathString #-}
 
ptr_glPathString :: FunPtr a
ptr_glPathString
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathStringNV"
 
glPathString :: GLuint -> GLenum -> GLsizei -> Ptr a -> IO ()
glPathString = dyn_glPathString ptr_glPathString
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathString ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glPathStencilFunc #-}
 
ptr_glPathStencilFunc :: FunPtr a
ptr_glPathStencilFunc
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathStencilFuncNV"
 
glPathStencilFunc :: GLenum -> GLint -> GLuint -> IO ()
glPathStencilFunc = dyn_glPathStencilFunc ptr_glPathStencilFunc
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathStencilFunc ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glPathStencilDepthOffset #-}
 
ptr_glPathStencilDepthOffset :: FunPtr a
ptr_glPathStencilDepthOffset
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathStencilDepthOffsetNV"
 
glPathStencilDepthOffset :: GLfloat -> GLfloat -> IO ()
glPathStencilDepthOffset
  = dyn_glPathStencilDepthOffset ptr_glPathStencilDepthOffset
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPathStencilDepthOffset ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glPathParameteriv #-}
 
ptr_glPathParameteriv :: FunPtr a
ptr_glPathParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathParameterivNV"
 
glPathParameteriv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glPathParameteriv = dyn_glPathParameteriv ptr_glPathParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glPathParameteri #-}
 
ptr_glPathParameteri :: FunPtr a
ptr_glPathParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathParameteriNV"
 
glPathParameteri :: GLuint -> GLenum -> GLint -> IO ()
glPathParameteri = dyn_glPathParameteri ptr_glPathParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathParameteri ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glPathParameterfv #-}
 
ptr_glPathParameterfv :: FunPtr a
ptr_glPathParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathParameterfvNV"
 
glPathParameterfv :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glPathParameterfv = dyn_glPathParameterfv ptr_glPathParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPathParameterf #-}
 
ptr_glPathParameterf :: FunPtr a
ptr_glPathParameterf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathParameterfNV"
 
glPathParameterf :: GLuint -> GLenum -> GLfloat -> IO ()
glPathParameterf = dyn_glPathParameterf ptr_glPathParameterf
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathParameterf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glPathGlyphs #-}
 
ptr_glPathGlyphs :: FunPtr a
ptr_glPathGlyphs
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathGlyphsNV"
 
glPathGlyphs ::
             GLuint ->
               GLenum ->
                 Ptr a ->
                   GLbitfield ->
                     GLsizei -> GLenum -> Ptr a -> GLenum -> GLuint -> GLfloat -> IO ()
glPathGlyphs = dyn_glPathGlyphs ptr_glPathGlyphs
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathGlyphs ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      Ptr a ->
                        GLbitfield ->
                          GLsizei -> GLenum -> Ptr a -> GLenum -> GLuint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glPathGlyphRange #-}
 
ptr_glPathGlyphRange :: FunPtr a
ptr_glPathGlyphRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathGlyphRangeNV"
 
glPathGlyphRange ::
                 GLuint ->
                   GLenum ->
                     Ptr a ->
                       GLbitfield ->
                         GLuint -> GLsizei -> GLenum -> GLuint -> GLfloat -> IO ()
glPathGlyphRange = dyn_glPathGlyphRange ptr_glPathGlyphRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathGlyphRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLenum ->
                      Ptr a ->
                        GLbitfield ->
                          GLuint -> GLsizei -> GLenum -> GLuint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glPathFogGen #-}
 
ptr_glPathFogGen :: FunPtr a
ptr_glPathFogGen
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathFogGenNV"
 
glPathFogGen :: GLenum -> IO ()
glPathFogGen = dyn_glPathFogGen ptr_glPathFogGen
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathFogGen ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glPathDashArray #-}
 
ptr_glPathDashArray :: FunPtr a
ptr_glPathDashArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathDashArrayNV"
 
glPathDashArray :: GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glPathDashArray = dyn_glPathDashArray ptr_glPathDashArray
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathDashArray ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPathCoverDepthFunc #-}
 
ptr_glPathCoverDepthFunc :: FunPtr a
ptr_glPathCoverDepthFunc
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathCoverDepthFuncNV"
 
glPathCoverDepthFunc :: GLenum -> IO ()
glPathCoverDepthFunc
  = dyn_glPathCoverDepthFunc ptr_glPathCoverDepthFunc
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathCoverDepthFunc ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glPathCoords #-}
 
ptr_glPathCoords :: FunPtr a
ptr_glPathCoords
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathCoordsNV"
 
glPathCoords :: GLuint -> GLsizei -> GLenum -> Ptr a -> IO ()
glPathCoords = dyn_glPathCoords ptr_glPathCoords
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathCoords ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glPathCommands #-}
 
ptr_glPathCommands :: FunPtr a
ptr_glPathCommands
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathCommandsNV"
 
glPathCommands ::
               GLuint ->
                 GLsizei -> Ptr GLubyte -> GLsizei -> GLenum -> Ptr a -> IO ()
glPathCommands = dyn_glPathCommands ptr_glPathCommands
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathCommands ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLsizei -> Ptr GLubyte -> GLsizei -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glPathColorGen #-}
 
ptr_glPathColorGen :: FunPtr a
ptr_glPathColorGen
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glPathColorGenNV"
 
glPathColorGen ::
               GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glPathColorGen = dyn_glPathColorGen ptr_glPathColorGen
 
foreign import CALLCONV unsafe "dynamic" dyn_glPathColorGen ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glIsPointInStrokePath #-}
 
ptr_glIsPointInStrokePath :: FunPtr a
ptr_glIsPointInStrokePath
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glIsPointInStrokePathNV"
 
glIsPointInStrokePath ::
                      GLuint -> GLfloat -> GLfloat -> IO GLboolean
glIsPointInStrokePath
  = dyn_glIsPointInStrokePath ptr_glIsPointInStrokePath
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsPointInStrokePath
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLfloat -> GLfloat -> IO GLboolean)
 
{-# NOINLINE ptr_glIsPointInFillPath #-}
 
ptr_glIsPointInFillPath :: FunPtr a
ptr_glIsPointInFillPath
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glIsPointInFillPathNV"
 
glIsPointInFillPath ::
                    GLuint -> GLuint -> GLfloat -> GLfloat -> IO GLboolean
glIsPointInFillPath
  = dyn_glIsPointInFillPath ptr_glIsPointInFillPath
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsPointInFillPath ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLfloat -> GLfloat -> IO GLboolean)
 
{-# NOINLINE ptr_glIsPath #-}
 
ptr_glIsPath :: FunPtr a
ptr_glIsPath
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glIsPathNV"
 
glIsPath :: GLuint -> IO GLboolean
glIsPath = dyn_glIsPath ptr_glIsPath
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsPath ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glInterpolatePaths #-}
 
ptr_glInterpolatePaths :: FunPtr a
ptr_glInterpolatePaths
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glInterpolatePathsNV"
 
glInterpolatePaths ::
                   GLuint -> GLuint -> GLuint -> GLfloat -> IO ()
glInterpolatePaths = dyn_glInterpolatePaths ptr_glInterpolatePaths
 
foreign import CALLCONV unsafe "dynamic" dyn_glInterpolatePaths ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLuint -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathTexGeniv #-}
 
ptr_glGetPathTexGeniv :: FunPtr a
ptr_glGetPathTexGeniv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathTexGenivNV"
 
glGetPathTexGeniv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetPathTexGeniv = dyn_glGetPathTexGeniv ptr_glGetPathTexGeniv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathTexGeniv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetPathTexGenfv #-}
 
ptr_glGetPathTexGenfv :: FunPtr a
ptr_glGetPathTexGenfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathTexGenfvNV"
 
glGetPathTexGenfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetPathTexGenfv = dyn_glGetPathTexGenfv ptr_glGetPathTexGenfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathTexGenfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathSpacing #-}
 
ptr_glGetPathSpacing :: FunPtr a
ptr_glGetPathSpacing
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathSpacingNV"
 
glGetPathSpacing ::
                 GLenum ->
                   GLsizei ->
                     GLenum ->
                       Ptr a ->
                         GLuint -> GLfloat -> GLfloat -> GLenum -> Ptr GLfloat -> IO ()
glGetPathSpacing = dyn_glGetPathSpacing ptr_glGetPathSpacing
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathSpacing ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLsizei ->
                      GLenum ->
                        Ptr a ->
                          GLuint -> GLfloat -> GLfloat -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathParameteriv #-}
 
ptr_glGetPathParameteriv :: FunPtr a
ptr_glGetPathParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathParameterivNV"
 
glGetPathParameteriv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetPathParameteriv
  = dyn_glGetPathParameteriv ptr_glGetPathParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetPathParameterfv #-}
 
ptr_glGetPathParameterfv :: FunPtr a
ptr_glGetPathParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathParameterfvNV"
 
glGetPathParameterfv :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetPathParameterfv
  = dyn_glGetPathParameterfv ptr_glGetPathParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathMetrics #-}
 
ptr_glGetPathMetrics :: FunPtr a
ptr_glGetPathMetrics
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathMetricsNV"
 
glGetPathMetrics ::
                 GLbitfield ->
                   GLsizei ->
                     GLenum -> Ptr a -> GLuint -> GLsizei -> Ptr GLfloat -> IO ()
glGetPathMetrics = dyn_glGetPathMetrics ptr_glGetPathMetrics
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathMetrics ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbitfield ->
                    GLsizei ->
                      GLenum -> Ptr a -> GLuint -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathMetricRange #-}
 
ptr_glGetPathMetricRange :: FunPtr a
ptr_glGetPathMetricRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathMetricRangeNV"
 
glGetPathMetricRange ::
                     GLbitfield -> GLuint -> GLsizei -> GLsizei -> Ptr GLfloat -> IO ()
glGetPathMetricRange
  = dyn_glGetPathMetricRange ptr_glGetPathMetricRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathMetricRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLbitfield ->
                    GLuint -> GLsizei -> GLsizei -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathLength #-}
 
ptr_glGetPathLength :: FunPtr a
ptr_glGetPathLength
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathLengthNV"
 
glGetPathLength :: GLuint -> GLsizei -> GLsizei -> IO GLfloat
glGetPathLength = dyn_glGetPathLength ptr_glGetPathLength
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathLength ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> GLsizei -> IO GLfloat)
 
{-# NOINLINE ptr_glGetPathDashArray #-}
 
ptr_glGetPathDashArray :: FunPtr a
ptr_glGetPathDashArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathDashArrayNV"
 
glGetPathDashArray :: GLuint -> Ptr GLfloat -> IO ()
glGetPathDashArray = dyn_glGetPathDashArray ptr_glGetPathDashArray
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathDashArray ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathCoords #-}
 
ptr_glGetPathCoords :: FunPtr a
ptr_glGetPathCoords
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathCoordsNV"
 
glGetPathCoords :: GLuint -> Ptr GLfloat -> IO ()
glGetPathCoords = dyn_glGetPathCoords ptr_glGetPathCoords
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathCoords ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPathCommands #-}
 
ptr_glGetPathCommands :: FunPtr a
ptr_glGetPathCommands
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathCommandsNV"
 
glGetPathCommands :: GLuint -> Ptr GLubyte -> IO ()
glGetPathCommands = dyn_glGetPathCommands ptr_glGetPathCommands
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathCommands ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> Ptr GLubyte -> IO ())
 
{-# NOINLINE ptr_glGetPathColorGeniv #-}
 
ptr_glGetPathColorGeniv :: FunPtr a
ptr_glGetPathColorGeniv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathColorGenivNV"
 
glGetPathColorGeniv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetPathColorGeniv
  = dyn_glGetPathColorGeniv ptr_glGetPathColorGeniv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathColorGeniv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetPathColorGenfv #-}
 
ptr_glGetPathColorGenfv :: FunPtr a
ptr_glGetPathColorGenfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGetPathColorGenfvNV"
 
glGetPathColorGenfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetPathColorGenfv
  = dyn_glGetPathColorGenfv ptr_glGetPathColorGenfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPathColorGenfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGenPaths #-}
 
ptr_glGenPaths :: FunPtr a
ptr_glGenPaths
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glGenPathsNV"
 
glGenPaths :: GLsizei -> IO GLuint
glGenPaths = dyn_glGenPaths ptr_glGenPaths
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenPaths ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> IO GLuint)
 
{-# NOINLINE ptr_glDeletePaths #-}
 
ptr_glDeletePaths :: FunPtr a
ptr_glDeletePaths
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glDeletePathsNV"
 
glDeletePaths :: GLuint -> GLsizei -> IO ()
glDeletePaths = dyn_glDeletePaths ptr_glDeletePaths
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeletePaths ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCoverStrokePath #-}
 
ptr_glCoverStrokePath :: FunPtr a
ptr_glCoverStrokePath
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glCoverStrokePathNV"
 
glCoverStrokePath :: GLuint -> GLenum -> IO ()
glCoverStrokePath = dyn_glCoverStrokePath ptr_glCoverStrokePath
 
foreign import CALLCONV unsafe "dynamic" dyn_glCoverStrokePath ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glCoverStrokePathInstanced #-}
 
ptr_glCoverStrokePathInstanced :: FunPtr a
ptr_glCoverStrokePathInstanced
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glCoverStrokePathInstancedNV"
 
glCoverStrokePathInstanced ::
                           GLsizei ->
                             GLenum ->
                               Ptr a -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glCoverStrokePathInstanced
  = dyn_glCoverStrokePathInstanced ptr_glCoverStrokePathInstanced
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCoverStrokePathInstanced ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei ->
                    GLenum ->
                      Ptr a -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glCoverFillPath #-}
 
ptr_glCoverFillPath :: FunPtr a
ptr_glCoverFillPath
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glCoverFillPathNV"
 
glCoverFillPath :: GLuint -> GLenum -> IO ()
glCoverFillPath = dyn_glCoverFillPath ptr_glCoverFillPath
 
foreign import CALLCONV unsafe "dynamic" dyn_glCoverFillPath ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glCoverFillPathInstanced #-}
 
ptr_glCoverFillPathInstanced :: FunPtr a
ptr_glCoverFillPathInstanced
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glCoverFillPathInstancedNV"
 
glCoverFillPathInstanced ::
                         GLsizei ->
                           GLenum ->
                             Ptr a -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ()
glCoverFillPathInstanced
  = dyn_glCoverFillPathInstanced ptr_glCoverFillPathInstanced
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCoverFillPathInstanced ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei ->
                    GLenum ->
                      Ptr a -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glCopyPath #-}
 
ptr_glCopyPath :: FunPtr a
ptr_glCopyPath
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_path_rendering"
        "glCopyPathNV"
 
glCopyPath :: GLuint -> GLuint -> IO ()
glCopyPath = dyn_glCopyPath ptr_glCopyPath
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyPath ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO ())
 
gl_VERTICAL_LINE_TO :: GLenum
gl_VERTICAL_LINE_TO = 8
 
gl_UTF8 :: GLenum
gl_UTF8 = 37018
 
gl_UTF16 :: GLenum
gl_UTF16 = 37019
 
gl_USE_MISSING_GLYPH :: GLenum
gl_USE_MISSING_GLYPH = 37034
 
gl_TRIANGULAR :: GLenum
gl_TRIANGULAR = 37029
 
gl_TRANSPOSE_PROJECTIVE_3D :: GLenum
gl_TRANSPOSE_PROJECTIVE_3D = 37017
 
gl_TRANSPOSE_PROJECTIVE_2D :: GLenum
gl_TRANSPOSE_PROJECTIVE_2D = 37015
 
gl_TRANSPOSE_AFFINE_3D :: GLenum
gl_TRANSPOSE_AFFINE_3D = 37016
 
gl_TRANSPOSE_AFFINE_2D :: GLenum
gl_TRANSPOSE_AFFINE_2D = 37014
 
gl_TRANSLATE_Y :: GLenum
gl_TRANSLATE_Y = 37007
 
gl_TRANSLATE_X :: GLenum
gl_TRANSLATE_X = 37006
 
gl_TRANSLATE_3D :: GLenum
gl_TRANSLATE_3D = 37009
 
gl_TRANSLATE_2D :: GLenum
gl_TRANSLATE_2D = 37008
 
gl_SYSTEM_FONT_NAME :: GLenum
gl_SYSTEM_FONT_NAME = 36979
 
gl_STANDARD_FONT_NAME :: GLenum
gl_STANDARD_FONT_NAME = 36978
 
gl_SQUARE :: GLenum
gl_SQUARE = 37027
 
gl_SMOOTH_QUADRATIC_CURVE_TO :: GLenum
gl_SMOOTH_QUADRATIC_CURVE_TO = 14
 
gl_SMOOTH_CUBIC_CURVE_TO :: GLenum
gl_SMOOTH_CUBIC_CURVE_TO = 16
 
gl_SMALL_CW_ARC_TO :: GLenum
gl_SMALL_CW_ARC_TO = 20
 
gl_SMALL_CCW_ARC_TO :: GLenum
gl_SMALL_CCW_ARC_TO = 18
 
gl_SKIP_MISSING_GLYPH :: GLenum
gl_SKIP_MISSING_GLYPH = 37033
 
gl_ROUND :: GLenum
gl_ROUND = 37028
 
gl_RESTART_PATH :: GLenum
gl_RESTART_PATH = 240
 
gl_RELATIVE_VERTICAL_LINE_TO :: GLenum
gl_RELATIVE_VERTICAL_LINE_TO = 9
 
gl_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO :: GLenum
gl_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO = 15
 
gl_RELATIVE_SMOOTH_CUBIC_CURVE_TO :: GLenum
gl_RELATIVE_SMOOTH_CUBIC_CURVE_TO = 17
 
gl_RELATIVE_SMALL_CW_ARC_TO :: GLenum
gl_RELATIVE_SMALL_CW_ARC_TO = 21
 
gl_RELATIVE_SMALL_CCW_ARC_TO :: GLenum
gl_RELATIVE_SMALL_CCW_ARC_TO = 19
 
gl_RELATIVE_QUADRATIC_CURVE_TO :: GLenum
gl_RELATIVE_QUADRATIC_CURVE_TO = 11
 
gl_RELATIVE_MOVE_TO :: GLenum
gl_RELATIVE_MOVE_TO = 3
 
gl_RELATIVE_LINE_TO :: GLenum
gl_RELATIVE_LINE_TO = 5
 
gl_RELATIVE_LARGE_CW_ARC_TO :: GLenum
gl_RELATIVE_LARGE_CW_ARC_TO = 25
 
gl_RELATIVE_LARGE_CCW_ARC_TO :: GLenum
gl_RELATIVE_LARGE_CCW_ARC_TO = 23
 
gl_RELATIVE_HORIZONTAL_LINE_TO :: GLenum
gl_RELATIVE_HORIZONTAL_LINE_TO = 7
 
gl_RELATIVE_CUBIC_CURVE_TO :: GLenum
gl_RELATIVE_CUBIC_CURVE_TO = 13
 
gl_RELATIVE_ARC_TO :: GLenum
gl_RELATIVE_ARC_TO = 255
 
gl_RECT :: GLenum
gl_RECT = 246
 
gl_QUADRATIC_CURVE_TO :: GLenum
gl_QUADRATIC_CURVE_TO = 10
 
gl_PROJECTIVE_3D :: GLenum
gl_PROJECTIVE_3D = 37013
 
gl_PROJECTIVE_2D :: GLenum
gl_PROJECTIVE_2D = 37011
 
gl_PATH_TERMINAL_END_CAP :: GLenum
gl_PATH_TERMINAL_END_CAP = 36984
 
gl_PATH_TERMINAL_DASH_CAP :: GLenum
gl_PATH_TERMINAL_DASH_CAP = 36989
 
gl_PATH_STROKE_WIDTH :: GLenum
gl_PATH_STROKE_WIDTH = 36981
 
gl_PATH_STROKE_OVERSAMPLE_COUNT :: GLenum
gl_PATH_STROKE_OVERSAMPLE_COUNT = 36999
 
gl_PATH_STROKE_MASK :: GLenum
gl_PATH_STROKE_MASK = 36996
 
gl_PATH_STROKE_COVER_MODE :: GLenum
gl_PATH_STROKE_COVER_MODE = 36995
 
gl_PATH_STROKE_BOUND :: GLenum
gl_PATH_STROKE_BOUND = 36998
 
gl_PATH_STROKE_BOUNDING_BOX :: GLenum
gl_PATH_STROKE_BOUNDING_BOX = 37026
 
gl_PATH_STENCIL_VALUE_MASK :: GLenum
gl_PATH_STENCIL_VALUE_MASK = 37049
 
gl_PATH_STENCIL_REF :: GLenum
gl_PATH_STENCIL_REF = 37048
 
gl_PATH_STENCIL_FUNC :: GLenum
gl_PATH_STENCIL_FUNC = 37047
 
gl_PATH_STENCIL_DEPTH_OFFSET_UNITS :: GLenum
gl_PATH_STENCIL_DEPTH_OFFSET_UNITS = 37054
 
gl_PATH_STENCIL_DEPTH_OFFSET_FACTOR :: GLenum
gl_PATH_STENCIL_DEPTH_OFFSET_FACTOR = 37053
 
gl_PATH_SAMPLE_QUALITY :: GLenum
gl_PATH_SAMPLE_QUALITY = 36997
 
gl_PATH_OBJECT_BOUNDING_BOX :: GLenum
gl_PATH_OBJECT_BOUNDING_BOX = 37002
 
gl_PATH_MITER_LIMIT :: GLenum
gl_PATH_MITER_LIMIT = 36986
 
gl_PATH_JOIN_STYLE :: GLenum
gl_PATH_JOIN_STYLE = 36985
 
gl_PATH_INITIAL_END_CAP :: GLenum
gl_PATH_INITIAL_END_CAP = 36983
 
gl_PATH_INITIAL_DASH_CAP :: GLenum
gl_PATH_INITIAL_DASH_CAP = 36988
 
gl_PATH_GEN_MODE :: GLenum
gl_PATH_GEN_MODE = 37040
 
gl_PATH_GEN_COMPONENTS :: GLenum
gl_PATH_GEN_COMPONENTS = 37043
 
gl_PATH_GEN_COLOR_FORMAT :: GLenum
gl_PATH_GEN_COLOR_FORMAT = 37042
 
gl_PATH_GEN_COEFF :: GLenum
gl_PATH_GEN_COEFF = 37041
 
gl_PATH_FORMAT_SVG :: GLenum
gl_PATH_FORMAT_SVG = 36976
 
gl_PATH_FORMAT_PS :: GLenum
gl_PATH_FORMAT_PS = 36977
 
gl_PATH_FOG_GEN_MODE :: GLenum
gl_PATH_FOG_GEN_MODE = 37036
 
gl_PATH_FILL_MODE :: GLenum
gl_PATH_FILL_MODE = 36992
 
gl_PATH_FILL_MASK :: GLenum
gl_PATH_FILL_MASK = 36993
 
gl_PATH_FILL_COVER_MODE :: GLenum
gl_PATH_FILL_COVER_MODE = 36994
 
gl_PATH_FILL_BOUNDING_BOX :: GLenum
gl_PATH_FILL_BOUNDING_BOX = 37025
 
gl_PATH_ERROR_POSITION :: GLenum
gl_PATH_ERROR_POSITION = 37035
 
gl_PATH_END_CAPS :: GLenum
gl_PATH_END_CAPS = 36982
 
gl_PATH_DASH_OFFSET_RESET :: GLenum
gl_PATH_DASH_OFFSET_RESET = 37044
 
gl_PATH_DASH_OFFSET :: GLenum
gl_PATH_DASH_OFFSET = 36990
 
gl_PATH_DASH_CAPS :: GLenum
gl_PATH_DASH_CAPS = 36987
 
gl_PATH_DASH_ARRAY_COUNT :: GLenum
gl_PATH_DASH_ARRAY_COUNT = 37023
 
gl_PATH_COVER_DEPTH_FUNC :: GLenum
gl_PATH_COVER_DEPTH_FUNC = 37055
 
gl_PATH_COORD_COUNT :: GLenum
gl_PATH_COORD_COUNT = 37022
 
gl_PATH_COMPUTED_LENGTH :: GLenum
gl_PATH_COMPUTED_LENGTH = 37024
 
gl_PATH_COMMAND_COUNT :: GLenum
gl_PATH_COMMAND_COUNT = 37021
 
gl_PATH_CLIENT_LENGTH :: GLenum
gl_PATH_CLIENT_LENGTH = 36991
 
gl_MULTI_HULLS :: GLenum
gl_MULTI_HULLS = 37004
 
gl_MOVE_TO_RESETS :: GLenum
gl_MOVE_TO_RESETS = 37045
 
gl_MOVE_TO :: GLenum
gl_MOVE_TO = 2
 
gl_MOVE_TO_CONTINUES :: GLenum
gl_MOVE_TO_CONTINUES = 37046
 
gl_MITER_TRUNCATE :: GLenum
gl_MITER_TRUNCATE = 37032
 
gl_MITER_REVERT :: GLenum
gl_MITER_REVERT = 37031
 
gl_LINE_TO :: GLenum
gl_LINE_TO = 4
 
gl_LARGE_CW_ARC_TO :: GLenum
gl_LARGE_CW_ARC_TO = 24
 
gl_LARGE_CCW_ARC_TO :: GLenum
gl_LARGE_CCW_ARC_TO = 22
 
gl_ITALIC_BIT :: GLbitfield
gl_ITALIC_BIT = 2
 
gl_HORIZONTAL_LINE_TO :: GLenum
gl_HORIZONTAL_LINE_TO = 6
 
gl_GLYPH_WIDTH_BIT :: GLbitfield
gl_GLYPH_WIDTH_BIT = 1
 
gl_GLYPH_VERTICAL_BEARING_Y_BIT :: GLbitfield
gl_GLYPH_VERTICAL_BEARING_Y_BIT = 64
 
gl_GLYPH_VERTICAL_BEARING_X_BIT :: GLbitfield
gl_GLYPH_VERTICAL_BEARING_X_BIT = 32
 
gl_GLYPH_VERTICAL_BEARING_ADVANCE_BIT :: GLbitfield
gl_GLYPH_VERTICAL_BEARING_ADVANCE_BIT = 128
 
gl_GLYPH_HORIZONTAL_BEARING_Y_BIT :: GLbitfield
gl_GLYPH_HORIZONTAL_BEARING_Y_BIT = 8
 
gl_GLYPH_HORIZONTAL_BEARING_X_BIT :: GLbitfield
gl_GLYPH_HORIZONTAL_BEARING_X_BIT = 4
 
gl_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT :: GLbitfield
gl_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT = 16
 
gl_GLYPH_HEIGHT_BIT :: GLbitfield
gl_GLYPH_HEIGHT_BIT = 2
 
gl_GLYPH_HAS_KERNING :: GLenum
gl_GLYPH_HAS_KERNING = 256
 
gl_FONT_Y_MIN_BOUNDS :: GLenum
gl_FONT_Y_MIN_BOUNDS = 131072
 
gl_FONT_Y_MAX_BOUNDS :: GLenum
gl_FONT_Y_MAX_BOUNDS = 524288
 
gl_FONT_X_MIN_BOUNDS :: GLenum
gl_FONT_X_MIN_BOUNDS = 65536
 
gl_FONT_X_MAX_BOUNDS :: GLenum
gl_FONT_X_MAX_BOUNDS = 262144
 
gl_FONT_UNITS_PER_EM :: GLenum
gl_FONT_UNITS_PER_EM = 1048576
 
gl_FONT_UNDERLINE_THICKNESS :: GLenum
gl_FONT_UNDERLINE_THICKNESS = 134217728
 
gl_FONT_UNDERLINE_POSITION :: GLenum
gl_FONT_UNDERLINE_POSITION = 67108864
 
gl_FONT_MAX_ADVANCE_WIDTH :: GLenum
gl_FONT_MAX_ADVANCE_WIDTH = 16777216
 
gl_FONT_MAX_ADVANCE_HEIGHT :: GLenum
gl_FONT_MAX_ADVANCE_HEIGHT = 33554432
 
gl_FONT_HEIGHT :: GLenum
gl_FONT_HEIGHT = 8388608
 
gl_FONT_HAS_KERNING :: GLenum
gl_FONT_HAS_KERNING = 268435456
 
gl_FONT_DESCENDER :: GLenum
gl_FONT_DESCENDER = 4194304
 
gl_FONT_ASCENDER :: GLenum
gl_FONT_ASCENDER = 2097152
 
gl_FIRST_TO_REST :: GLenum
gl_FIRST_TO_REST = 37039
 
gl_FILE_NAME :: GLenum
gl_FILE_NAME = 36980
 
gl_DUP_LAST_CUBIC_CURVE_TO :: GLenum
gl_DUP_LAST_CUBIC_CURVE_TO = 244
 
gl_DUP_FIRST_CUBIC_CURVE_TO :: GLenum
gl_DUP_FIRST_CUBIC_CURVE_TO = 242
 
gl_CUBIC_CURVE_TO :: GLenum
gl_CUBIC_CURVE_TO = 12
 
gl_COUNT_UP :: GLenum
gl_COUNT_UP = 37000
 
gl_COUNT_DOWN :: GLenum
gl_COUNT_DOWN = 37001
 
gl_CONVEX_HULL :: GLenum
gl_CONVEX_HULL = 37003
 
gl_CLOSE_PATH :: GLenum
gl_CLOSE_PATH = 0
 
gl_CIRCULAR_TANGENT_ARC_TO :: GLenum
gl_CIRCULAR_TANGENT_ARC_TO = 252
 
gl_CIRCULAR_CW_ARC_TO :: GLenum
gl_CIRCULAR_CW_ARC_TO = 250
 
gl_CIRCULAR_CCW_ARC_TO :: GLenum
gl_CIRCULAR_CCW_ARC_TO = 248
 
gl_BOUNDING_BOX_OF_BOUNDING_BOXES :: GLenum
gl_BOUNDING_BOX_OF_BOUNDING_BOXES = 37020
 
gl_BOUNDING_BOX :: GLenum
gl_BOUNDING_BOX = 37005
 
gl_BOLD_BIT :: GLbitfield
gl_BOLD_BIT = 1
 
gl_BEVEL :: GLenum
gl_BEVEL = 37030
 
gl_ARC_TO :: GLenum
gl_ARC_TO = 254
 
gl_AFFINE_3D :: GLenum
gl_AFFINE_3D = 37012
 
gl_AFFINE_2D :: GLenum
gl_AFFINE_2D = 37010
 
gl_ADJACENT_PAIRS :: GLenum
gl_ADJACENT_PAIRS = 37038
 
gl_ACCUM_ADJACENT_PAIRS :: GLenum
gl_ACCUM_ADJACENT_PAIRS = 37037