{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.GeometryProgram4
       (glProgramVertexLimit, glFramebufferTextureLayer,
        glFramebufferTextureFace, glFramebufferTexture,
        gl_TRIANGLE_STRIP_ADJACENCY, gl_TRIANGLES_ADJACENCY,
        gl_PROGRAM_POINT_SIZE, gl_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS,
        gl_MAX_PROGRAM_OUTPUT_VERTICES,
        gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS, gl_LINE_STRIP_ADJACENCY,
        gl_LINES_ADJACENCY, gl_GEOMETRY_VERTICES_OUT, gl_GEOMETRY_PROGRAM,
        gl_GEOMETRY_OUTPUT_TYPE, gl_GEOMETRY_INPUT_TYPE,
        gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS,
        gl_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER,
        gl_FRAMEBUFFER_ATTACHMENT_LAYERED)
       where
import Graphics.Rendering.OpenGL.Raw.EXT.GeometryShader4
       (gl_TRIANGLE_STRIP_ADJACENCY, gl_TRIANGLES_ADJACENCY,
        gl_PROGRAM_POINT_SIZE, gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS,
        gl_LINE_STRIP_ADJACENCY, gl_LINES_ADJACENCY,
        gl_GEOMETRY_VERTICES_OUT, gl_GEOMETRY_OUTPUT_TYPE,
        gl_GEOMETRY_INPUT_TYPE, gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS,
        gl_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER,
        gl_FRAMEBUFFER_ATTACHMENT_LAYERED)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glProgramVertexLimit #-}
 
ptr_glProgramVertexLimit :: FunPtr a
ptr_glProgramVertexLimit
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_geometry_program4"
        "glProgramVertexLimitNV"
 
glProgramVertexLimit :: GLenum -> GLint -> IO ()
glProgramVertexLimit
  = dyn_glProgramVertexLimit ptr_glProgramVertexLimit
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramVertexLimit ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferTextureLayer #-}
 
ptr_glFramebufferTextureLayer :: FunPtr a
ptr_glFramebufferTextureLayer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_geometry_program4"
        "glFramebufferTextureLayerEXT"
 
glFramebufferTextureLayer ::
                          GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()
glFramebufferTextureLayer
  = dyn_glFramebufferTextureLayer ptr_glFramebufferTextureLayer
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferTextureLayer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferTextureFace #-}
 
ptr_glFramebufferTextureFace :: FunPtr a
ptr_glFramebufferTextureFace
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_geometry_program4"
        "glFramebufferTextureFaceEXT"
 
glFramebufferTextureFace ::
                         GLenum -> GLenum -> GLuint -> GLint -> GLenum -> IO ()
glFramebufferTextureFace
  = dyn_glFramebufferTextureFace ptr_glFramebufferTextureFace
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferTextureFace ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glFramebufferTexture #-}
 
ptr_glFramebufferTexture :: FunPtr a
ptr_glFramebufferTexture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_geometry_program4"
        "glFramebufferTextureEXT"
 
glFramebufferTexture ::
                     GLenum -> GLenum -> GLuint -> GLint -> IO ()
glFramebufferTexture
  = dyn_glFramebufferTexture ptr_glFramebufferTexture
 
foreign import CALLCONV unsafe "dynamic" dyn_glFramebufferTexture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
gl_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS :: GLenum
gl_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS = 35880
 
gl_MAX_PROGRAM_OUTPUT_VERTICES :: GLenum
gl_MAX_PROGRAM_OUTPUT_VERTICES = 35879
 
gl_GEOMETRY_PROGRAM :: GLenum
gl_GEOMETRY_PROGRAM = 35878