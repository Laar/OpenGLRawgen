{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.MultisampleFilterHint
       (gl_MULTISAMPLE_FILTER_HINT_NV) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_MULTISAMPLE_FILTER_HINT_NV :: GLenum
gl_MULTISAMPLE_FILTER_HINT_NV = 34100