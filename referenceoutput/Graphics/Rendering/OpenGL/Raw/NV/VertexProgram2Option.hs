{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexProgram2Option
       (gl_MAX_PROGRAM_CALL_DEPTH_NV, gl_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV)
       where
import Graphics.Rendering.OpenGL.Raw.NV.FragmentProgram2
       (gl_MAX_PROGRAM_CALL_DEPTH_NV, gl_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions