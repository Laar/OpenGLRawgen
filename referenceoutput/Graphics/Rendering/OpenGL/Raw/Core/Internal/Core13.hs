{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core13
       (glGetCompressedTexImage, glCompressedTexSubImage1D,
        glCompressedTexSubImage2D, glCompressedTexSubImage3D,
        glCompressedTexImage1D, glCompressedTexImage2D,
        glCompressedTexImage3D, glSampleCoverage, glActiveTexture,
        gl_CLAMP_TO_BORDER, gl_COMPRESSED_TEXTURE_FORMATS,
        gl_NUM_COMPRESSED_TEXTURE_FORMATS, gl_TEXTURE_COMPRESSED,
        gl_TEXTURE_COMPRESSED_IMAGE_SIZE, gl_TEXTURE_COMPRESSION_HINT,
        gl_COMPRESSED_RGBA, gl_COMPRESSED_RGB,
        gl_MAX_CUBE_MAP_TEXTURE_SIZE, gl_PROXY_TEXTURE_CUBE_MAP,
        gl_TEXTURE_CUBE_MAP_NEGATIVE_Z, gl_TEXTURE_CUBE_MAP_POSITIVE_Z,
        gl_TEXTURE_CUBE_MAP_NEGATIVE_Y, gl_TEXTURE_CUBE_MAP_POSITIVE_Y,
        gl_TEXTURE_CUBE_MAP_NEGATIVE_X, gl_TEXTURE_CUBE_MAP_POSITIVE_X,
        gl_TEXTURE_BINDING_CUBE_MAP, gl_TEXTURE_CUBE_MAP,
        gl_SAMPLE_COVERAGE_INVERT, gl_SAMPLE_COVERAGE_VALUE, gl_SAMPLES,
        gl_SAMPLE_BUFFERS, gl_SAMPLE_COVERAGE, gl_SAMPLE_ALPHA_TO_ONE,
        gl_SAMPLE_ALPHA_TO_COVERAGE, gl_MULTISAMPLE, gl_ACTIVE_TEXTURE,
        gl_TEXTURE31, gl_TEXTURE30, gl_TEXTURE29, gl_TEXTURE28,
        gl_TEXTURE27, gl_TEXTURE26, gl_TEXTURE25, gl_TEXTURE24,
        gl_TEXTURE23, gl_TEXTURE22, gl_TEXTURE21, gl_TEXTURE20,
        gl_TEXTURE19, gl_TEXTURE18, gl_TEXTURE17, gl_TEXTURE16,
        gl_TEXTURE15, gl_TEXTURE14, gl_TEXTURE13, gl_TEXTURE12,
        gl_TEXTURE11, gl_TEXTURE10, gl_TEXTURE9, gl_TEXTURE8, gl_TEXTURE7,
        gl_TEXTURE6, gl_TEXTURE5, gl_TEXTURE4, gl_TEXTURE3, gl_TEXTURE2,
        gl_TEXTURE1, gl_TEXTURE0)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glGetCompressedTexImage #-}
 
ptr_glGetCompressedTexImage :: FunPtr a
ptr_glGetCompressedTexImage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3"
        "glGetCompressedTexImage"
 
glGetCompressedTexImage :: GLenum -> GLint -> Ptr a -> IO ()
glGetCompressedTexImage
  = dyn_glGetCompressedTexImage ptr_glGetCompressedTexImage
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetCompressedTexImage
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexSubImage1D #-}
 
ptr_glCompressedTexSubImage1D :: FunPtr a
ptr_glCompressedTexSubImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3"
        "glCompressedTexSubImage1D"
 
glCompressedTexSubImage1D ::
                          GLenum ->
                            GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTexSubImage1D
  = dyn_glCompressedTexSubImage1D ptr_glCompressedTexSubImage1D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTexSubImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexSubImage2D #-}
 
ptr_glCompressedTexSubImage2D :: FunPtr a
ptr_glCompressedTexSubImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3"
        "glCompressedTexSubImage2D"
 
glCompressedTexSubImage2D ::
                          GLenum ->
                            GLint ->
                              GLint ->
                                GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTexSubImage2D
  = dyn_glCompressedTexSubImage2D ptr_glCompressedTexSubImage2D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTexSubImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexSubImage3D #-}
 
ptr_glCompressedTexSubImage3D :: FunPtr a
ptr_glCompressedTexSubImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3"
        "glCompressedTexSubImage3D"
 
glCompressedTexSubImage3D ::
                          GLenum ->
                            GLint ->
                              GLint ->
                                GLint ->
                                  GLint ->
                                    GLsizei ->
                                      GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ()
glCompressedTexSubImage3D
  = dyn_glCompressedTexSubImage3D ptr_glCompressedTexSubImage3D
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glCompressedTexSubImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLsizei ->
                              GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexImage1D #-}
 
ptr_glCompressedTexImage1D :: FunPtr a
ptr_glCompressedTexImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3"
        "glCompressedTexImage1D"
 
glCompressedTexImage1D ::
                       GLenum ->
                         GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTexImage1D
  = dyn_glCompressedTexImage1D ptr_glCompressedTexImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCompressedTexImage1D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexImage2D #-}
 
ptr_glCompressedTexImage2D :: FunPtr a
ptr_glCompressedTexImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3"
        "glCompressedTexImage2D"
 
glCompressedTexImage2D ::
                       GLenum ->
                         GLint ->
                           GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTexImage2D
  = dyn_glCompressedTexImage2D ptr_glCompressedTexImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCompressedTexImage2D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCompressedTexImage3D #-}
 
ptr_glCompressedTexImage3D :: FunPtr a
ptr_glCompressedTexImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3"
        "glCompressedTexImage3D"
 
glCompressedTexImage3D ::
                       GLenum ->
                         GLint ->
                           GLenum ->
                             GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ()
glCompressedTexImage3D
  = dyn_glCompressedTexImage3D ptr_glCompressedTexImage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCompressedTexImage3D
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLenum ->
                        GLsizei ->
                          GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glSampleCoverage #-}
 
ptr_glSampleCoverage :: FunPtr a
ptr_glSampleCoverage
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3"
        "glSampleCoverage"
 
glSampleCoverage :: GLclampf -> GLboolean -> IO ()
glSampleCoverage = dyn_glSampleCoverage ptr_glSampleCoverage
 
foreign import CALLCONV unsafe "dynamic" dyn_glSampleCoverage ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLclampf -> GLboolean -> IO ())
 
{-# NOINLINE ptr_glActiveTexture #-}
 
ptr_glActiveTexture :: FunPtr a
ptr_glActiveTexture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_3"
        "glActiveTexture"
 
glActiveTexture :: GLenum -> IO ()
glActiveTexture = dyn_glActiveTexture ptr_glActiveTexture
 
foreign import CALLCONV unsafe "dynamic" dyn_glActiveTexture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
gl_CLAMP_TO_BORDER :: GLenum
gl_CLAMP_TO_BORDER = 33069
 
gl_COMPRESSED_TEXTURE_FORMATS :: GLenum
gl_COMPRESSED_TEXTURE_FORMATS = 34467
 
gl_NUM_COMPRESSED_TEXTURE_FORMATS :: GLenum
gl_NUM_COMPRESSED_TEXTURE_FORMATS = 34466
 
gl_TEXTURE_COMPRESSED :: GLenum
gl_TEXTURE_COMPRESSED = 34465
 
gl_TEXTURE_COMPRESSED_IMAGE_SIZE :: GLenum
gl_TEXTURE_COMPRESSED_IMAGE_SIZE = 34464
 
gl_TEXTURE_COMPRESSION_HINT :: GLenum
gl_TEXTURE_COMPRESSION_HINT = 34031
 
gl_COMPRESSED_RGBA :: GLenum
gl_COMPRESSED_RGBA = 34030
 
gl_COMPRESSED_RGB :: GLenum
gl_COMPRESSED_RGB = 34029
 
gl_MAX_CUBE_MAP_TEXTURE_SIZE :: GLenum
gl_MAX_CUBE_MAP_TEXTURE_SIZE = 34076
 
gl_PROXY_TEXTURE_CUBE_MAP :: GLenum
gl_PROXY_TEXTURE_CUBE_MAP = 34075
 
gl_TEXTURE_CUBE_MAP_NEGATIVE_Z :: GLenum
gl_TEXTURE_CUBE_MAP_NEGATIVE_Z = 34074
 
gl_TEXTURE_CUBE_MAP_POSITIVE_Z :: GLenum
gl_TEXTURE_CUBE_MAP_POSITIVE_Z = 34073
 
gl_TEXTURE_CUBE_MAP_NEGATIVE_Y :: GLenum
gl_TEXTURE_CUBE_MAP_NEGATIVE_Y = 34072
 
gl_TEXTURE_CUBE_MAP_POSITIVE_Y :: GLenum
gl_TEXTURE_CUBE_MAP_POSITIVE_Y = 34071
 
gl_TEXTURE_CUBE_MAP_NEGATIVE_X :: GLenum
gl_TEXTURE_CUBE_MAP_NEGATIVE_X = 34070
 
gl_TEXTURE_CUBE_MAP_POSITIVE_X :: GLenum
gl_TEXTURE_CUBE_MAP_POSITIVE_X = 34069
 
gl_TEXTURE_BINDING_CUBE_MAP :: GLenum
gl_TEXTURE_BINDING_CUBE_MAP = 34068
 
gl_TEXTURE_CUBE_MAP :: GLenum
gl_TEXTURE_CUBE_MAP = 34067
 
gl_SAMPLE_COVERAGE_INVERT :: GLenum
gl_SAMPLE_COVERAGE_INVERT = 32939
 
gl_SAMPLE_COVERAGE_VALUE :: GLenum
gl_SAMPLE_COVERAGE_VALUE = 32938
 
gl_SAMPLES :: GLenum
gl_SAMPLES = 32937
 
gl_SAMPLE_BUFFERS :: GLenum
gl_SAMPLE_BUFFERS = 32936
 
gl_SAMPLE_COVERAGE :: GLenum
gl_SAMPLE_COVERAGE = 32928
 
gl_SAMPLE_ALPHA_TO_ONE :: GLenum
gl_SAMPLE_ALPHA_TO_ONE = 32927
 
gl_SAMPLE_ALPHA_TO_COVERAGE :: GLenum
gl_SAMPLE_ALPHA_TO_COVERAGE = 32926
 
gl_MULTISAMPLE :: GLenum
gl_MULTISAMPLE = 32925
 
gl_ACTIVE_TEXTURE :: GLenum
gl_ACTIVE_TEXTURE = 34016
 
gl_TEXTURE31 :: GLenum
gl_TEXTURE31 = 34015
 
gl_TEXTURE30 :: GLenum
gl_TEXTURE30 = 34014
 
gl_TEXTURE29 :: GLenum
gl_TEXTURE29 = 34013
 
gl_TEXTURE28 :: GLenum
gl_TEXTURE28 = 34012
 
gl_TEXTURE27 :: GLenum
gl_TEXTURE27 = 34011
 
gl_TEXTURE26 :: GLenum
gl_TEXTURE26 = 34010
 
gl_TEXTURE25 :: GLenum
gl_TEXTURE25 = 34009
 
gl_TEXTURE24 :: GLenum
gl_TEXTURE24 = 34008
 
gl_TEXTURE23 :: GLenum
gl_TEXTURE23 = 34007
 
gl_TEXTURE22 :: GLenum
gl_TEXTURE22 = 34006
 
gl_TEXTURE21 :: GLenum
gl_TEXTURE21 = 34005
 
gl_TEXTURE20 :: GLenum
gl_TEXTURE20 = 34004
 
gl_TEXTURE19 :: GLenum
gl_TEXTURE19 = 34003
 
gl_TEXTURE18 :: GLenum
gl_TEXTURE18 = 34002
 
gl_TEXTURE17 :: GLenum
gl_TEXTURE17 = 34001
 
gl_TEXTURE16 :: GLenum
gl_TEXTURE16 = 34000
 
gl_TEXTURE15 :: GLenum
gl_TEXTURE15 = 33999
 
gl_TEXTURE14 :: GLenum
gl_TEXTURE14 = 33998
 
gl_TEXTURE13 :: GLenum
gl_TEXTURE13 = 33997
 
gl_TEXTURE12 :: GLenum
gl_TEXTURE12 = 33996
 
gl_TEXTURE11 :: GLenum
gl_TEXTURE11 = 33995
 
gl_TEXTURE10 :: GLenum
gl_TEXTURE10 = 33994
 
gl_TEXTURE9 :: GLenum
gl_TEXTURE9 = 33993
 
gl_TEXTURE8 :: GLenum
gl_TEXTURE8 = 33992
 
gl_TEXTURE7 :: GLenum
gl_TEXTURE7 = 33991
 
gl_TEXTURE6 :: GLenum
gl_TEXTURE6 = 33990
 
gl_TEXTURE5 :: GLenum
gl_TEXTURE5 = 33989
 
gl_TEXTURE4 :: GLenum
gl_TEXTURE4 = 33988
 
gl_TEXTURE3 :: GLenum
gl_TEXTURE3 = 33987
 
gl_TEXTURE2 :: GLenum
gl_TEXTURE2 = 33986
 
gl_TEXTURE1 :: GLenum
gl_TEXTURE1 = 33985
 
gl_TEXTURE0 :: GLenum
gl_TEXTURE0 = 33984