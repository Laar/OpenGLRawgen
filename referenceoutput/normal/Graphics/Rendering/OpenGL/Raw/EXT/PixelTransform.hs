{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.PixelTransform
       (glPixelTransformParameterivEXT, glPixelTransformParameteriEXT,
        glPixelTransformParameterfvEXT, glPixelTransformParameterfEXT,
        glGetPixelTransformParameterivEXT,
        glGetPixelTransformParameterfvEXT,
        gl_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT,
        gl_PIXEL_TRANSFORM_2D_MATRIX_EXT, gl_PIXEL_TRANSFORM_2D_EXT,
        gl_PIXEL_MIN_FILTER_EXT, gl_PIXEL_MAG_FILTER_EXT,
        gl_PIXEL_CUBIC_WEIGHT_EXT,
        gl_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT, gl_CUBIC_EXT,
        gl_AVERAGE_EXT)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glPixelTransformParameterivEXT #-}
 
ptr_glPixelTransformParameterivEXT :: FunPtr a
ptr_glPixelTransformParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_pixel_transform"
        "glPixelTransformParameterivEXT"
 
glPixelTransformParameterivEXT ::
                               GLenum -> GLenum -> Ptr GLint -> IO ()
glPixelTransformParameterivEXT
  = dyn_glPixelTransformParameterivEXT
      ptr_glPixelTransformParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPixelTransformParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glPixelTransformParameteriEXT #-}
 
ptr_glPixelTransformParameteriEXT :: FunPtr a
ptr_glPixelTransformParameteriEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_pixel_transform"
        "glPixelTransformParameteriEXT"
 
glPixelTransformParameteriEXT :: GLenum -> GLenum -> GLint -> IO ()
glPixelTransformParameteriEXT
  = dyn_glPixelTransformParameteriEXT
      ptr_glPixelTransformParameteriEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPixelTransformParameteriEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLint -> IO ())
 
{-# NOINLINE ptr_glPixelTransformParameterfvEXT #-}
 
ptr_glPixelTransformParameterfvEXT :: FunPtr a
ptr_glPixelTransformParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_pixel_transform"
        "glPixelTransformParameterfvEXT"
 
glPixelTransformParameterfvEXT ::
                               GLenum -> GLenum -> Ptr GLfloat -> IO ()
glPixelTransformParameterfvEXT
  = dyn_glPixelTransformParameterfvEXT
      ptr_glPixelTransformParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPixelTransformParameterfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glPixelTransformParameterfEXT #-}
 
ptr_glPixelTransformParameterfEXT :: FunPtr a
ptr_glPixelTransformParameterfEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_pixel_transform"
        "glPixelTransformParameterfEXT"
 
glPixelTransformParameterfEXT ::
                              GLenum -> GLenum -> GLfloat -> IO ()
glPixelTransformParameterfEXT
  = dyn_glPixelTransformParameterfEXT
      ptr_glPixelTransformParameterfEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glPixelTransformParameterfEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetPixelTransformParameterivEXT #-}
 
ptr_glGetPixelTransformParameterivEXT :: FunPtr a
ptr_glGetPixelTransformParameterivEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_pixel_transform"
        "glGetPixelTransformParameterivEXT"
 
glGetPixelTransformParameterivEXT ::
                                  GLenum -> GLenum -> Ptr GLint -> IO ()
glGetPixelTransformParameterivEXT
  = dyn_glGetPixelTransformParameterivEXT
      ptr_glGetPixelTransformParameterivEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPixelTransformParameterivEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetPixelTransformParameterfvEXT #-}
 
ptr_glGetPixelTransformParameterfvEXT :: FunPtr a
ptr_glGetPixelTransformParameterfvEXT
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_EXT_pixel_transform"
        "glGetPixelTransformParameterfvEXT"
 
glGetPixelTransformParameterfvEXT ::
                                  GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetPixelTransformParameterfvEXT
  = dyn_glGetPixelTransformParameterfvEXT
      ptr_glGetPixelTransformParameterfvEXT
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetPixelTransformParameterfvEXT ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
gl_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT :: GLenum
gl_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = 33590
 
gl_PIXEL_TRANSFORM_2D_MATRIX_EXT :: GLenum
gl_PIXEL_TRANSFORM_2D_MATRIX_EXT = 33592
 
gl_PIXEL_TRANSFORM_2D_EXT :: GLenum
gl_PIXEL_TRANSFORM_2D_EXT = 33584
 
gl_PIXEL_MIN_FILTER_EXT :: GLenum
gl_PIXEL_MIN_FILTER_EXT = 33586
 
gl_PIXEL_MAG_FILTER_EXT :: GLenum
gl_PIXEL_MAG_FILTER_EXT = 33585
 
gl_PIXEL_CUBIC_WEIGHT_EXT :: GLenum
gl_PIXEL_CUBIC_WEIGHT_EXT = 33587
 
gl_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT :: GLenum
gl_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = 33591
 
gl_CUBIC_EXT :: GLenum
gl_CUBIC_EXT = 33588
 
gl_AVERAGE_EXT :: GLenum
gl_AVERAGE_EXT = 33589