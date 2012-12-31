{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.PointSprite
       (gl_POINT_SPRITE_ARB, gl_COORD_REPLACE_ARB) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_POINT_SPRITE_ARB :: GLenum
gl_POINT_SPRITE_ARB = 34913
 
gl_COORD_REPLACE_ARB :: GLenum
gl_COORD_REPLACE_ARB = 34914