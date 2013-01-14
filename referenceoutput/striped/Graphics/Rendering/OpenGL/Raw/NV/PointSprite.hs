{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.PointSprite
       (glPointParameteriv, glPointParameteri, gl_POINT_SPRITE_R_MODE,
        gl_POINT_SPRITE, gl_COORD_REPLACE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPointParameteriv #-}
 
ptr_glPointParameteriv :: FunPtr a
ptr_glPointParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_point_sprite"
        "glPointParameterivNV"
 
glPointParameteriv :: GLenum -> Ptr GLint -> IO ()
glPointParameteriv = dyn_glPointParameteriv ptr_glPointParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glPointParameteri #-}
 
ptr_glPointParameteri :: FunPtr a
ptr_glPointParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_point_sprite"
        "glPointParameteriNV"
 
glPointParameteri :: GLenum -> GLint -> IO ()
glPointParameteri = dyn_glPointParameteri ptr_glPointParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointParameteri ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
gl_POINT_SPRITE_R_MODE :: GLenum
gl_POINT_SPRITE_R_MODE = 34915
 
gl_POINT_SPRITE :: GLenum
gl_POINT_SPRITE = 34913
 
gl_COORD_REPLACE :: GLenum
gl_COORD_REPLACE = 34914