{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ATI.TextureEnvCombine3
       (gl_MODULATE_SUBTRACT_ATI, gl_MODULATE_SIGNED_ADD_ATI,
        gl_MODULATE_ADD_ATI)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MODULATE_SUBTRACT_ATI :: GLenum
gl_MODULATE_SUBTRACT_ATI = 34630
 
gl_MODULATE_SIGNED_ADD_ATI :: GLenum
gl_MODULATE_SIGNED_ADD_ATI = 34629
 
gl_MODULATE_ADD_ATI :: GLenum
gl_MODULATE_ADD_ATI = 34628