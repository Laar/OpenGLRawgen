{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.INTEL.ParallelArrays
       (glVertexPointervINTEL, glTexCoordPointervINTEL,
        glNormalPointervINTEL, glColorPointervINTEL,
        gl_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL,
        gl_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL,
        gl_PARALLEL_ARRAYS_INTEL, gl_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL,
        gl_COLOR_ARRAY_PARALLEL_POINTERS_INTEL)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexPointervINTEL #-}
 
ptr_glVertexPointervINTEL :: FunPtr a
ptr_glVertexPointervINTEL
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_INTEL_parallel_arrays"
        "glVertexPointervINTEL"
 
glVertexPointervINTEL :: GLint -> GLenum -> Ptr (Ptr a) -> IO ()
glVertexPointervINTEL
  = dyn_glVertexPointervINTEL ptr_glVertexPointervINTEL
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexPointervINTEL
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glTexCoordPointervINTEL #-}
 
ptr_glTexCoordPointervINTEL :: FunPtr a
ptr_glTexCoordPointervINTEL
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_INTEL_parallel_arrays"
        "glTexCoordPointervINTEL"
 
glTexCoordPointervINTEL :: GLint -> GLenum -> Ptr (Ptr a) -> IO ()
glTexCoordPointervINTEL
  = dyn_glTexCoordPointervINTEL ptr_glTexCoordPointervINTEL
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordPointervINTEL
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glNormalPointervINTEL #-}
 
ptr_glNormalPointervINTEL :: FunPtr a
ptr_glNormalPointervINTEL
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_INTEL_parallel_arrays"
        "glNormalPointervINTEL"
 
glNormalPointervINTEL :: GLenum -> Ptr (Ptr a) -> IO ()
glNormalPointervINTEL
  = dyn_glNormalPointervINTEL ptr_glNormalPointervINTEL
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalPointervINTEL
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> Ptr (Ptr a) -> IO ())
 
{-# NOINLINE ptr_glColorPointervINTEL #-}
 
ptr_glColorPointervINTEL :: FunPtr a
ptr_glColorPointervINTEL
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_INTEL_parallel_arrays"
        "glColorPointervINTEL"
 
glColorPointervINTEL :: GLint -> GLenum -> Ptr (Ptr a) -> IO ()
glColorPointervINTEL
  = dyn_glColorPointervINTEL ptr_glColorPointervINTEL
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorPointervINTEL ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> Ptr (Ptr a) -> IO ())
 
gl_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL :: GLenum
gl_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL = 33781
 
gl_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL :: GLenum
gl_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL = 33784
 
gl_PARALLEL_ARRAYS_INTEL :: GLenum
gl_PARALLEL_ARRAYS_INTEL = 33780
 
gl_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL :: GLenum
gl_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL = 33782
 
gl_COLOR_ARRAY_PARALLEL_POINTERS_INTEL :: GLenum
gl_COLOR_ARRAY_PARALLEL_POINTERS_INTEL = 33783