{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.GeometryShader4
       (glProgramParameteri, glFramebufferTextureLayer,
        glFramebufferTextureFace, glFramebufferTexture,
        gl_TRIANGLE_STRIP_ADJACENCY, gl_TRIANGLES_ADJACENCY,
        gl_PROGRAM_POINT_SIZE, gl_MAX_VERTEX_VARYING_COMPONENTS,
        gl_MAX_VARYING_COMPONENTS, gl_MAX_GEOMETRY_VARYING_COMPONENTS,
        gl_MAX_GEOMETRY_UNIFORM_COMPONENTS,
        gl_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS,
        gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS,
        gl_MAX_GEOMETRY_OUTPUT_VERTICES, gl_LINE_STRIP_ADJACENCY,
        gl_LINES_ADJACENCY, gl_GEOMETRY_VERTICES_OUT, gl_GEOMETRY_SHADER,
        gl_GEOMETRY_OUTPUT_TYPE, gl_GEOMETRY_INPUT_TYPE,
        gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS,
        gl_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER,
        gl_FRAMEBUFFER_ATTACHMENT_LAYERED)
       where
import Graphics.Rendering.OpenGL.Raw.Core.Internal.Core30
       (gl_MAX_VARYING_COMPONENTS,
        gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER)
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glProgramParameteri #-}
 
ptr_glProgramParameteri :: FunPtr a
ptr_glProgramParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_geometry_shader4"
        "glProgramParameteriARB"
 
glProgramParameteri :: GLuint -> GLenum -> GLint -> IO ()
glProgramParameteri
  = dyn_glProgramParameteri ptr_glProgramParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glProgramParameteri ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glFramebufferTextureLayer #-}
 
ptr_glFramebufferTextureLayer :: FunPtr a
ptr_glFramebufferTextureLayer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_geometry_shader4"
        "glFramebufferTextureLayerARB"
 
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
        "GL_ARB_geometry_shader4"
        "glFramebufferTextureFaceARB"
 
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
        "GL_ARB_geometry_shader4"
        "glFramebufferTextureARB"
 
glFramebufferTexture ::
                     GLenum -> GLenum -> GLuint -> GLint -> IO ()
glFramebufferTexture
  = dyn_glFramebufferTexture ptr_glFramebufferTexture
 
foreign import CALLCONV unsafe "dynamic" dyn_glFramebufferTexture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLuint -> GLint -> IO ())
 
gl_TRIANGLE_STRIP_ADJACENCY :: GLenum
gl_TRIANGLE_STRIP_ADJACENCY = 13
 
gl_TRIANGLES_ADJACENCY :: GLenum
gl_TRIANGLES_ADJACENCY = 12
 
gl_PROGRAM_POINT_SIZE :: GLenum
gl_PROGRAM_POINT_SIZE = 34370
 
gl_MAX_VERTEX_VARYING_COMPONENTS :: GLenum
gl_MAX_VERTEX_VARYING_COMPONENTS = 36318
 
gl_MAX_GEOMETRY_VARYING_COMPONENTS :: GLenum
gl_MAX_GEOMETRY_VARYING_COMPONENTS = 36317
 
gl_MAX_GEOMETRY_UNIFORM_COMPONENTS :: GLenum
gl_MAX_GEOMETRY_UNIFORM_COMPONENTS = 36319
 
gl_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS :: GLenum
gl_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = 36321
 
gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = 35881
 
gl_MAX_GEOMETRY_OUTPUT_VERTICES :: GLenum
gl_MAX_GEOMETRY_OUTPUT_VERTICES = 36320
 
gl_LINE_STRIP_ADJACENCY :: GLenum
gl_LINE_STRIP_ADJACENCY = 11
 
gl_LINES_ADJACENCY :: GLenum
gl_LINES_ADJACENCY = 10
 
gl_GEOMETRY_VERTICES_OUT :: GLenum
gl_GEOMETRY_VERTICES_OUT = 36314
 
gl_GEOMETRY_SHADER :: GLenum
gl_GEOMETRY_SHADER = 36313
 
gl_GEOMETRY_OUTPUT_TYPE :: GLenum
gl_GEOMETRY_OUTPUT_TYPE = 36316
 
gl_GEOMETRY_INPUT_TYPE :: GLenum
gl_GEOMETRY_INPUT_TYPE = 36315
 
gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = 36264
 
gl_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT = 36265
 
gl_FRAMEBUFFER_ATTACHMENT_LAYERED :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_LAYERED = 36263