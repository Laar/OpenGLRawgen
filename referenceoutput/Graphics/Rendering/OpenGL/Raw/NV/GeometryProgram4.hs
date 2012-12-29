{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.GeometryProgram4
       (glFramebufferTextureFaceEXT, glFramebufferTextureLayerEXT,
        glFramebufferTextureEXT, glProgramVertexLimitNV,
        gl_PROGRAM_POINT_SIZE_EXT,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT,
        gl_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT,
        gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT,
        gl_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT,
        gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT,
        gl_GEOMETRY_OUTPUT_TYPE_EXT, gl_GEOMETRY_INPUT_TYPE_EXT,
        gl_GEOMETRY_VERTICES_OUT_EXT,
        gl_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV,
        gl_MAX_PROGRAM_OUTPUT_VERTICES_NV, gl_GEOMETRY_PROGRAM_NV,
        gl_TRIANGLE_STRIP_ADJACENCY_EXT, gl_TRIANGLES_ADJACENCY_EXT,
        gl_LINE_STRIP_ADJACENCY_EXT, gl_LINES_ADJACENCY_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.EXT.GeometryShader4
       (gl_PROGRAM_POINT_SIZE_EXT,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT,
        gl_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT,
        gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT,
        gl_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT,
        gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT,
        gl_GEOMETRY_OUTPUT_TYPE_EXT, gl_GEOMETRY_INPUT_TYPE_EXT,
        gl_GEOMETRY_VERTICES_OUT_EXT, gl_TRIANGLE_STRIP_ADJACENCY_EXT,
        gl_TRIANGLES_ADJACENCY_EXT, gl_LINE_STRIP_ADJACENCY_EXT,
        gl_LINES_ADJACENCY_EXT)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glFramebufferTextureFaceEXT #-}
 
ptr_glFramebufferTextureFaceEXT :: FunPtr a
ptr_glFramebufferTextureFaceEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_geometry_program4"
        "glFramebufferTextureFaceEXT"
 
glFramebufferTextureFaceEXT ::
                            GLenum -> GLenum -> GLuint -> GLint -> GLenum -> IO ()
glFramebufferTextureFaceEXT
  = dyn_glFramebufferTextureFaceEXT ptr_glFramebufferTextureFaceEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferTextureFaceEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glFramebufferTextureLayerEXT #-}
 
ptr_glFramebufferTextureLayerEXT :: FunPtr a
ptr_glFramebufferTextureLayerEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_geometry_program4"
        "glFramebufferTextureLayerEXT"
 
glFramebufferTextureLayerEXT ::
                             GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()
glFramebufferTextureLayerEXT
  = dyn_glFramebufferTextureLayerEXT ptr_glFramebufferTextureLayerEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferTextureLayerEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferTextureEXT #-}
 
ptr_glFramebufferTextureEXT :: FunPtr a
ptr_glFramebufferTextureEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_geometry_program4"
        "glFramebufferTextureEXT"
 
glFramebufferTextureEXT ::
                        GLenum -> GLenum -> GLuint -> GLint -> IO ()
glFramebufferTextureEXT
  = dyn_glFramebufferTextureEXT ptr_glFramebufferTextureEXT
 
foreign import CALLCONV unsafe "dynamic" dyn_glFramebufferTextureEXT
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramVertexLimitNV #-}
 
ptr_glProgramVertexLimitNV :: FunPtr a
ptr_glProgramVertexLimitNV
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_geometry_program4"
        "glProgramVertexLimitNV"
 
glProgramVertexLimitNV :: GLenum -> GLint -> IO ()
glProgramVertexLimitNV
  = dyn_glProgramVertexLimitNV ptr_glProgramVertexLimitNV
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramVertexLimitNV
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
gl_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV :: GLenum
gl_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV = 35880
 
gl_MAX_PROGRAM_OUTPUT_VERTICES_NV :: GLenum
gl_MAX_PROGRAM_OUTPUT_VERTICES_NV = 35879
 
gl_GEOMETRY_PROGRAM_NV :: GLenum
gl_GEOMETRY_PROGRAM_NV = 35878