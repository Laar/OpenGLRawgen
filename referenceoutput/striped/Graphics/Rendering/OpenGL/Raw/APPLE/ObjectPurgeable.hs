{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.ObjectPurgeable
       (glObjectUnpurgeable, glObjectPurgeable, glGetObjectParameteriv,
        gl_VOLATILE, gl_UNDEFINED, gl_RETAINED, gl_RELEASED, gl_PURGEABLE,
        gl_BUFFER_OBJECT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glObjectUnpurgeable #-}
 
ptr_glObjectUnpurgeable :: FunPtr a
ptr_glObjectUnpurgeable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_object_purgeable"
        "glObjectUnpurgeableAPPLE"
 
glObjectUnpurgeable :: GLenum -> GLuint -> GLenum -> IO GLenum
glObjectUnpurgeable
  = dyn_glObjectUnpurgeable ptr_glObjectUnpurgeable
 
foreign import CALLCONV unsafe "dynamic" dyn_glObjectUnpurgeable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> IO GLenum)
 
{-# NOINLINE ptr_glObjectPurgeable #-}
 
ptr_glObjectPurgeable :: FunPtr a
ptr_glObjectPurgeable
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_object_purgeable"
        "glObjectPurgeableAPPLE"
 
glObjectPurgeable :: GLenum -> GLuint -> GLenum -> IO GLenum
glObjectPurgeable = dyn_glObjectPurgeable ptr_glObjectPurgeable
 
foreign import CALLCONV unsafe "dynamic" dyn_glObjectPurgeable ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> IO GLenum)
 
{-# NOINLINE ptr_glGetObjectParameteriv #-}
 
ptr_glGetObjectParameteriv :: FunPtr a
ptr_glGetObjectParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_object_purgeable"
        "glGetObjectParameterivAPPLE"
 
glGetObjectParameteriv ::
                       GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ()
glGetObjectParameteriv
  = dyn_glGetObjectParameteriv ptr_glGetObjectParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetObjectParameteriv
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLenum -> Ptr GLint -> IO ())
 
gl_VOLATILE :: GLenum
gl_VOLATILE = 35354
 
gl_UNDEFINED :: GLenum
gl_UNDEFINED = 35356
 
gl_RETAINED :: GLenum
gl_RETAINED = 35355
 
gl_RELEASED :: GLenum
gl_RELEASED = 35353
 
gl_PURGEABLE :: GLenum
gl_PURGEABLE = 35357
 
gl_BUFFER_OBJECT :: GLenum
gl_BUFFER_OBJECT = 34227