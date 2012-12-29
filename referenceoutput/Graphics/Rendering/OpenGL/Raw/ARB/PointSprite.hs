{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.PointSprite
       (gl_COORD_REPLACE_ARB, gl_POINT_SPRITE_ARB) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_COORD_REPLACE_ARB :: GLenum
gl_COORD_REPLACE_ARB = 34914
 
gl_POINT_SPRITE_ARB :: GLenum
gl_POINT_SPRITE_ARB = 34913