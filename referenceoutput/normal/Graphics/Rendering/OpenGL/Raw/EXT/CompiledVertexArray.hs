{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.CompiledVertexArray
       (glUnlockArraysEXT, glLockArraysEXT,
        gl_ARRAY_ELEMENT_LOCK_FIRST_EXT, gl_ARRAY_ELEMENT_LOCK_COUNT_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUnlockArraysEXT #-}
 
ptr_glUnlockArraysEXT :: FunPtr a
ptr_glUnlockArraysEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_compiled_vertex_array"
        "glUnlockArraysEXT"
 
glUnlockArraysEXT :: IO ()
glUnlockArraysEXT = dyn_glUnlockArraysEXT ptr_glUnlockArraysEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glUnlockArraysEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glLockArraysEXT #-}
 
ptr_glLockArraysEXT :: FunPtr a
ptr_glLockArraysEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_compiled_vertex_array"
        "glLockArraysEXT"
 
glLockArraysEXT :: GLint -> GLsizei -> IO ()
glLockArraysEXT = dyn_glLockArraysEXT ptr_glLockArraysEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glLockArraysEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> IO ())
 
gl_ARRAY_ELEMENT_LOCK_FIRST_EXT :: GLenum
gl_ARRAY_ELEMENT_LOCK_FIRST_EXT = 33192
 
gl_ARRAY_ELEMENT_LOCK_COUNT_EXT :: GLenum
gl_ARRAY_ELEMENT_LOCK_COUNT_EXT = 33193