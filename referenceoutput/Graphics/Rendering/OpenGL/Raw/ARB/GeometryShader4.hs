{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.GeometryShader4
       (glFramebufferTextureFaceARB, glFramebufferTextureLayerARB,
        glFramebufferTextureARB, glProgramParameteriARB,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER, gl_MAX_VARYING_COMPONENTS,
        gl_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB,
        gl_MAX_GEOMETRY_OUTPUT_VERTICES_ARB,
        gl_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB,
        gl_MAX_VERTEX_VARYING_COMPONENTS_ARB,
        gl_MAX_GEOMETRY_VARYING_COMPONENTS_ARB,
        gl_GEOMETRY_OUTPUT_TYPE_ARB, gl_GEOMETRY_INPUT_TYPE_ARB,
        gl_GEOMETRY_VERTICES_OUT_ARB, gl_GEOMETRY_SHADER_ARB,
        gl_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB,
        gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB,
        gl_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB,
        gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB, gl_PROGRAM_POINT_SIZE_ARB,
        gl_TRIANGLE_STRIP_ADJACENCY_ARB, gl_TRIANGLES_ADJACENCY_ARB,
        gl_LINE_STRIP_ADJACENCY_ARB, gl_LINES_ADJACENCY_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core30
       (gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER,
        gl_MAX_VARYING_COMPONENTS)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glFramebufferTextureFaceARB #-}
 
ptr_glFramebufferTextureFaceARB :: FunPtr a
ptr_glFramebufferTextureFaceARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_geometry_shader4"
        "glFramebufferTextureFaceARB"
 
glFramebufferTextureFaceARB ::
                            GLenum -> GLenum -> GLuint -> GLint -> GLenum -> IO ()
glFramebufferTextureFaceARB
  = dyn_glFramebufferTextureFaceARB ptr_glFramebufferTextureFaceARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferTextureFaceARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLint -> GLenum -> IO ())
 
{-# NOINLINE ptr_glFramebufferTextureLayerARB #-}
 
ptr_glFramebufferTextureLayerARB :: FunPtr a
ptr_glFramebufferTextureLayerARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_geometry_shader4"
        "glFramebufferTextureLayerARB"
 
glFramebufferTextureLayerARB ::
                             GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()
glFramebufferTextureLayerARB
  = dyn_glFramebufferTextureLayerARB ptr_glFramebufferTextureLayerARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glFramebufferTextureLayerARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferTextureARB #-}
 
ptr_glFramebufferTextureARB :: FunPtr a
ptr_glFramebufferTextureARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_geometry_shader4"
        "glFramebufferTextureARB"
 
glFramebufferTextureARB ::
                        GLenum -> GLenum -> GLuint -> GLint -> IO ()
glFramebufferTextureARB
  = dyn_glFramebufferTextureARB ptr_glFramebufferTextureARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glFramebufferTextureARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
{-# NOINLINE ptr_glProgramParameteriARB #-}
 
ptr_glProgramParameteriARB :: FunPtr a
ptr_glProgramParameteriARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_geometry_shader4"
        "glProgramParameteriARB"
 
glProgramParameteriARB :: GLuint -> GLenum -> GLint -> IO ()
glProgramParameteriARB
  = dyn_glProgramParameteriARB ptr_glProgramParameteriARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramParameteriARB
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> IO ())
 
gl_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB :: GLenum
gl_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB = 36321
 
gl_MAX_GEOMETRY_OUTPUT_VERTICES_ARB :: GLenum
gl_MAX_GEOMETRY_OUTPUT_VERTICES_ARB = 36320
 
gl_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB :: GLenum
gl_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB = 36319
 
gl_MAX_VERTEX_VARYING_COMPONENTS_ARB :: GLenum
gl_MAX_VERTEX_VARYING_COMPONENTS_ARB = 36318
 
gl_MAX_GEOMETRY_VARYING_COMPONENTS_ARB :: GLenum
gl_MAX_GEOMETRY_VARYING_COMPONENTS_ARB = 36317
 
gl_GEOMETRY_OUTPUT_TYPE_ARB :: GLenum
gl_GEOMETRY_OUTPUT_TYPE_ARB = 36316
 
gl_GEOMETRY_INPUT_TYPE_ARB :: GLenum
gl_GEOMETRY_INPUT_TYPE_ARB = 36315
 
gl_GEOMETRY_VERTICES_OUT_ARB :: GLenum
gl_GEOMETRY_VERTICES_OUT_ARB = 36314
 
gl_GEOMETRY_SHADER_ARB :: GLenum
gl_GEOMETRY_SHADER_ARB = 36313
 
gl_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB = 36265
 
gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB = 36264
 
gl_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB = 36263
 
gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB :: GLenum
gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB = 35881
 
gl_PROGRAM_POINT_SIZE_ARB :: GLenum
gl_PROGRAM_POINT_SIZE_ARB = 34370
 
gl_TRIANGLE_STRIP_ADJACENCY_ARB :: GLenum
gl_TRIANGLE_STRIP_ADJACENCY_ARB = 13
 
gl_TRIANGLES_ADJACENCY_ARB :: GLenum
gl_TRIANGLES_ADJACENCY_ARB = 12
 
gl_LINE_STRIP_ADJACENCY_ARB :: GLenum
gl_LINE_STRIP_ADJACENCY_ARB = 11
 
gl_LINES_ADJACENCY_ARB :: GLenum
gl_LINES_ADJACENCY_ARB = 10