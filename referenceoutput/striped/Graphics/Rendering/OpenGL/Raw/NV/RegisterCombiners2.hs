{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.RegisterCombiners2
       (glGetCombinerStageParameterfv, glCombinerStageParameterfv,
        gl_PER_STAGE_CONSTANTS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetCombinerStageParameterfv #-}
 
ptr_glGetCombinerStageParameterfv :: FunPtr a
ptr_glGetCombinerStageParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners2"
        "glGetCombinerStageParameterfvNV"
 
glGetCombinerStageParameterfv ::
                              GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetCombinerStageParameterfv
  = dyn_glGetCombinerStageParameterfv
      ptr_glGetCombinerStageParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetCombinerStageParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glCombinerStageParameterfv #-}
 
ptr_glCombinerStageParameterfv :: FunPtr a
ptr_glCombinerStageParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_register_combiners2"
        "glCombinerStageParameterfvNV"
 
glCombinerStageParameterfv ::
                           GLenum -> GLenum -> Ptr GLfloat -> IO ()
glCombinerStageParameterfv
  = dyn_glCombinerStageParameterfv ptr_glCombinerStageParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCombinerStageParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
gl_PER_STAGE_CONSTANTS :: GLenum
gl_PER_STAGE_CONSTANTS = 34101