{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.MultisampleFilterHint
       (gl_MULTISAMPLE_FILTER_HINT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MULTISAMPLE_FILTER_HINT :: GLenum
gl_MULTISAMPLE_FILTER_HINT = 34100