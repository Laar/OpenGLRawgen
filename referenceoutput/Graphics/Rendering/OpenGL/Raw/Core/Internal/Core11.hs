{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core11
       (glTexSubImage2D, glTexSubImage1D, glPolygonOffset, glIsTexture,
        glGetPointerv, glGenTextures, glDrawElements, glDrawArrays,
        glDeleteTextures, glCopyTexSubImage2D, glCopyTexSubImage1D,
        glCopyTexImage2D, glCopyTexImage1D, glBindTexture, gl_ZERO, gl_XOR,
        gl_VIEWPORT, gl_VERSION, gl_VENDOR, gl_UNSIGNED_SHORT,
        gl_UNSIGNED_INT, gl_UNSIGNED_BYTE, gl_UNPACK_SWAP_BYTES,
        gl_UNPACK_SKIP_ROWS, gl_UNPACK_SKIP_PIXELS, gl_UNPACK_ROW_LENGTH,
        gl_UNPACK_LSB_FIRST, gl_UNPACK_ALIGNMENT, gl_TRUE,
        gl_TRIANGLE_STRIP, gl_TRIANGLE_FAN, gl_TRIANGLES,
        gl_TEXTURE_WRAP_T, gl_TEXTURE_WRAP_S, gl_TEXTURE_WIDTH,
        gl_TEXTURE_RED_SIZE, gl_TEXTURE_MIN_FILTER, gl_TEXTURE_MAG_FILTER,
        gl_TEXTURE_INTERNAL_FORMAT, gl_TEXTURE_HEIGHT,
        gl_TEXTURE_GREEN_SIZE, gl_TEXTURE_BORDER_COLOR,
        gl_TEXTURE_BLUE_SIZE, gl_TEXTURE_BINDING_2D, gl_TEXTURE_BINDING_1D,
        gl_TEXTURE_ALPHA_SIZE, gl_TEXTURE_2D, gl_TEXTURE_1D, gl_TEXTURE,
        gl_SUBPIXEL_BITS, gl_STEREO, gl_STENCIL_WRITEMASK,
        gl_STENCIL_VALUE_MASK, gl_STENCIL_TEST, gl_STENCIL_REF,
        gl_STENCIL_PASS_DEPTH_PASS, gl_STENCIL_PASS_DEPTH_FAIL,
        gl_STENCIL_INDEX, gl_STENCIL_FUNC, gl_STENCIL_FAIL,
        gl_STENCIL_CLEAR_VALUE, gl_STENCIL_BUFFER_BIT, gl_STENCIL,
        gl_STACK_UNDERFLOW, gl_STACK_OVERFLOW, gl_SRC_COLOR,
        gl_SRC_ALPHA_SATURATE, gl_SRC_ALPHA, gl_SHORT, gl_SET,
        gl_SCISSOR_TEST, gl_SCISSOR_BOX, gl_RIGHT, gl_RGBA8, gl_RGBA4,
        gl_RGBA2, gl_RGBA16, gl_RGBA12, gl_RGBA, gl_RGB8, gl_RGB5_A1,
        gl_RGB5, gl_RGB4, gl_RGB16, gl_RGB12, gl_RGB10_A2, gl_RGB10,
        gl_RGB, gl_REPLACE, gl_REPEAT, gl_RENDERER, gl_RED, gl_READ_BUFFER,
        gl_R3_G3_B2, gl_QUADS, gl_PROXY_TEXTURE_2D, gl_PROXY_TEXTURE_1D,
        gl_POLYGON_SMOOTH_HINT, gl_POLYGON_SMOOTH, gl_POLYGON_OFFSET_UNITS,
        gl_POLYGON_OFFSET_POINT, gl_POLYGON_OFFSET_LINE,
        gl_POLYGON_OFFSET_FILL, gl_POLYGON_OFFSET_FACTOR, gl_POLYGON_MODE,
        gl_POINT_SIZE_RANGE, gl_POINT_SIZE_GRANULARITY, gl_POINT_SIZE,
        gl_POINTS, gl_POINT, gl_PACK_SWAP_BYTES, gl_PACK_SKIP_ROWS,
        gl_PACK_SKIP_PIXELS, gl_PACK_ROW_LENGTH, gl_PACK_LSB_FIRST,
        gl_PACK_ALIGNMENT, gl_OUT_OF_MEMORY, gl_OR_REVERSE, gl_OR_INVERTED,
        gl_OR, gl_ONE_MINUS_SRC_COLOR, gl_ONE_MINUS_SRC_ALPHA,
        gl_ONE_MINUS_DST_COLOR, gl_ONE_MINUS_DST_ALPHA, gl_ONE,
        gl_NO_ERROR, gl_NOTEQUAL, gl_NOR, gl_NOOP, gl_NONE, gl_NICEST,
        gl_NEVER, gl_NEAREST_MIPMAP_NEAREST, gl_NEAREST_MIPMAP_LINEAR,
        gl_NEAREST, gl_NAND, gl_MAX_VIEWPORT_DIMS, gl_MAX_TEXTURE_SIZE,
        gl_LOGIC_OP_MODE, gl_LINE_WIDTH_RANGE, gl_LINE_WIDTH_GRANULARITY,
        gl_LINE_WIDTH, gl_LINE_STRIP, gl_LINE_SMOOTH_HINT, gl_LINE_SMOOTH,
        gl_LINE_LOOP, gl_LINES, gl_LINEAR_MIPMAP_NEAREST,
        gl_LINEAR_MIPMAP_LINEAR, gl_LINEAR, gl_LINE, gl_LESS, gl_LEQUAL,
        gl_LEFT, gl_KEEP, gl_INVERT, gl_INVALID_VALUE,
        gl_INVALID_OPERATION, gl_INVALID_ENUM, gl_INT, gl_INCR, gl_GREEN,
        gl_GREATER, gl_GEQUAL, gl_FRONT_RIGHT, gl_FRONT_LEFT,
        gl_FRONT_FACE, gl_FRONT_AND_BACK, gl_FRONT, gl_FLOAT, gl_FILL,
        gl_FASTEST, gl_FALSE, gl_EXTENSIONS, gl_EQUIV, gl_EQUAL,
        gl_DST_COLOR, gl_DST_ALPHA, gl_DRAW_BUFFER, gl_DOUBLEBUFFER,
        gl_DOUBLE, gl_DONT_CARE, gl_DITHER, gl_DEPTH_WRITEMASK,
        gl_DEPTH_TEST, gl_DEPTH_RANGE, gl_DEPTH_FUNC, gl_DEPTH_COMPONENT,
        gl_DEPTH_CLEAR_VALUE, gl_DEPTH_BUFFER_BIT, gl_DEPTH, gl_DECR,
        gl_CW, gl_CULL_FACE_MODE, gl_CULL_FACE, gl_COPY_INVERTED, gl_COPY,
        gl_COLOR_WRITEMASK, gl_COLOR_LOGIC_OP, gl_COLOR_CLEAR_VALUE,
        gl_COLOR_BUFFER_BIT, gl_COLOR, gl_CLEAR, gl_CCW, gl_BYTE, gl_BLUE,
        gl_BLEND_SRC, gl_BLEND_DST, gl_BLEND, gl_BACK_RIGHT, gl_BACK_LEFT,
        gl_BACK, gl_AND_REVERSE, gl_AND_INVERTED, gl_AND, gl_ALWAYS,
        gl_ALPHA)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glTexSubImage2D #-}
 
ptr_glTexSubImage2D :: FunPtr a
ptr_glTexSubImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1"
        "glTexSubImage2D"
 
glTexSubImage2D ::
                GLenum ->
                  GLint ->
                    GLint ->
                      GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTexSubImage2D = dyn_glTexSubImage2D ptr_glTexSubImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexSubImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint ->
                        GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glTexSubImage1D #-}
 
ptr_glTexSubImage1D :: FunPtr a
ptr_glTexSubImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1"
        "glTexSubImage1D"
 
glTexSubImage1D ::
                GLenum ->
                  GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ()
glTexSubImage1D = dyn_glTexSubImage1D ptr_glTexSubImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexSubImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glPolygonOffset #-}
 
ptr_glPolygonOffset :: FunPtr a
ptr_glPolygonOffset
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1"
        "glPolygonOffset"
 
glPolygonOffset :: GLfloat -> GLfloat -> IO ()
glPolygonOffset = dyn_glPolygonOffset ptr_glPolygonOffset
 
foreign import CALLCONV unsafe "dynamic" dyn_glPolygonOffset ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLfloat -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glIsTexture #-}
 
ptr_glIsTexture :: FunPtr a
ptr_glIsTexture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1"
        "glIsTexture"
 
glIsTexture :: GLuint -> IO GLboolean
glIsTexture = dyn_glIsTexture ptr_glIsTexture
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsTexture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetPointerv #-}
 
ptr_glGetPointerv :: FunPtr a
ptr_glGetPointerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1"
        "glGetPointerv"
 
glGetPointerv :: GLenum -> Ptr (Ptr a) -> IO ()
glGetPointerv = dyn_glGetPointerv ptr_glGetPointerv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetPointerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glGenTextures #-}
 
ptr_glGenTextures :: FunPtr a
ptr_glGenTextures
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1"
        "glGenTextures"
 
glGenTextures :: GLsizei -> Ptr GLuint -> IO ()
glGenTextures = dyn_glGenTextures ptr_glGenTextures
 
foreign import CALLCONV unsafe "dynamic" dyn_glGenTextures ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glDrawElements #-}
 
ptr_glDrawElements :: FunPtr a
ptr_glDrawElements
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1"
        "glDrawElements"
 
glDrawElements :: GLenum -> GLsizei -> GLenum -> Ptr a -> IO ()
glDrawElements = dyn_glDrawElements ptr_glDrawElements
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawElements ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> GLenum -> Ptr a -> IO ())
 
{-# NOINLINE ptr_glDrawArrays #-}
 
ptr_glDrawArrays :: FunPtr a
ptr_glDrawArrays
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1"
        "glDrawArrays"
 
glDrawArrays :: GLenum -> GLint -> GLsizei -> IO ()
glDrawArrays = dyn_glDrawArrays ptr_glDrawArrays
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawArrays ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glDeleteTextures #-}
 
ptr_glDeleteTextures :: FunPtr a
ptr_glDeleteTextures
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1"
        "glDeleteTextures"
 
glDeleteTextures :: GLsizei -> Ptr GLuint -> IO ()
glDeleteTextures = dyn_glDeleteTextures ptr_glDeleteTextures
 
foreign import CALLCONV unsafe "dynamic" dyn_glDeleteTextures ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLuint -> IO ())
 
{-# NOINLINE ptr_glCopyTexSubImage2D #-}
 
ptr_glCopyTexSubImage2D :: FunPtr a
ptr_glCopyTexSubImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1"
        "glCopyTexSubImage2D"
 
glCopyTexSubImage2D ::
                    GLenum ->
                      GLint ->
                        GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
glCopyTexSubImage2D
  = dyn_glCopyTexSubImage2D ptr_glCopyTexSubImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexSubImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyTexSubImage1D #-}
 
ptr_glCopyTexSubImage1D :: FunPtr a
ptr_glCopyTexSubImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1"
        "glCopyTexSubImage1D"
 
glCopyTexSubImage1D ::
                    GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ()
glCopyTexSubImage1D
  = dyn_glCopyTexSubImage1D ptr_glCopyTexSubImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexSubImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glCopyTexImage2D #-}
 
ptr_glCopyTexImage2D :: FunPtr a
ptr_glCopyTexImage2D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1"
        "glCopyTexImage2D"
 
glCopyTexImage2D ::
                 GLenum ->
                   GLint ->
                     GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()
glCopyTexImage2D = dyn_glCopyTexImage2D ptr_glCopyTexImage2D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexImage2D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint ->
                      GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ())
 
{-# NOINLINE ptr_glCopyTexImage1D #-}
 
ptr_glCopyTexImage1D :: FunPtr a
ptr_glCopyTexImage1D
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1"
        "glCopyTexImage1D"
 
glCopyTexImage1D ::
                 GLenum ->
                   GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ()
glCopyTexImage1D = dyn_glCopyTexImage1D ptr_glCopyTexImage1D
 
foreign import CALLCONV unsafe "dynamic" dyn_glCopyTexImage1D ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> IO ())
 
{-# NOINLINE ptr_glBindTexture #-}
 
ptr_glBindTexture :: FunPtr a
ptr_glBindTexture
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_1"
        "glBindTexture"
 
glBindTexture :: GLenum -> GLuint -> IO ()
glBindTexture = dyn_glBindTexture ptr_glBindTexture
 
foreign import CALLCONV unsafe "dynamic" dyn_glBindTexture ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> IO ())
 
gl_ZERO :: GLenum
gl_ZERO = 0
 
gl_XOR :: GLenum
gl_XOR = 5382
 
gl_VIEWPORT :: GLenum
gl_VIEWPORT = 2978
 
gl_VERSION :: GLenum
gl_VERSION = 7938
 
gl_VENDOR :: GLenum
gl_VENDOR = 7936
 
gl_UNSIGNED_SHORT :: GLenum
gl_UNSIGNED_SHORT = 5123
 
gl_UNSIGNED_INT :: GLenum
gl_UNSIGNED_INT = 5125
 
gl_UNSIGNED_BYTE :: GLenum
gl_UNSIGNED_BYTE = 5121
 
gl_UNPACK_SWAP_BYTES :: GLenum
gl_UNPACK_SWAP_BYTES = 3312
 
gl_UNPACK_SKIP_ROWS :: GLenum
gl_UNPACK_SKIP_ROWS = 3315
 
gl_UNPACK_SKIP_PIXELS :: GLenum
gl_UNPACK_SKIP_PIXELS = 3316
 
gl_UNPACK_ROW_LENGTH :: GLenum
gl_UNPACK_ROW_LENGTH = 3314
 
gl_UNPACK_LSB_FIRST :: GLenum
gl_UNPACK_LSB_FIRST = 3313
 
gl_UNPACK_ALIGNMENT :: GLenum
gl_UNPACK_ALIGNMENT = 3317
 
gl_TRUE :: GLenum
gl_TRUE = 1
 
gl_TRIANGLE_STRIP :: GLenum
gl_TRIANGLE_STRIP = 5
 
gl_TRIANGLE_FAN :: GLenum
gl_TRIANGLE_FAN = 6
 
gl_TRIANGLES :: GLenum
gl_TRIANGLES = 4
 
gl_TEXTURE_WRAP_T :: GLenum
gl_TEXTURE_WRAP_T = 10243
 
gl_TEXTURE_WRAP_S :: GLenum
gl_TEXTURE_WRAP_S = 10242
 
gl_TEXTURE_WIDTH :: GLenum
gl_TEXTURE_WIDTH = 4096
 
gl_TEXTURE_RED_SIZE :: GLenum
gl_TEXTURE_RED_SIZE = 32860
 
gl_TEXTURE_MIN_FILTER :: GLenum
gl_TEXTURE_MIN_FILTER = 10241
 
gl_TEXTURE_MAG_FILTER :: GLenum
gl_TEXTURE_MAG_FILTER = 10240
 
gl_TEXTURE_INTERNAL_FORMAT :: GLenum
gl_TEXTURE_INTERNAL_FORMAT = 4099
 
gl_TEXTURE_HEIGHT :: GLenum
gl_TEXTURE_HEIGHT = 4097
 
gl_TEXTURE_GREEN_SIZE :: GLenum
gl_TEXTURE_GREEN_SIZE = 32861
 
gl_TEXTURE_BORDER_COLOR :: GLenum
gl_TEXTURE_BORDER_COLOR = 4100
 
gl_TEXTURE_BLUE_SIZE :: GLenum
gl_TEXTURE_BLUE_SIZE = 32862
 
gl_TEXTURE_BINDING_2D :: GLenum
gl_TEXTURE_BINDING_2D = 32873
 
gl_TEXTURE_BINDING_1D :: GLenum
gl_TEXTURE_BINDING_1D = 32872
 
gl_TEXTURE_ALPHA_SIZE :: GLenum
gl_TEXTURE_ALPHA_SIZE = 32863
 
gl_TEXTURE_2D :: GLenum
gl_TEXTURE_2D = 3553
 
gl_TEXTURE_1D :: GLenum
gl_TEXTURE_1D = 3552
 
gl_TEXTURE :: GLenum
gl_TEXTURE = 5890
 
gl_SUBPIXEL_BITS :: GLenum
gl_SUBPIXEL_BITS = 3408
 
gl_STEREO :: GLenum
gl_STEREO = 3123
 
gl_STENCIL_WRITEMASK :: GLenum
gl_STENCIL_WRITEMASK = 2968
 
gl_STENCIL_VALUE_MASK :: GLenum
gl_STENCIL_VALUE_MASK = 2963
 
gl_STENCIL_TEST :: GLenum
gl_STENCIL_TEST = 2960
 
gl_STENCIL_REF :: GLenum
gl_STENCIL_REF = 2967
 
gl_STENCIL_PASS_DEPTH_PASS :: GLenum
gl_STENCIL_PASS_DEPTH_PASS = 2966
 
gl_STENCIL_PASS_DEPTH_FAIL :: GLenum
gl_STENCIL_PASS_DEPTH_FAIL = 2965
 
gl_STENCIL_INDEX :: GLenum
gl_STENCIL_INDEX = 6401
 
gl_STENCIL_FUNC :: GLenum
gl_STENCIL_FUNC = 2962
 
gl_STENCIL_FAIL :: GLenum
gl_STENCIL_FAIL = 2964
 
gl_STENCIL_CLEAR_VALUE :: GLenum
gl_STENCIL_CLEAR_VALUE = 2961
 
gl_STENCIL_BUFFER_BIT :: GLbitfield
gl_STENCIL_BUFFER_BIT = 1024
 
gl_STENCIL :: GLenum
gl_STENCIL = 6146
 
gl_STACK_UNDERFLOW :: GLenum
gl_STACK_UNDERFLOW = 1284
 
gl_STACK_OVERFLOW :: GLenum
gl_STACK_OVERFLOW = 1283
 
gl_SRC_COLOR :: GLenum
gl_SRC_COLOR = 768
 
gl_SRC_ALPHA_SATURATE :: GLenum
gl_SRC_ALPHA_SATURATE = 776
 
gl_SRC_ALPHA :: GLenum
gl_SRC_ALPHA = 770
 
gl_SHORT :: GLenum
gl_SHORT = 5122
 
gl_SET :: GLenum
gl_SET = 5391
 
gl_SCISSOR_TEST :: GLenum
gl_SCISSOR_TEST = 3089
 
gl_SCISSOR_BOX :: GLenum
gl_SCISSOR_BOX = 3088
 
gl_RIGHT :: GLenum
gl_RIGHT = 1031
 
gl_RGBA8 :: GLenum
gl_RGBA8 = 32856
 
gl_RGBA4 :: GLenum
gl_RGBA4 = 32854
 
gl_RGBA2 :: GLenum
gl_RGBA2 = 32853
 
gl_RGBA16 :: GLenum
gl_RGBA16 = 32859
 
gl_RGBA12 :: GLenum
gl_RGBA12 = 32858
 
gl_RGBA :: GLenum
gl_RGBA = 6408
 
gl_RGB8 :: GLenum
gl_RGB8 = 32849
 
gl_RGB5_A1 :: GLenum
gl_RGB5_A1 = 32855
 
gl_RGB5 :: GLenum
gl_RGB5 = 32848
 
gl_RGB4 :: GLenum
gl_RGB4 = 32847
 
gl_RGB16 :: GLenum
gl_RGB16 = 32852
 
gl_RGB12 :: GLenum
gl_RGB12 = 32851
 
gl_RGB10_A2 :: GLenum
gl_RGB10_A2 = 32857
 
gl_RGB10 :: GLenum
gl_RGB10 = 32850
 
gl_RGB :: GLenum
gl_RGB = 6407
 
gl_REPLACE :: GLenum
gl_REPLACE = 7681
 
gl_REPEAT :: GLenum
gl_REPEAT = 10497
 
gl_RENDERER :: GLenum
gl_RENDERER = 7937
 
gl_RED :: GLenum
gl_RED = 6403
 
gl_READ_BUFFER :: GLenum
gl_READ_BUFFER = 3074
 
gl_R3_G3_B2 :: GLenum
gl_R3_G3_B2 = 10768
 
gl_QUADS :: GLenum
gl_QUADS = 7
 
gl_PROXY_TEXTURE_2D :: GLenum
gl_PROXY_TEXTURE_2D = 32868
 
gl_PROXY_TEXTURE_1D :: GLenum
gl_PROXY_TEXTURE_1D = 32867
 
gl_POLYGON_SMOOTH_HINT :: GLenum
gl_POLYGON_SMOOTH_HINT = 3155
 
gl_POLYGON_SMOOTH :: GLenum
gl_POLYGON_SMOOTH = 2881
 
gl_POLYGON_OFFSET_UNITS :: GLenum
gl_POLYGON_OFFSET_UNITS = 10752
 
gl_POLYGON_OFFSET_POINT :: GLenum
gl_POLYGON_OFFSET_POINT = 10753
 
gl_POLYGON_OFFSET_LINE :: GLenum
gl_POLYGON_OFFSET_LINE = 10754
 
gl_POLYGON_OFFSET_FILL :: GLenum
gl_POLYGON_OFFSET_FILL = 32823
 
gl_POLYGON_OFFSET_FACTOR :: GLenum
gl_POLYGON_OFFSET_FACTOR = 32824
 
gl_POLYGON_MODE :: GLenum
gl_POLYGON_MODE = 2880
 
gl_POINT_SIZE_RANGE :: GLenum
gl_POINT_SIZE_RANGE = 2834
 
gl_POINT_SIZE_GRANULARITY :: GLenum
gl_POINT_SIZE_GRANULARITY = 2835
 
gl_POINT_SIZE :: GLenum
gl_POINT_SIZE = 2833
 
gl_POINTS :: GLenum
gl_POINTS = 0
 
gl_POINT :: GLenum
gl_POINT = 6912
 
gl_PACK_SWAP_BYTES :: GLenum
gl_PACK_SWAP_BYTES = 3328
 
gl_PACK_SKIP_ROWS :: GLenum
gl_PACK_SKIP_ROWS = 3331
 
gl_PACK_SKIP_PIXELS :: GLenum
gl_PACK_SKIP_PIXELS = 3332
 
gl_PACK_ROW_LENGTH :: GLenum
gl_PACK_ROW_LENGTH = 3330
 
gl_PACK_LSB_FIRST :: GLenum
gl_PACK_LSB_FIRST = 3329
 
gl_PACK_ALIGNMENT :: GLenum
gl_PACK_ALIGNMENT = 3333
 
gl_OUT_OF_MEMORY :: GLenum
gl_OUT_OF_MEMORY = 1285
 
gl_OR_REVERSE :: GLenum
gl_OR_REVERSE = 5387
 
gl_OR_INVERTED :: GLenum
gl_OR_INVERTED = 5389
 
gl_OR :: GLenum
gl_OR = 5383
 
gl_ONE_MINUS_SRC_COLOR :: GLenum
gl_ONE_MINUS_SRC_COLOR = 769
 
gl_ONE_MINUS_SRC_ALPHA :: GLenum
gl_ONE_MINUS_SRC_ALPHA = 771
 
gl_ONE_MINUS_DST_COLOR :: GLenum
gl_ONE_MINUS_DST_COLOR = 775
 
gl_ONE_MINUS_DST_ALPHA :: GLenum
gl_ONE_MINUS_DST_ALPHA = 773
 
gl_ONE :: GLenum
gl_ONE = 1
 
gl_NO_ERROR :: GLenum
gl_NO_ERROR = 0
 
gl_NOTEQUAL :: GLenum
gl_NOTEQUAL = 517
 
gl_NOR :: GLenum
gl_NOR = 5384
 
gl_NOOP :: GLenum
gl_NOOP = 5381
 
gl_NONE :: GLenum
gl_NONE = 0
 
gl_NICEST :: GLenum
gl_NICEST = 4354
 
gl_NEVER :: GLenum
gl_NEVER = 512
 
gl_NEAREST_MIPMAP_NEAREST :: GLenum
gl_NEAREST_MIPMAP_NEAREST = 9984
 
gl_NEAREST_MIPMAP_LINEAR :: GLenum
gl_NEAREST_MIPMAP_LINEAR = 9986
 
gl_NEAREST :: GLenum
gl_NEAREST = 9728
 
gl_NAND :: GLenum
gl_NAND = 5390
 
gl_MAX_VIEWPORT_DIMS :: GLenum
gl_MAX_VIEWPORT_DIMS = 3386
 
gl_MAX_TEXTURE_SIZE :: GLenum
gl_MAX_TEXTURE_SIZE = 3379
 
gl_LOGIC_OP_MODE :: GLenum
gl_LOGIC_OP_MODE = 3056
 
gl_LINE_WIDTH_RANGE :: GLenum
gl_LINE_WIDTH_RANGE = 2850
 
gl_LINE_WIDTH_GRANULARITY :: GLenum
gl_LINE_WIDTH_GRANULARITY = 2851
 
gl_LINE_WIDTH :: GLenum
gl_LINE_WIDTH = 2849
 
gl_LINE_STRIP :: GLenum
gl_LINE_STRIP = 3
 
gl_LINE_SMOOTH_HINT :: GLenum
gl_LINE_SMOOTH_HINT = 3154
 
gl_LINE_SMOOTH :: GLenum
gl_LINE_SMOOTH = 2848
 
gl_LINE_LOOP :: GLenum
gl_LINE_LOOP = 2
 
gl_LINES :: GLenum
gl_LINES = 1
 
gl_LINEAR_MIPMAP_NEAREST :: GLenum
gl_LINEAR_MIPMAP_NEAREST = 9985
 
gl_LINEAR_MIPMAP_LINEAR :: GLenum
gl_LINEAR_MIPMAP_LINEAR = 9987
 
gl_LINEAR :: GLenum
gl_LINEAR = 9729
 
gl_LINE :: GLenum
gl_LINE = 6913
 
gl_LESS :: GLenum
gl_LESS = 513
 
gl_LEQUAL :: GLenum
gl_LEQUAL = 515
 
gl_LEFT :: GLenum
gl_LEFT = 1030
 
gl_KEEP :: GLenum
gl_KEEP = 7680
 
gl_INVERT :: GLenum
gl_INVERT = 5386
 
gl_INVALID_VALUE :: GLenum
gl_INVALID_VALUE = 1281
 
gl_INVALID_OPERATION :: GLenum
gl_INVALID_OPERATION = 1282
 
gl_INVALID_ENUM :: GLenum
gl_INVALID_ENUM = 1280
 
gl_INT :: GLenum
gl_INT = 5124
 
gl_INCR :: GLenum
gl_INCR = 7682
 
gl_GREEN :: GLenum
gl_GREEN = 6404
 
gl_GREATER :: GLenum
gl_GREATER = 516
 
gl_GEQUAL :: GLenum
gl_GEQUAL = 518
 
gl_FRONT_RIGHT :: GLenum
gl_FRONT_RIGHT = 1025
 
gl_FRONT_LEFT :: GLenum
gl_FRONT_LEFT = 1024
 
gl_FRONT_FACE :: GLenum
gl_FRONT_FACE = 2886
 
gl_FRONT_AND_BACK :: GLenum
gl_FRONT_AND_BACK = 1032
 
gl_FRONT :: GLenum
gl_FRONT = 1028
 
gl_FLOAT :: GLenum
gl_FLOAT = 5126
 
gl_FILL :: GLenum
gl_FILL = 6914
 
gl_FASTEST :: GLenum
gl_FASTEST = 4353
 
gl_FALSE :: GLenum
gl_FALSE = 0
 
gl_EXTENSIONS :: GLenum
gl_EXTENSIONS = 7939
 
gl_EQUIV :: GLenum
gl_EQUIV = 5385
 
gl_EQUAL :: GLenum
gl_EQUAL = 514
 
gl_DST_COLOR :: GLenum
gl_DST_COLOR = 774
 
gl_DST_ALPHA :: GLenum
gl_DST_ALPHA = 772
 
gl_DRAW_BUFFER :: GLenum
gl_DRAW_BUFFER = 3073
 
gl_DOUBLEBUFFER :: GLenum
gl_DOUBLEBUFFER = 3122
 
gl_DOUBLE :: GLenum
gl_DOUBLE = 5130
 
gl_DONT_CARE :: GLenum
gl_DONT_CARE = 4352
 
gl_DITHER :: GLenum
gl_DITHER = 3024
 
gl_DEPTH_WRITEMASK :: GLenum
gl_DEPTH_WRITEMASK = 2930
 
gl_DEPTH_TEST :: GLenum
gl_DEPTH_TEST = 2929
 
gl_DEPTH_RANGE :: GLenum
gl_DEPTH_RANGE = 2928
 
gl_DEPTH_FUNC :: GLenum
gl_DEPTH_FUNC = 2932
 
gl_DEPTH_COMPONENT :: GLenum
gl_DEPTH_COMPONENT = 6402
 
gl_DEPTH_CLEAR_VALUE :: GLenum
gl_DEPTH_CLEAR_VALUE = 2931
 
gl_DEPTH_BUFFER_BIT :: GLbitfield
gl_DEPTH_BUFFER_BIT = 256
 
gl_DEPTH :: GLenum
gl_DEPTH = 6145
 
gl_DECR :: GLenum
gl_DECR = 7683
 
gl_CW :: GLenum
gl_CW = 2304
 
gl_CULL_FACE_MODE :: GLenum
gl_CULL_FACE_MODE = 2885
 
gl_CULL_FACE :: GLenum
gl_CULL_FACE = 2884
 
gl_COPY_INVERTED :: GLenum
gl_COPY_INVERTED = 5388
 
gl_COPY :: GLenum
gl_COPY = 5379
 
gl_COLOR_WRITEMASK :: GLenum
gl_COLOR_WRITEMASK = 3107
 
gl_COLOR_LOGIC_OP :: GLenum
gl_COLOR_LOGIC_OP = 3058
 
gl_COLOR_CLEAR_VALUE :: GLenum
gl_COLOR_CLEAR_VALUE = 3106
 
gl_COLOR_BUFFER_BIT :: GLbitfield
gl_COLOR_BUFFER_BIT = 16384
 
gl_COLOR :: GLenum
gl_COLOR = 6144
 
gl_CLEAR :: GLenum
gl_CLEAR = 5376
 
gl_CCW :: GLenum
gl_CCW = 2305
 
gl_BYTE :: GLenum
gl_BYTE = 5120
 
gl_BLUE :: GLenum
gl_BLUE = 6405
 
gl_BLEND_SRC :: GLenum
gl_BLEND_SRC = 3041
 
gl_BLEND_DST :: GLenum
gl_BLEND_DST = 3040
 
gl_BLEND :: GLenum
gl_BLEND = 3042
 
gl_BACK_RIGHT :: GLenum
gl_BACK_RIGHT = 1027
 
gl_BACK_LEFT :: GLenum
gl_BACK_LEFT = 1026
 
gl_BACK :: GLenum
gl_BACK = 1029
 
gl_AND_REVERSE :: GLenum
gl_AND_REVERSE = 5378
 
gl_AND_INVERTED :: GLenum
gl_AND_INVERTED = 5380
 
gl_AND :: GLenum
gl_AND = 5377
 
gl_ALWAYS :: GLenum
gl_ALWAYS = 519
 
gl_ALPHA :: GLenum
gl_ALPHA = 6406