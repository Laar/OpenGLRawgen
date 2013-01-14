{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.EnvmapBumpmap
       (glTexBumpParameterivATI, glTexBumpParameterfvATI,
        glGetTexBumpParameterivATI, glGetTexBumpParameterfvATI,
        gl_DUDV_ATI, gl_DU8DV8_ATI, gl_BUMP_TEX_UNITS_ATI,
        gl_BUMP_TARGET_ATI, gl_BUMP_ROT_MATRIX_SIZE_ATI,
        gl_BUMP_ROT_MATRIX_ATI, gl_BUMP_NUM_TEX_UNITS_ATI,
        gl_BUMP_ENVMAP_ATI)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexBumpParameterivATI #-}
 
ptr_glTexBumpParameterivATI :: FunPtr a
ptr_glTexBumpParameterivATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_envmap_bumpmap"
        "glTexBumpParameterivATI"
 
glTexBumpParameterivATI :: GLenum -> Ptr GLint -> IO ()
glTexBumpParameterivATI
  = dyn_glTexBumpParameterivATI ptr_glTexBumpParameterivATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexBumpParameterivATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTexBumpParameterfvATI #-}
 
ptr_glTexBumpParameterfvATI :: FunPtr a
ptr_glTexBumpParameterfvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_envmap_bumpmap"
        "glTexBumpParameterfvATI"
 
glTexBumpParameterfvATI :: GLenum -> Ptr GLfloat -> IO ()
glTexBumpParameterfvATI
  = dyn_glTexBumpParameterfvATI ptr_glTexBumpParameterfvATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexBumpParameterfvATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetTexBumpParameterivATI #-}
 
ptr_glGetTexBumpParameterivATI :: FunPtr a
ptr_glGetTexBumpParameterivATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_envmap_bumpmap"
        "glGetTexBumpParameterivATI"
 
glGetTexBumpParameterivATI :: GLenum -> Ptr GLint -> IO ()
glGetTexBumpParameterivATI
  = dyn_glGetTexBumpParameterivATI ptr_glGetTexBumpParameterivATI
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTexBumpParameterivATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTexBumpParameterfvATI #-}
 
ptr_glGetTexBumpParameterfvATI :: FunPtr a
ptr_glGetTexBumpParameterfvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_envmap_bumpmap"
        "glGetTexBumpParameterfvATI"
 
glGetTexBumpParameterfvATI :: GLenum -> Ptr GLfloat -> IO ()
glGetTexBumpParameterfvATI
  = dyn_glGetTexBumpParameterfvATI ptr_glGetTexBumpParameterfvATI
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetTexBumpParameterfvATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
gl_DUDV_ATI :: GLenum
gl_DUDV_ATI = 34681
 
gl_DU8DV8_ATI :: GLenum
gl_DU8DV8_ATI = 34682
 
gl_BUMP_TEX_UNITS_ATI :: GLenum
gl_BUMP_TEX_UNITS_ATI = 34680
 
gl_BUMP_TARGET_ATI :: GLenum
gl_BUMP_TARGET_ATI = 34684
 
gl_BUMP_ROT_MATRIX_SIZE_ATI :: GLenum
gl_BUMP_ROT_MATRIX_SIZE_ATI = 34678
 
gl_BUMP_ROT_MATRIX_ATI :: GLenum
gl_BUMP_ROT_MATRIX_ATI = 34677
 
gl_BUMP_NUM_TEX_UNITS_ATI :: GLenum
gl_BUMP_NUM_TEX_UNITS_ATI = 34679
 
gl_BUMP_ENVMAP_ATI :: GLenum
gl_BUMP_ENVMAP_ATI = 34683