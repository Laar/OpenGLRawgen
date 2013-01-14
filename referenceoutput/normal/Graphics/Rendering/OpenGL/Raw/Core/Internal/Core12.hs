{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core12
       (glTexSubImage3D, glTexImage3D, glDrawRangeElements,
        glCopyTexSubImage3D, glBlendEquation, glBlendColor,
        gl_UNSIGNED_SHORT_5_6_5_REV, gl_UNSIGNED_SHORT_5_6_5,
        gl_UNSIGNED_SHORT_5_5_5_1, gl_UNSIGNED_SHORT_4_4_4_4_REV,
        gl_UNSIGNED_SHORT_4_4_4_4, gl_UNSIGNED_SHORT_1_5_5_5_REV,
        gl_UNSIGNED_INT_8_8_8_8_REV, gl_UNSIGNED_INT_8_8_8_8,
        gl_UNSIGNED_INT_2_10_10_10_REV, gl_UNSIGNED_INT_10_10_10_2,
        gl_UNSIGNED_BYTE_3_3_2, gl_UNSIGNED_BYTE_2_3_3_REV,
        gl_UNPACK_SKIP_IMAGES, gl_UNPACK_IMAGE_HEIGHT, gl_TEXTURE_WRAP_R,
        gl_TEXTURE_MIN_LOD, gl_TEXTURE_MAX_LOD, gl_TEXTURE_MAX_LEVEL,
        gl_TEXTURE_DEPTH, gl_TEXTURE_BINDING_3D, gl_TEXTURE_BASE_LEVEL,
        gl_TEXTURE_3D, gl_SMOOTH_POINT_SIZE_RANGE,
        gl_SMOOTH_POINT_SIZE_GRANULARITY, gl_SMOOTH_LINE_WIDTH_RANGE,
        gl_SMOOTH_LINE_WIDTH_GRANULARITY, gl_PROXY_TEXTURE_3D,
        gl_PACK_SKIP_IMAGES, gl_PACK_IMAGE_HEIGHT,
        gl_ONE_MINUS_CONSTANT_COLOR, gl_ONE_MINUS_CONSTANT_ALPHA, gl_MIN,
        gl_MAX_ELEMENTS_VERTICES, gl_MAX_ELEMENTS_INDICES,
        gl_MAX_3D_TEXTURE_SIZE, gl_MAX, gl_FUNC_SUBTRACT,
        gl_FUNC_REVERSE_SUBTRACT, gl_FUNC_ADD, gl_CONSTANT_COLOR,
        gl_CONSTANT_ALPHA, gl_CLAMP_TO_EDGE, gl_BLEND_EQUATION,
        gl_BLEND_COLOR, gl_BGRA, gl_BGR, gl_ALIASED_LINE_WIDTH_RANGE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexSubImage3D #-}
 
ptr_glTexSubImage3D :: FunPtr a
ptr_glTexSubImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2"
        "glTexSubImage3D"
 
glTexSubImage3D ::
                GLenum ->
                  GLint ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTexSubImage3D = dyn_glTexSubImage3D ptr_glTexSubImage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexSubImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLsizei ->
                              GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTexImage3D #-}
 
ptr_glTexImage3D :: FunPtr a
ptr_glTexImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2"
        "glTexImage3D"
 
glTexImage3D ::
             GLenum ->
               GLint ->
                 GLint ->
                   GLsizei ->
                     GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ()
glTexImage3D = dyn_glTexImage3D ptr_glTexImage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLsizei ->
                          GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glDrawRangeElements #-}
 
ptr_glDrawRangeElements :: FunPtr a
ptr_glDrawRangeElements
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2"
        "glDrawRangeElements"
 
glDrawRangeElements ::
                    GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr a -> IO ()
glDrawRangeElements
  = dyn_glDrawRangeElements ptr_glDrawRangeElements
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawRangeElements ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glCopyTexSubImage3D #-}
 
ptr_glCopyTexSubImage3D :: FunPtr a
ptr_glCopyTexSubImage3D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2"
        "glCopyTexSubImage3D"
 
glCopyTexSubImage3D ::
                    GLenum ->
                      GLint ->
                        GLint ->
                          GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyTexSubImage3D
  = dyn_glCopyTexSubImage3D ptr_glCopyTexSubImage3D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexSubImage3D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glBlendEquation #-}
 
ptr_glBlendEquation :: FunPtr a
ptr_glBlendEquation
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2"
        "glBlendEquation"
 
glBlendEquation :: GLenum -> IO ()
glBlendEquation = dyn_glBlendEquation ptr_glBlendEquation
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendEquation ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> IO ())
 
{-# NOINLINE ptr_glBlendColor #-}
 
ptr_glBlendColor :: FunPtr a
ptr_glBlendColor
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_2"
        "glBlendColor"
 
glBlendColor :: GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
glBlendColor = dyn_glBlendColor ptr_glBlendColor
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendColor ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ())
 
gl_UNSIGNED_SHORT_5_6_5_REV :: GLenum
gl_UNSIGNED_SHORT_5_6_5_REV = 33636
 
gl_UNSIGNED_SHORT_5_6_5 :: GLenum
gl_UNSIGNED_SHORT_5_6_5 = 33635
 
gl_UNSIGNED_SHORT_5_5_5_1 :: GLenum
gl_UNSIGNED_SHORT_5_5_5_1 = 32820
 
gl_UNSIGNED_SHORT_4_4_4_4_REV :: GLenum
gl_UNSIGNED_SHORT_4_4_4_4_REV = 33637
 
gl_UNSIGNED_SHORT_4_4_4_4 :: GLenum
gl_UNSIGNED_SHORT_4_4_4_4 = 32819
 
gl_UNSIGNED_SHORT_1_5_5_5_REV :: GLenum
gl_UNSIGNED_SHORT_1_5_5_5_REV = 33638
 
gl_UNSIGNED_INT_8_8_8_8_REV :: GLenum
gl_UNSIGNED_INT_8_8_8_8_REV = 33639
 
gl_UNSIGNED_INT_8_8_8_8 :: GLenum
gl_UNSIGNED_INT_8_8_8_8 = 32821
 
gl_UNSIGNED_INT_2_10_10_10_REV :: GLenum
gl_UNSIGNED_INT_2_10_10_10_REV = 33640
 
gl_UNSIGNED_INT_10_10_10_2 :: GLenum
gl_UNSIGNED_INT_10_10_10_2 = 32822
 
gl_UNSIGNED_BYTE_3_3_2 :: GLenum
gl_UNSIGNED_BYTE_3_3_2 = 32818
 
gl_UNSIGNED_BYTE_2_3_3_REV :: GLenum
gl_UNSIGNED_BYTE_2_3_3_REV = 33634
 
gl_UNPACK_SKIP_IMAGES :: GLenum
gl_UNPACK_SKIP_IMAGES = 32877
 
gl_UNPACK_IMAGE_HEIGHT :: GLenum
gl_UNPACK_IMAGE_HEIGHT = 32878
 
gl_TEXTURE_WRAP_R :: GLenum
gl_TEXTURE_WRAP_R = 32882
 
gl_TEXTURE_MIN_LOD :: GLenum
gl_TEXTURE_MIN_LOD = 33082
 
gl_TEXTURE_MAX_LOD :: GLenum
gl_TEXTURE_MAX_LOD = 33083
 
gl_TEXTURE_MAX_LEVEL :: GLenum
gl_TEXTURE_MAX_LEVEL = 33085
 
gl_TEXTURE_DEPTH :: GLenum
gl_TEXTURE_DEPTH = 32881
 
gl_TEXTURE_BINDING_3D :: GLenum
gl_TEXTURE_BINDING_3D = 32874
 
gl_TEXTURE_BASE_LEVEL :: GLenum
gl_TEXTURE_BASE_LEVEL = 33084
 
gl_TEXTURE_3D :: GLenum
gl_TEXTURE_3D = 32879
 
gl_SMOOTH_POINT_SIZE_RANGE :: GLenum
gl_SMOOTH_POINT_SIZE_RANGE = 2834
 
gl_SMOOTH_POINT_SIZE_GRANULARITY :: GLenum
gl_SMOOTH_POINT_SIZE_GRANULARITY = 2835
 
gl_SMOOTH_LINE_WIDTH_RANGE :: GLenum
gl_SMOOTH_LINE_WIDTH_RANGE = 2850
 
gl_SMOOTH_LINE_WIDTH_GRANULARITY :: GLenum
gl_SMOOTH_LINE_WIDTH_GRANULARITY = 2851
 
gl_PROXY_TEXTURE_3D :: GLenum
gl_PROXY_TEXTURE_3D = 32880
 
gl_PACK_SKIP_IMAGES :: GLenum
gl_PACK_SKIP_IMAGES = 32875
 
gl_PACK_IMAGE_HEIGHT :: GLenum
gl_PACK_IMAGE_HEIGHT = 32876
 
gl_ONE_MINUS_CONSTANT_COLOR :: GLenum
gl_ONE_MINUS_CONSTANT_COLOR = 32770
 
gl_ONE_MINUS_CONSTANT_ALPHA :: GLenum
gl_ONE_MINUS_CONSTANT_ALPHA = 32772
 
gl_MIN :: GLenum
gl_MIN = 32775
 
gl_MAX_ELEMENTS_VERTICES :: GLenum
gl_MAX_ELEMENTS_VERTICES = 33000
 
gl_MAX_ELEMENTS_INDICES :: GLenum
gl_MAX_ELEMENTS_INDICES = 33001
 
gl_MAX_3D_TEXTURE_SIZE :: GLenum
gl_MAX_3D_TEXTURE_SIZE = 32883
 
gl_MAX :: GLenum
gl_MAX = 32776
 
gl_FUNC_SUBTRACT :: GLenum
gl_FUNC_SUBTRACT = 32778
 
gl_FUNC_REVERSE_SUBTRACT :: GLenum
gl_FUNC_REVERSE_SUBTRACT = 32779
 
gl_FUNC_ADD :: GLenum
gl_FUNC_ADD = 32774
 
gl_CONSTANT_COLOR :: GLenum
gl_CONSTANT_COLOR = 32769
 
gl_CONSTANT_ALPHA :: GLenum
gl_CONSTANT_ALPHA = 32771
 
gl_CLAMP_TO_EDGE :: GLenum
gl_CLAMP_TO_EDGE = 33071
 
gl_BLEND_EQUATION :: GLenum
gl_BLEND_EQUATION = 32777
 
gl_BLEND_COLOR :: GLenum
gl_BLEND_COLOR = 32773
 
gl_BGRA :: GLenum
gl_BGRA = 32993
 
gl_BGR :: GLenum
gl_BGR = 32992
 
gl_ALIASED_LINE_WIDTH_RANGE :: GLenum
gl_ALIASED_LINE_WIDTH_RANGE = 33902