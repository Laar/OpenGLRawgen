{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.INTEL.ParallelArrays
       (glVertexPointerv, glTexCoordPointerv, glNormalPointerv,
        glColorPointerv, gl_VERTEX_ARRAY_PARALLEL_POINTERS,
        gl_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS, gl_PARALLEL_ARRAYS,
        gl_NORMAL_ARRAY_PARALLEL_POINTERS,
        gl_COLOR_ARRAY_PARALLEL_POINTERS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexPointerv #-}
 
ptr_glVertexPointerv :: FunPtr a
ptr_glVertexPointerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_INTEL_parallel_arrays"
        "glVertexPointervINTEL"
 
glVertexPointerv :: GLint -> GLenum -> Ptr (Ptr a) -> IO ()
glVertexPointerv = dyn_glVertexPointerv ptr_glVertexPointerv
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexPointerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glTexCoordPointerv #-}
 
ptr_glTexCoordPointerv :: FunPtr a
ptr_glTexCoordPointerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_INTEL_parallel_arrays"
        "glTexCoordPointervINTEL"
 
glTexCoordPointerv :: GLint -> GLenum -> Ptr (Ptr a) -> IO ()
glTexCoordPointerv = dyn_glTexCoordPointerv ptr_glTexCoordPointerv
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordPointerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glNormalPointerv #-}
 
ptr_glNormalPointerv :: FunPtr a
ptr_glNormalPointerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_INTEL_parallel_arrays"
        "glNormalPointervINTEL"
 
glNormalPointerv :: GLenum -> Ptr (Ptr a) -> IO ()
glNormalPointerv = dyn_glNormalPointerv ptr_glNormalPointerv
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalPointerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glColorPointerv #-}
 
ptr_glColorPointerv :: FunPtr a
ptr_glColorPointerv
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_INTEL_parallel_arrays"
        "glColorPointervINTEL"
 
glColorPointerv :: GLint -> GLenum -> Ptr (Ptr a) -> IO ()
glColorPointerv = dyn_glColorPointerv ptr_glColorPointerv
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorPointerv ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> Ptr (Ptr a) -> IO ())
 
gl_VERTEX_ARRAY_PARALLEL_POINTERS :: GLenum
gl_VERTEX_ARRAY_PARALLEL_POINTERS = 33781
 
gl_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS :: GLenum
gl_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS = 33784
 
gl_PARALLEL_ARRAYS :: GLenum
gl_PARALLEL_ARRAYS = 33780
 
gl_NORMAL_ARRAY_PARALLEL_POINTERS :: GLenum
gl_NORMAL_ARRAY_PARALLEL_POINTERS = 33782
 
gl_COLOR_ARRAY_PARALLEL_POINTERS :: GLenum
gl_COLOR_ARRAY_PARALLEL_POINTERS = 33783