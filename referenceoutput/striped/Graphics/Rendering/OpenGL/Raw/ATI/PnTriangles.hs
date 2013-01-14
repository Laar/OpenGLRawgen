{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.PnTriangles
       (glPNTrianglesi, glPNTrianglesf, gl_PN_TRIANGLES_TESSELATION_LEVEL,
        gl_PN_TRIANGLES_POINT_MODE_LINEAR,
        gl_PN_TRIANGLES_POINT_MODE_CUBIC, gl_PN_TRIANGLES_POINT_MODE,
        gl_PN_TRIANGLES_NORMAL_MODE_QUADRATIC,
        gl_PN_TRIANGLES_NORMAL_MODE_LINEAR, gl_PN_TRIANGLES_NORMAL_MODE,
        gl_PN_TRIANGLES, gl_MAX_PN_TRIANGLES_TESSELATION_LEVEL)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPNTrianglesi #-}
 
ptr_glPNTrianglesi :: FunPtr a
ptr_glPNTrianglesi
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_pn_triangles"
        "glPNTrianglesiATI"
 
glPNTrianglesi :: GLenum -> GLint -> IO ()
glPNTrianglesi = dyn_glPNTrianglesi ptr_glPNTrianglesi
 
foreign import CALLCONV unsafe "dynamic" dyn_glPNTrianglesi ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glPNTrianglesf #-}
 
ptr_glPNTrianglesf :: FunPtr a
ptr_glPNTrianglesf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_pn_triangles"
        "glPNTrianglesfATI"
 
glPNTrianglesf :: GLenum -> GLfloat -> IO ()
glPNTrianglesf = dyn_glPNTrianglesf ptr_glPNTrianglesf
 
foreign import CALLCONV unsafe "dynamic" dyn_glPNTrianglesf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
gl_PN_TRIANGLES_TESSELATION_LEVEL :: GLenum
gl_PN_TRIANGLES_TESSELATION_LEVEL = 34804
 
gl_PN_TRIANGLES_POINT_MODE_LINEAR :: GLenum
gl_PN_TRIANGLES_POINT_MODE_LINEAR = 34805
 
gl_PN_TRIANGLES_POINT_MODE_CUBIC :: GLenum
gl_PN_TRIANGLES_POINT_MODE_CUBIC = 34806
 
gl_PN_TRIANGLES_POINT_MODE :: GLenum
gl_PN_TRIANGLES_POINT_MODE = 34802
 
gl_PN_TRIANGLES_NORMAL_MODE_QUADRATIC :: GLenum
gl_PN_TRIANGLES_NORMAL_MODE_QUADRATIC = 34808
 
gl_PN_TRIANGLES_NORMAL_MODE_LINEAR :: GLenum
gl_PN_TRIANGLES_NORMAL_MODE_LINEAR = 34807
 
gl_PN_TRIANGLES_NORMAL_MODE :: GLenum
gl_PN_TRIANGLES_NORMAL_MODE = 34803
 
gl_PN_TRIANGLES :: GLenum
gl_PN_TRIANGLES = 34800
 
gl_MAX_PN_TRIANGLES_TESSELATION_LEVEL :: GLenum
gl_MAX_PN_TRIANGLES_TESSELATION_LEVEL = 34801