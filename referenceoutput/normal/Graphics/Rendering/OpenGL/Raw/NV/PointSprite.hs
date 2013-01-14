{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.PointSprite
       (glPointParameterivNV, glPointParameteriNV,
        gl_POINT_SPRITE_R_MODE_NV, gl_POINT_SPRITE_NV, gl_COORD_REPLACE_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPointParameterivNV #-}
 
ptr_glPointParameterivNV :: FunPtr a
ptr_glPointParameterivNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_point_sprite"
        "glPointParameterivNV"
 
glPointParameterivNV :: GLenum -> Ptr GLint -> IO ()
glPointParameterivNV
  = dyn_glPointParameterivNV ptr_glPointParameterivNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointParameterivNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glPointParameteriNV #-}
 
ptr_glPointParameteriNV :: FunPtr a
ptr_glPointParameteriNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_point_sprite"
        "glPointParameteriNV"
 
glPointParameteriNV :: GLenum -> GLint -> IO ()
glPointParameteriNV
  = dyn_glPointParameteriNV ptr_glPointParameteriNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointParameteriNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
gl_POINT_SPRITE_R_MODE_NV :: GLenum
gl_POINT_SPRITE_R_MODE_NV = 34915
 
gl_POINT_SPRITE_NV :: GLenum
gl_POINT_SPRITE_NV = 34913
 
gl_COORD_REPLACE_NV :: GLenum
gl_COORD_REPLACE_NV = 34914