{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.DrawBuffersBlend
       (glBlendFuncSeparateIndexed, glBlendFuncIndexed,
        glBlendEquationSeparateIndexed, glBlendEquationIndexed)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glBlendFuncSeparateIndexed #-}
 
ptr_glBlendFuncSeparateIndexed :: FunPtr a
ptr_glBlendFuncSeparateIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_draw_buffers_blend"
        "glBlendFuncSeparateIndexedAMD"
 
glBlendFuncSeparateIndexed ::
                           GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glBlendFuncSeparateIndexed
  = dyn_glBlendFuncSeparateIndexed ptr_glBlendFuncSeparateIndexed
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBlendFuncSeparateIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendFuncIndexed #-}
 
ptr_glBlendFuncIndexed :: FunPtr a
ptr_glBlendFuncIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_draw_buffers_blend"
        "glBlendFuncIndexedAMD"
 
glBlendFuncIndexed :: GLuint -> GLenum -> GLenum -> IO ()
glBlendFuncIndexed = dyn_glBlendFuncIndexed ptr_glBlendFuncIndexed
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendFuncIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendEquationSeparateIndexed #-}
 
ptr_glBlendEquationSeparateIndexed :: FunPtr a
ptr_glBlendEquationSeparateIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_draw_buffers_blend"
        "glBlendEquationSeparateIndexedAMD"
 
glBlendEquationSeparateIndexed ::
                               GLuint -> GLenum -> GLenum -> IO ()
glBlendEquationSeparateIndexed
  = dyn_glBlendEquationSeparateIndexed
      ptr_glBlendEquationSeparateIndexed
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBlendEquationSeparateIndexed ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendEquationIndexed #-}
 
ptr_glBlendEquationIndexed :: FunPtr a
ptr_glBlendEquationIndexed
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_draw_buffers_blend"
        "glBlendEquationIndexedAMD"
 
glBlendEquationIndexed :: GLuint -> GLenum -> IO ()
glBlendEquationIndexed
  = dyn_glBlendEquationIndexed ptr_glBlendEquationIndexed
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendEquationIndexed
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())