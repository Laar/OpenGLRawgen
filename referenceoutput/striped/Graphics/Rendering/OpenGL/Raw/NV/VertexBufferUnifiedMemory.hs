{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}
module Graphics.Rendering.OpenGL.Raw.NV.VertexBufferUnifiedMemory
       (glVertexFormat, glVertexAttribIFormat, glVertexAttribFormat,
        glTexCoordFormat, glSecondaryColorFormat, glNormalFormat,
        glIndexFormat, glGetIntegerui64i_v, glFogCoordFormat,
        glEdgeFlagFormat, glColorFormat, glBufferAddressRange,
        gl_VERTEX_ATTRIB_ARRAY_UNIFIED, gl_VERTEX_ATTRIB_ARRAY_LENGTH,
        gl_VERTEX_ATTRIB_ARRAY_ADDRESS, gl_VERTEX_ARRAY_LENGTH,
        gl_VERTEX_ARRAY_ADDRESS, gl_TEXTURE_COORD_ARRAY_LENGTH,
        gl_TEXTURE_COORD_ARRAY_ADDRESS, gl_SECONDARY_COLOR_ARRAY_LENGTH,
        gl_SECONDARY_COLOR_ARRAY_ADDRESS, gl_NORMAL_ARRAY_LENGTH,
        gl_NORMAL_ARRAY_ADDRESS, gl_INDEX_ARRAY_LENGTH,
        gl_INDEX_ARRAY_ADDRESS, gl_FOG_COORD_ARRAY_LENGTH,
        gl_FOG_COORD_ARRAY_ADDRESS, gl_ELEMENT_ARRAY_UNIFIED,
        gl_ELEMENT_ARRAY_LENGTH, gl_ELEMENT_ARRAY_ADDRESS,
        gl_EDGE_FLAG_ARRAY_LENGTH, gl_EDGE_FLAG_ARRAY_ADDRESS,
        gl_DRAW_INDIRECT_UNIFIED, gl_DRAW_INDIRECT_LENGTH,
        gl_DRAW_INDIRECT_ADDRESS, gl_COLOR_ARRAY_LENGTH,
        gl_COLOR_ARRAY_ADDRESS)
       where
import Graphics.Rendering.OpenGL.Raw.Internal.TypesInternal
import Foreign.Ptr
import Graphics.Rendering.OpenGL.Raw.Internal.Extensions
 
{-# NOINLINE ptr_glVertexFormat #-}
 
ptr_glVertexFormat :: FunPtr a
ptr_glVertexFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glVertexFormatNV"
 
glVertexFormat :: GLint -> GLenum -> GLsizei -> IO ()
glVertexFormat = dyn_glVertexFormat ptr_glVertexFormat
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexFormat ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glVertexAttribIFormat #-}
 
ptr_glVertexAttribIFormat :: FunPtr a
ptr_glVertexAttribIFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glVertexAttribIFormatNV"
 
glVertexAttribIFormat ::
                      GLuint -> GLint -> GLenum -> GLsizei -> IO ()
glVertexAttribIFormat
  = dyn_glVertexAttribIFormat ptr_glVertexAttribIFormat
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribIFormat
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glVertexAttribFormat #-}
 
ptr_glVertexAttribFormat :: FunPtr a
ptr_glVertexAttribFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glVertexAttribFormatNV"
 
glVertexAttribFormat ::
                     GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> IO ()
glVertexAttribFormat
  = dyn_glVertexAttribFormat ptr_glVertexAttribFormat
 
foreign import CALLCONV unsafe "dynamic" dyn_glVertexAttribFormat ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glTexCoordFormat #-}
 
ptr_glTexCoordFormat :: FunPtr a
ptr_glTexCoordFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glTexCoordFormatNV"
 
glTexCoordFormat :: GLint -> GLenum -> GLsizei -> IO ()
glTexCoordFormat = dyn_glTexCoordFormat ptr_glTexCoordFormat
 
foreign import CALLCONV unsafe "dynamic" dyn_glTexCoordFormat ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glSecondaryColorFormat #-}
 
ptr_glSecondaryColorFormat :: FunPtr a
ptr_glSecondaryColorFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glSecondaryColorFormatNV"
 
glSecondaryColorFormat :: GLint -> GLenum -> GLsizei -> IO ()
glSecondaryColorFormat
  = dyn_glSecondaryColorFormat ptr_glSecondaryColorFormat
 
foreign import CALLCONV unsafe "dynamic" dyn_glSecondaryColorFormat
               ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glNormalFormat #-}
 
ptr_glNormalFormat :: FunPtr a
ptr_glNormalFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glNormalFormatNV"
 
glNormalFormat :: GLenum -> GLsizei -> IO ()
glNormalFormat = dyn_glNormalFormat ptr_glNormalFormat
 
foreign import CALLCONV unsafe "dynamic" dyn_glNormalFormat ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glIndexFormat #-}
 
ptr_glIndexFormat :: FunPtr a
ptr_glIndexFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glIndexFormatNV"
 
glIndexFormat :: GLenum -> GLsizei -> IO ()
glIndexFormat = dyn_glIndexFormat ptr_glIndexFormat
 
foreign import CALLCONV unsafe "dynamic" dyn_glIndexFormat ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glGetIntegerui64i_v #-}
 
ptr_glGetIntegerui64i_v :: FunPtr a
ptr_glGetIntegerui64i_v
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glGetIntegerui64i_vNV"
 
glGetIntegerui64i_v :: GLenum -> GLuint -> Ptr GLuint64 -> IO ()
glGetIntegerui64i_v
  = dyn_glGetIntegerui64i_v ptr_glGetIntegerui64i_v
 
foreign import CALLCONV unsafe "dynamic" dyn_glGetIntegerui64i_v ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> Ptr GLuint64 -> IO ())
 
{-# NOINLINE ptr_glFogCoordFormat #-}
 
ptr_glFogCoordFormat :: FunPtr a
ptr_glFogCoordFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glFogCoordFormatNV"
 
glFogCoordFormat :: GLenum -> GLsizei -> IO ()
glFogCoordFormat = dyn_glFogCoordFormat ptr_glFogCoordFormat
 
foreign import CALLCONV unsafe "dynamic" dyn_glFogCoordFormat ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glEdgeFlagFormat #-}
 
ptr_glEdgeFlagFormat :: FunPtr a
ptr_glEdgeFlagFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glEdgeFlagFormatNV"
 
glEdgeFlagFormat :: GLsizei -> IO ()
glEdgeFlagFormat = dyn_glEdgeFlagFormat ptr_glEdgeFlagFormat
 
foreign import CALLCONV unsafe "dynamic" dyn_glEdgeFlagFormat ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLsizei -> IO ())
 
{-# NOINLINE ptr_glColorFormat #-}
 
ptr_glColorFormat :: FunPtr a
ptr_glColorFormat
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glColorFormatNV"
 
glColorFormat :: GLint -> GLenum -> GLsizei -> IO ()
glColorFormat = dyn_glColorFormat ptr_glColorFormat
 
foreign import CALLCONV unsafe "dynamic" dyn_glColorFormat ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLint -> GLenum -> GLsizei -> IO ())
 
{-# NOINLINE ptr_glBufferAddressRange #-}
 
ptr_glBufferAddressRange :: FunPtr a
ptr_glBufferAddressRange
  = unsafePerformIO $
      Graphics.Rendering.OpenGL.Raw.Internal.Extensions.getExtensionEntry
        "GL_NV_vertex_buffer_unified_memory"
        "glBufferAddressRangeNV"
 
glBufferAddressRange ::
                     GLenum -> GLuint -> GLuint64 -> GLsizeiptr -> IO ()
glBufferAddressRange
  = dyn_glBufferAddressRange ptr_glBufferAddressRange
 
foreign import CALLCONV unsafe "dynamic" dyn_glBufferAddressRange ::
               Graphics.Rendering.OpenGL.Raw.Internal.Extensions.Invoker
                 (GLenum -> GLuint -> GLuint64 -> GLsizeiptr -> IO ())
 
gl_VERTEX_ATTRIB_ARRAY_UNIFIED :: GLenum
gl_VERTEX_ATTRIB_ARRAY_UNIFIED = 36638
 
gl_VERTEX_ATTRIB_ARRAY_LENGTH :: GLenum
gl_VERTEX_ATTRIB_ARRAY_LENGTH = 36650
 
gl_VERTEX_ATTRIB_ARRAY_ADDRESS :: GLenum
gl_VERTEX_ATTRIB_ARRAY_ADDRESS = 36640
 
gl_VERTEX_ARRAY_LENGTH :: GLenum
gl_VERTEX_ARRAY_LENGTH = 36651
 
gl_VERTEX_ARRAY_ADDRESS :: GLenum
gl_VERTEX_ARRAY_ADDRESS = 36641
 
gl_TEXTURE_COORD_ARRAY_LENGTH :: GLenum
gl_TEXTURE_COORD_ARRAY_LENGTH = 36655
 
gl_TEXTURE_COORD_ARRAY_ADDRESS :: GLenum
gl_TEXTURE_COORD_ARRAY_ADDRESS = 36645
 
gl_SECONDARY_COLOR_ARRAY_LENGTH :: GLenum
gl_SECONDARY_COLOR_ARRAY_LENGTH = 36657
 
gl_SECONDARY_COLOR_ARRAY_ADDRESS :: GLenum
gl_SECONDARY_COLOR_ARRAY_ADDRESS = 36647
 
gl_NORMAL_ARRAY_LENGTH :: GLenum
gl_NORMAL_ARRAY_LENGTH = 36652
 
gl_NORMAL_ARRAY_ADDRESS :: GLenum
gl_NORMAL_ARRAY_ADDRESS = 36642
 
gl_INDEX_ARRAY_LENGTH :: GLenum
gl_INDEX_ARRAY_LENGTH = 36654
 
gl_INDEX_ARRAY_ADDRESS :: GLenum
gl_INDEX_ARRAY_ADDRESS = 36644
 
gl_FOG_COORD_ARRAY_LENGTH :: GLenum
gl_FOG_COORD_ARRAY_LENGTH = 36658
 
gl_FOG_COORD_ARRAY_ADDRESS :: GLenum
gl_FOG_COORD_ARRAY_ADDRESS = 36648
 
gl_ELEMENT_ARRAY_UNIFIED :: GLenum
gl_ELEMENT_ARRAY_UNIFIED = 36639
 
gl_ELEMENT_ARRAY_LENGTH :: GLenum
gl_ELEMENT_ARRAY_LENGTH = 36659
 
gl_ELEMENT_ARRAY_ADDRESS :: GLenum
gl_ELEMENT_ARRAY_ADDRESS = 36649
 
gl_EDGE_FLAG_ARRAY_LENGTH :: GLenum
gl_EDGE_FLAG_ARRAY_LENGTH = 36656
 
gl_EDGE_FLAG_ARRAY_ADDRESS :: GLenum
gl_EDGE_FLAG_ARRAY_ADDRESS = 36646
 
gl_DRAW_INDIRECT_UNIFIED :: GLenum
gl_DRAW_INDIRECT_UNIFIED = 36672
 
gl_DRAW_INDIRECT_LENGTH :: GLenum
gl_DRAW_INDIRECT_LENGTH = 36674
 
gl_DRAW_INDIRECT_ADDRESS :: GLenum
gl_DRAW_INDIRECT_ADDRESS = 36673
 
gl_COLOR_ARRAY_LENGTH :: GLenum
gl_COLOR_ARRAY_LENGTH = 36653
 
gl_COLOR_ARRAY_ADDRESS :: GLenum
gl_COLOR_ARRAY_ADDRESS = 36643