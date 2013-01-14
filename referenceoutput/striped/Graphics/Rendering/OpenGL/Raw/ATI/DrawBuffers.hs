{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.DrawBuffers
       (glDrawBuffers, gl_MAX_DRAW_BUFFERS, gl_DRAW_BUFFER9,
        gl_DRAW_BUFFER8, gl_DRAW_BUFFER7, gl_DRAW_BUFFER6, gl_DRAW_BUFFER5,
        gl_DRAW_BUFFER4, gl_DRAW_BUFFER3, gl_DRAW_BUFFER2, gl_DRAW_BUFFER1,
        gl_DRAW_BUFFER15, gl_DRAW_BUFFER14, gl_DRAW_BUFFER13,
        gl_DRAW_BUFFER12, gl_DRAW_BUFFER11, gl_DRAW_BUFFER10,
        gl_DRAW_BUFFER0)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glDrawBuffers #-}
 
ptr_glDrawBuffers :: FunPtr a
ptr_glDrawBuffers
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_ATI_draw_buffers"
        "glDrawBuffersATI"
 
glDrawBuffers :: GLsizei -> Ptr GLenum -> IO ()
glDrawBuffers = dyn_glDrawBuffers ptr_glDrawBuffers
 
foreign import CALLCONV unsafe "dynamic" dyn_glDrawBuffers ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> Ptr GLenum -> IO ())
 
gl_MAX_DRAW_BUFFERS :: GLenum
gl_MAX_DRAW_BUFFERS = 34852
 
gl_DRAW_BUFFER9 :: GLenum
gl_DRAW_BUFFER9 = 34862
 
gl_DRAW_BUFFER8 :: GLenum
gl_DRAW_BUFFER8 = 34861
 
gl_DRAW_BUFFER7 :: GLenum
gl_DRAW_BUFFER7 = 34860
 
gl_DRAW_BUFFER6 :: GLenum
gl_DRAW_BUFFER6 = 34859
 
gl_DRAW_BUFFER5 :: GLenum
gl_DRAW_BUFFER5 = 34858
 
gl_DRAW_BUFFER4 :: GLenum
gl_DRAW_BUFFER4 = 34857
 
gl_DRAW_BUFFER3 :: GLenum
gl_DRAW_BUFFER3 = 34856
 
gl_DRAW_BUFFER2 :: GLenum
gl_DRAW_BUFFER2 = 34855
 
gl_DRAW_BUFFER1 :: GLenum
gl_DRAW_BUFFER1 = 34854
 
gl_DRAW_BUFFER15 :: GLenum
gl_DRAW_BUFFER15 = 34868
 
gl_DRAW_BUFFER14 :: GLenum
gl_DRAW_BUFFER14 = 34867
 
gl_DRAW_BUFFER13 :: GLenum
gl_DRAW_BUFFER13 = 34866
 
gl_DRAW_BUFFER12 :: GLenum
gl_DRAW_BUFFER12 = 34865
 
gl_DRAW_BUFFER11 :: GLenum
gl_DRAW_BUFFER11 = 34864
 
gl_DRAW_BUFFER10 :: GLenum
gl_DRAW_BUFFER10 = 34863
 
gl_DRAW_BUFFER0 :: GLenum
gl_DRAW_BUFFER0 = 34853