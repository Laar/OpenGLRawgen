{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PolygonOffset
       (glPolygonOffset, gl_POLYGON_OFFSET_FACTOR, gl_POLYGON_OFFSET,
        gl_POLYGON_OFFSET_BIAS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPolygonOffset #-}
 
ptr_glPolygonOffset :: FunPtr a
ptr_glPolygonOffset
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_polygon_offset"
        "glPolygonOffsetEXT"
 
glPolygonOffset :: GLfloat -> GLfloat -> IO ()
glPolygonOffset = dyn_glPolygonOffset ptr_glPolygonOffset
 
foreign import CALLCONV unsafe "dynamic" dyn_glPolygonOffset ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> IO ())
 
gl_POLYGON_OFFSET_FACTOR :: GLenum
gl_POLYGON_OFFSET_FACTOR = 32824
 
gl_POLYGON_OFFSET :: GLenum
gl_POLYGON_OFFSET = 32823
 
gl_POLYGON_OFFSET_BIAS :: GLenum
gl_POLYGON_OFFSET_BIAS = 32825