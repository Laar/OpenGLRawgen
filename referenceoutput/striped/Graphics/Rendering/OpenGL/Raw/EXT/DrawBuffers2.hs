{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.DrawBuffers2
       (glIsEnabledIndexed, glGetIntegerIndexedv, glGetBooleanIndexedv,
        glEnableIndexed, glDisableIndexed, glColorMaskIndexed)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glIsEnabledIndexed #-}
 
ptr_glIsEnabledIndexed :: FunPtr a
ptr_glIsEnabledIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_buffers2"
        "glIsEnabledIndexedEXT"
 
glIsEnabledIndexed :: GLenum -> GLuint -> IO GLboolean
glIsEnabledIndexed = dyn_glIsEnabledIndexed ptr_glIsEnabledIndexed
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsEnabledIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetIntegerIndexedv #-}
 
ptr_glGetIntegerIndexedv :: FunPtr a
ptr_glGetIntegerIndexedv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_buffers2"
        "glGetIntegerIndexedvEXT"
 
glGetIntegerIndexedv :: GLenum -> GLuint -> Ptr GLint -> IO ()
glGetIntegerIndexedv
  = dyn_glGetIntegerIndexedv ptr_glGetIntegerIndexedv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetIntegerIndexedv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetBooleanIndexedv #-}
 
ptr_glGetBooleanIndexedv :: FunPtr a
ptr_glGetBooleanIndexedv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_buffers2"
        "glGetBooleanIndexedvEXT"
 
glGetBooleanIndexedv :: GLenum -> GLuint -> Ptr GLboolean -> IO ()
glGetBooleanIndexedv
  = dyn_glGetBooleanIndexedv ptr_glGetBooleanIndexedv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetBooleanIndexedv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLboolean -> IO ())
 
{-# NOINLINE ptr_glEnableIndexed #-}
 
ptr_glEnableIndexed :: FunPtr a
ptr_glEnableIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_buffers2"
        "glEnableIndexedEXT"
 
glEnableIndexed :: GLenum -> GLuint -> IO ()
glEnableIndexed = dyn_glEnableIndexed ptr_glEnableIndexed
 
foreign import CALLCONV unsafe "dynamic" dyn_glEnableIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glDisableIndexed #-}
 
ptr_glDisableIndexed :: FunPtr a
ptr_glDisableIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_buffers2"
        "glDisableIndexedEXT"
 
glDisableIndexed :: GLenum -> GLuint -> IO ()
glDisableIndexed = dyn_glDisableIndexed ptr_glDisableIndexed
 
foreign import CALLCONV unsafe "dynamic" dyn_glDisableIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glColorMaskIndexed #-}
 
ptr_glColorMaskIndexed :: FunPtr a
ptr_glColorMaskIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_buffers2"
        "glColorMaskIndexedEXT"
 
glColorMaskIndexed ::
                   GLuint -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ()
glColorMaskIndexed = dyn_glColorMaskIndexed ptr_glColorMaskIndexed
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorMaskIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ())