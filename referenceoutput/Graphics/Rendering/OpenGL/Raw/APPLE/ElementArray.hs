{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.ElementArray
       (glMultiDrawRangeElementArrayAPPLE, glMultiDrawElementArrayAPPLE,
        glElementPointerAPPLE, glDrawRangeElementArrayAPPLE,
        glDrawElementArrayAPPLE, gl_ELEMENT_ARRAY_TYPE_APPLE,
        gl_ELEMENT_ARRAY_POINTER_APPLE, gl_ELEMENT_ARRAY_APPLE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMultiDrawRangeElementArrayAPPLE #-}
 
ptr_glMultiDrawRangeElementArrayAPPLE :: FunPtr a
ptr_glMultiDrawRangeElementArrayAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_element_array"
        "glMultiDrawRangeElementArrayAPPLE"
 
glMultiDrawRangeElementArrayAPPLE ::
                                  GLenum ->
                                    GLuint -> GLuint -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ()
glMultiDrawRangeElementArrayAPPLE
  = dyn_glMultiDrawRangeElementArrayAPPLE
      ptr_glMultiDrawRangeElementArrayAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiDrawRangeElementArrayAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLuint -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glMultiDrawElementArrayAPPLE #-}
 
ptr_glMultiDrawElementArrayAPPLE :: FunPtr a
ptr_glMultiDrawElementArrayAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_element_array"
        "glMultiDrawElementArrayAPPLE"
 
glMultiDrawElementArrayAPPLE ::
                             GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ()
glMultiDrawElementArrayAPPLE
  = dyn_glMultiDrawElementArrayAPPLE ptr_glMultiDrawElementArrayAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiDrawElementArrayAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glElementPointerAPPLE #-}
 
ptr_glElementPointerAPPLE :: FunPtr a
ptr_glElementPointerAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_element_array"
        "glElementPointerAPPLE"
 
glElementPointerAPPLE :: GLenum -> Ptr a -> IO ()
glElementPointerAPPLE
  = dyn_glElementPointerAPPLE ptr_glElementPointerAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glElementPointerAPPLE
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glDrawRangeElementArrayAPPLE #-}
 
ptr_glDrawRangeElementArrayAPPLE :: FunPtr a
ptr_glDrawRangeElementArrayAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_element_array"
        "glDrawRangeElementArrayAPPLE"
 
glDrawRangeElementArrayAPPLE ::
                             GLenum -> GLuint -> GLuint -> GLint -> GLsizei -> IO ()
glDrawRangeElementArrayAPPLE
  = dyn_glDrawRangeElementArrayAPPLE ptr_glDrawRangeElementArrayAPPLE
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawRangeElementArrayAPPLE ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glDrawElementArrayAPPLE #-}
 
ptr_glDrawElementArrayAPPLE :: FunPtr a
ptr_glDrawElementArrayAPPLE
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_element_array"
        "glDrawElementArrayAPPLE"
 
glDrawElementArrayAPPLE :: GLenum -> GLint -> GLsizei -> IO ()
glDrawElementArrayAPPLE
  = dyn_glDrawElementArrayAPPLE ptr_glDrawElementArrayAPPLE
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawElementArrayAPPLE
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLsizei -> IO ())
 
gl_ELEMENT_ARRAY_TYPE_APPLE :: GLenum
gl_ELEMENT_ARRAY_TYPE_APPLE = 35341
 
gl_ELEMENT_ARRAY_POINTER_APPLE :: GLenum
gl_ELEMENT_ARRAY_POINTER_APPLE = 35342
 
gl_ELEMENT_ARRAY_APPLE :: GLenum
gl_ELEMENT_ARRAY_APPLE = 35340