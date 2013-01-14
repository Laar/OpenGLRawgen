{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.TextureEnvCombine3
       (gl_MODULATE_SUBTRACT, gl_MODULATE_SIGNED_ADD, gl_MODULATE_ADD)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MODULATE_SUBTRACT :: GLenum
gl_MODULATE_SUBTRACT = 34630
 
gl_MODULATE_SIGNED_ADD :: GLenum
gl_MODULATE_SIGNED_ADD = 34629
 
gl_MODULATE_ADD :: GLenum
gl_MODULATE_ADD = 34628