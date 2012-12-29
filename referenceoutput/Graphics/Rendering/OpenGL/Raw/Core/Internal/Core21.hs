{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core21
       (glUniformMatrix4x3fv, glUniformMatrix3x4fv, glUniformMatrix4x2fv,
        glUniformMatrix2x4fv, glUniformMatrix3x2fv, glUniformMatrix2x3fv,
        gl_COMPRESSED_SRGB_ALPHA, gl_COMPRESSED_SRGB, gl_SRGB8_ALPHA8,
        gl_SRGB_ALPHA, gl_SRGB8, gl_SRGB, gl_FLOAT_MAT4x3, gl_FLOAT_MAT4x2,
        gl_FLOAT_MAT3x4, gl_FLOAT_MAT3x2, gl_FLOAT_MAT2x4, gl_FLOAT_MAT2x3,
        gl_PIXEL_UNPACK_BUFFER_BINDING, gl_PIXEL_PACK_BUFFER_BINDING,
        gl_PIXEL_UNPACK_BUFFER, gl_PIXEL_PACK_BUFFER)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glUniformMatrix4x3fv #-}
 
ptr_glUniformMatrix4x3fv :: FunPtr a
ptr_glUniformMatrix4x3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_1"
        "glUniformMatrix4x3fv"
 
glUniformMatrix4x3fv ::
                     GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glUniformMatrix4x3fv
  = dyn_glUniformMatrix4x3fv ptr_glUniformMatrix4x3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix4x3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix3x4fv #-}
 
ptr_glUniformMatrix3x4fv :: FunPtr a
ptr_glUniformMatrix3x4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_1"
        "glUniformMatrix3x4fv"
 
glUniformMatrix3x4fv ::
                     GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glUniformMatrix3x4fv
  = dyn_glUniformMatrix3x4fv ptr_glUniformMatrix3x4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix3x4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix4x2fv #-}
 
ptr_glUniformMatrix4x2fv :: FunPtr a
ptr_glUniformMatrix4x2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_1"
        "glUniformMatrix4x2fv"
 
glUniformMatrix4x2fv ::
                     GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glUniformMatrix4x2fv
  = dyn_glUniformMatrix4x2fv ptr_glUniformMatrix4x2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix4x2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix2x4fv #-}
 
ptr_glUniformMatrix2x4fv :: FunPtr a
ptr_glUniformMatrix2x4fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_1"
        "glUniformMatrix2x4fv"
 
glUniformMatrix2x4fv ::
                     GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glUniformMatrix2x4fv
  = dyn_glUniformMatrix2x4fv ptr_glUniformMatrix2x4fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix2x4fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix3x2fv #-}
 
ptr_glUniformMatrix3x2fv :: FunPtr a
ptr_glUniformMatrix3x2fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_1"
        "glUniformMatrix3x2fv"
 
glUniformMatrix3x2fv ::
                     GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glUniformMatrix3x2fv
  = dyn_glUniformMatrix3x2fv ptr_glUniformMatrix3x2fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix3x2fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glUniformMatrix2x3fv #-}
 
ptr_glUniformMatrix2x3fv :: FunPtr a
ptr_glUniformMatrix2x3fv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_VERSION_2_1"
        "glUniformMatrix2x3fv"
 
glUniformMatrix2x3fv ::
                     GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
glUniformMatrix2x3fv
  = dyn_glUniformMatrix2x3fv ptr_glUniformMatrix2x3fv
 
foreign import CALLCONV unsafe "dynamic" dyn_glUniformMatrix2x3fv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ())
 
gl_COMPRESSED_SRGB_ALPHA :: GLenum
gl_COMPRESSED_SRGB_ALPHA = 35913
 
gl_COMPRESSED_SRGB :: GLenum
gl_COMPRESSED_SRGB = 35912
 
gl_SRGB8_ALPHA8 :: GLenum
gl_SRGB8_ALPHA8 = 35907
 
gl_SRGB_ALPHA :: GLenum
gl_SRGB_ALPHA = 35906
 
gl_SRGB8 :: GLenum
gl_SRGB8 = 35905
 
gl_SRGB :: GLenum
gl_SRGB = 35904
 
gl_FLOAT_MAT4x3 :: GLenum
gl_FLOAT_MAT4x3 = 35690
 
gl_FLOAT_MAT4x2 :: GLenum
gl_FLOAT_MAT4x2 = 35689
 
gl_FLOAT_MAT3x4 :: GLenum
gl_FLOAT_MAT3x4 = 35688
 
gl_FLOAT_MAT3x2 :: GLenum
gl_FLOAT_MAT3x2 = 35687
 
gl_FLOAT_MAT2x4 :: GLenum
gl_FLOAT_MAT2x4 = 35686
 
gl_FLOAT_MAT2x3 :: GLenum
gl_FLOAT_MAT2x3 = 35685
 
gl_PIXEL_UNPACK_BUFFER_BINDING :: GLenum
gl_PIXEL_UNPACK_BUFFER_BINDING = 35055
 
gl_PIXEL_PACK_BUFFER_BINDING :: GLenum
gl_PIXEL_PACK_BUFFER_BINDING = 35053
 
gl_PIXEL_UNPACK_BUFFER :: GLenum
gl_PIXEL_UNPACK_BUFFER = 35052
 
gl_PIXEL_PACK_BUFFER :: GLenum
gl_PIXEL_PACK_BUFFER = 35051