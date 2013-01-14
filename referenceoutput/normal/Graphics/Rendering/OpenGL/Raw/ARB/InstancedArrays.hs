{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.InstancedArrays
       (glVertexAttribDivisorARB, gl_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexAttribDivisorARB #-}
 
ptr_glVertexAttribDivisorARB :: FunPtr a
ptr_glVertexAttribDivisorARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_instanced_arrays"
        "glVertexAttribDivisorARB"
 
glVertexAttribDivisorARB :: GLuint -> GLuint -> IO ()
glVertexAttribDivisorARB
  = dyn_glVertexAttribDivisorARB ptr_glVertexAttribDivisorARB
 
foreign import CALLCONV unsafe "dynamic"
               dyn_glVertexAttribDivisorARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLuint -> IO ())
 
gl_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB = 35070