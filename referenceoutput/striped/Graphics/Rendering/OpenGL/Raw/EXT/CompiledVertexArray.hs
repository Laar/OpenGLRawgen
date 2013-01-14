{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.CompiledVertexArray
       (glUnlockArrays, glLockArrays, gl_ARRAY_ELEMENT_LOCK_FIRST,
        gl_ARRAY_ELEMENT_LOCK_COUNT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUnlockArrays #-}
 
ptr_glUnlockArrays :: FunPtr a
ptr_glUnlockArrays
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_compiled_vertex_array"
        "glUnlockArraysEXT"
 
glUnlockArrays :: IO ()
glUnlockArrays = dyn_glUnlockArrays ptr_glUnlockArrays
 
foreign import CALLCONV unsafe "dynamic" dyn_glUnlockArrays ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker (IO ())
 
{-# NOINLINE ptr_glLockArrays #-}
 
ptr_glLockArrays :: FunPtr a
ptr_glLockArrays
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_compiled_vertex_array"
        "glLockArraysEXT"
 
glLockArrays :: GLint -> GLsizei -> IO ()
glLockArrays = dyn_glLockArrays ptr_glLockArrays
 
foreign import CALLCONV unsafe "dynamic" dyn_glLockArrays ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> IO ())
 
gl_ARRAY_ELEMENT_LOCK_FIRST :: GLenum
gl_ARRAY_ELEMENT_LOCK_FIRST = 33192
 
gl_ARRAY_ELEMENT_LOCK_COUNT :: GLenum
gl_ARRAY_ELEMENT_LOCK_COUNT = 33193