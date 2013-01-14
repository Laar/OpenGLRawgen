{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PolygonOffset
       (glPolygonOffsetEXT, gl_POLYGON_OFFSET_FACTOR_EXT,
        gl_POLYGON_OFFSET_EXT, gl_POLYGON_OFFSET_BIAS_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPolygonOffsetEXT #-}
 
ptr_glPolygonOffsetEXT :: FunPtr a
ptr_glPolygonOffsetEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_polygon_offset"
        "glPolygonOffsetEXT"
 
glPolygonOffsetEXT :: GLfloat -> GLfloat -> IO ()
glPolygonOffsetEXT = dyn_glPolygonOffsetEXT ptr_glPolygonOffsetEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glPolygonOffsetEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> IO ())
 
gl_POLYGON_OFFSET_FACTOR_EXT :: GLenum
gl_POLYGON_OFFSET_FACTOR_EXT = 32824
 
gl_POLYGON_OFFSET_EXT :: GLenum
gl_POLYGON_OFFSET_EXT = 32823
 
gl_POLYGON_OFFSET_BIAS_EXT :: GLenum
gl_POLYGON_OFFSET_BIAS_EXT = 32825