{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PalettedTexture
       (glGetColorTableParameterfvEXT, glGetColorTableParameterivEXT,
        glGetColorTableEXT, glColorTableEXT, gl_TEXTURE_INDEX_SIZE_EXT,
        gl_COLOR_INDEX16_EXT, gl_COLOR_INDEX12_EXT, gl_COLOR_INDEX8_EXT,
        gl_COLOR_INDEX4_EXT, gl_COLOR_INDEX2_EXT, gl_COLOR_INDEX1_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetColorTableParameterfvEXT #-}
 
ptr_glGetColorTableParameterfvEXT :: FunPtr a
ptr_glGetColorTableParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_paletted_texture"
        "glGetColorTableParameterfvEXT"
 
glGetColorTableParameterfvEXT ::
                              GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetColorTableParameterfvEXT
  = dyn_glGetColorTableParameterfvEXT
      ptr_glGetColorTableParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetColorTableParameterfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetColorTableParameterivEXT #-}
 
ptr_glGetColorTableParameterivEXT :: FunPtr a
ptr_glGetColorTableParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_paletted_texture"
        "glGetColorTableParameterivEXT"
 
glGetColorTableParameterivEXT ::
                              GLenum -> GLenum -> Ptr GLint -> IO ()
glGetColorTableParameterivEXT
  = dyn_glGetColorTableParameterivEXT
      ptr_glGetColorTableParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetColorTableParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetColorTableEXT #-}
 
ptr_glGetColorTableEXT :: FunPtr a
ptr_glGetColorTableEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_paletted_texture"
        "glGetColorTableEXT"
 
glGetColorTableEXT :: GLenum -> GLenum -> GLenum -> Ptr a -> IO ()
glGetColorTableEXT = dyn_glGetColorTableEXT ptr_glGetColorTableEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetColorTableEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glColorTableEXT #-}
 
ptr_glColorTableEXT :: FunPtr a
ptr_glColorTableEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_paletted_texture"
        "glColorTableEXT"
 
glColorTableEXT ::
                GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glColorTableEXT = dyn_glColorTableEXT ptr_glColorTableEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorTableEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
gl_TEXTURE_INDEX_SIZE_EXT :: GLenum
gl_TEXTURE_INDEX_SIZE_EXT = 33005
 
gl_COLOR_INDEX16_EXT :: GLenum
gl_COLOR_INDEX16_EXT = 32999
 
gl_COLOR_INDEX12_EXT :: GLenum
gl_COLOR_INDEX12_EXT = 32998
 
gl_COLOR_INDEX8_EXT :: GLenum
gl_COLOR_INDEX8_EXT = 32997
 
gl_COLOR_INDEX4_EXT :: GLenum
gl_COLOR_INDEX4_EXT = 32996
 
gl_COLOR_INDEX2_EXT :: GLenum
gl_COLOR_INDEX2_EXT = 32995
 
gl_COLOR_INDEX1_EXT :: GLenum
gl_COLOR_INDEX1_EXT = 32994