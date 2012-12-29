{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.RegisterCombiners2
       (glGetCombinerStageParameterfvNV, glCombinerStageParameterfvNV,
        gl_PER_STAGE_CONSTANTS_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetCombinerStageParameterfvNV #-}
 
ptr_glGetCombinerStageParameterfvNV :: FunPtr a
ptr_glGetCombinerStageParameterfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners2"
        "glGetCombinerStageParameterfvNV"
 
glGetCombinerStageParameterfvNV ::
                                GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetCombinerStageParameterfvNV
  = dyn_glGetCombinerStageParameterfvNV
      ptr_glGetCombinerStageParameterfvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCombinerStageParameterfvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glCombinerStageParameterfvNV #-}
 
ptr_glCombinerStageParameterfvNV :: FunPtr a
ptr_glCombinerStageParameterfvNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners2"
        "glCombinerStageParameterfvNV"
 
glCombinerStageParameterfvNV ::
                             GLenum -> GLenum -> Ptr GLfloat -> IO ()
glCombinerStageParameterfvNV
  = dyn_glCombinerStageParameterfvNV ptr_glCombinerStageParameterfvNV
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCombinerStageParameterfvNV ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
gl_PER_STAGE_CONSTANTS_NV :: GLenum
gl_PER_STAGE_CONSTANTS_NV = 34101