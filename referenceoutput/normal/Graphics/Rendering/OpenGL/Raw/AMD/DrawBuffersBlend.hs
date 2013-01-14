{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.AMD.DrawBuffersBlend
       (glBlendFuncSeparateIndexedAMD, glBlendFuncIndexedAMD,
        glBlendEquationSeparateIndexedAMD, glBlendEquationIndexedAMD)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glBlendFuncSeparateIndexedAMD #-}
 
ptr_glBlendFuncSeparateIndexedAMD :: FunPtr a
ptr_glBlendFuncSeparateIndexedAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_draw_buffers_blend"
        "glBlendFuncSeparateIndexedAMD"
 
glBlendFuncSeparateIndexedAMD ::
                              GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glBlendFuncSeparateIndexedAMD
  = dyn_glBlendFuncSeparateIndexedAMD
      ptr_glBlendFuncSeparateIndexedAMD
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBlendFuncSeparateIndexedAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendFuncIndexedAMD #-}
 
ptr_glBlendFuncIndexedAMD :: FunPtr a
ptr_glBlendFuncIndexedAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_draw_buffers_blend"
        "glBlendFuncIndexedAMD"
 
glBlendFuncIndexedAMD :: GLuint -> GLenum -> GLenum -> IO ()
glBlendFuncIndexedAMD
  = dyn_glBlendFuncIndexedAMD ptr_glBlendFuncIndexedAMD
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendFuncIndexedAMD
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendEquationSeparateIndexedAMD #-}
 
ptr_glBlendEquationSeparateIndexedAMD :: FunPtr a
ptr_glBlendEquationSeparateIndexedAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_draw_buffers_blend"
        "glBlendEquationSeparateIndexedAMD"
 
glBlendEquationSeparateIndexedAMD ::
                                  GLuint -> GLenum -> GLenum -> IO ()
glBlendEquationSeparateIndexedAMD
  = dyn_glBlendEquationSeparateIndexedAMD
      ptr_glBlendEquationSeparateIndexedAMD
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBlendEquationSeparateIndexedAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendEquationIndexedAMD #-}
 
ptr_glBlendEquationIndexedAMD :: FunPtr a
ptr_glBlendEquationIndexedAMD
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_AMD_draw_buffers_blend"
        "glBlendEquationIndexedAMD"
 
glBlendEquationIndexedAMD :: GLuint -> GLenum -> IO ()
glBlendEquationIndexedAMD
  = dyn_glBlendEquationIndexedAMD ptr_glBlendEquationIndexedAMD
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glBlendEquationIndexedAMD ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> IO ())