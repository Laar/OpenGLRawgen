{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.ObjectPurgeable
       (glGetObjectParameterivAPPLE, glObjectUnpurgeableAPPLE,
        glObjectPurgeableAPPLE, gl_PURGEABLE_APPLE, gl_UNDEFINED_APPLE,
        gl_RETAINED_APPLE, gl_VOLATILE_APPLE, gl_RELEASED_APPLE,
        gl_BUFFER_OBJECT_APPLE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetObjectParameterivAPPLE #-}
 
ptr_glGetObjectParameterivAPPLE :: FunPtr a
ptr_glGetObjectParameterivAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_object_purgeable"
        "glGetObjectParameterivAPPLE"
 
glGetObjectParameterivAPPLE ::
                            GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ()
glGetObjectParameterivAPPLE
  = dyn_glGetObjectParameterivAPPLE ptr_glGetObjectParameterivAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetObjectParameterivAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glObjectUnpurgeableAPPLE #-}
 
ptr_glObjectUnpurgeableAPPLE :: FunPtr a
ptr_glObjectUnpurgeableAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_object_purgeable"
        "glObjectUnpurgeableAPPLE"
 
glObjectUnpurgeableAPPLE :: GLenum -> GLuint -> GLenum -> IO GLenum
glObjectUnpurgeableAPPLE
  = dyn_glObjectUnpurgeableAPPLE ptr_glObjectUnpurgeableAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glObjectUnpurgeableAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> IO GLenum)
 
{-# NOINLINE ptr_glObjectPurgeableAPPLE #-}
 
ptr_glObjectPurgeableAPPLE :: FunPtr a
ptr_glObjectPurgeableAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_object_purgeable"
        "glObjectPurgeableAPPLE"
 
glObjectPurgeableAPPLE :: GLenum -> GLuint -> GLenum -> IO GLenum
glObjectPurgeableAPPLE
  = dyn_glObjectPurgeableAPPLE ptr_glObjectPurgeableAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glObjectPurgeableAPPLE
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> IO GLenum)
 
gl_PURGEABLE_APPLE :: GLenum
gl_PURGEABLE_APPLE = 35357
 
gl_UNDEFINED_APPLE :: GLenum
gl_UNDEFINED_APPLE = 35356
 
gl_RETAINED_APPLE :: GLenum
gl_RETAINED_APPLE = 35355
 
gl_VOLATILE_APPLE :: GLenum
gl_VOLATILE_APPLE = 35354
 
gl_RELEASED_APPLE :: GLenum
gl_RELEASED_APPLE = 35353
 
gl_BUFFER_OBJECT_APPLE :: GLenum
gl_BUFFER_OBJECT_APPLE = 34227