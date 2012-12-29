{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.DrawBuffers
       (glDrawBuffersARB, gl_DRAW_BUFFER15_ARB, gl_DRAW_BUFFER14_ARB,
        gl_DRAW_BUFFER13_ARB, gl_DRAW_BUFFER12_ARB, gl_DRAW_BUFFER11_ARB,
        gl_DRAW_BUFFER10_ARB, gl_DRAW_BUFFER9_ARB, gl_DRAW_BUFFER8_ARB,
        gl_DRAW_BUFFER7_ARB, gl_DRAW_BUFFER6_ARB, gl_DRAW_BUFFER5_ARB,
        gl_DRAW_BUFFER4_ARB, gl_DRAW_BUFFER3_ARB, gl_DRAW_BUFFER2_ARB,
        gl_DRAW_BUFFER1_ARB, gl_DRAW_BUFFER0_ARB, gl_MAX_DRAW_BUFFERS_ARB)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glDrawBuffersARB #-}
 
ptr_glDrawBuffersARB :: FunPtr a
ptr_glDrawBuffersARB
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ARB_draw_buffers"
        "glDrawBuffersARB"
 
glDrawBuffersARB :: GLsizei -> Ptr GLenum -> IO ()
glDrawBuffersARB = dyn_glDrawBuffersARB ptr_glDrawBuffersARB
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawBuffersARB ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLenum -> IO ())
 
gl_DRAW_BUFFER15_ARB :: GLenum
gl_DRAW_BUFFER15_ARB = 34868
 
gl_DRAW_BUFFER14_ARB :: GLenum
gl_DRAW_BUFFER14_ARB = 34867
 
gl_DRAW_BUFFER13_ARB :: GLenum
gl_DRAW_BUFFER13_ARB = 34866
 
gl_DRAW_BUFFER12_ARB :: GLenum
gl_DRAW_BUFFER12_ARB = 34865
 
gl_DRAW_BUFFER11_ARB :: GLenum
gl_DRAW_BUFFER11_ARB = 34864
 
gl_DRAW_BUFFER10_ARB :: GLenum
gl_DRAW_BUFFER10_ARB = 34863
 
gl_DRAW_BUFFER9_ARB :: GLenum
gl_DRAW_BUFFER9_ARB = 34862
 
gl_DRAW_BUFFER8_ARB :: GLenum
gl_DRAW_BUFFER8_ARB = 34861
 
gl_DRAW_BUFFER7_ARB :: GLenum
gl_DRAW_BUFFER7_ARB = 34860
 
gl_DRAW_BUFFER6_ARB :: GLenum
gl_DRAW_BUFFER6_ARB = 34859
 
gl_DRAW_BUFFER5_ARB :: GLenum
gl_DRAW_BUFFER5_ARB = 34858
 
gl_DRAW_BUFFER4_ARB :: GLenum
gl_DRAW_BUFFER4_ARB = 34857
 
gl_DRAW_BUFFER3_ARB :: GLenum
gl_DRAW_BUFFER3_ARB = 34856
 
gl_DRAW_BUFFER2_ARB :: GLenum
gl_DRAW_BUFFER2_ARB = 34855
 
gl_DRAW_BUFFER1_ARB :: GLenum
gl_DRAW_BUFFER1_ARB = 34854
 
gl_DRAW_BUFFER0_ARB :: GLenum
gl_DRAW_BUFFER0_ARB = 34853
 
gl_MAX_DRAW_BUFFERS_ARB :: GLenum
gl_MAX_DRAW_BUFFERS_ARB = 34852