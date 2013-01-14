{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexProgram2Option
       (gl_MAX_PROGRAM_EXEC_INSTRUCTIONS, gl_MAX_PROGRAM_CALL_DEPTH) where
import Graphics.Rendering.OpenGL.Raw.NV.FragmentProgram2
       (gl_MAX_PROGRAM_EXEC_INSTRUCTIONS, gl_MAX_PROGRAM_CALL_DEPTH)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions