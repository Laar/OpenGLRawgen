module Graphics.Rendering.OpenGL.Raw.ARB.CopyBuffer
       (glCopyBufferSubData, gl_COPY_WRITE_BUFFER_BINDING,
        gl_COPY_WRITE_BUFFER, gl_COPY_READ_BUFFER_BINDING,
        gl_COPY_READ_BUFFER)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core31
       (glCopyBufferSubData, gl_COPY_WRITE_BUFFER, gl_COPY_WRITE_BUFFER,
        gl_COPY_READ_BUFFER, gl_COPY_READ_BUFFER)
 
gl_COPY_WRITE_BUFFER_BINDING :: GLenum
gl_COPY_WRITE_BUFFER_BINDING = gl_COPY_WRITE_BUFFER
 
gl_COPY_READ_BUFFER_BINDING :: GLenum
gl_COPY_READ_BUFFER_BINDING = gl_COPY_READ_BUFFER