{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.ElementArray
       (glDrawRangeElementArrayATI, glDrawElementArrayATI,
        glElementPointerATI, gl_ELEMENT_ARRAY_POINTER_ATI,
        gl_ELEMENT_ARRAY_TYPE_ATI, gl_ELEMENT_ARRAY_ATI)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glDrawRangeElementArrayATI #-}
 
ptr_glDrawRangeElementArrayATI :: FunPtr a
ptr_glDrawRangeElementArrayATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_element_array"
        "glDrawRangeElementArrayATI"
 
glDrawRangeElementArrayATI ::
                           GLenum -> GLuint -> GLuint -> GLsizei -> IO ()
glDrawRangeElementArrayATI
  = dyn_glDrawRangeElementArrayATI ptr_glDrawRangeElementArrayATI
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glDrawRangeElementArrayATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glDrawElementArrayATI #-}
 
ptr_glDrawElementArrayATI :: FunPtr a
ptr_glDrawElementArrayATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_element_array"
        "glDrawElementArrayATI"
 
glDrawElementArrayATI :: GLenum -> GLsizei -> IO ()
glDrawElementArrayATI
  = dyn_glDrawElementArrayATI ptr_glDrawElementArrayATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawElementArrayATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glElementPointerATI #-}
 
ptr_glElementPointerATI :: FunPtr a
ptr_glElementPointerATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_element_array"
        "glElementPointerATI"
 
glElementPointerATI :: GLenum -> Ptr a -> IO ()
glElementPointerATI
  = dyn_glElementPointerATI ptr_glElementPointerATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glElementPointerATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr a -> IO ())
 
gl_ELEMENT_ARRAY_POINTER_ATI :: GLenum
gl_ELEMENT_ARRAY_POINTER_ATI = 34666
 
gl_ELEMENT_ARRAY_TYPE_ATI :: GLenum
gl_ELEMENT_ARRAY_TYPE_ATI = 34665
 
gl_ELEMENT_ARRAY_ATI :: GLenum
gl_ELEMENT_ARRAY_ATI = 34664