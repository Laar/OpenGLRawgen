{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.InstancedArrays
       (glVertexAttribDivisor, gl_VERTEX_ATTRIB_ARRAY_DIVISOR) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribDivisor #-}
 
ptr_glVertexAttribDivisor :: FunPtr a
ptr_glVertexAttribDivisor
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_instanced_arrays"
        "glVertexAttribDivisorARB"
 
glVertexAttribDivisor :: GLuint -> GLuint -> IO ()
glVertexAttribDivisor
  = dyn_glVertexAttribDivisor ptr_glVertexAttribDivisor
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribDivisor
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO ())
 
gl_VERTEX_ATTRIB_ARRAY_DIVISOR :: GLenum
gl_VERTEX_ATTRIB_ARRAY_DIVISOR = 35070