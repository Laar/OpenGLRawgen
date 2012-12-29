{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core14
       (glPointParameteriv, glPointParameteri, glPointParameterfv,
        glPointParameterf, glMultiDrawElements, glMultiDrawArrays,
        glBlendFuncSeparate, gl_TEXTURE_COMPARE_FUNC,
        gl_TEXTURE_COMPARE_MODE, gl_TEXTURE_DEPTH_SIZE, gl_DECR_WRAP,
        gl_INCR_WRAP, gl_TEXTURE_LOD_BIAS, gl_MAX_TEXTURE_LOD_BIAS,
        gl_MIRRORED_REPEAT, gl_DEPTH_COMPONENT32, gl_DEPTH_COMPONENT24,
        gl_DEPTH_COMPONENT16, gl_POINT_FADE_THRESHOLD_SIZE,
        gl_BLEND_SRC_ALPHA, gl_BLEND_DST_ALPHA, gl_BLEND_SRC_RGB,
        gl_BLEND_DST_RGB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPointParameteriv #-}
 
ptr_glPointParameteriv :: FunPtr a
ptr_glPointParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4"
        "glPointParameteriv"
 
glPointParameteriv :: GLenum -> Ptr GLint -> IO ()
glPointParameteriv = dyn_glPointParameteriv ptr_glPointParameteriv
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glPointParameteri #-}
 
ptr_glPointParameteri :: FunPtr a
ptr_glPointParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4"
        "glPointParameteri"
 
glPointParameteri :: GLenum -> GLint -> IO ()
glPointParameteri = dyn_glPointParameteri ptr_glPointParameteri
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointParameteri ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glPointParameterfv #-}
 
ptr_glPointParameterfv :: FunPtr a
ptr_glPointParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4"
        "glPointParameterfv"
 
glPointParameterfv :: GLenum -> Ptr GLfloat -> IO ()
glPointParameterfv = dyn_glPointParameterfv ptr_glPointParameterfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPointParameterf #-}
 
ptr_glPointParameterf :: FunPtr a
ptr_glPointParameterf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4"
        "glPointParameterf"
 
glPointParameterf :: GLenum -> GLfloat -> IO ()
glPointParameterf = dyn_glPointParameterf ptr_glPointParameterf
 
foreign import CALLCONV unsafe "dynamic" dyn_glPointParameterf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glMultiDrawElements #-}
 
ptr_glMultiDrawElements :: FunPtr a
ptr_glMultiDrawElements
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4"
        "glMultiDrawElements"
 
glMultiDrawElements ::
                    GLenum -> Ptr GLsizei -> GLenum -> Ptr (Ptr a) -> GLsizei -> IO ()
glMultiDrawElements
  = dyn_glMultiDrawElements ptr_glMultiDrawElements
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiDrawElements ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum ->
                    Ptr GLsizei -> GLenum -> Ptr (Ptr a) -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glMultiDrawArrays #-}
 
ptr_glMultiDrawArrays :: FunPtr a
ptr_glMultiDrawArrays
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4"
        "glMultiDrawArrays"
 
glMultiDrawArrays ::
                  GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ()
glMultiDrawArrays = dyn_glMultiDrawArrays ptr_glMultiDrawArrays
 
foreign import CALLCONV unsafe "dynamic" dyn_glMultiDrawArrays ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glBlendFuncSeparate #-}
 
ptr_glBlendFuncSeparate :: FunPtr a
ptr_glBlendFuncSeparate
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_1_4"
        "glBlendFuncSeparate"
 
glBlendFuncSeparate ::
                    GLenum -> GLenum -> GLenum -> GLenum -> IO ()
glBlendFuncSeparate
  = dyn_glBlendFuncSeparate ptr_glBlendFuncSeparate
 
foreign import CALLCONV unsafe "dynamic" dyn_glBlendFuncSeparate ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLenum -> GLenum -> IO ())
 
gl_TEXTURE_COMPARE_FUNC :: GLenum
gl_TEXTURE_COMPARE_FUNC = 34893
 
gl_TEXTURE_COMPARE_MODE :: GLenum
gl_TEXTURE_COMPARE_MODE = 34892
 
gl_TEXTURE_DEPTH_SIZE :: GLenum
gl_TEXTURE_DEPTH_SIZE = 34890
 
gl_DECR_WRAP :: GLenum
gl_DECR_WRAP = 34056
 
gl_INCR_WRAP :: GLenum
gl_INCR_WRAP = 34055
 
gl_TEXTURE_LOD_BIAS :: GLenum
gl_TEXTURE_LOD_BIAS = 34049
 
gl_MAX_TEXTURE_LOD_BIAS :: GLenum
gl_MAX_TEXTURE_LOD_BIAS = 34045
 
gl_MIRRORED_REPEAT :: GLenum
gl_MIRRORED_REPEAT = 33648
 
gl_DEPTH_COMPONENT32 :: GLenum
gl_DEPTH_COMPONENT32 = 33191
 
gl_DEPTH_COMPONENT24 :: GLenum
gl_DEPTH_COMPONENT24 = 33190
 
gl_DEPTH_COMPONENT16 :: GLenum
gl_DEPTH_COMPONENT16 = 33189
 
gl_POINT_FADE_THRESHOLD_SIZE :: GLenum
gl_POINT_FADE_THRESHOLD_SIZE = 33064
 
gl_BLEND_SRC_ALPHA :: GLenum
gl_BLEND_SRC_ALPHA = 32971
 
gl_BLEND_DST_ALPHA :: GLenum
gl_BLEND_DST_ALPHA = 32970
 
gl_BLEND_SRC_RGB :: GLenum
gl_BLEND_SRC_RGB = 32969
 
gl_BLEND_DST_RGB :: GLenum
gl_BLEND_DST_RGB = 32968