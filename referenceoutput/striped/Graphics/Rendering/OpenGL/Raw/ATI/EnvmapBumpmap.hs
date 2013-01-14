{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.EnvmapBumpmap
       (glTexBumpParameteriv, glTexBumpParameterfv,
        glGetTexBumpParameteriv, glGetTexBumpParameterfv, gl_DUDV,
        gl_DU8DV8, gl_BUMP_TEX_UNITS, gl_BUMP_TARGET,
        gl_BUMP_ROT_MATRIX_SIZE, gl_BUMP_ROT_MATRIX, gl_BUMP_NUM_TEX_UNITS,
        gl_BUMP_ENVMAP)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexBumpParameteriv #-}
 
ptr_glTexBumpParameteriv :: FunPtr a
ptr_glTexBumpParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_envmap_bumpmap"
        "glTexBumpParameterivATI"
 
glTexBumpParameteriv :: GLenum -> Ptr GLint -> IO ()
glTexBumpParameteriv
  = dyn_glTexBumpParameteriv ptr_glTexBumpParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexBumpParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glTexBumpParameterfv #-}
 
ptr_glTexBumpParameterfv :: FunPtr a
ptr_glTexBumpParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_envmap_bumpmap"
        "glTexBumpParameterfvATI"
 
glTexBumpParameterfv :: GLenum -> Ptr GLfloat -> IO ()
glTexBumpParameterfv
  = dyn_glTexBumpParameterfv ptr_glTexBumpParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexBumpParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetTexBumpParameteriv #-}
 
ptr_glGetTexBumpParameteriv :: FunPtr a
ptr_glGetTexBumpParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_envmap_bumpmap"
        "glGetTexBumpParameterivATI"
 
glGetTexBumpParameteriv :: GLenum -> Ptr GLint -> IO ()
glGetTexBumpParameteriv
  = dyn_glGetTexBumpParameteriv ptr_glGetTexBumpParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexBumpParameteriv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetTexBumpParameterfv #-}
 
ptr_glGetTexBumpParameterfv :: FunPtr a
ptr_glGetTexBumpParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_envmap_bumpmap"
        "glGetTexBumpParameterfvATI"
 
glGetTexBumpParameterfv :: GLenum -> Ptr GLfloat -> IO ()
glGetTexBumpParameterfv
  = dyn_glGetTexBumpParameterfv ptr_glGetTexBumpParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetTexBumpParameterfv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
gl_DUDV :: GLenum
gl_DUDV = 34681
 
gl_DU8DV8 :: GLenum
gl_DU8DV8 = 34682
 
gl_BUMP_TEX_UNITS :: GLenum
gl_BUMP_TEX_UNITS = 34680
 
gl_BUMP_TARGET :: GLenum
gl_BUMP_TARGET = 34684
 
gl_BUMP_ROT_MATRIX_SIZE :: GLenum
gl_BUMP_ROT_MATRIX_SIZE = 34678
 
gl_BUMP_ROT_MATRIX :: GLenum
gl_BUMP_ROT_MATRIX = 34677
 
gl_BUMP_NUM_TEX_UNITS :: GLenum
gl_BUMP_NUM_TEX_UNITS = 34679
 
gl_BUMP_ENVMAP :: GLenum
gl_BUMP_ENVMAP = 34683