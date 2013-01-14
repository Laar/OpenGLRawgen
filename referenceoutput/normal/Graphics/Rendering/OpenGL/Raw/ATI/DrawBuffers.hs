{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.DrawBuffers
       (glDrawBuffersATI, gl_MAX_DRAW_BUFFERS_ATI, gl_DRAW_BUFFER9_ATI,
        gl_DRAW_BUFFER8_ATI, gl_DRAW_BUFFER7_ATI, gl_DRAW_BUFFER6_ATI,
        gl_DRAW_BUFFER5_ATI, gl_DRAW_BUFFER4_ATI, gl_DRAW_BUFFER3_ATI,
        gl_DRAW_BUFFER2_ATI, gl_DRAW_BUFFER1_ATI, gl_DRAW_BUFFER15_ATI,
        gl_DRAW_BUFFER14_ATI, gl_DRAW_BUFFER13_ATI, gl_DRAW_BUFFER12_ATI,
        gl_DRAW_BUFFER11_ATI, gl_DRAW_BUFFER10_ATI, gl_DRAW_BUFFER0_ATI)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glDrawBuffersATI #-}
 
ptr_glDrawBuffersATI :: FunPtr a
ptr_glDrawBuffersATI
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_draw_buffers"
        "glDrawBuffersATI"
 
glDrawBuffersATI :: GLsizei -> Ptr GLenum -> IO ()
glDrawBuffersATI = dyn_glDrawBuffersATI ptr_glDrawBuffersATI
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawBuffersATI ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLenum -> IO ())
 
gl_MAX_DRAW_BUFFERS_ATI :: GLenum
gl_MAX_DRAW_BUFFERS_ATI = 34852
 
gl_DRAW_BUFFER9_ATI :: GLenum
gl_DRAW_BUFFER9_ATI = 34862
 
gl_DRAW_BUFFER8_ATI :: GLenum
gl_DRAW_BUFFER8_ATI = 34861
 
gl_DRAW_BUFFER7_ATI :: GLenum
gl_DRAW_BUFFER7_ATI = 34860
 
gl_DRAW_BUFFER6_ATI :: GLenum
gl_DRAW_BUFFER6_ATI = 34859
 
gl_DRAW_BUFFER5_ATI :: GLenum
gl_DRAW_BUFFER5_ATI = 34858
 
gl_DRAW_BUFFER4_ATI :: GLenum
gl_DRAW_BUFFER4_ATI = 34857
 
gl_DRAW_BUFFER3_ATI :: GLenum
gl_DRAW_BUFFER3_ATI = 34856
 
gl_DRAW_BUFFER2_ATI :: GLenum
gl_DRAW_BUFFER2_ATI = 34855
 
gl_DRAW_BUFFER1_ATI :: GLenum
gl_DRAW_BUFFER1_ATI = 34854
 
gl_DRAW_BUFFER15_ATI :: GLenum
gl_DRAW_BUFFER15_ATI = 34868
 
gl_DRAW_BUFFER14_ATI :: GLenum
gl_DRAW_BUFFER14_ATI = 34867
 
gl_DRAW_BUFFER13_ATI :: GLenum
gl_DRAW_BUFFER13_ATI = 34866
 
gl_DRAW_BUFFER12_ATI :: GLenum
gl_DRAW_BUFFER12_ATI = 34865
 
gl_DRAW_BUFFER11_ATI :: GLenum
gl_DRAW_BUFFER11_ATI = 34864
 
gl_DRAW_BUFFER10_ATI :: GLenum
gl_DRAW_BUFFER10_ATI = 34863
 
gl_DRAW_BUFFER0_ATI :: GLenum
gl_DRAW_BUFFER0_ATI = 34853