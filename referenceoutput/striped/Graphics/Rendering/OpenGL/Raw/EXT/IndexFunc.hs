{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.IndexFunc
       (glIndexFunc, gl_INDEX_TEST_REF, gl_INDEX_TEST_FUNC, gl_INDEX_TEST)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glIndexFunc #-}
 
ptr_glIndexFunc :: FunPtr a
ptr_glIndexFunc
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_index_func"
        "glIndexFuncEXT"
 
glIndexFunc :: GLenum -> GLclampf -> IO ()
glIndexFunc = dyn_glIndexFunc ptr_glIndexFunc
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexFunc ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLclampf -> IO ())
 
gl_INDEX_TEST_REF :: GLenum
gl_INDEX_TEST_REF = 33207
 
gl_INDEX_TEST_FUNC :: GLenum
gl_INDEX_TEST_FUNC = 33206
 
gl_INDEX_TEST :: GLenum
gl_INDEX_TEST = 33205