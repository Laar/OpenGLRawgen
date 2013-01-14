{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.ARB.PointSprite
       (gl_POINT_SPRITE, gl_COORD_REPLACE) where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_POINT_SPRITE :: GLenum
gl_POINT_SPRITE = 34913
 
gl_COORD_REPLACE :: GLenum
gl_COORD_REPLACE = 34914