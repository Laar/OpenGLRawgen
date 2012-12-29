{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.DrawBuffers2
       (glIsEnabledIndexedEXT, glDisableIndexedEXT, glEnableIndexedEXT,
        glGetIntegerIndexedvEXT, glGetBooleanIndexedvEXT,
        glColorMaskIndexedEXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glIsEnabledIndexedEXT #-}
 
ptr_glIsEnabledIndexedEXT :: FunPtr a
ptr_glIsEnabledIndexedEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_buffers2"
        "glIsEnabledIndexedEXT"
 
glIsEnabledIndexedEXT :: GLenum -> GLuint -> IO GLboolean
glIsEnabledIndexedEXT
  = dyn_glIsEnabledIndexedEXT ptr_glIsEnabledIndexedEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsEnabledIndexedEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glDisableIndexedEXT #-}
 
ptr_glDisableIndexedEXT :: FunPtr a
ptr_glDisableIndexedEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_buffers2"
        "glDisableIndexedEXT"
 
glDisableIndexedEXT :: GLenum -> GLuint -> IO ()
glDisableIndexedEXT
  = dyn_glDisableIndexedEXT ptr_glDisableIndexedEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glDisableIndexedEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glEnableIndexedEXT #-}
 
ptr_glEnableIndexedEXT :: FunPtr a
ptr_glEnableIndexedEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_buffers2"
        "glEnableIndexedEXT"
 
glEnableIndexedEXT :: GLenum -> GLuint -> IO ()
glEnableIndexedEXT = dyn_glEnableIndexedEXT ptr_glEnableIndexedEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glEnableIndexedEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
{-# NOINLINE ptr_glGetIntegerIndexedvEXT #-}
 
ptr_glGetIntegerIndexedvEXT :: FunPtr a
ptr_glGetIntegerIndexedvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_buffers2"
        "glGetIntegerIndexedvEXT"
 
glGetIntegerIndexedvEXT :: GLenum -> GLuint -> Ptr GLint -> IO ()
glGetIntegerIndexedvEXT
  = dyn_glGetIntegerIndexedvEXT ptr_glGetIntegerIndexedvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetIntegerIndexedvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetBooleanIndexedvEXT #-}
 
ptr_glGetBooleanIndexedvEXT :: FunPtr a
ptr_glGetBooleanIndexedvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_buffers2"
        "glGetBooleanIndexedvEXT"
 
glGetBooleanIndexedvEXT ::
                        GLenum -> GLuint -> Ptr GLboolean -> IO ()
glGetBooleanIndexedvEXT
  = dyn_glGetBooleanIndexedvEXT ptr_glGetBooleanIndexedvEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetBooleanIndexedvEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLboolean -> IO ())
 
{-# NOINLINE ptr_glColorMaskIndexedEXT #-}
 
ptr_glColorMaskIndexedEXT :: FunPtr a
ptr_glColorMaskIndexedEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_draw_buffers2"
        "glColorMaskIndexedEXT"
 
glColorMaskIndexedEXT ::
                      GLuint -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ()
glColorMaskIndexedEXT
  = dyn_glColorMaskIndexedEXT ptr_glColorMaskIndexedEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorMaskIndexedEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint ->
                    GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ())