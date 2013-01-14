{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.Core.Internal.Core20Compatibility
       (gl_VERTEX_PROGRAM_TWO_SIDE, gl_POINT_SPRITE,
        gl_MAX_TEXTURE_COORDS, gl_COORD_REPLACE)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
gl_VERTEX_PROGRAM_TWO_SIDE :: GLenum
gl_VERTEX_PROGRAM_TWO_SIDE = 34371
 
gl_POINT_SPRITE :: GLenum
gl_POINT_SPRITE = 34913
 
gl_MAX_TEXTURE_COORDS :: GLenum
gl_MAX_TEXTURE_COORDS = 34929
 
gl_COORD_REPLACE :: GLenum
gl_COORD_REPLACE = 34914