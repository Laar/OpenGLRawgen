{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.VertexArrayObject
       (glVariantArrayObjectATI, glUpdateObjectBufferATI,
        glNewObjectBufferATI, glIsObjectBufferATI,
        glGetVariantArrayObjectivATI, glGetVariantArrayObjectfvATI,
        glGetObjectBufferivATI, glGetObjectBufferfvATI,
        glGetArrayObjectivATI, glGetArrayObjectfvATI,
        glFreeObjectBufferATI, glArrayObjectATI, gl_STATIC_ATI,
        gl_PRESERVE_ATI, gl_OBJECT_BUFFER_USAGE_ATI,
        gl_OBJECT_BUFFER_SIZE_ATI, gl_DYNAMIC_ATI, gl_DISCARD_ATI,
        gl_ARRAY_OBJECT_OFFSET_ATI, gl_ARRAY_OBJECT_BUFFER_ATI)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVariantArrayObjectATI #-}
 
ptr_glVariantArrayObjectATI :: FunPtr a
ptr_glVariantArrayObjectATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glVariantArrayObjectATI"
 
glVariantArrayObjectATI ::
                        GLuint -> GLenum -> GLsizei -> GLuint -> GLuint -> IO ()
glVariantArrayObjectATI
  = dyn_glVariantArrayObjectATI ptr_glVariantArrayObjectATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glVariantArrayObjectATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> GLsizei -> GLuint -> GLuint -> IO ())
 
{-# NOINLINE ptr_glUpdateObjectBufferATI #-}
 
ptr_glUpdateObjectBufferATI :: FunPtr a
ptr_glUpdateObjectBufferATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glUpdateObjectBufferATI"
 
glUpdateObjectBufferATI ::
                        GLuint -> GLuint -> GLsizei -> Ptr a -> GLenum -> IO ()
glUpdateObjectBufferATI
  = dyn_glUpdateObjectBufferATI ptr_glUpdateObjectBufferATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glUpdateObjectBufferATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> GLsizei -> Ptr a -> GLenum -> IO ())
 
{-# NOINLINE ptr_glNewObjectBufferATI #-}
 
ptr_glNewObjectBufferATI :: FunPtr a
ptr_glNewObjectBufferATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glNewObjectBufferATI"
 
glNewObjectBufferATI :: GLsizei -> Ptr a -> GLenum -> IO GLuint
glNewObjectBufferATI
  = dyn_glNewObjectBufferATI ptr_glNewObjectBufferATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glNewObjectBufferATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr a -> GLenum -> IO GLuint)
 
{-# NOINLINE ptr_glIsObjectBufferATI #-}
 
ptr_glIsObjectBufferATI :: FunPtr a
ptr_glIsObjectBufferATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glIsObjectBufferATI"
 
glIsObjectBufferATI :: GLuint -> IO GLboolean
glIsObjectBufferATI
  = dyn_glIsObjectBufferATI ptr_glIsObjectBufferATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glIsObjectBufferATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO GLboolean)
 
{-# NOINLINE ptr_glGetVariantArrayObjectivATI #-}
 
ptr_glGetVariantArrayObjectivATI :: FunPtr a
ptr_glGetVariantArrayObjectivATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glGetVariantArrayObjectivATI"
 
glGetVariantArrayObjectivATI ::
                             GLuint -> GLenum -> Ptr GLint -> IO ()
glGetVariantArrayObjectivATI
  = dyn_glGetVariantArrayObjectivATI ptr_glGetVariantArrayObjectivATI
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVariantArrayObjectivATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetVariantArrayObjectfvATI #-}
 
ptr_glGetVariantArrayObjectfvATI :: FunPtr a
ptr_glGetVariantArrayObjectfvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glGetVariantArrayObjectfvATI"
 
glGetVariantArrayObjectfvATI ::
                             GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetVariantArrayObjectfvATI
  = dyn_glGetVariantArrayObjectfvATI ptr_glGetVariantArrayObjectfvATI
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glGetVariantArrayObjectfvATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetObjectBufferivATI #-}
 
ptr_glGetObjectBufferivATI :: FunPtr a
ptr_glGetObjectBufferivATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glGetObjectBufferivATI"
 
glGetObjectBufferivATI :: GLuint -> GLenum -> Ptr GLint -> IO ()
glGetObjectBufferivATI
  = dyn_glGetObjectBufferivATI ptr_glGetObjectBufferivATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetObjectBufferivATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetObjectBufferfvATI #-}
 
ptr_glGetObjectBufferfvATI :: FunPtr a
ptr_glGetObjectBufferfvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glGetObjectBufferfvATI"
 
glGetObjectBufferfvATI :: GLuint -> GLenum -> Ptr GLfloat -> IO ()
glGetObjectBufferfvATI
  = dyn_glGetObjectBufferfvATI ptr_glGetObjectBufferfvATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetObjectBufferfvATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glGetArrayObjectivATI #-}
 
ptr_glGetArrayObjectivATI :: FunPtr a
ptr_glGetArrayObjectivATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glGetArrayObjectivATI"
 
glGetArrayObjectivATI :: GLenum -> GLenum -> Ptr GLint -> IO ()
glGetArrayObjectivATI
  = dyn_glGetArrayObjectivATI ptr_glGetArrayObjectivATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetArrayObjectivATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLint -> IO ())
 
{-# NOINLINE ptr_glGetArrayObjectfvATI #-}
 
ptr_glGetArrayObjectfvATI :: FunPtr a
ptr_glGetArrayObjectfvATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glGetArrayObjectfvATI"
 
glGetArrayObjectfvATI :: GLenum -> GLenum -> Ptr GLfloat -> IO ()
glGetArrayObjectfvATI
  = dyn_glGetArrayObjectfvATI ptr_glGetArrayObjectfvATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetArrayObjectfvATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLenum -> Ptr GLfloat -> IO ())
 
{-# NOINLINE ptr_glFreeObjectBufferATI #-}
 
ptr_glFreeObjectBufferATI :: FunPtr a
ptr_glFreeObjectBufferATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glFreeObjectBufferATI"
 
glFreeObjectBufferATI :: GLuint -> IO ()
glFreeObjectBufferATI
  = dyn_glFreeObjectBufferATI ptr_glFreeObjectBufferATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glFreeObjectBufferATI
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> IO ())
 
{-# NOINLINE ptr_glArrayObjectATI #-}
 
ptr_glArrayObjectATI :: FunPtr a
ptr_glArrayObjectATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_vertex_array_object"
        "glArrayObjectATI"
 
glArrayObjectATI ::
                 GLenum -> GLint -> GLenum -> GLsizei -> GLuint -> GLuint -> IO ()
glArrayObjectATI = dyn_glArrayObjectATI ptr_glArrayObjectATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glArrayObjectATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLint -> GLenum -> GLsizei -> GLuint -> GLuint -> IO ())
 
gl_STATIC_ATI :: GLenum
gl_STATIC_ATI = 34656
 
gl_PRESERVE_ATI :: GLenum
gl_PRESERVE_ATI = 34658
 
gl_OBJECT_BUFFER_USAGE_ATI :: GLenum
gl_OBJECT_BUFFER_USAGE_ATI = 34661
 
gl_OBJECT_BUFFER_SIZE_ATI :: GLenum
gl_OBJECT_BUFFER_SIZE_ATI = 34660
 
gl_DYNAMIC_ATI :: GLenum
gl_DYNAMIC_ATI = 34657
 
gl_DISCARD_ATI :: GLenum
gl_DISCARD_ATI = 34659
 
gl_ARRAY_OBJECT_OFFSET_ATI :: GLenum
gl_ARRAY_OBJECT_OFFSET_ATI = 34663
 
gl_ARRAY_OBJECT_BUFFER_ATI :: GLenum
gl_ARRAY_OBJECT_BUFFER_ATI = 34662