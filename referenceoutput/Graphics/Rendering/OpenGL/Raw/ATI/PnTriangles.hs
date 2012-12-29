{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.PnTriangles
       (glPNTrianglesfATI, glPNTrianglesiATI,
        gl_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI,
        gl_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI,
        gl_PN_TRIANGLES_POINT_MODE_CUBIC_ATI,
        gl_PN_TRIANGLES_POINT_MODE_LINEAR_ATI,
        gl_PN_TRIANGLES_TESSELATION_LEVEL_ATI,
        gl_PN_TRIANGLES_NORMAL_MODE_ATI, gl_PN_TRIANGLES_POINT_MODE_ATI,
        gl_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI, gl_PN_TRIANGLES_ATI)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPNTrianglesfATI #-}
 
ptr_glPNTrianglesfATI :: FunPtr a
ptr_glPNTrianglesfATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_pn_triangles"
        "glPNTrianglesfATI"
 
glPNTrianglesfATI :: GLenum -> GLfloat -> IO ()
glPNTrianglesfATI = dyn_glPNTrianglesfATI ptr_glPNTrianglesfATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glPNTrianglesfATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glPNTrianglesiATI #-}
 
ptr_glPNTrianglesiATI :: FunPtr a
ptr_glPNTrianglesiATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_pn_triangles"
        "glPNTrianglesiATI"
 
glPNTrianglesiATI :: GLenum -> GLint -> IO ()
glPNTrianglesiATI = dyn_glPNTrianglesiATI ptr_glPNTrianglesiATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glPNTrianglesiATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
gl_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI :: GLenum
gl_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI = 34808
 
gl_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI :: GLenum
gl_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI = 34807
 
gl_PN_TRIANGLES_POINT_MODE_CUBIC_ATI :: GLenum
gl_PN_TRIANGLES_POINT_MODE_CUBIC_ATI = 34806
 
gl_PN_TRIANGLES_POINT_MODE_LINEAR_ATI :: GLenum
gl_PN_TRIANGLES_POINT_MODE_LINEAR_ATI = 34805
 
gl_PN_TRIANGLES_TESSELATION_LEVEL_ATI :: GLenum
gl_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 34804
 
gl_PN_TRIANGLES_NORMAL_MODE_ATI :: GLenum
gl_PN_TRIANGLES_NORMAL_MODE_ATI = 34803
 
gl_PN_TRIANGLES_POINT_MODE_ATI :: GLenum
gl_PN_TRIANGLES_POINT_MODE_ATI = 34802
 
gl_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI :: GLenum
gl_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 34801
 
gl_PN_TRIANGLES_ATI :: GLenum
gl_PN_TRIANGLES_ATI = 34800