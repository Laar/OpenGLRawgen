{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.ElementArray
       (glMultiDrawRangeElementArray, glMultiDrawElementArray,
        glElementPointer, glDrawRangeElementArray, glDrawElementArray,
        gl_ELEMENT_ARRAY_TYPE, gl_ELEMENT_ARRAY_POINTER, gl_ELEMENT_ARRAY)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glMultiDrawRangeElementArray #-}
 
ptr_glMultiDrawRangeElementArray :: FunPtr a
ptr_glMultiDrawRangeElementArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_element_array"
        "glMultiDrawRangeElementArrayAPPLE"
 
glMultiDrawRangeElementArray ::
                             GLenum ->
                               GLuint -> GLuint -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ()
glMultiDrawRangeElementArray
  = dyn_glMultiDrawRangeElementArray ptr_glMultiDrawRangeElementArray
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glMultiDrawRangeElementArray ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLuint -> GLuint -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glMultiDrawElementArray #-}
 
ptr_glMultiDrawElementArray :: FunPtr a
ptr_glMultiDrawElementArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_element_array"
        "glMultiDrawElementArrayAPPLE"
 
glMultiDrawElementArray ::
                        GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ()
glMultiDrawElementArray
  = dyn_glMultiDrawElementArray ptr_glMultiDrawElementArray
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiDrawElementArray
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glElementPointer #-}
 
ptr_glElementPointer :: FunPtr a
ptr_glElementPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_element_array"
        "glElementPointerAPPLE"
 
glElementPointer :: GLenum -> Ptr a -> IO ()
glElementPointer = dyn_glElementPointer ptr_glElementPointer
 
foreign import CALLCONV unsafe "dynamic" dyn_glElementPointer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glDrawRangeElementArray #-}
 
ptr_glDrawRangeElementArray :: FunPtr a
ptr_glDrawRangeElementArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_element_array"
        "glDrawRangeElementArrayAPPLE"
 
glDrawRangeElementArray ::
                        GLenum -> GLuint -> GLuint -> GLint -> GLsizei -> IO ()
glDrawRangeElementArray
  = dyn_glDrawRangeElementArray ptr_glDrawRangeElementArray
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawRangeElementArray
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glDrawElementArray #-}
 
ptr_glDrawElementArray :: FunPtr a
ptr_glDrawElementArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_APPLE_element_array"
        "glDrawElementArrayAPPLE"
 
glDrawElementArray :: GLenum -> GLint -> GLsizei -> IO ()
glDrawElementArray = dyn_glDrawElementArray ptr_glDrawElementArray
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawElementArray ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLsizei -> IO ())
 
gl_ELEMENT_ARRAY_TYPE :: GLenum
gl_ELEMENT_ARRAY_TYPE = 35341
 
gl_ELEMENT_ARRAY_POINTER :: GLenum
gl_ELEMENT_ARRAY_POINTER = 35342
 
gl_ELEMENT_ARRAY :: GLenum
gl_ELEMENT_ARRAY = 35340