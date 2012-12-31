module Graphics.Rendering.OpenGL.Raw.ARB.ShaderSubroutine
       (glUniformSubroutinesuiv, glGetUniformSubroutineuiv,
        glGetSubroutineUniformLocation, glGetSubroutineIndex,
        glGetProgramStageiv, glGetActiveSubroutineUniformiv,
        glGetActiveSubroutineUniformName, glGetActiveSubroutineName,
        gl_UNIFORM_SIZE, gl_UNIFORM_NAME_LENGTH,
        gl_NUM_COMPATIBLE_SUBROUTINES, gl_MAX_SUBROUTINE_UNIFORM_LOCATIONS,
        gl_MAX_SUBROUTINES, gl_COMPATIBLE_SUBROUTINES,
        gl_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH,
        gl_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS,
        gl_ACTIVE_SUBROUTINE_UNIFORMS, gl_ACTIVE_SUBROUTINE_MAX_LENGTH,
        gl_ACTIVE_SUBROUTINES)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core40
       (glUniformSubroutinesuiv, glGetUniformSubroutineuiv,
        glGetSubroutineUniformLocation, glGetSubroutineIndex,
        glGetProgramStageiv, glGetActiveSubroutineUniformiv,
        glGetActiveSubroutineUniformName, glGetActiveSubroutineName,
        gl_NUM_COMPATIBLE_SUBROUTINES, gl_MAX_SUBROUTINE_UNIFORM_LOCATIONS,
        gl_MAX_SUBROUTINES, gl_COMPATIBLE_SUBROUTINES,
        gl_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH,
        gl_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS,
        gl_ACTIVE_SUBROUTINE_UNIFORMS, gl_ACTIVE_SUBROUTINE_MAX_LENGTH,
        gl_ACTIVE_SUBROUTINES)
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core31
       (gl_UNIFORM_SIZE, gl_UNIFORM_NAME_LENGTH)