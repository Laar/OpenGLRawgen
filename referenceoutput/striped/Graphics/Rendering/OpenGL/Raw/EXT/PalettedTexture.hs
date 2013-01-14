{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PalettedTexture
       (glGetColorTableParameteriv, glGetColorTableParameterfv,
        glGetColorTable, glColorTable, gl_TEXTURE_INDEX_SIZE,
        gl_COLOR_INDEX8, gl_COLOR_INDEX4, gl_COLOR_INDEX2, gl_COLOR_INDEX1,
        gl_COLOR_INDEX16, gl_COLOR_INDEX12)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetColorTableParameteriv #-}
 
ptr_glGetColorTableParameteriv :: FunPtr a
ptr_glGetColorTableParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_paletted_texture"
        "glGetColorTableParameterivEXT"
 
glGetColorTableParameteriv ::
                           GLenum -> GLenum -> Ptr GLint -> IO ()
glGetColorTableParameteriv
  = dyn_glGetColorTableParameteriv ptr_glGetColorTableParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetColorTableParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetColorTableParameterfv #-}
 
ptr_glGetColorTableParameterfv :: FunPtr a
ptr_glGetColorTableParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_paletted_texture"
        "glGetColorTableParameterfvEXT"
 
glGetColorTableParameterfv ::
                           GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetColorTableParameterfv
  = dyn_glGetColorTableParameterfv ptr_glGetColorTableParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetColorTableParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetColorTable #-}
 
ptr_glGetColorTable :: FunPtr a
ptr_glGetColorTable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_paletted_texture"
        "glGetColorTableEXT"
 
glGetColorTable :: GLenum -> GLenum -> GLenum -> Ptr a -> IO ()
glGetColorTable = dyn_glGetColorTable ptr_glGetColorTable
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetColorTable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glColorTable #-}
 
ptr_glColorTable :: FunPtr a
ptr_glColorTable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_paletted_texture"
        "glColorTableEXT"
 
glColorTable ::
             GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glColorTable = dyn_glColorTable ptr_glColorTable
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorTable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
gl_TEXTURE_INDEX_SIZE :: GLenum
gl_TEXTURE_INDEX_SIZE = 33005
 
gl_COLOR_INDEX8 :: GLenum
gl_COLOR_INDEX8 = 32997
 
gl_COLOR_INDEX4 :: GLenum
gl_COLOR_INDEX4 = 32996
 
gl_COLOR_INDEX2 :: GLenum
gl_COLOR_INDEX2 = 32995
 
gl_COLOR_INDEX1 :: GLenum
gl_COLOR_INDEX1 = 32994
 
gl_COLOR_INDEX16 :: GLenum
gl_COLOR_INDEX16 = 32999
 
gl_COLOR_INDEX12 :: GLenum
gl_COLOR_INDEX12 = 32998