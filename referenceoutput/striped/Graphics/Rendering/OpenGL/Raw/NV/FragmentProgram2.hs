{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.FragmentProgram2
       (gl_MAX_PROGRAM_LOOP_DEPTH, gl_MAX_PROGRAM_LOOP_COUNT,
        gl_MAX_PROGRAM_IF_DEPTH, gl_MAX_PROGRAM_EXEC_INSTRUCTIONS,
        gl_MAX_PROGRAM_CALL_DEPTH)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MAX_PROGRAM_LOOP_DEPTH :: GLenum
gl_MAX_PROGRAM_LOOP_DEPTH = 35063
 
gl_MAX_PROGRAM_LOOP_COUNT :: GLenum
gl_MAX_PROGRAM_LOOP_COUNT = 35064
 
gl_MAX_PROGRAM_IF_DEPTH :: GLenum
gl_MAX_PROGRAM_IF_DEPTH = 35062
 
gl_MAX_PROGRAM_EXEC_INSTRUCTIONS :: GLenum
gl_MAX_PROGRAM_EXEC_INSTRUCTIONS = 35060
 
gl_MAX_PROGRAM_CALL_DEPTH :: GLenum
gl_MAX_PROGRAM_CALL_DEPTH = 35061