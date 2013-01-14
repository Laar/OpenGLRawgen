{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PixelTransform
       (glPixelTransformParameteriv, glPixelTransformParameteri,
        glPixelTransformParameterfv, glPixelTransformParameterf,
        glGetPixelTransformParameteriv, glGetPixelTransformParameterfv,
        gl_PIXEL_TRANSFORM_2D_STACK_DEPTH, gl_PIXEL_TRANSFORM_2D_MATRIX,
        gl_PIXEL_TRANSFORM_2D, gl_PIXEL_MIN_FILTER, gl_PIXEL_MAG_FILTER,
        gl_PIXEL_CUBIC_WEIGHT, gl_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH,
        gl_CUBIC, gl_AVERAGE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPixelTransformParameteriv #-}
 
ptr_glPixelTransformParameteriv :: FunPtr a
ptr_glPixelTransformParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_pixel_transform"
        "glPixelTransformParameterivEXT"
 
glPixelTransformParameteriv ::
                            GLenum -> GLenum -> Ptr GLint -> IO ()
glPixelTransformParameteriv
  = dyn_glPixelTransformParameteriv ptr_glPixelTransformParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPixelTransformParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glPixelTransformParameteri #-}
 
ptr_glPixelTransformParameteri :: FunPtr a
ptr_glPixelTransformParameteri
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_pixel_transform"
        "glPixelTransformParameteriEXT"
 
glPixelTransformParameteri :: GLenum -> GLenum -> GLint -> IO ()
glPixelTransformParameteri
  = dyn_glPixelTransformParameteri ptr_glPixelTransformParameteri
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPixelTransformParameteri ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glPixelTransformParameterfv #-}
 
ptr_glPixelTransformParameterfv :: FunPtr a
ptr_glPixelTransformParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_pixel_transform"
        "glPixelTransformParameterfvEXT"
 
glPixelTransformParameterfv ::
                            GLenum -> GLenum -> Ptr GLfloat -> IO ()
glPixelTransformParameterfv
  = dyn_glPixelTransformParameterfv ptr_glPixelTransformParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPixelTransformParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPixelTransformParameterf #-}
 
ptr_glPixelTransformParameterf :: FunPtr a
ptr_glPixelTransformParameterf
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_pixel_transform"
        "glPixelTransformParameterfEXT"
 
glPixelTransformParameterf :: GLenum -> GLenum -> GLfloat -> IO ()
glPixelTransformParameterf
  = dyn_glPixelTransformParameterf ptr_glPixelTransformParameterf
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPixelTransformParameterf ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPixelTransformParameteriv #-}
 
ptr_glGetPixelTransformParameteriv :: FunPtr a
ptr_glGetPixelTransformParameteriv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_pixel_transform"
        "glGetPixelTransformParameterivEXT"
 
glGetPixelTransformParameteriv ::
                               GLenum -> GLenum -> Ptr GLint -> IO ()
glGetPixelTransformParameteriv
  = dyn_glGetPixelTransformParameteriv
      ptr_glGetPixelTransformParameteriv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPixelTransformParameteriv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetPixelTransformParameterfv #-}
 
ptr_glGetPixelTransformParameterfv :: FunPtr a
ptr_glGetPixelTransformParameterfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_pixel_transform"
        "glGetPixelTransformParameterfvEXT"
 
glGetPixelTransformParameterfv ::
                               GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetPixelTransformParameterfv
  = dyn_glGetPixelTransformParameterfv
      ptr_glGetPixelTransformParameterfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPixelTransformParameterfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
gl_PIXEL_TRANSFORM_2D_STACK_DEPTH :: GLenum
gl_PIXEL_TRANSFORM_2D_STACK_DEPTH = 33590
 
gl_PIXEL_TRANSFORM_2D_MATRIX :: GLenum
gl_PIXEL_TRANSFORM_2D_MATRIX = 33592
 
gl_PIXEL_TRANSFORM_2D :: GLenum
gl_PIXEL_TRANSFORM_2D = 33584
 
gl_PIXEL_MIN_FILTER :: GLenum
gl_PIXEL_MIN_FILTER = 33586
 
gl_PIXEL_MAG_FILTER :: GLenum
gl_PIXEL_MAG_FILTER = 33585
 
gl_PIXEL_CUBIC_WEIGHT :: GLenum
gl_PIXEL_CUBIC_WEIGHT = 33587
 
gl_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH :: GLenum
gl_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH = 33591
 
gl_CUBIC :: GLenum
gl_CUBIC = 33588
 
gl_AVERAGE :: GLenum
gl_AVERAGE = 33589