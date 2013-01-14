{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.EXT.SharedTexturePalette
       (gl_SHARED_TEXTURE_PALETTE_EXT) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_SHARED_TEXTURE_PALETTE_EXT :: GLenum
gl_SHARED_TEXTURE_PALETTE_EXT = 33275