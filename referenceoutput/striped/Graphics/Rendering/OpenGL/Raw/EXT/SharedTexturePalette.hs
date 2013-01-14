{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.SharedTexturePalette
       (gl_SHARED_TEXTURE_PALETTE) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_SHARED_TEXTURE_PALETTE :: GLenum
gl_SHARED_TEXTURE_PALETTE = 33275