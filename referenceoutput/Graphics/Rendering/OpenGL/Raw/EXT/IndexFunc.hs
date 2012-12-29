{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.IndexFunc
       (glIndexFuncEXT, gl_INDEX_TEST_REF_EXT, gl_INDEX_TEST_FUNC_EXT,
        gl_INDEX_TEST_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glIndexFuncEXT #-}
 
ptr_glIndexFuncEXT :: FunPtr a
ptr_glIndexFuncEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_index_func"
        "glIndexFuncEXT"
 
glIndexFuncEXT :: GLenum -> GLclampf -> IO ()
glIndexFuncEXT = dyn_glIndexFuncEXT ptr_glIndexFuncEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexFuncEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLclampf -> IO ())
 
gl_INDEX_TEST_REF_EXT :: GLenum
gl_INDEX_TEST_REF_EXT = 33207
 
gl_INDEX_TEST_FUNC_EXT :: GLenum
gl_INDEX_TEST_FUNC_EXT = 33206
 
gl_INDEX_TEST_EXT :: GLenum
gl_INDEX_TEST_EXT = 33205