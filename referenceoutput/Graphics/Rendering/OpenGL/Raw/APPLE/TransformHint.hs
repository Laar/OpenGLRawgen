{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.APPLE.TransformHint
       (gl_TRANSFORM_HINT_APPLE) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_TRANSFORM_HINT_APPLE :: GLenum
gl_TRANSFORM_HINT_APPLE = 34225