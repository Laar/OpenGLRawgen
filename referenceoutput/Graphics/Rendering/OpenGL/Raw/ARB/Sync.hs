module Graphics.Rendering.OpenGL.Raw.ARB.Sync
       (glWaitSync, glIsSync, glGetSynciv, glGetInteger64v, glFenceSync,
        glDeleteSync, glClientWaitSync, gl_WAIT_FAILED, gl_UNSIGNALED,
        gl_TIMEOUT_IGNORED, gl_TIMEOUT_EXPIRED, gl_SYNC_STATUS,
        gl_SYNC_GPU_COMMANDS_COMPLETE, gl_SYNC_FLUSH_COMMANDS_BIT,
        gl_SYNC_FLAGS, gl_SYNC_FENCE, gl_SYNC_CONDITION, gl_SIGNALED,
        gl_OBJECT_TYPE, gl_MAX_SERVER_WAIT_TIMEOUT, gl_CONDITION_SATISFIED,
        gl_ALREADY_SIGNALED)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core32
       (glWaitSync, glIsSync, glGetSynciv, glGetInteger64v, glFenceSync,
        glDeleteSync, glClientWaitSync, gl_WAIT_FAILED, gl_UNSIGNALED,
        gl_TIMEOUT_IGNORED, gl_TIMEOUT_EXPIRED, gl_SYNC_STATUS,
        gl_SYNC_GPU_COMMANDS_COMPLETE, gl_SYNC_FLUSH_COMMANDS_BIT,
        gl_SYNC_FLAGS, gl_SYNC_FENCE, gl_SYNC_CONDITION, gl_SIGNALED,
        gl_OBJECT_TYPE, gl_MAX_SERVER_WAIT_TIMEOUT, gl_CONDITION_SATISFIED,
        gl_ALREADY_SIGNALED)