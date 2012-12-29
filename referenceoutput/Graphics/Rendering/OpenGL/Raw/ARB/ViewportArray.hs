module Graphics.Rendering.OpenGL.Raw.ARB.ViewportArray
       (glGetDoublei_v, glGetFloati_v, glDepthRangeIndexed,
        glDepthRangeArrayv, glScissorIndexedv, glScissorIndexed,
        glScissorArrayv, glViewportIndexedfv, glViewportIndexedf,
        glViewportArrayv, gl_PROVOKING_VERTEX, gl_LAST_VERTEX_CONVENTION,
        gl_FIRST_VERTEX_CONVENTION, gl_UNDEFINED_VERTEX,
        gl_VIEWPORT_INDEX_PROVOKING_VERTEX, gl_LAYER_PROVOKING_VERTEX,
        gl_VIEWPORT_BOUNDS_RANGE, gl_VIEWPORT_SUBPIXEL_BITS,
        gl_MAX_VIEWPORTS, gl_SCISSOR_TEST, gl_DEPTH_RANGE, gl_VIEWPORT,
        gl_SCISSOR_BOX)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11
       (gl_SCISSOR_TEST, gl_DEPTH_RANGE, gl_VIEWPORT, gl_SCISSOR_BOX)
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core41
       (glGetDoublei_v, glGetFloati_v, glDepthRangeIndexed,
        glDepthRangeArrayv, glScissorIndexedv, glScissorIndexed,
        glScissorArrayv, glViewportIndexedfv, glViewportIndexedf,
        glViewportArrayv, gl_UNDEFINED_VERTEX,
        gl_VIEWPORT_INDEX_PROVOKING_VERTEX, gl_LAYER_PROVOKING_VERTEX,
        gl_VIEWPORT_BOUNDS_RANGE, gl_VIEWPORT_SUBPIXEL_BITS,
        gl_MAX_VIEWPORTS)
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core32
       (gl_PROVOKING_VERTEX, gl_LAST_VERTEX_CONVENTION,
        gl_FIRST_VERTEX_CONVENTION)