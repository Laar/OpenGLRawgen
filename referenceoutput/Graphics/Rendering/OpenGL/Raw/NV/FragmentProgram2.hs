{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.FragmentProgram2
       (gl_MAX_PROGRAM_LOOP_COUNT_NV, gl_MAX_PROGRAM_LOOP_DEPTH_NV,
        gl_MAX_PROGRAM_IF_DEPTH_NV, gl_MAX_PROGRAM_CALL_DEPTH_NV,
        gl_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MAX_PROGRAM_LOOP_COUNT_NV :: GLenum
gl_MAX_PROGRAM_LOOP_COUNT_NV = 35064
 
gl_MAX_PROGRAM_LOOP_DEPTH_NV :: GLenum
gl_MAX_PROGRAM_LOOP_DEPTH_NV = 35063
 
gl_MAX_PROGRAM_IF_DEPTH_NV :: GLenum
gl_MAX_PROGRAM_IF_DEPTH_NV = 35062
 
gl_MAX_PROGRAM_CALL_DEPTH_NV :: GLenum
gl_MAX_PROGRAM_CALL_DEPTH_NV = 35061
 
gl_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV :: GLenum
gl_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV = 35060