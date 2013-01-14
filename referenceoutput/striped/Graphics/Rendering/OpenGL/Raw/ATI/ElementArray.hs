{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.ElementArray
       (glElementPointer, glDrawRangeElementArray, glDrawElementArray,
        gl_ELEMENT_ARRAY_TYPE, gl_ELEMENT_ARRAY_POINTER, gl_ELEMENT_ARRAY)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glElementPointer #-}
 
ptr_glElementPointer :: FunPtr a
ptr_glElementPointer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_element_array"
        "glElementPointerATI"
 
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
        "GL_ATI_element_array"
        "glDrawRangeElementArrayATI"
 
glDrawRangeElementArray ::
                        GLenum -> GLuint -> GLuint -> GLsizei -> IO ()
glDrawRangeElementArray
  = dyn_glDrawRangeElementArray ptr_glDrawRangeElementArray
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawRangeElementArray
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glDrawElementArray #-}
 
ptr_glDrawElementArray :: FunPtr a
ptr_glDrawElementArray
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_element_array"
        "glDrawElementArrayATI"
 
glDrawElementArray :: GLenum -> GLsizei -> IO ()
glDrawElementArray = dyn_glDrawElementArray ptr_glDrawElementArray
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawElementArray ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> IO ())
 
gl_ELEMENT_ARRAY_TYPE :: GLenum
gl_ELEMENT_ARRAY_TYPE = 34665
 
gl_ELEMENT_ARRAY_POINTER :: GLenum
gl_ELEMENT_ARRAY_POINTER = 34666
 
gl_ELEMENT_ARRAY :: GLenum
gl_ELEMENT_ARRAY = 34664