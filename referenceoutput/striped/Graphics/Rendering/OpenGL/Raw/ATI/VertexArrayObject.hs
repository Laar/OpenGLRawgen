{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.VertexArrayObject
       (glVariantArrayObject, glUpdateObjectBuffer, glNewObjectBuffer,
        glIsObjectBuffer, glGetVariantArrayObjectiv,
        glGetVariantArrayObjectfv, glGetObjectBufferiv,
        glGetObjectBufferfv, glGetArrayObjectiv, glGetArrayObjectfv,
        glFreeObjectBuffer, glArrayObject, gl_STATIC, gl_PRESERVE,
        gl_OBJECT_BUFFER_USAGE, gl_OBJECT_BUFFER_SIZE, gl_DYNAMIC,
        gl_DISCARD, gl_ARRAY_OBJECT_OFFSET, gl_ARRAY_OBJECT_BUFFER)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVariantArrayObject #-}
 
ptr_glVariantArrayObject :: FunPtr a
ptr_glVariantArrayObject
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glVariantArrayObjectATI"
 
glVariantArrayObject ::
                     GLuint -> GLenum -> GLsizei -> GLuint -> GLuint -> IO ()
glVariantArrayObject
  = dyn_glVariantArrayObject ptr_glVariantArrayObject
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantArrayObject ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLsizei -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glUpdateObjectBuffer #-}
 
ptr_glUpdateObjectBuffer :: FunPtr a
ptr_glUpdateObjectBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glUpdateObjectBufferATI"
 
glUpdateObjectBuffer ::
                     GLuint -> GLuint -> GLsizei -> Ptr a -> GLenum -> IO ()
glUpdateObjectBuffer
  = dyn_glUpdateObjectBuffer ptr_glUpdateObjectBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glUpdateObjectBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLsizei -> Ptr a -> GLenum -> IO ())
 
{-# NOINLINE ptr_glNewObjectBuffer #-}
 
ptr_glNewObjectBuffer :: FunPtr a
ptr_glNewObjectBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glNewObjectBufferATI"
 
glNewObjectBuffer :: GLsizei -> Ptr a -> GLenum -> IO GLuint
glNewObjectBuffer = dyn_glNewObjectBuffer ptr_glNewObjectBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glNewObjectBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr a -> GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glIsObjectBuffer #-}
 
ptr_glIsObjectBuffer :: FunPtr a
ptr_glIsObjectBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glIsObjectBufferATI"
 
glIsObjectBuffer :: GLuint -> IO GLboolean
glIsObjectBuffer = dyn_glIsObjectBuffer ptr_glIsObjectBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsObjectBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetVariantArrayObjectiv #-}
 
ptr_glGetVariantArrayObjectiv :: FunPtr a
ptr_glGetVariantArrayObjectiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glGetVariantArrayObjectivATI"
 
glGetVariantArrayObjectiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVariantArrayObjectiv
  = dyn_glGetVariantArrayObjectiv ptr_glGetVariantArrayObjectiv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVariantArrayObjectiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetVariantArrayObjectfv #-}
 
ptr_glGetVariantArrayObjectfv :: FunPtr a
ptr_glGetVariantArrayObjectfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glGetVariantArrayObjectfvATI"
 
glGetVariantArrayObjectfv ::
                          GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetVariantArrayObjectfv
  = dyn_glGetVariantArrayObjectfv ptr_glGetVariantArrayObjectfv
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVariantArrayObjectfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetObjectBufferiv #-}
 
ptr_glGetObjectBufferiv :: FunPtr a
ptr_glGetObjectBufferiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glGetObjectBufferivATI"
 
glGetObjectBufferiv :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetObjectBufferiv
  = dyn_glGetObjectBufferiv ptr_glGetObjectBufferiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetObjectBufferiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetObjectBufferfv #-}
 
ptr_glGetObjectBufferfv :: FunPtr a
ptr_glGetObjectBufferfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glGetObjectBufferfvATI"
 
glGetObjectBufferfv :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetObjectBufferfv
  = dyn_glGetObjectBufferfv ptr_glGetObjectBufferfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetObjectBufferfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetArrayObjectiv #-}
 
ptr_glGetArrayObjectiv :: FunPtr a
ptr_glGetArrayObjectiv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glGetArrayObjectivATI"
 
glGetArrayObjectiv :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetArrayObjectiv = dyn_glGetArrayObjectiv ptr_glGetArrayObjectiv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetArrayObjectiv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetArrayObjectfv #-}
 
ptr_glGetArrayObjectfv :: FunPtr a
ptr_glGetArrayObjectfv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glGetArrayObjectfvATI"
 
glGetArrayObjectfv :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetArrayObjectfv = dyn_glGetArrayObjectfv ptr_glGetArrayObjectfv
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetArrayObjectfv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glFreeObjectBuffer #-}
 
ptr_glFreeObjectBuffer :: FunPtr a
ptr_glFreeObjectBuffer
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glFreeObjectBufferATI"
 
glFreeObjectBuffer :: GLuint -> IO ()
glFreeObjectBuffer = dyn_glFreeObjectBuffer ptr_glFreeObjectBuffer
 
foreign import CALLCONV unsafe "dynamic" dyn_glFreeObjectBuffer ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glArrayObject #-}
 
ptr_glArrayObject :: FunPtr a
ptr_glArrayObject
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glArrayObjectATI"
 
glArrayObject ::
              GLenum -> GLint -> GLenum -> GLsizei -> GLuint -> GLuint -> IO ()
glArrayObject = dyn_glArrayObject ptr_glArrayObject
 
foreign import CALLCONV unsafe "dynamic" dyn_glArrayObject ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLenum -> GLsizei -> GLuint -> GLuint -> IO ())
 
gl_STATIC :: GLenum
gl_STATIC = 34656
 
gl_PRESERVE :: GLenum
gl_PRESERVE = 34658
 
gl_OBJECT_BUFFER_USAGE :: GLenum
gl_OBJECT_BUFFER_USAGE = 34661
 
gl_OBJECT_BUFFER_SIZE :: GLenum
gl_OBJECT_BUFFER_SIZE = 34660
 
gl_DYNAMIC :: GLenum
gl_DYNAMIC = 34657
 
gl_DISCARD :: GLenum
gl_DISCARD = 34659
 
gl_ARRAY_OBJECT_OFFSET :: GLenum
gl_ARRAY_OBJECT_OFFSET = 34663
 
gl_ARRAY_OBJECT_BUFFER :: GLenum
gl_ARRAY_OBJECT_BUFFER = 34662